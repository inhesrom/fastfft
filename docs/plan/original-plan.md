# fastfft — original plan (verbatim)

This is the plan the project was started from (produced in a planning
session, then implemented). It is the source of user intent that `ROADMAP.md`,
ADR-0001 and the ticket map in `.scratch/fastfft-v1/` refer to. Where later
work deviated, the deviation is recorded in ADR-0001 §7, the ticket answers,
or `docs/benchmarking.md` (e.g. oxifft 0.4.2 instead of 0.3.x, the clock-based
drift check and `--procs K`, the split layout with 256-bit vectors on Zen 4).

---

# fastfft — Plan: the fastest SIMD complex FFT library for Rust, with a benchmark arena to prove it

## Summary
We will build `fastfft`, a pure-Rust, single-threaded library for 1-D complex FFTs.
- **API:** the same as RustFFT's, taking interleaved `Complex<T>` data (interleaved I/Q).
- **Engine:** new and SIMD-first:
  - generated FFT building blocks ("codelets") that keep data in registers;
  - two engines, Stockham and four-step, that never need a separate transpose or bit-reversal pass;
  - instruction sets chosen at runtime: AVX-512 (512-bit and 256-bit), AVX2+FMA, SSE2, and plain scalar code.

Work is measurement-first. A benchmark harness comparing FFT libraries (the "arena") and a published Zen 4 baseline come before any engine code, and every milestone is gated on arena numbers.
- Development and tuning start on your Ryzen 7 7840HS (Zen 4, AVX-512).
- Before v0.1.0 we validate on rented Intel AVX-512, AMD Zen 5 and AVX2-only machines.
- ARM NEON, WASM, other platforms, Rader's algorithm, threading and real-input FFTs are roadmap tickets.

## 1. Research findings (written up in `docs/research/rust-fft-landscape.md`)

### 1.1 Rust FFT libraries (Sept 2026)
| Crate | Sizes | Types | SIMD | Data layout | Notes |
|---|---|---|---|---|---|
| `rustfft` 6.4.1 | any (mixed-radix, Good-Thomas, Rader, Bluestein; hand-written butterflies up to 512) | f32, f64 | SSE4.1, AVX+FMA, NEON, WASM; **no AVX-512** | interleaved `Complex<T>` | the bar to beat (~20M downloads); MIT/Apache |
| `phastft` 0.4.1 | powers of 2 only | f32, f64 | SSE4.2/AVX2/NEON/WASM via `fearless_simd`; AVX-512 only in a draft PR | fast path takes separate re/im arrays; its interleaved API copies | radix-2 with a separate bit-reversal step; no `unsafe`; inverse is divided by N |
| `tfhe-fft` 0.10.1 | powers of 2 only | f64 only | AVX2, AVX-512 (via `pulp`) | interleaved | Stockham, radix 2/4/8/16; times candidate plans. License is BSD-3-Clause-Clear with patent terms: benchmark it, never copy from it |
| `oxifft` 0.3.2 | any | f32, f64 | claims SSE2 through AVX-512 | interleaved | Rust port of FFTW; its own docs say it trails RustFFT on large powers of 2, primes and some composites |
| `fftw` 0.8 (bindings to the C library FFTW) | any | f32, f64 | depends on how FFTW was built | interleaved | builds FFTW 3.3.8 from source with **no SIMD**; Debian/Ubuntu `libfftw3` enables only SSE2 and AVX |
| `kofft`, `microfft`, `monarch-butterfly`, `fourier` | — | — | — | — | embedded-focused, fixed compile-time sizes, or unmaintained; not targets |

### 1.2 Where the speed comes from
- **RustFFT's design:** its AVX engine does small column FFTs (up to size 16), calls the next FFT through dynamic dispatch, then transposes. Its author measured the transposes at about 40–50% of runtime, notes that FFTW beat it at N = 512, and says the design can't use AVX-512's 32 registers.
  - Third-party Zen 4 numbers (noisy): f32 N=4096 ≈ 5–6.5 µs, N=65536 ≈ 118 µs, N=2^24 ≈ 71 ms. There is a lot of headroom at medium and large sizes.
- **Zen 4 (your 7840HS):**
  - Four 256-bit floating-point pipes; each 512-bit instruction runs as two 256-bit halves.
  - Two 256-bit loads but only one 256-bit store per cycle; 32 KB L1 data cache, 1 MB L2.
  - So AVX-512 pays off here through 32 registers (larger FFT blocks held in registers means fewer passes over the data), masking for leftover elements, better shuffles and fewer instructions. It does not double the arithmetic.
- **Other CPUs:**
  - Zen 5 desktop and server chips run 512-bit instructions natively; Zen 5 laptop chips are 256-bit inside.
  - Intel server chips are 512-bit but need a warm-up period when AVX-512 starts.
  - Most Intel desktop and laptop chips have no AVX-512.
  - Result: the AVX2 path stays first-class, and the instruction set must be selectable per CPU.
- **Large transforms:** FFTs that don't fit in cache are limited by memory bandwidth, so the number of passes over memory matters more than arithmetic.
- **What the fastest C libraries do:**
  - Generate straight-line codelets (FFTW's generator; VectorFFT's graph-based compiler, about 1.29× faster than Intel MKL at the median for f64, N = 2 to 4096).
  - Fold the reordering into the compute passes instead of running separate reorder passes (OTFFT, FFTS, PFFFT).
  - Store data internally in blocks one SIMD vector wide (PFFFT; Fabian Giesen's "Notes on FFTs for implementers").
  - Time candidate plans (FFTW, VectorFFT, tfhe-fft).
- **Interleaved I/Q is confirmed:**
  - `num_complex::Complex<T>` is `#[repr(C)]`, the same layout as `[T; 2]`.
  - RTL-SDR (u8), HackRF (i8), UHD `fc32` and SigMF `cf32_le` are all interleaved I,Q.
  - PhastFT's fast path uses separate arrays.
  - So the public API stays interleaved, and any internal layout change happens inside the first and last pass.
- **Rust:**
  - AVX-512 target features and intrinsics are stable since 1.89, and safe `#[target_feature]` functions since 1.86.
  - Your toolchain is 1.95, and the crate name `fastfft` is free on crates.io.

### 1.3 Benchmarking lessons
- **benchFFT (the FFTW project's benchmark):**
  - Planning is excluded from timing.
  - It times repeated transforms of a zero-filled array and keeps the minimum of repeated averages.
  - It reports "mflops" = 5·N·log2 N / time in µs, broken down by precision, in-place vs out-of-place, and direction.
  - It uses a standard set of non-power-of-2 sizes from 6 to 165375.
- **KFR's benchmark** warms the CPU first, reports best (1st percentile) and median, and has an AVX2-only switch.
- **VectorFFT's benchmark** uses one process per measurement, runs the libraries in both orders, keeps the hyperthread sibling core idle, re-measures a control case to detect drift, and checks accuracy against a high-precision reference.
- **Mistakes seen in published comparisons:**
  - planning time inside the timed loop (astral4/fft-benchmark);
  - FFTW built without SIMD;
  - ±20% laptop noise read as regressions (PhastFT PR #81);
  - allocation and memory-overlap artefacts (RustFFT issue #169);
  - comparing different data layouts or normalizations.
- **Tooling limits:**
  - Valgrind can't decode AVX-512, so instruction-counting tools (callgrind, iai-callgrind) can't cover those paths.
  - GitHub's hosted x86 runners are mostly AVX2-only AMD Milan. Intel's emulator (SDE) can check AVX-512 correctness in CI, but it can't measure performance.

## 2. Scope and success gates
**In scope for v1:**
- 1-D complex FFT in f32 and f64, forward and inverse (unnormalized).
- Every length:
  - fast paths when all prime factors are ≤ 13 ("smooth" sizes);
  - Bluestein's algorithm for everything else.
- In-place, out-of-place and read-only-input modes; batches of transforms in one buffer; single-threaded.
- x86_64 SIMD, plus plain scalar code on all other platforms.
- RustFFT-compatible API; the arena, reports and docs.

**Out of scope for v1** (tickets in §8): NEON/WASM/SVE/RISC-V SIMD, Rader, Good-Thomas, multithreading, real-input FFT, multi-dimensional FFT, fused integer-I/Q input, saved plan files, `no_std`, extra comparison libraries.

**Release gates for v0.1.0.** Measured on the Zen 4 7840HS:
- single thread and the default `Estimate` planner;
- default target CPU (instruction set detected at runtime);
- the arena's `full` profile with boost on, and control-case drift under 3%.

A gate passes only if it holds on both best-time and median-time ratios. A "cell" is one combination of size × precision × direction × in-place/out-of-place.

| ID | Gate |
|---|---|
| G1 | Power-of-2 suite (2^1…2^24): geometric-mean speedup vs rustfft ≥ 1.5×; no cell below 0.95× |
| G2 | Smooth suite: geomean ≥ 1.3×; no cell below 0.95× |
| G3 | Rough suite (primes and similar, Bluestein in v1): geomean ≥ 0.75×; no cell below 0.5× |
| G4 | Against each other Rust library (phastft both APIs, tfhe-fft, oxifft), on the cells it supports; forward only for libraries that normalize the inverse: geomean ≥ 1.1×, and ≥ 0.97× on at least 90% of cells |
| G5 | AVX2 path forced on: power-of-2 geomean ≥ 1.2×, smooth ≥ 1.1× vs rustfft (AVX) |
| G6 | Real-world scenarios: spectrogram and overlap-save throughput ≥ 1.3× rustfft; batch suite geomean ≥ 1.5× |
| G7 | Accuracy: every verified cell within the §6 thresholds, and error no more than 1.5× rustfft's plus 1 ε |
| G8 | `Estimate` planning time ≤ 2× rustfft's for every N ≤ 2^20 |
| G9 | Clean `cargo build --release -p fastfft` ≤ 2× rustfft's clean release build on the same machine |

FFTW (our AVX-512 build) is reported as a reference but not gated. Gates for the cloud machines are in M8.

## 3. Locked decisions
| Topic | Decision |
|---|---|
| Name and layout | Crate `fastfft`. Workspace members: `crates/fastfft` (published), `crates/fastfft-codegen`, `crates/fastfft-testkit`, `bench/arena` (`fastfft-arena`), `experiments/kernel-lab`, `xtask`. Only `fastfft` is published |
| Toolchain | Edition 2024; minimum supported Rust 1.89; `rust-toolchain.toml` pins 1.95.0 for reproducible benchmarks; CI job for the minimum version |
| License | MIT (existing `LICENSE`) at planning time; superseded: fastfft is now MPL-2.0. Library dependencies must be MIT/Apache-compatible (enforced by `cargo-deny`) |
| Library dependencies | `num-complex` 0.4 and `num-traits` 0.2 only, re-exported like RustFFT |
| API | RustFFT 6.4 names and behavior (§4.1); interleaved `Complex<T>` |
| SIMD layer | Our own thin layer over `core::arch`, with runtime detection and ISA tokens (§4.3). No `pulp`, `fearless_simd` or `std::simd` |
| Instruction-set tiers | `Avx512` (512-bit), `Avx512Ymm` (256-bit vectors with 32 registers and masks), `Avx2` (+FMA), `Sse2`, `Scalar`; non-x86 platforms get `Scalar` in v1 |
| Codelets | Generated by `fastfft-codegen`, committed to the repo, and checked for drift in CI |
| Engines | Small, Batch, Stockham, FourStep, Bluestein (§4.2) |
| Internal data layout | Separate real/imaginary registers vs interleaved registers, decided by the M2 rule (recorded in ADR-0001) |
| Direction | Forward codelets only. The inverse swaps real and imaginary parts (separate layout) or conjugates (interleaved) on load and store. One twiddle table |
| Planner | `Estimate` by default, using cost tables built from measurements; opt-in `Measure { time_limit }`; plan cache; instruction-set cap via options or `FASTFFT_ISA_CAP` |
| Threads | None in v1 |
| `unsafe` | Only in `isa/` and `engine/`. `#![deny(unsafe_op_in_unsafe_fn)]` and `clippy::undocumented_unsafe_blocks` are on. Public API fully safe |
| Tickets | `ROADMAP.md` in the repo (§7) |

## 4. Library design

### 4.1 Public API (RustFFT-compatible)
```rust
pub use num_complex; pub use num_traits;
pub trait FftNum: sealed::Sealed + num_traits::Float + Send + Sync + core::fmt::Debug + 'static {} // f32, f64
#[derive(Copy, Clone, PartialEq, Eq, Debug)] pub enum FftDirection { Forward, Inverse } // + opposite_direction(), Display
pub trait Length { fn len(&self) -> usize; }
pub trait Direction { fn fft_direction(&self) -> FftDirection; }
pub trait Fft<T: FftNum>: Length + Direction + Sync + Send {
    fn process(&self, buffer: &mut [Complex<T>]);               // provided; reuses a per-thread scratch buffer that only grows
    fn process_with_scratch(&self, buffer: &mut [Complex<T>], scratch: &mut [Complex<T>]);
    fn process_outofplace_with_scratch(&self, input: &mut [Complex<T>], output: &mut [Complex<T>], scratch: &mut [Complex<T>]);
    fn process_immutable_with_scratch(&self, input: &[Complex<T>], output: &mut [Complex<T>], scratch: &mut [Complex<T>]);
    fn get_inplace_scratch_len(&self) -> usize;
    fn get_outofplace_scratch_len(&self) -> usize;
    fn get_immutable_scratch_len(&self) -> usize;
}
pub struct FftPlanner<T: FftNum>; // new(), with_options(PlannerOptions), plan_fft(len, dir) -> Arc<dyn Fft<T>>,
                                  // plan_fft_forward(len), plan_fft_inverse(len), describe_plan(len, dir) -> String
#[non_exhaustive] #[derive(Default)] pub struct PlannerOptions { pub mode: PlanMode, pub isa_cap: Option<Isa> }
#[non_exhaustive] #[derive(Default)] pub enum PlanMode { #[default] Estimate, Measure { time_limit: std::time::Duration } }
#[non_exhaustive] pub enum Isa { Scalar, Sse2, Avx2, Avx512Ymm, Avx512 }
pub fn detected_isa() -> Isa;
```
- **Behavior copied from RustFFT (not its code):**
  - Output is unnormalized, in standard order (zero frequency, then positive, then negative frequencies).
  - A buffer is processed as consecutive `len`-sized chunks, with the same panic conditions as RustFFT.
  - Out-of-place may overwrite `input`; the read-only mode leaves `input` untouched.
  - `len == 0` does nothing and `len == 1` is the identity.
  - Scratch lengths are our own; RustFFT documents its lengths as implementation-defined.
- **Instruction-set cap:** `FASTFFT_ISA_CAP` (`scalar`, `sse2`, `avx2`, `avx512-ymm`, `avx512`) and `isa_cap` can only lower the tier. They are read when the planner is created.
- **Cargo features:** `avx512`, `avx2`, `sse2` are on by default and can be disabled to cut compile time and binary size.
- **Migration:** switching from RustFFT means changing the crate path. The README says so, and shows how to view an interleaved `&mut [f32]` I/Q buffer as `&mut [Complex<f32>]` using bytemuck.

### 4.2 Engines and data flow
**Planning:** `plan_fft(len)` factors the length, then picks the engine, instruction-set tier, data layout and sequence of radices using a cost model. It builds a plan specialized for that tier, with twiddle factors precomputed and 64-byte aligned, and returns an `Arc<dyn Fft<T>>`.

**Execution:** the `process*` methods check lengths once. They then run the engine on each chunk, or on groups of `lanes` chunks for the Batch engine, as a series of passes over generated codelets.

| Engine | When it's chosen (starting thresholds, tuned in M6) | How it works |
|---|---|---|
| Small | N ≤ 64 f32 / 32 f64 on AVX-512; ≤ 32 / 16 on AVX2 and SSE2 | The whole transform stays in registers: load and (de)interleave, run a codelet across registers, apply twiddles, transpose in registers, run a second codelet, store. Small odd sizes (N ≤ 16) and the primes 7, 11 and 13 use generated scalar codelets |
| Batch | At least `lanes` chunks, with N within the Small limits | Each SIMD lane is a different transform: transpose in, run codelets across registers only, transpose out. Leftover chunks go through Small |
| Stockham | N above the Small range, 2·N·sizeof(Complex<T>) ≤ L2/2 (Zen 4: 32768 f32 / 16384 f64), and N's leading radices can reach a multiple of the lane count | Stockham DIT, alternating between buffer and scratch (in-place) or input and output (out-of-place).<br>• Twiddled codelets use broadcast twiddles in every pass that runs straight across registers.<br>• Only the final pass works across lanes; it combines the in-register transpose with the interleaved, natural-order store.<br>• The planner accounts for whether the pass count is even or odd, so no extra copy pass is ever needed |
| FourStep | Larger N, and smooth N dominated by odd factors (e.g. 11³) | Bailey four-step with N = N1·N2:<br>• column FFTs on L1-sized panels, one column per lane, masked vectors for partial panels;<br>• twiddles applied in the same pass;<br>• row FFTs through Stockham or Small, recursively;<br>• W×W transposes in registers so every memory access is sequential.<br>Targets at most 2 read+write passes over main memory out-of-place and 3 in-place. Final stores bypass the cache (non-temporal) when N·size exceeds the last-level cache, if measured faster |
| Bluestein | N has a prime factor > 13 | Chirp-z transform with an inner length M ≥ 2N−1 chosen by cost among the fast smooth sizes. Chirp angles come from exact integer k² mod 2N. Pointwise products use SIMD |

### 4.3 Instruction-set layer (`isa/`)
- **Detection:** runs once (`OnceLock` plus `is_x86_feature_detected!`). `Avx512` requires avx512f, vl, dq, bw and cd, plus avx2 and fma. `Avx512Ymm` needs the same features but uses 256-bit vectors.
- **ISA tokens:** zero-sized types that can only be created after detection succeeds. Kernels require a token, so the `unsafe` contract stays local.
- **`SimdReal` trait:** splat, unaligned load/store, masked load/store for leftovers, broadcast load, add/sub/mul, the three FMA variants, negate, (de)interleave pairs, and a lanes×lanes transpose. A `SimdComplex` trait exists only if ADR-0001 keeps the interleaved layout.
- **Code pattern:** methods are `#[inline(always)] unsafe fn`. Entry points are `#[target_feature(enable = …)]` wrappers that specialize the generic engines per instruction set (the same pattern as RustFFT and pulp).
- **Review check:** the M3/M6 checklists include confirming with `cargo asm` that no calls to intrinsics and no unexpected register spills remain in hot loops.

### 4.4 Codelet generator (`crates/fastfft-codegen`)
- **Input graphs:** builds a computation graph over real values for each DFT size r:
  - powers of 2 via split-radix and radix-4, keeping whichever needs fewer weighted operations;
  - odd primes ≤ 13 via the symmetric cosine/sine-sum form;
  - composite sizes via Cooley–Tukey with constant twiddles.
- **Optimization:** simplifies multiplications by ±1, ±i and (1±i)/√2, removes duplicate subexpressions, and folds negations into neighbouring operations. It emits explicit fused multiply-adds and orders operations to keep register pressure low (depth-first, Sethi–Ullman order).
- **Output:** codelets without twiddles (`notw`) and with twiddles (`tw`, DIT), for r ∈ {2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 15, 16, 32}.
  - They are generic over `V: SimdReal` (and `C: SimdComplex` if kept).
  - They are written with `quote` and `prettyplease` into `crates/fastfft/src/codelets/generated/`, with a do-not-edit header.
- **Checks:** at generation time every graph is checked in f64 against a naive DFT (max error ≤ 1e-14). `cargo xtask codegen` regenerates; `cargo xtask codegen --check` fails CI if the committed code is stale.

### 4.5 Planner
- **`Estimate`:**
  - Factors N and applies the engine thresholds. Cache sizes come from CPUID leaves 4 / 0x8000001D, defaulting to 32 KB L1 data and 1 MB L2.
  - Picks the radix sequence, tier and layout with the lowest predicted cost: the sum of per-pass costs (cycles per element for each radix, pass type and tier), plus penalties for leaving cache, subject to the even/odd pass-count constraint.
- **Cost tables:**
  - Produced by `cargo xtask tune` (microbenchmarks of the kernels) and committed per CPU family.
  - Zen 4 comes first (`plan/tables/zen4.rs`); `intel_avx512.rs`, `zen5.rs` and `generic_avx2.rs` follow in M8.
  - Unknown CPUs use the generic table for their tier.
- **Default tier:** the highest one detected, unless the CPU family's table says a lower tier is faster.
- **`Measure { time_limit }`:** times the 8 best-predicted candidates, always including the `Estimate` choice, within the time limit, and keeps the fastest.
- **Plan cache and `describe_plan`:**
  - Plans are cached by (length, direction), and sub-plans are shared.
  - `describe_plan` returns a summary such as `stockham avx512 split radices=16x16x16 scratch=4112`.

### 4.6 Numerics, memory, edge cases
- **Twiddles:**
  - The angle is reduced exactly with integer math (k mod N, octant symmetry), then sin/cos are computed in f64 and rounded to T (within 1 unit in the last place).
  - Twiddles are stored per pass, in the order they're read, in 64-byte-aligned plan storage.
  - Passes that run across registers read scalar tables via broadcast (embedded broadcast on AVX-512).
- **Scratch:**
  - In-place: N elements plus one vector of alignment slack for Stockham and FourStep; 0 for Small and Batch.
  - Out-of-place: 0 when the pass count allows it, otherwise N.
  - Read-only input: about N.
  - Bluestein adds M.
- **Alignment:** internal buffers are 64-byte aligned inside the scratch we're given. User buffers can have any alignment (unaligned loads and stores).
- **Edge cases:** size arithmetic is overflow-checked. We never change the CPU's floating-point control state (MXCSR/flush-to-zero). NaN and Inf pass through. Plans are immutable and `Send + Sync`.

## 5. Measurement system: how we benchmark, measure and compare

### 5.1 Components
- **`crates/fastfft-testkit` (reference results):**
  - seeded test signals;
  - naive DFT in double-double precision (about 32 digits) for N ≤ 2048;
  - independent f64 and double-double reference FFTs (mixed-radix and Bluestein), validated against the naive DFT;
  - relative L2 error and max-error metrics.
- **`bench/arena` (`fastfft-arena`):**
  - a driver (`run`) and a per-cell child process (`run-cell --spec <json>`);
  - one adapter per library, statistics, JSONL output and reports.
- **`xtask` commands:** `fftw-build`, `arena run|report|compare|publish`, `perf-cell`, `tune`, `codegen [--check]`.
- **`scripts/bench-env.sh setup|check|restore`:** prepares and checks the machine for benchmarking.
- **`crates/fastfft/benches/` (criterion 0.8):** quick developer before/after comparisons (`--save-baseline`, `critcmp`).

### 5.2 Libraries compared, each used its documented fastest way
| Row | How it's driven |
|---|---|
| `fastfft` (plus rows `/avx2` by default; `/avx512`, `/avx512-ymm`, `/sse2`, `/scalar`, `/measure` on request) | Planner reused. The `Estimate` result is the headline number; forced tiers via `isa_cap`; the Measure row uses a 1 s limit |
| `rustfft` 6.4.x | `FftPlanner` (automatic SIMD); `process_with_scratch`, `process_outofplace_with_scratch` and `process_immutable_with_scratch` with preallocated scratch |
| `phastft` 0.4.x `/split`, `/interleaved` | Planner reused; its separate-array API and its `complex-nums` interleaved API; `parallel` off; in-place only; inverse flagged because it normalizes |
| `tfhe-fft` 0.10.x | `ordered::Plan` with `Method::Measure(50 ms)`; f64 powers of 2, in-place |
| `oxifft` 0.3.x | Its plan API, with measured planning if it offers one |
| `fftw` 3.3.11 (feature `fftw`) | Built by `cargo xtask fftw-build`:<br>• sha256-pinned tarball, static build, double and single precision (`--enable-float`);<br>• `--enable-sse2 --enable-avx --enable-avx2 --enable-avx512 --enable-fma`;<br>• minimal bindings, `FFTW_MEASURE` planning with saved wisdom, `fftw_plan_many_dft` for batch cells.<br>FFTW is GPL, so it stays inside the unpublished arena |

All buffers are 64-byte aligned (`--misalign 8` tests the unaligned case). Every library's output is checked for correctness before timing; failures are reported and excluded.

### 5.3 Measurement protocol, per cell (precision × direction × placement × N × batch size × alignment)
1. The driver starts one child process per cell, pinned to one core (default CPU 2), with that core's hyperthread sibling reported and kept idle. Timeout 600 s.
2. Plan every library and record planning time.
3. Check correctness on seeded random input against the testkit: the double-double reference for N ≤ 2^20; above that, against rustfft's f64 output plus a forward-then-inverse roundtrip.
4. Time on zero-filled buffers, as benchFFT does. Real-world scenarios use real signal data in pipelines where values stay bounded.
5. Warm up each library for at least 200 ms, which covers boost ramp-up and Intel's AVX-512 warm-up.
6. Run 7 rounds, rotating the library order each round. Each turn runs batches of k calls (each batch ≥ 50 µs) for ≥ 100 ms and records the per-call time of each batch.
7. For each library, keep the best time (minimum batch mean, the headline number), the median, and the 10th/90th percentiles.
8. Every 25 cells, re-run a control case (f32 forward in-place N = 4096, fastfft and rustfft). Drift over 3% flags the run; over 10% aborts it.

Profiles:
- `full`: as described above.
- `quick`: 50 ms warm-up, 3 rounds, 25 ms per turn, forward in-place only.
- `sweep`: 3 rounds, 10 ms per turn.

### 5.4 Test suites
- **`pow2`:** 2^1 to 2^24, in f32 and f64, forward and inverse, in-place and out-of-place.
- **`smooth`:**
  - the benchFFT set {6, 9, 12, 15, 18, 24, 36, 80, 108, 210, 504, 1000, 1960, 4725, 10368, 27000, 75600, 165375};
  - an SDR/audio set {48, 96, 120, 160, 240, 320, 384, 480, 640, 720, 768, 960, 1200, 1536, 1920, 2400, 3072, 4800, 6144, 12288, 48000, 96000, 1000000}.
- **`rough`:** the primes {17, 31, 61, 127, 257, 509, 1021, 2053, 4099, 8191, 16381, 65537, 131071}, plus {2018, 3063, 9797, 65524}, which each have a large prime factor.
- **`sweep`:** every N from 2 to 4096, f32 and f64, forward in-place, for coverage plots.
- **`batch`:** N ∈ {8, 16, 32, 64, 128, 256, 512, 1024}, with enough transforms to total 2^20 elements.
- **`realworld`:**
  - (a) spectrogram over a 256 MiB interleaved f32 I/Q stream (seeded noise plus tones). For each non-overlapping window: copy, apply a Hann window, FFT in place, write |X|² as one row. N ∈ {1024, 4096, 16384, 65536}.
  - (b) overlap-save FIR filtering (1025 taps), N = 4096, over 64 MiB.
  - (c) the f64 version of (a) at N = 4096.
  - The window and magnitude code is shared by every library; the metric is millions of samples per second.
- **One-off check in M1:** timings with zero input and random input must agree within 2% for N ∈ {64, 4096, 65536, 2^20}.

### 5.5 Metrics, outputs and reports
- **Per cell:**
  - best time and median time (ns per transform);
  - mflops = 5·N·log2 N / best time in µs;
  - planning time, and relative L2 and max error in units of ε;
  - speedup = rustfft's time ÷ this library's time, also computed against FFTW and against the best other Rust library.
- **Per suite and precision:** geometric-mean speedup (on best and on median times), win/tie/loss counts with a ±3% tie band, and the worst cell.
- **Run output, in `target/arena/runs/<UTC>-<host>/`:**
  - `results.jsonl`;
  - `env.json`, recording:
    - CPU model, family, stepping, microcode, feature flags and caches;
    - governor, energy-performance preference, boost and hyperthreading;
    - kernel, virtualization, AC power and pinned core;
    - `rustc -vV`, build profile and RUSTFLAGS;
    - each library's version from Cargo.lock, FFTW's configure line, and the git commit with a dirty flag;
  - `report.md`, and SVG plots made with plotters (mflops vs N, speedup vs N, accuracy vs N).
- **`arena compare A B`:** per-cell ratios for spotting regressions.
- **`arena publish`:** copies the report, plots, `env.json` and gzipped JSONL to `docs/benchmarks/<date>-<host>-<label>/`.
- **Build profile:** `[profile.arena]` is release plus `lto = "fat"`, `codegen-units = 1`, `debug = "line-tables-only"`, with the default target CPU. A run with `-C target-cpu=native` is recorded separately and never mixed in.

### 5.6 Environment control on the Zen 4 laptop
- `bench-env.sh setup [--no-boost] [--core N]`:
  - requires AC power;
  - sets the `performance` CPU governor, AMD's energy-performance preference to `performance`, and `powerprofilesctl performance` if present;
  - optionally turns boost off;
  - reports the chosen core's hyperthread sibling.
- `check` must pass before an official run; `--allow-dirty-env` marks results as unofficial. `restore` undoes the changes.
- Tuning comparisons run with boost off. Gate runs and published runs use boost on plus the drift check.

### 5.7 Developer tooling and CI policy
- `cargo xtask perf-cell` runs `perf stat` (cycles, instructions, L1/L2 misses) on one cell.
- `cargo asm` for inspecting generated code; `llvm-mca -mcpu=znver4` for estimating kernel throughput.
- Hosted CI never produces performance numbers: it's noisy, the CPUs vary, and Valgrind can't handle AVX-512. Nightly performance tracking on a self-hosted Zen 4 runner is FUT-13.

## 6. Verification and CI
- **Accuracy thresholds** (relative L2 error vs the reference):
  - ≤ 2ε·log2 N + 2ε on the fast paths;
  - ≤ 8ε·log2 M + 8ε for Bluestein;
  - and no more than 1.5× rustfft's error + ε on the same input.
- **Exhaustive sweep, in release mode.**
  - Sizes: every N from 1 to 4096, powers of 2 up to 2^22, and every suite size.
  - f32 and f64; forward and inverse.
  - In-place, out-of-place and read-only input.
  - Batch counts {1, 3, lanes+1}, unaligned offsets, and every tier up to the detected one (looping over `FASTFFT_ISA_CAP`).
- **Property tests (proptest):** linearity, Parseval's theorem, the impulse and shift theorems, and forward-then-inverse roundtrip.
- **API conformance:**
  - RustFFT's panic conditions (`should_panic` tests) and scratch-length contracts;
  - read-only input left untouched, lengths 0 and 1, batching, `Send + Sync`;
  - outputs cross-checked against rustfft (dev-dependency).
- **Memory-safety checks:** Miri on the scalar tier (a subset); a nightly AddressSanitizer job on the SIMD tiers; a `cargo-fuzz` target (random N and buffer lengths vs the reference) from M5.
- **GitHub Actions:**
  - fmt; `clippy -D warnings`; tests on the pinned stable and on 1.89;
  - a tier matrix via `FASTFFT_ISA_CAP`;
  - an Intel SDE job (`-spr`, pinned version, cached) that runs the AVX-512 tiers;
  - aarch64 (`ubuntu-24.04-arm`) scalar tests and a wasm32 build check;
  - Miri, `codegen --check`, docs, and cargo-deny (GPL allowed only in the arena).

## 7. v1 roadmap (copied into `ROADMAP.md`)
Ticket format: `ID — title | milestone | depends on | goal | scope | acceptance | status`. All work through M7 runs on the Zen 4 7840HS.

**M0 — Foundation**
- FFT-001 Workspace setup:
  - toolchain pin, `.gitignore` (`/target`, `.pi/`), rustfmt and clippy config;
  - `[profile.arena]` and the xtask skeleton.
  - Done when `cargo build` and `cargo test --workspace` pass on 1.95, and `fastfft` builds on 1.89.
- FFT-002 CI skeleton (fmt, clippy, tests, minimum Rust version, docs, cargo-deny). Done when it is green on main.
- FFT-003 Docs:
  - `docs/research/rust-fft-landscape.md` (§1, with sources);
  - a `docs/benchmarking.md` skeleton;
  - `ROADMAP.md` (this section plus §8).
  - Done when committed.

**M1 — Measurement first** (no library engine yet)
- FFT-010 Testkit reference transforms and metrics. Done when, for N ≤ 2048, the references agree with the naive double-double DFT to ≤ 1e-28 relative (double-double) and ≤ 4ε·log2 N (f64).
- FFT-011 Arena core: protocol, driver, core pinning, JSONL output, environment capture, drift checks, timeouts, profiles.
- FFT-012 Library adapters: rustfft, phastft (both APIs), tfhe-fft, oxifft, with correctness checks.
- FFT-013 FFTW reference build, bindings, saved wisdom, batch planning.
- FFT-014 Suites: pow2, smooth, rough, sweep, batch, realworld.
- FFT-015 Report, compare and publish commands, with SVG plots.
- FFT-016 `bench-env.sh` and the finished `docs/benchmarking.md`.
- FFT-017 Publish the Zen 4 baseline. Done when:
  - a full run of every suite completes with every library verified;
  - drift stays under 3%;
  - two back-to-back `quick` runs agree within 3% geomean per library;
  - the zero-vs-random input check passes.

**M2 — Experiments and the architecture decision**
- FFT-020 `experiments/kernel-lab`:
  - power-of-2 Stockham with radix-8 and radix-16 passes;
  - separate vs interleaved layout;
  - tiers avx512, avx512-ymm and avx2;
  - f32 and f64, N ∈ {64, 256, 1024, 4096, 16384, 65536};
  - verified, with an arena adapter.
- FFT-021 ADR-0001 in `docs/decisions/`:
  - **Layout rule:** if one layout wins by ≥ 5% geomean on both AVX-512 and AVX2, use it alone; otherwise build both and let the planner choose.
  - **Zen 4 vector width:** 512-bit unless 256-bit wins by ≥ 3%.
  - **Radix preferences.**
  - **Go/no-go:** the best variant must reach ≥ 1.25× rustfft geomean (f32, forward, in-place, AVX-512, N 256 to 65536). If it doesn't, stop and review with you before M3.

**M3 — Core library (powers of 2 and smooth sizes, in cache)**
- FFT-030 Public API and conformance tests.
- FFT-031 Instruction-set layer: tiers, tokens, traits, transposes, masked leftovers.
- FFT-032 Codelet generator, generated codelets, and `codegen --check`.
- FFT-033 Twiddles and aligned plan storage.
- FFT-034 Small engine.
- FFT-035 Stockham engine.
- FFT-036 Correctness suite, plus SDE, Miri and tier-matrix CI.
- FFT-037 Criterion benchmarks and the fastfft arena adapter (all rows).
- Checkpoint: every size with prime factors ≤ 13 in the Small and Stockham ranges passes on every tier, and in-cache powers of 2 (64 to 16384) reach ≥ 1.3× rustfft geomean.

**M4 — Large sizes and batches**
- FFT-040 FourStep engine, including smooth sizes dominated by odd factors.
- FFT-041 Batch engine.
- FFT-042 Cache-size detection via CPUID, and thresholds.
- Checkpoint: correct up to 2^24; powers of 2 from 2^15 to 2^24 reach ≥ 1.5× geomean; the batch suite reaches ≥ 1.3×.

**M5 — Every size, plus the planner**
- FFT-050 Bluestein.
- FFT-051 `xtask tune`, the Zen 4 cost tables, and the `Estimate` cost model.
- FFT-052 Measure mode and `describe_plan`.
- FFT-053 Per-thread scratch buffer in `process()`.
- FFT-054 Fuzz target.
- Checkpoint: every N from 1 to 4096 and the rough suite pass; Measure is never more than 2% slower than Estimate.

**M6 — Tune on Zen 4 until the gates pass**
- FFT-060 perf-cell tooling, plus an assembly/spill review checklist in `docs/architecture.md`.
- FFT-061 Iterate until G1–G9 pass, then publish `docs/benchmarks/<date>-zen4-v0.1-candidate/`.

**M7 — API polish and docs**
- FFT-070 README (usage, migrating from RustFFT, the I/Q note), crate docs, examples (I/Q spectrogram, overlap-save), CHANGELOG, final `docs/architecture.md`.
- FFT-071 Public API review and a `cargo-semver-checks` baseline.

**M8 — Cloud validation**
- FFT-080 Arena `full` runs (pow2, smooth, batch, realworld) on:
  - one Intel Sapphire Rapids or Granite Rapids instance;
  - one AMD Zen 5 (EPYC 9005) instance;
  - one AVX2-only instance (e.g. AMD EPYC 7003).
  Use dedicated or bare-metal instances where available, record virtualization, and publish the reports.
- FFT-081 Per-family cost tables and default tiers.
  - Gates on each AVX-512 machine: powers of 2 ≥ 1.3×, smooth ≥ 1.15×, no cell below 0.9×.
  - The AVX2-only machine must pass G5.
  - Failures block the release unless you approve documented exceptions.

**M9 — Release v0.1.0**
- FFT-090 Release checklist: every gate passed, docs done, reports published, version bumped. You run `cargo publish`.

## 8. Future tickets (in `ROADMAP.md`)
- FUT-01 ARM NEON tier (plus the FCMA complex-multiply variant), tuned on Apple M-series and Graviton.
- FUT-02 WASM SIMD128 tier (compile-time feature).
- FUT-03 ARM SVE/SVE2.
- FUT-04 RISC-V Vector 1.0.
- FUT-05 Other instruction sets as needed (LoongArch LASX, POWER VSX).
- FUT-06 Rader's algorithm for primes, to close the G3 gap to parity.
- FUT-07 Good–Thomas prime-factor algorithm.
- FUT-08 Multithreading: parallel batches first (rayon feature), then parallel large FFTs.
- FUT-09 Real-input FFT (real-to-complex and complex-to-real).
- FUT-10 Integer I/Q input (u8/i8/i16 → f32) converted inside the first pass, and a fused power-spectrum output.
- FUT-11 Saving and loading plans ("wisdom").
- FUT-12 More libraries to compare: MKL, KFR, ducc0, kofft, microfft, monarch-butterfly.
- FUT-13 Nightly performance CI on a self-hosted Zen 4 runner.
- FUT-14 `no_std` + `alloc` support.
- FUT-15 AVX10.2 and APX tuning.
- FUT-16 2-D and N-D FFTs.
- FUT-17 API variants for separate real/imaginary arrays and strided data.
- FUT-18 `rustfft-interop` adapter (`impl rustfft::Fft`).
- FUT-19 Research: f16/bf16 storage FFT using AVX-512 FP16.

## 9. Risks and mitigations
| Risk | Mitigation |
|---|---|
| Choosing the wrong internal layout or radix | M2 experiments with a pre-set decision rule; the generator can emit both layouts |
| AVX-512 gains are small on Zen 4 (512-bit runs as two 256-bit halves) | The wins come mainly from fewer passes and no transposes; AVX2 and 256-bit tiers are first-class; the tier is chosen per CPU family |
| LLVM doesn't inline intrinsics, or spills registers | `cargo asm` checklist, perf-cell counters, register-aware ordering in the generator |
| Compile time or binary size blows up | Gate G9; per-instruction-set cargo features; radix set limited to measured wins |
| Laptop measurement noise | Environment script, core pinning, rotated rounds, drift control case, gates on both best and median |
| FFTW's GPL license leaking into the library | FFTW only behind the arena feature; arena never published; cargo-deny on the library |

## 10. Assumptions and defaults
- Libraries compared: rustfft, phastft, tfhe-fft and oxifft, plus our own FFTW 3.3.11 build as a reference. MKL and KFR come later (FUT-12).
- Planner: `Estimate` by default, `Measure` opt-in; no saved plan files in v1.
- The gate thresholds in §2 and M8 are my defaults. You can change them in `ROADMAP.md` before M6.
- MIT license kept (superseded: relicensed to MPL-2.0 before public release); edition 2024; minimum Rust 1.89; toolchain pinned to 1.95.0.
- `process()` reuses a per-thread scratch buffer that only grows (documented).
- Official arena runs are Linux-only, because they use sysfs and `sched_setaffinity`; the library itself builds everywhere.
- The research write-up and benchmark data live in `docs/`, with raw results committed gzipped.
- `experiments/kernel-lab` is throwaway code; the winning kernels are rebuilt through the generator in M3.

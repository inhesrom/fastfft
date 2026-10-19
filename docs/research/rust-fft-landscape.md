# Rust FFT landscape and performance lessons (research for `fastfft`)

*Snapshot date: 2026-09-23. All version/date facts were checked against crates.io API responses, GitHub repos/issues/PRs and vendor documents on that date. Anything marked **unverified** could not be confirmed from a primary source; **corrected** marks places where the original brief was wrong.*

---

## 0. Quick verdicts on the brief's claims

| Brief claim | Status |
|---|---|
| `rustfft` 6.4.1, any size, SSE4.1/AVX+FMA/NEON/WASM, no AVX-512 | Verified ([crates.io][rustfft-api], [README][rustfft-gh]) |
| RustFFT butterflies "up to 512?" | Verified for the **AVX** planner (f32 and f64): butterfly set tops out at 512 ([avx_planner.rs][rustfft-avxplanner]) |
| ~20M+ downloads | Verified, and higher: 29.1M total ([crates.io][rustfft-api]) |
| `phastft` bit reversal = "COBRA?" | **Corrected:** CO-BRAVO ([README][phastft-gh]) |
| `phastft` AVX-512 only in a draft PR | Verified: PR #80 "AVX-512 support", draft, opened 2026-02-22 ([PR list][phastft-drafts]) |
| `tfhe-fft` Stockham radix 2/4/8/16, `Method::Measure` | Verified; the ordered module is a port of OTFFT ([ordered.rs][tfhe-ordered]) |
| `oxifft` trails RustFFT on large powers of 2, primes, composites | Verified, quoted from its README ([oxifft README][oxifft-gh]) |
| `fftw-src` builds FFTW without SIMD | Verified: no `--enable-sse2/avx/avx2` flags ([build.rs][fftw-src-build]) |
| Debian `libfftw3` = SSE/SSE2 + AVX only | Verified: no AVX2 or AVX-512 flags ([debian/rules][debian-rules]) |
| ejmahler: transposes take 40–50% of runtime, FFTW wins at N=512, can't use AVX-512's 32 registers | All three verified in one post ([ejmahler 2021][ejm-arch]) |
| VectorFFT is ~1.29× faster than MKL at the median, f64, N=2..4096 | Verified (vendor claim, AVX2 i9-14900KF) ([VectorFFT README][vfft]) |
| VectorFFT methodology (one process per cell, both orders, SMT sibling held, control cell) | Verified ([gauntlet README][vfft-gauntlet]) |
| PhastFT PR #81 = "±20% laptop noise read as regression" | **Corrected:** #81 changed RustFFT `process()` → `process_with_scratch()`. On Zen 4 the author reported the f32 regressions as *consistent between runs, not a transient artefact* ([PR #81][phastft-81]) |
| RustFFT #169 = allocation/memory artefact | **Partly corrected:** the cause was never found. A maintainer suggested compiler dead-code elimination, and the issue was closed 2026-09-08 without a root cause ([issue #169][rustfft-169]) |
| GitHub x86 runners are "mostly AVX2-only EPYC Milan" | **Corrected/outdated:** the docs don't name a CPU. Observed SKUs are EPYC 7763 (Zen 3), EPYC 9V74 (Zen 4, AVX-512 sometimes hidden by the hypervisor) and Xeon 8370C (Ice Lake, has AVX-512) ([GH docs][gh-runners], [rspec-tracer][gha-mix], [flint #2630][flint-2630]) |
| benchFFT non-power-of-2 set "6..165375" | **Corrected:** the script's 1D non-pow2 sizes run 6…165375 **and 362880** ([benchmark script][benchfft-script]) |
| KFR methodology "warm-up, best/1st-percentile & median" | Partly verified: KFR's docs say use the **median or minimum**, exclude planning, and run for "a few seconds". Warm-up and 1st-percentile wording **unverified** ([KFR docs][kfr-bench]) |

---

## 1. Rust FFT libraries (as of September 2026)

### 1.1 Main table

| Crate | Latest (date) | Sizes | Types | SIMD ISAs | Data layout | License | Notes |
|---|---|---|---|---|---|---|---|
| `rustfft` | **6.4.1** (2025-09-18 UTC; changelog says 17 Sep 2025) [api][rustfft-api], [changelog][rustfft-changelog] | Any N: mixed radix, Good–Thomas, Rader, Bluestein, hard-coded butterflies [gh][rustfft-gh] | f32, f64 | SSE4.1, AVX+FMA (some AVX2), NEON, WASM simd128 (opt-in `wasm_simd`); **no AVX-512** | Interleaved `Complex<T>`, in-place + scratch, out-of-place, immutable-input (6.4) | MIT OR Apache-2.0 | 29.1M total downloads, 8.2M recent. MSRV 1.61. Unnormalized. Unreleased master adds a nightly-only AArch64 `fcma` feature [lib.rs][rustfft-lib] |
| `phastft` | **0.4.1** (2026-07-31) [api][phastft-api] | Powers of 2 only. Bluestein is in draft PR #122 [drafts][phastft-drafts] | f32, f64 | Via `fearless_simd` 0.5: README lists SSE4.2, AVX2, NEON, WASM. AVX-512 PR #80 is a **draft** [README][phastft-gh], [Cargo.toml][phastft-cargo] | Fast path: separate `re[]`/`im[]` slices. The interleaved `Complex` API (feature `complex-nums`) "allocates temporary buffers" | MIT OR Apache-2.0 | Radix-2 DIT, in place, recursive/cache-oblivious, separate **CO-BRAVO** bit reversal. `#![forbid(unsafe_code)]` [lib.rs][phastft-lib]. Inverse scaled by 1/N. Optional rayon (on by default). MSRV 1.88 |
| `tfhe-fft` (Zama) | **0.10.1** (2026-04-21) [api][tfhe-api] | Powers of 2 | f64 (`c64`). Optional 128-bit negacyclic `fft128` | AVX2+FMA (pulp `V3`) and AVX-512F (pulp `x86-v4`, default feature) [x86.rs][tfhe-x86], [README][tfhe-readme] | Interleaved `c64`. "Unordered" module uses a plan-dependent permuted spectrum | BSD-3-Clause-Clear. Patent grant only for research/evaluation/prototyping/personal use; commercial use needs a paid licence [README][tfhe-readme], [LICENSE][tfhe-license] | Ordered module = **Stockham**, ported from OTFFT, DIF/DIT radix 2/4/8/16. `Method::Measure(Duration)` times all candidate plans [ordered.rs][tfhe-ordered]. **Benchmark only, never copy code** |
| `oxifft` | **0.4.2** (2026-08-06) [api][oxifft-api] | Any N (CT, split radix, Stockham, Rader, Bluestein, direct) | f16, f32, f64, f128 | Runtime-detected SSE2/AVX/AVX2/AVX-512/NEON, **only for small fixed codelets and pointwise multiplies. "The general large-N Stockham butterfly path is still scalar."** SVE is detection-only [README][oxifft-gh] | Interleaved `Complex<T>` plus split-complex plans | Apache-2.0 | "99% Rust port of FFTW3" with wisdom and MEASURE/PATIENT planning. **AVX/AVX2/AVX-512 paths "never executed on any host"** as of 0.4.2 [CHANGELOG][oxifft-changelog] |
| `fftw` (bindings) | **0.8.0** (2023-04-29) [api][fftw-api] | Any N (FFTW 3.3.8) | f32, f64 | Default `source` feature builds FFTW **without SIMD** (see §1.3). The `system` feature uses the distro library | Interleaved + FFTW guru layouts | crates.io shows "non-standard" (FFTW itself is GPL) | Unmaintained since 2023 |

### 1.2 What changed in `oxifft` 0.3.x → 0.4.x

- Release cadence: 0.3.0 on 2026-04-25, 0.3.1 on 05-02, 0.3.2 on 05-22, then 0.4.0 and 0.4.1 both on 07-27, and 0.4.2 on 08-06 ([crates.io][oxifft-api]).
- **0.4.0 (breaking):** removed dead `kernel::{Solver, ProblemHash, hash_problem}`. `auto_tune::tune_size` gained a `flags` parameter. **0.4.1:** bumped the optional GPU backends only ([CHANGELOG][oxifft-changelog]).
- **0.4.2 fixes a wrong-answer bug.** Every x86_64 CPU without AVX2 got wrong FFT results: 93 of 1447 tests failed, with errors of about 10–100. There were two defects, both in the SSE3 butterfly: the complex-multiply lane order was wrong, and a `w *= w_step` twiddle recurrence drifted. The authors say plainly that the AVX/AVX2/AVX-512 code "has still never been executed on any host", and that the project has no CI ([CHANGELOG][oxifft-changelog]).
- Its own performance statement (README, current): *"Against RustFFT, OxiFFT is competitive at some small/medium sizes but currently slower on large power-of-2 (up to ~3.4× at 65536), prime (up to ~7.8× at n=17), and several composite sizes. The root cause is that SIMD acceleration is applied only to small fixed-size codelets and pointwise multiplies today."* The committed FFTW baseline has a geomean ratio of 1.50× and fails its 2^20-complex gate at 3.67×. It was "measured mid-development on Apple Silicon" ([README][oxifft-gh]).
- **Conclusion:** not a performance target. It is only worth tracking for API ideas such as wisdom and guru plans.

### 1.3 How FFTW gets built behind the `fftw` crate

- **`fftw-src` (default `source` feature):** copies the bundled `fftw-3.3.8` and runs `configure --with-pic --enable-static --disable-doc [--enable-single]`. There is **no `--enable-sse2`, `--enable-avx`, `--enable-avx2`, `--enable-avx512` or `--enable-neon`**, so only FFTW's scalar codelets are compiled ([build.rs][fftw-src-build]). On Windows it instead downloads the prebuilt `fftw-3.3.5-dll64.zip`, whose SIMD configuration is **unverified**. (Build script read from `master`; assumed unchanged since the 0.8 release, **unverified** for the exact tag.)
- **Debian/Ubuntu `libfftw3`** (salsa `debian/rules`):
  - amd64/i386/x32: single precision gets `--enable-sse --enable-avx`, double gets `--enable-sse2 --enable-avx`.
  - armhf/arm64: single precision gets `--enable-neon`.
  - There are **no `--enable-avx2`, `--enable-avx512`, `--enable-fma` or `--enable-avx-128-fma` flags** ([debian/rules][debian-rules]).
  - So a distro FFTW on Zen 4 runs AVX (256-bit, no FMA codelets), not AVX2/AVX-512. Any "vs FFTW" number must say which build was used.

### 1.4 Other crates, and why they aren't targets

| Crate | Version | Why not a target |
|---|---|---|
| `kofft` | 0.1.5 (2025-08-14), MIT/Apache-2.0, ~2.4k downloads | MCU/no_std "kitchen sink" (FFT, DCT, wavelets, STFT). Young and low adoption [api][kofft-api] |
| `microfft` | 0.6.0 (2024-04-14), MIT, 1.18M downloads | Embedded, compile-time power-of-2 sizes up to 32768 selected by `size-*` features, no x86 SIMD engine [api][microfft-api] |
| `monarch-butterfly` | 0.4.1 (2025-04-02), MIT | Proc-macro unrolled fixed-size FFTs. It is a codelet generator, not a planner/engine [api][monarch-api] |
| `fourier` | 0.1.0 (2020-01-21), MIT/Apache-2.0 | Abandoned after a single release. Historically notable because ejmahler used its benchmarks for the RustFFT 5.0 vs FFTW claim [api][fourier-api], [ejm-5.0][ejm-5exp] |

---

## 2. Where the speed comes from

### 2.1 RustFFT's AVX design (author's own statements)

All from ejmahler's "Exploring RustFFT's SIMD Architecture", 2021-01-06 ([ejm-arch]):

- **Scalar base algorithm:** a six-step FFT (transpose → row FFTs → twiddle → transpose → row FFTs → transpose). He calls it "just about the worst possible architecture for SIMD" because 3 of its 6 steps are transposes.
- **AVX design:**
  - Column FFTs of a compile-time-constant height B, loading one AVX vector per row (4 complex f32).
  - Twiddles are merged into the column pass. Then comes an inner FFT of size N/B, dispatched dynamically via `Arc<dyn Fft>`, then a transpose.
  - Implemented radices: 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 16.
  - 12xn is fastest, then 8xn and 9xn. 16xn "is just barely too large to fit into AVX registers" (16 data vectors plus temporaries) and spills.
- **Transpose cost, quoted:** "benchmarking shows that we do indeed spend around 40%-50% of our time on the transpose."
- **FFTW at 512, quoted:** "FFTW beats RustFFT at a size of 512. 512 is a hardcoded base case in RustFFT… How is their size-512 FFT so fast?"
- **AVX-512, quoted:** "a Bxn algorithm requires both B AVX registers storing FFT data, and B general-purpose registers storing array pointers… AVX-512 still only has 16 general-purpose registers." So the architecture "doesn't extend well to the 32 registers of AVX-512."
- **Current planner (6.4.x source):**
  - Power-of-2 plans use a butterfly base of 128, 256 or 512 plus 8xn/16xn chains.
  - The AVX butterfly set includes 5…36, 48, 54, 64, 72, 128, 256 and 512 (f32), and 5…36, 64, 128, 256 and 512 (f64).
  - Rader's algorithm is used only under conservative heuristics, and the code comments that a measuring planner "would be an opportunity for up to 2x performance gains" ([avx_planner.rs][rustfft-avxplanner]).
- **Third-party Zen 4 timings.** From Shnatsel's Criterion run on an unnamed "Zen 4" CPU, attached to PhastFT PR #81 ([gist][zen4-gist]). All figures are after the switch to `process_with_scratch`; "before" values are derived from Criterion's `change`.

  | f32 forward N | After (median, CI) | Change vs before | Derived "before" (`process()`) |
  |---|---|---|---|
  | 4096 | 6.48 µs [6.02, 7.03] | +59.8% | ≈ 4.06 µs |
  | 65536 | 118.1 µs | +24.9% | ≈ 94.6 µs |
  | 2^24 | 70.86 ms | −38.0% | ≈ 114 ms |

  - The exact CPU model and clocks are unknown. Only 20 samples per point. Treat as indicative only.
  - The large-N speed-up is consistent with `process()` allocating a fresh scratch buffer every call (128 MiB at 2^24 f32). That is an **inference, not verified**.

### 2.2 Zen 4 microarchitecture facts relevant to FFT

| Fact | Source |
|---|---|
| Vector units: two 256-bit FMA units plus four 256-bit ALU pipes, "largely unchanged since Zen 2" | [C&C Zen 4 pt 1][cnc-zen4-1] |
| AVX-512 instructions stay one micro-op through most of the pipeline and are split into 2×256-bit halves late ("double pumping"). **512-bit stores are the exception:** decoded as two micro-ops, using two of the 64 store-queue entries | [C&C pt 1][cnc-zen4-1], [C&C pt 2][cnc-zen4-2] |
| L1D bandwidth: **two 256-bit loads + one 256-bit store per cycle** (512b load + 256b store) | [C&C pt 1][cnc-zen4-1] |
| 32 KB L1D, 1 MB private L2 (doubled from Zen 3 at +2 cycles latency) | [AMD GDC 2023 slides][amd-gdc23], [C&C pt 2][cnc-zen4-2] |
| AVX-512 gives 32 vector registers (vs 16 in AVX2), plus a small mask register file (~52 renames) | [C&C pt 1][cnc-zen4-1], [ejm-arch] |
| All Zen 4 SKUs (Raphael, Phoenix, Genoa, Bergamo) have 4×256-bit = 1024 bits/cycle SIMD throughput | [numberworld][nw-zen5] |

- **Why this matters:** on Zen 4, AVX-512 gives *register capacity, masking and richer shuffles*, not more FLOPs or L1 bandwidth than AVX2. A radix-16 column kernel that spills under AVX2 can stay in registers under AVX-512 (this addresses ejmahler's 16xn problem). But throughput-bound kernels should not expect 2×.
- The brief asked for Agner Fog and uops.info citations. They were not fetched; the facts above rely on Chips and Cheese and AMD.

### 2.3 Zen 5, Intel AVX-512 and AVX10

- **Zen 5 desktop and server have a native 512-bit datapath; mobile does not.** Zen 5 desktop (Granite Ridge) has **4×512-bit** execution. Server (Turin) is presumed the same ("presumably"). Mobile Strix Point Zen 5/Zen 5c "retains Zen4's 4 x 256-bit throughput" ([numberworld][nw-zen5]). AMD confirmed to the press that Strix cores have 256-bit FPU datapaths ([TechPowerUp][tpu-strix]).
- **Zen 5 has no AVX offset.** It throttles only on thermal, power or current limits. "AMD does not do AVX offsets" ([numberworld][nw-zen5]).
- **Intel servers downclock for AVX-512.**
  - Frequency licences/offsets apply, and on Skylake-SP voltage transitions throttle dispatch to about 1/4 speed for roughly 8–20 µs after wide instructions resume ([Travis Downs 2020][td-avx512]).
  - Ice Lake/Rocket Lake license-based downclocking is much milder ([Travis Downs ICL][td-icl]).
  - Implication: short, bursty AVX-512 FFT calls inside scalar code can lose on older Xeons.
- **Intel client chips lack AVX-512.**
  - The hybrid client chips (Alder Lake onward) shipped without it ([C&C pt 1][cnc-zen4-1], [Tom's Hardware][toms-nvl]).
  - The AVX10 technical paper rev 3.0 (March 2025) "removed references to 256-bit maximum vector register size", so AVX10 now implies 512-bit ([Intel AVX10 paper][intel-avx10]).
  - Intel's ISE manual (Nov 2025) says Nova Lake will support AVX10.2 and APX ([Phoronix][phx-nvl]).
  - Whether Nova Lake had shipped by 2026-09-23 is **unverified**.
  - Practical consequence: the installed base of Intel laptops and desktops is AVX2-only.

### 2.4 Large FFTs are memory-bandwidth bound

- **Bailey's four-step/six-step** (J. Supercomputing 4(1), 1990): most FFTs make ≥m passes over 2^m points. Restructuring as row and column FFTs with a transpose cuts the passes over external memory ([Bailey PDF][bailey]).
- **Numberworld on Zen 5:** a 9950X on DDR5-4800 gets about 60 GB/s. That is 0.75 bytes/cycle/core, so a streaming loop would need about 340 AVX-512 instructions per 512-bit load. "Nearly all linear-compute/linear-memory workloads such as FFT… have either reached this point or are getting close to it" ([numberworld][nw-zen5]).
- **PhastFT and Giesen agree:** PhastFT's README makes the same argument ([phastft-gh]). Giesen notes that radix-2 is "a memory streaming exercise with a part-time gig in arithmetic", and larger radices cut passes ([Giesen 2023][giesen]).
- Out of cache, the goal is **minimum passes over memory** (radix-16/32 leaves, blocked four-step), not fewer flops.

### 2.5 What the fastest C libraries do

- **FFTW:**
  - Performance-critical codelets are generated by `genfft`, an OCaml special-purpose compiler that simplifies DAGs and schedules straight-line code (Frigo, PLDI 1999, [doi][frigo-pldi]).
  - Its planner times candidate plans: `FFTW_MEASURE` actually computes several FFTs and measures them (it overwrites the input during planning). PATIENT and EXHAUSTIVE widen the search, and wisdom caches the result ([FFTW planner flags][fftw-flags]).
- **VectorFFT (Tugbars/VectorFFT, MIT, C):**
  - f64-only, x86 AVX2/AVX-512. Its kernels come from its own DAG FFT compiler. Interleaved and split layouts are separate engines.
  - Its planner "races the engines… and the winner is kept as wisdom".
  - README record `gauntlet_2_4096_2026-09-23`, on an i9-14900KF (P-core, AVX2) against oneMKL 2025.3, 1D c2c FP64 interleaved out-of-place, every N from 2 to 4096 (4,095 cells):
    - Overall median speed-up **1.29×**; 89% of cells at or above parity.
    - Powers of two only **1.13×**.
    - Accuracy is **worse than MKL**: median relative L2 error 5.80 vs 4.04 (×1e-16).
  - This is a self-reported vendor claim, not independently reproduced ([VectorFFT README][vfft]).
- **OTFFT:** Stockham (self-sorting) + AVX/AVX-512 + six-step for large N, C++ template metaprogramming, MIT ([OTFFT][otfft]). `tfhe-fft`'s ordered FFT is a port of it ([ordered.rs][tfhe-ordered]).
- **FFTS:** cache-oblivious algorithm with runtime specialization. At init it precomputes "sequencing and data access information" and may generate machine code ([Blake et al., IEEE TSP 2013][ffts]). The claim that this removes a separate reorder pass is our reading of that abstract and is **unverified in detail**.
- **PFFFT:**
  - Single precision only. N = 2^a·3^b·5^c with a ≥ 5. SSE1/Altivec/NEON. Best for 128 ≤ N ≤ 8192.
  - `pffft_transform` leaves the spectrum in an internal SIMD-friendly order, meant for inverse transforms or `pffft_zconvolve_accumulate`.
  - **Corrected:** canonical order *does* cost a separate `pffft_zreorder` step (`pffft_transform_ordered` = transform + zreorder) ([pffft.h][pffft-h]).
- **Giesen, "Notes on FFTs for implementers" (2023-03-19)** ([giesen]):
  - Radix-4 / radix-2² (fewer twiddle loads) are "a solid choice". Combining 2–3 levels in registers cuts memory ops.
  - He is **not a fan of Stockham**: its ping-pong buffers double the working set and it shuffles data every pass. He prefers one batched reorder, fused with the first radix pass and any format conversion.
  - The best internal SIMD layout is "interleaved at the granularity of full vectors" (re[0..7], im[0..7], …), but he dislikes exposing it in the public API.
  - Avoid permuted outputs at API boundaries.
- **Plan timing is universal among the leaders:** FFTW `MEASURE` ([fftw-flags]), VectorFFT race-and-bank wisdom ([vfft]), `tfhe-fft` `Method::Measure(Duration)` ([tfhe-ordered]). RustFFT is heuristic-only ([rustfft-avxplanner]).

### 2.6 Interleaved I/Q is the lingua franca

| Format | Layout | Source |
|---|---|---|
| `num_complex::Complex<T>` | `#[repr(C)] struct { re: T, im: T }`. The crate relies on "no added padding" for `bytemuck::Pod`, so it is layout-equivalent to `[T; 2]` | [num-complex src][numc-src] |
| RTL-SDR `rtl_sdr` | Interleaved unsigned 8-bit I,Q (centred ~127.5) | [K3XEC][k3xec] (secondary); tool source [rtl_sdr.c][rtlsdr-src] |
| HackRF `hackrf_transfer` | "8-bit signed quadrature samples", interleaved I,Q (`.cs8`) | [HackRF docs][hackrf-docs] |
| UHD `fc32` | CPU format "always a `std::complex<float>`" | [UHD converters][uhd-conv] |
| SigMF `cf32_le` | "Complex samples MUST be interleaved, with the in-phase component first" | [SigMF spec][sigmf] |

A split-only fast path (PhastFT) forces a deinterleave/reinterleave copy on every real-world SDR input. PhastFT's README admits the interleaved API is slower and allocates ([phastft-gh]).

### 2.7 Rust language support

- **Rust 1.86 (2025-04-03):** stabilized `target_feature_11`, so safe `fn`s can carry `#[target_feature]`. They are safely callable from functions with the same features; other callers need `unsafe` ([1.86 blog][rust186]).
- **Rust 1.89 (2025-08-07):** "Stabilize the avx512 target features" plus "AVX512 intrinsics" on stable ([1.89 release][rust189-gh], [1.89 blog][rust189]).
- This means `fastfft` can ship AVX-512 on stable, provided its MSRV is ≥ 1.89.
- `fearless_simd` 0.5 already models an `Avx512` level ("Ice Lake… avoiding early slow implementations") alongside SSE4.2, AVX2, NEON and WASM ([docs.rs][fearless]).

---

## 3. Benchmarking lessons

### 3.1 benchFFT (FFTW authors) methodology — [method page][benchfft-method]

- **Setup:** measured separately and only as a rough indicator. Planning is excluded from the speed number.
- **Timing:** repeated FFTs of the **same zero-initialized array**. Enough iterations for accurate timing (minimum time calibrated with an lmbench routine), averaged. That averaging is repeated **8 times**, and the **minimum** average is reported.
- **Metric:** "mflops" = 5 N log2 N / t(µs) for complex transforms (2.5 N log2 N for real). "Not an actual flop count".
- **Breakdown:** a 4-character transform type: precision d/s, complex/real c/r, in-/out-of-place i/o, forward/backward f/b (e.g. `dcif`). Plots show only the faster direction and the "on average" fastest variant.
- **Caveat:** "different formats are not strictly comparable" (interleaved vs split).
- **Standard 1D sizes** (from the script [benchfft-script]; this is a GitHub mirror of the benchFFT tarball, `meerd/benchFFT`):
  - Powers of 2 from 2 to 2^25.
  - Non-powers of 2: **6, 9, 12, 15, 18, 24, 36, 80, 108, 210, 504, 1000, 1960, 4725, 10368, 27000, 75600, 165375, 362880**.
  - The default `maxn` is 1,048,576.

### 3.2 KFR — [KFR docs][kfr-bench], [kfrlib/fft-benchmark][kfr-fftbench]

- Verify that the dispatched ISA is the one expected (`cpu_runtime()`), and that no emulation is involved (e.g. Rosetta).
- **Exclude plan creation**, and consume the output so the compiler can't optimize it away.
- Run for "a few seconds". Report the **median or minimum**, not the mean.
- The harness has an `--avx2-only` switch (KFR, IPP, MKL) and covers real/complex, in/out-of-place and forward/inverse.
- Explicit warm-up and "1st percentile" reporting: **unverified**.

### 3.3 VectorFFT "gauntlet" — [vfft-gauntlet]

Verified from its README:

- **One process per cell**, and **both engine orders**.
- Best-of-5 in two timing windows. The reported ratio is the **worse** of the two orders.
- Cache-bust plus a cool-down between engines.
- Caller pinned **with its SMT sibling held** (the sibling is kept occupied/idle so it can't interfere; the README phrase is "held").
- A **control cell every 100 cells** to detect drift.
- Round-trip error on every cell. `verify` checks against a **long-double scalar DFT**.
- GFLOPS = 5 N log2 N / t.

### 3.4 Published comparison mistakes

| Mistake | Evidence |
|---|---|
| **Planning inside the timed loop** | `astral4/fft-benchmark` rebuilds `FftPlanner::new()` per sample and calls `plan_fft_forward(n)` inside `bench_refs`. FFTW builds a `Flag::ESTIMATE` plan inside the timed closure. It concludes "`fftw` was consistently slower" (M1, rustfft 6.2, phastft 0.2.1) ([benches/rustfft.rs][astral-rustfft], [benches/fftw.rs][astral-fftw], [README][astral]) |
| **FFTW built without SIMD / weak planner** | The same benchmark uses the `fftw` crate's default `fftw-src` build (no SIMD flags, §1.3) with ESTIMATE plans ([astral README][astral], [build.rs][fftw-src-build]). Debian's FFTW lacks AVX2/AVX-512 ([debian-rules]) |
| **API-path artefacts read as library speed** | PhastFT PR #81 switched RustFFT to `process_with_scratch`. On Zen 4, f32 sizes ≤ 2^21 got slower and ≥ 2^22 got faster; not seen on Apple M4 ([PR #81][phastft-81], [gist][zen4-gist]). The upstream issue was closed with no root cause; DCE (missing `black_box`) was suggested ([#169][rustfft-169]). Noise: several Criterion points had 20–35% outliers ([gist][zen4-gist]), but the author called the regressions reproducible. **"±20% laptop noise" is not what #81 shows** |
| **Different layouts / normalizations** | benchFFT's format warning ([benchfft-method]). PhastFT scales the inverse by 1/N ([phastft-gh]). RustFFT never normalizes ([rustfft-lib]). PFFFT is unscaled ([pffft-h]). tfhe-fft is unscaled (its example divides by N) ([tfhe-readme]). PhastFT's interleaved API adds copies ([phastft-gh]) |
| **Mixed runner CPUs** | GHA `ubuntu-latest` produced 15–25% shifts across EPYC 7763/9V74/Xeon 8370C, which showed up as false regressions ([rspec-tracer commit][gha-mix]). CodSpeed saw 9/10 runs on EPYC 7763 and 1/10 on Xeon 8370C ([CodSpeed][codspeed]) |

### 3.5 Tooling limits

- **Valgrind can't run AVX-512 code.** VEX bug 383010 "Add support for AVX-512 instructions" is still **CONFIRMED (open)**; Intel's 2017–2018 prototype patches were never merged ([KDE bug][valgrind-bug]). So callgrind and iai-callgrind/gungraun can't execute AVX-512 paths. Run instruction-count CI with AVX-512 dispatch disabled, or on AVX2 paths only.
- **GitHub-hosted runners have no guaranteed ISA.**
  - The hardware docs list only vCPU count, RAM and arch (x64: 4 vCPU public / 2 vCPU private). **No CPU model or ISA is guaranteed** ([GH docs][gh-runners]).
  - Observed SKUs: AMD EPYC 7763 (Zen 3, no AVX-512) ([Geekbench][gb-7763]), AMD EPYC 9V74 (Zen 4; lscpu sometimes shows **no** AVX-512 under Hyper-V) ([flint #2630][flint-2630]), and Intel Xeon 8370C (Ice Lake) ([CodSpeed][codspeed]).
  - Therefore: runtime-dispatch tests must not assume AVX-512 is present or absent, and performance numbers from GHA are not meaningful.
- **Intel SDE** emulates AVX-512, AMX and AVX10 for functional testing, but "is useful to assess functionality, but not performance, as it runs programs many times more slowly than native hardware" ([Intel SDE article][sde-benefits], [SDE page][sde]).

---

## 4. Implications for `fastfft`

1. **Interleaved `Complex<f32/f64>` public API** (`#[repr(C)]`, same as `[T;2]`) as the primary and fastest path. Every SDR source and SigMF file is interleaved I/Q (§2.6). Split layout, if offered at all, should be secondary; never make users pay PhastFT's copy tax.
2. **Keep interleaved (or vector-granular interleaved) layout inside the kernels.** Giesen's vector-block interleave is the best internal format, but it must not leak into the API. Any conversion must be fused into the first and last pass (§2.5).
3. **No standalone transpose or bit-reversal passes in the hot engine.** RustFFT spends 40–50% on transposes ([ejm-arch]). Use self-sorting (Stockham) or fold the reorder into the first/last radix pass. Weigh Stockham's 2× working set (Giesen) against the pass it saves, especially near L1/L2 limits (Zen 4: 32 KB / 1 MB).
4. **Large radices / fused multi-level codelets** (radix-8/16, 2^k-in-registers) to minimize passes. Out of cache (≳ L2), switch to a blocked four-step/six-step (Bailey) because the problem is bandwidth-bound (§2.4).
5. **AVX2+FMA is the first-class x86 engine.** It covers every Intel client chip, Zen 2–4 throughput, Zen 5 mobile, and most CI (§2.3, §3.5).
6. **AVX-512 is an optional, measured engine**, used mainly for its **32 registers and masking** (radix-16 columns without spills). Do not expect 2× on Zen 4 (2×256 execution, 256-bit store path, split 512-bit stores). Do expect more on Zen 5 desktop/server. Watch Intel Xeon licence downclocking for short calls. Requires MSRV ≥ 1.89.
7. **Per-CPU ISA choice at plan time**, not only per compile target: runtime detection plus an optional measured planner (FFTW/VectorFFT/tfhe-fft style), with an ESTIMATE-like heuristic default. Zen 4 vs Zen 5 vs Strix Point vs Xeon can prefer different engines for the same N.
8. **Use safe `#[target_feature]` functions** (Rust 1.86+) to confine `unsafe` to the dispatch boundary. `fearless_simd` 0.5 already models SSE4.2/AVX2/AVX-512/NEON/WASM levels if a dependency is acceptable.
9. **Measurement protocol:**
   - Planning and allocation outside the timed region. Preallocated scratch. `black_box` on inputs and outputs.
   - One process per cell, both library orders, the worse ratio reported.
   - Pinned core with an idle SMT sibling, and control-cell re-measurement.
   - Report min and median, plus benchFFT "mflops" (5N log2N/t) with the benchFFT size set.
   - Accuracy measured against a higher-precision reference.
10. **Declare the comparator build exactly:** FFTW version, configure flags (scalar `fftw-src` vs Debian SSE2/AVX vs self-built AVX2/AVX-512), planner flag (MEASURE/PATIENT), RustFFT version and call path (`process` vs `process_with_scratch`), normalization and layout.
11. **CI:**
    - Correctness for every engine under Intel SDE (AVX-512) and on native AArch64.
    - Instruction-count regression tracking (callgrind) only for scalar/AVX2 paths.
    - Wall-clock performance only on pinned bare-metal Zen 4 (and ideally Zen 5 and an Intel AVX2 client), never on GitHub-hosted runners.
12. **Legal hygiene:** `tfhe-fft` (BSD-3-Clause-Clear, no patent grant for commercial use) and FFTW (GPL) are **benchmark-only**; do not port code. RustFFT, PhastFT and VectorFFT are MIT/Apache and could be read for ideas, but attribution rules apply.

---

## 5. Sources

1. rustfft crates.io API — https://crates.io/api/v1/crates/rustfft [rustfft-api]
2. RustFFT GitHub/README — https://github.com/ejmahler/RustFFT [rustfft-gh]
3. RustFFT CHANGELOG — https://github.com/ejmahler/RustFFT/blob/master/CHANGELOG.md [rustfft-changelog]
4. RustFFT `src/lib.rs` (master) — https://github.com/ejmahler/RustFFT/blob/master/src/lib.rs [rustfft-lib]
5. RustFFT `src/avx/avx_planner.rs` — https://github.com/ejmahler/RustFFT/blob/master/src/avx/avx_planner.rs [rustfft-avxplanner]
6. RustFFT issue #169 — https://github.com/ejmahler/RustFFT/issues/169 [rustfft-169]
7. ejmahler, "Exploring RustFFT's SIMD Architecture" (2021-01-06) — https://users.rust-lang.org/t/exploring-rustffts-simd-architecture/53780 [ejm-arch]
8. ejmahler, "RustFFT 5.0.0-experimental.1: Now faster than FFTW!" — https://users.rust-lang.org/t/rustfft-5-0-0-experimental-1-now-faster-than-fftw/53049 [ejm-5exp]
9. phastft crates.io API — https://crates.io/api/v1/crates/phastft [phastft-api]
10. PhastFT GitHub/README — https://github.com/smu160/PhastFT [phastft-gh]
11. PhastFT Cargo.toml — https://github.com/smu160/PhastFT/blob/main/Cargo.toml [phastft-cargo]
12. PhastFT src/lib.rs — https://github.com/smu160/PhastFT/blob/main/src/lib.rs [phastft-lib]
13. PhastFT draft PRs (incl. #80 AVX-512, #122 Bluestein) — https://github.com/QuState/PhastFT/pulls?q=is%3Apr+is%3Adraft [phastft-drafts]
14. PhastFT PR #81 — https://github.com/smu160/PhastFT/pull/81 [phastft-81]
15. Shnatsel Zen 4 Criterion gist — https://gist.github.com/Shnatsel/a0b00f7e2a3b4eab74293b8996c94821 [zen4-gist]
16. tfhe-fft crates.io API — https://crates.io/api/v1/crates/tfhe-fft [tfhe-api]
17. tfhe-fft README — https://github.com/zama-ai/tfhe-rs/blob/main/tfhe-fft/README.md [tfhe-readme]
18. tfhe-rs LICENSE — https://github.com/zama-ai/tfhe-rs/blob/main/LICENSE [tfhe-license]
19. tfhe-fft `src/ordered.rs` — https://github.com/zama-ai/tfhe-rs/blob/main/tfhe-fft/src/ordered.rs [tfhe-ordered]
20. tfhe-fft `src/x86.rs` — https://github.com/zama-ai/tfhe-rs/blob/main/tfhe-fft/src/x86.rs [tfhe-x86]
21. oxifft crates.io API — https://crates.io/api/v1/crates/oxifft [oxifft-api]
22. OxiFFT README — https://github.com/cool-japan/oxifft [oxifft-gh]
23. OxiFFT CHANGELOG — https://github.com/cool-japan/oxifft/blob/master/CHANGELOG.md [oxifft-changelog]
24. fftw crates.io API — https://crates.io/api/v1/crates/fftw [fftw-api]
25. fftw-src build.rs — https://github.com/rust-math/fftw/blob/master/fftw-src/build.rs [fftw-src-build]
26. Debian fftw3 `debian/rules` — https://salsa.debian.org/science-team/fftw3/-/blob/master/debian/rules [debian-rules]
27. kofft crates.io API — https://crates.io/api/v1/crates/kofft [kofft-api]
28. microfft crates.io API — https://crates.io/api/v1/crates/microfft [microfft-api]
29. monarch-butterfly crates.io API — https://crates.io/api/v1/crates/monarch-butterfly [monarch-api]
30. fourier crates.io API — https://crates.io/api/v1/crates/fourier [fourier-api]
31. Chips and Cheese, Zen 4 Part 1 — https://chipsandcheese.com/p/amds-zen-4-part-1-frontend-and-execution-engine [cnc-zen4-1]
32. Chips and Cheese, Zen 4 Part 2 — https://chipsandcheese.com/p/amds-zen-4-part-2-memory-subsystem-and-conclusion [cnc-zen4-2]
33. AMD GDC 2023 Ryzen Software Optimization slides — https://gpuopen.com/download/GDC-2023-AMD-Ryzen-Processor-Software-Optimization.pdf [amd-gdc23]
34. A. Yee, "Zen5's AVX512 Teardown" (numberworld) — https://www.numberworld.org/blogs/2024_8_7_zen5_avx512_teardown/ [nw-zen5]
35. TechPowerUp, Strix Point 256-bit FPU — https://www.techpowerup.com/324873/amd-strix-point-soc-zen-5-and-zen-5c-cpu-cores-have-256-bit-fpu-datapaths [tpu-strix]
36. Travis Downs, "Gathering Intel on Intel AVX-512 Transitions" — https://travisdowns.github.io/blog/2020/01/17/avxfreq1.html [td-avx512]
37. Travis Downs, "Ice Lake AVX-512 Downclocking" — https://travisdowns.github.io/blog/2020/08/19/icl-avx512-freq.html [td-icl]
38. Intel AVX10 technical paper (rev 3.0) — https://cdrdv2-public.intel.com/849709/356368-003-intel-avx10-technical-paper.pdf [intel-avx10]
39. Phoronix, Nova Lake AVX10.2/APX — https://www.phoronix.com/news/Nova-Lake-Does-AVX10.2-APX [phx-nvl]
40. Tom's Hardware, AVX-512 returning with Nova Lake — https://www.tomshardware.com/pc-components/cpus/avx-512-support-is-reportedly-returning-with-intels-next-gen-nova-lake-cpus-latest-linux-kernel-patches-reveal-p-cores-and-e-cores-will-gain-native-512-bit-execution [toms-nvl]
41. D. H. Bailey, "FFTs in External or Hierarchical Memory" (1990) — https://www.davidhbailey.com/dhbpapers/fftq.pdf [bailey]
42. M. Frigo, "A Fast Fourier Transform Compiler", PLDI 1999 — https://doi.org/10.1145/301618.301661 [frigo-pldi]
43. FFTW Planner Flags — https://www.fftw.org/fftw3_doc/Planner-Flags.html [fftw-flags]
44. VectorFFT README — https://github.com/Tugbars/VectorFFT [vfft]
45. VectorFFT gauntlet README — https://github.com/Tugbars/VectorFFT/blob/main/gauntlet/README.md [vfft-gauntlet]
46. OTFFT — http://wwwa.pikara.ne.jp/okojisan/otfft-en/ [otfft]
47. Blake, Witten, Cree, "The Fastest Fourier Transform in the South" (IEEE TSP 2013) — https://doi.org/10.1109/tsp.2013.2273199 [ffts]
48. PFFFT header (Pommier) — https://github.com/michelerenzullo/pffft_pommier/blob/main/pffft.h [pffft-h]
49. F. Giesen, "Notes on FFTs: for implementers" (2023-03-19) — https://fgiesen.wordpress.com/2023/03/19/notes-on-ffts-for-implementers/ [giesen]
50. num-complex `src/lib.rs` — https://github.com/rust-num/num-complex/blob/master/src/lib.rs [numc-src]
51. K3XEC, "Processing IQ data formats" — https://k3xec.com/packrat-processing-iq/ [k3xec]
52. osmocom `rtl_sdr.c` — https://github.com/osmocom/rtl-sdr/blob/master/src/rtl_sdr.c [rtlsdr-src]
53. HackRF tools docs — https://hackrf.readthedocs.io/en/stable/hackrf_tools.html [hackrf-docs]
54. UHD manual, Converters — https://files.ettus.com/manual/page_converters.html [uhd-conv]
55. SigMF specification — https://github.com/sigmf/SigMF/blob/sigmf-v1.x/sigmf-spec.md [sigmf]
56. Announcing Rust 1.86.0 — https://blog.rust-lang.org/2025/04/03/Rust-1.86.0/ [rust186]
57. Announcing Rust 1.89.0 — https://blog.rust-lang.org/2025/08/07/Rust-1.89.0/ [rust189]
58. Rust 1.89.0 release notes — https://github.com/rust-lang/rust/releases/tag/1.89.0 [rust189-gh]
59. fearless_simd docs — https://docs.rs/fearless_simd/latest/fearless_simd/index.html [fearless]
60. benchFFT methodology — https://www.fftw.org/speed/method.html [benchfft-method]
61. benchFFT `scripts/benchmark` (mirror) — https://github.com/meerd/benchFFT/blob/master/scripts/benchmark [benchfft-script]
62. KFR "Benchmarking DFT" — https://kfr.dev/docs/latest/benchmarking/ [kfr-bench]
63. kfrlib/fft-benchmark — https://github.com/kfrlib/fft-benchmark [kfr-fftbench]
64. astral4/fft-benchmark README — https://github.com/astral4/fft-benchmark [astral]
65. astral4 `benches/rustfft.rs` — https://github.com/astral4/fft-benchmark/blob/main/benches/rustfft.rs [astral-rustfft]
66. astral4 `benches/fftw.rs` — https://github.com/astral4/fft-benchmark/blob/main/benches/fftw.rs [astral-fftw]
67. Valgrind bug 383010 (AVX-512) — https://bugs.kde.org/show_bug.cgi?id=383010 [valgrind-bug]
68. GitHub-hosted runners reference — https://docs.github.com/en/actions/reference/runners/github-hosted-runners [gh-runners]
69. rspec-tracer commit on GHA CPU heterogeneity — https://github.com/avmnu-sng/rspec-tracer/commit/c03a77c6808a5901c79850367a1de89f1288b646 [gha-mix]
70. flint issue #2630 (EPYC 9V74 without AVX-512) — https://github.com/flintlib/flint/issues/2630 [flint-2630]
71. CodSpeed, "Why glibc is faster on some GitHub Actions runners" — https://codspeed.io/blog/why-glibc-faster-github-actions [codspeed]
72. Geekbench, GHA Ubuntu runner (EPYC 7763) — https://browser.geekbench.com/v6/cpu/15363094 [gb-7763]
73. Intel, "Benefits of Using Intel SDE" — https://www.intel.com/content/www/us/en/developer/articles/technical/benefits-of-using-intel-software-development-emulator.html [sde-benefits]
74. Intel SDE product page — https://www.intel.com/content/www/us/en/developer/articles/tool/software-development-emulator.html [sde]

[rustfft-api]: https://crates.io/api/v1/crates/rustfft
[rustfft-gh]: https://github.com/ejmahler/RustFFT
[rustfft-changelog]: https://github.com/ejmahler/RustFFT/blob/master/CHANGELOG.md
[rustfft-lib]: https://github.com/ejmahler/RustFFT/blob/master/src/lib.rs
[rustfft-avxplanner]: https://github.com/ejmahler/RustFFT/blob/master/src/avx/avx_planner.rs
[rustfft-169]: https://github.com/ejmahler/RustFFT/issues/169
[ejm-arch]: https://users.rust-lang.org/t/exploring-rustffts-simd-architecture/53780
[ejm-5exp]: https://users.rust-lang.org/t/rustfft-5-0-0-experimental-1-now-faster-than-fftw/53049
[phastft-api]: https://crates.io/api/v1/crates/phastft
[phastft-gh]: https://github.com/smu160/PhastFT
[phastft-cargo]: https://github.com/smu160/PhastFT/blob/main/Cargo.toml
[phastft-lib]: https://github.com/smu160/PhastFT/blob/main/src/lib.rs
[phastft-drafts]: https://github.com/QuState/PhastFT/pulls?q=is%3Apr+is%3Adraft
[phastft-81]: https://github.com/smu160/PhastFT/pull/81
[zen4-gist]: https://gist.github.com/Shnatsel/a0b00f7e2a3b4eab74293b8996c94821
[tfhe-api]: https://crates.io/api/v1/crates/tfhe-fft
[tfhe-readme]: https://github.com/zama-ai/tfhe-rs/blob/main/tfhe-fft/README.md
[tfhe-license]: https://github.com/zama-ai/tfhe-rs/blob/main/LICENSE
[tfhe-ordered]: https://github.com/zama-ai/tfhe-rs/blob/main/tfhe-fft/src/ordered.rs
[tfhe-x86]: https://github.com/zama-ai/tfhe-rs/blob/main/tfhe-fft/src/x86.rs
[oxifft-api]: https://crates.io/api/v1/crates/oxifft
[oxifft-gh]: https://github.com/cool-japan/oxifft
[oxifft-changelog]: https://github.com/cool-japan/oxifft/blob/master/CHANGELOG.md
[fftw-api]: https://crates.io/api/v1/crates/fftw
[fftw-src-build]: https://github.com/rust-math/fftw/blob/master/fftw-src/build.rs
[debian-rules]: https://salsa.debian.org/science-team/fftw3/-/blob/master/debian/rules
[kofft-api]: https://crates.io/api/v1/crates/kofft
[microfft-api]: https://crates.io/api/v1/crates/microfft
[monarch-api]: https://crates.io/api/v1/crates/monarch-butterfly
[fourier-api]: https://crates.io/api/v1/crates/fourier
[cnc-zen4-1]: https://chipsandcheese.com/p/amds-zen-4-part-1-frontend-and-execution-engine
[cnc-zen4-2]: https://chipsandcheese.com/p/amds-zen-4-part-2-memory-subsystem-and-conclusion
[amd-gdc23]: https://gpuopen.com/download/GDC-2023-AMD-Ryzen-Processor-Software-Optimization.pdf
[nw-zen5]: https://www.numberworld.org/blogs/2024_8_7_zen5_avx512_teardown/
[tpu-strix]: https://www.techpowerup.com/324873/amd-strix-point-soc-zen-5-and-zen-5c-cpu-cores-have-256-bit-fpu-datapaths
[td-avx512]: https://travisdowns.github.io/blog/2020/01/17/avxfreq1.html
[td-icl]: https://travisdowns.github.io/blog/2020/08/19/icl-avx512-freq.html
[intel-avx10]: https://cdrdv2-public.intel.com/849709/356368-003-intel-avx10-technical-paper.pdf
[phx-nvl]: https://www.phoronix.com/news/Nova-Lake-Does-AVX10.2-APX
[toms-nvl]: https://www.tomshardware.com/pc-components/cpus/avx-512-support-is-reportedly-returning-with-intels-next-gen-nova-lake-cpus-latest-linux-kernel-patches-reveal-p-cores-and-e-cores-will-gain-native-512-bit-execution
[bailey]: https://www.davidhbailey.com/dhbpapers/fftq.pdf
[frigo-pldi]: https://doi.org/10.1145/301618.301661
[fftw-flags]: https://www.fftw.org/fftw3_doc/Planner-Flags.html
[vfft]: https://github.com/Tugbars/VectorFFT
[vfft-gauntlet]: https://github.com/Tugbars/VectorFFT/blob/main/gauntlet/README.md
[otfft]: http://wwwa.pikara.ne.jp/okojisan/otfft-en/
[ffts]: https://doi.org/10.1109/tsp.2013.2273199
[pffft-h]: https://github.com/michelerenzullo/pffft_pommier/blob/main/pffft.h
[giesen]: https://fgiesen.wordpress.com/2023/03/19/notes-on-ffts-for-implementers/
[numc-src]: https://github.com/rust-num/num-complex/blob/master/src/lib.rs
[k3xec]: https://k3xec.com/packrat-processing-iq/
[rtlsdr-src]: https://github.com/osmocom/rtl-sdr/blob/master/src/rtl_sdr.c
[hackrf-docs]: https://hackrf.readthedocs.io/en/stable/hackrf_tools.html
[uhd-conv]: https://files.ettus.com/manual/page_converters.html
[sigmf]: https://github.com/sigmf/SigMF/blob/sigmf-v1.x/sigmf-spec.md
[rust186]: https://blog.rust-lang.org/2025/04/03/Rust-1.86.0/
[rust189]: https://blog.rust-lang.org/2025/08/07/Rust-1.89.0/
[rust189-gh]: https://github.com/rust-lang/rust/releases/tag/1.89.0
[fearless]: https://docs.rs/fearless_simd/latest/fearless_simd/index.html
[benchfft-method]: https://www.fftw.org/speed/method.html
[benchfft-script]: https://github.com/meerd/benchFFT/blob/master/scripts/benchmark
[kfr-bench]: https://kfr.dev/docs/latest/benchmarking/
[kfr-fftbench]: https://github.com/kfrlib/fft-benchmark
[astral]: https://github.com/astral4/fft-benchmark
[astral-rustfft]: https://github.com/astral4/fft-benchmark/blob/main/benches/rustfft.rs
[astral-fftw]: https://github.com/astral4/fft-benchmark/blob/main/benches/fftw.rs
[valgrind-bug]: https://bugs.kde.org/show_bug.cgi?id=383010
[gh-runners]: https://docs.github.com/en/actions/reference/runners/github-hosted-runners
[gha-mix]: https://github.com/avmnu-sng/rspec-tracer/commit/c03a77c6808a5901c79850367a1de89f1288b646
[flint-2630]: https://github.com/flintlib/flint/issues/2630
[codspeed]: https://codspeed.io/blog/why-glibc-faster-github-actions
[gb-7763]: https://browser.geekbench.com/v6/cpu/15363094
[sde-benefits]: https://www.intel.com/content/www/us/en/developer/articles/technical/benefits-of-using-intel-software-development-emulator.html
[sde]: https://www.intel.com/content/www/us/en/developer/articles/tool/software-development-emulator.html

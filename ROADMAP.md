# fastfft roadmap

fastfft is a pure-Rust, single-threaded 1-D complex FFT library with a
RustFFT-compatible API and a SIMD-first engine (AVX-512, AVX-512/256-bit,
AVX2+FMA, SSE2, scalar). Every milestone is gated on numbers from the
benchmark arena (`bench/arena`), measured first on a Zen 4 Ryzen 7 7840HS.

**Live work tracking:** the remaining work is charted as tickets in
[`.scratch/fastfft-v1/map.md`](.scratch/fastfft-v1/map.md) (wayfinder map,
local-markdown tracker: one file per ticket under `.scratch/fastfft-v1/issues/`
with `Type:` / `Status:` / `Blocked by:` lines). Start there; this file keeps the
milestone definitions, gates and `FFT-xxx` ids the tickets refer to. The
original plan these come from is kept verbatim in
[`docs/plan/original-plan.md`](docs/plan/original-plan.md).

**ARM / Apple Silicon:** the separate
[Beat RustFFT on AArch64 and Apple Silicon](.scratch/fastfft-arm-macos/map.md)
effort records the accepted NEON route, target-specific performance gates and
three implementation tickets. It extends FUT-01 without changing the Zen 4
v0.1 release gates. See the [ARM investigation](docs/research/arm-macos-performance.md)
for source analysis and the historical Mac diagnostic baseline.

Ticket format: `ID — title | milestone | depends on | goal | scope | acceptance | status`.
Statuses: `todo`, `in progress`, `done`, `blocked (reason)`, `partial (what is missing)`.

## Release gates for v0.1.0

Measured on the Zen 4 7840HS: single thread, default `Estimate` planner,
default target CPU (runtime ISA detection), arena `full` profile, boost on,
control-case drift < 3%. A gate passes only if it holds on both best-time and
median-time ratios. A *cell* is one size × precision × direction × placement.
The thresholds below are defaults and may be changed here before M6.

| ID | Gate |
|---|---|
| G1 | Power-of-2 suite (2^1…2^24): geomean speedup vs rustfft ≥ 1.5×; no cell below 0.95× |
| G2 | Smooth suite: geomean ≥ 1.3×; no cell below 0.95× |
| G3 | Rough suite (primes etc., Bluestein in v1): geomean ≥ 0.75×; no cell below 0.5× |
| G4 | Against each other Rust library (phastft both APIs, tfhe-fft, oxifft), on the cells it supports; forward only for libraries that normalize the inverse: geomean ≥ 1.1× and ≥ 0.97× on ≥ 90% of cells |
| G5 | AVX2 path forced: power-of-2 geomean ≥ 1.2×, smooth ≥ 1.1× vs rustfft (AVX) |
| G6 | Real-world scenarios: spectrogram and overlap-save throughput ≥ 1.3× rustfft; batch suite geomean ≥ 1.5× |
| G7 | Accuracy: every verified cell within the thresholds of `docs/benchmarking.md` §Accuracy, and ≤ 1.5× rustfft's error + 1 ε |
| G8 | `Estimate` planning time ≤ 2× rustfft's for every N ≤ 2^20 |
| G9 | Clean `cargo build --release -p fastfft` ≤ 2× rustfft's clean release build on the same machine |

FFTW (our AVX-512 build) is reported as a reference but not gated. Cloud
gates are in M8.

## M0 — Foundation

- **FFT-001 — Workspace setup** | M0 | – | reproducible workspace | toolchain pin (1.95.0), `.gitignore` (`/target`, `.pi/`), rustfmt/clippy config, `[profile.arena]`, xtask skeleton | `cargo build` and `cargo test --workspace` pass on 1.95; `fastfft` builds on 1.89 | done
- **FFT-002 — CI skeleton** | M0 | FFT-001 | every push checked | fmt, clippy `-D warnings`, tests (1.95 + MSRV 1.89), docs, cargo-deny, tier matrix, SDE, aarch64, wasm32, Miri, `codegen --check` | green on main | partial (workflow committed; first green run happens on push)
- **FFT-003 — Docs** | M0 | – | shared context | `docs/research/rust-fft-landscape.md`, `docs/benchmarking.md`, this file | committed | done

## M1 — Measurement first (no library engine yet)

- **FFT-010 — Testkit** | M1 | FFT-001 | trusted references | seeded signals; naive DFT in double-double; independent f64 and double-double mixed-radix + Bluestein FFTs; relative L2 and max error | for N ≤ 2048 the references agree with the naive double-double DFT to ≤ 1e-28 (double-double) and ≤ 4ε·log2 N (f64) | done
- **FFT-011 — Arena core** | M1 | FFT-010 | fair, repeatable measurements | driver + per-cell child (`run-cell`), core pinning, JSONL, env capture, drift control, timeouts, profiles | full/quick/sweep profiles run end to end | done
- **FFT-012 — Library adapters** | M1 | FFT-011 | compare with every Rust FFT | rustfft, phastft (split + interleaved), tfhe-fft, oxifft, each verified before timing | all verified on their supported cells | done
- **FFT-013 — FFTW reference** | M1 | FFT-011 | honest C reference | `cargo xtask fftw-build` (sha256-pinned 3.3.11, static, SSE2/AVX/AVX2/AVX-512/FMA), bindings, saved wisdom, `plan_many_dft` batches | fftw row verified | done
- **FFT-014 — Suites** | M1 | FFT-011 | coverage | pow2, smooth, rough, sweep, batch, realworld (+ datacheck) | all suites run | done
- **FFT-015 — Reports** | M1 | FFT-011 | readable results | `report`, `compare`, `publish`, SVG plots | report generated for every run | done
- **FFT-016 — Environment** | M1 | – | quiet machine | `scripts/bench-env.sh setup/check/restore`, `docs/benchmarking.md` | check passes before official runs | done
- **FFT-017 — Zen 4 baseline** | M1 | FFT-011..016 | a reference point before any engine | full run of every suite, every library verified, drift < 3%, two back-to-back quick runs within 3% geomean per library, zero-vs-random check within 2% | see `docs/benchmarks/` | see status table below

## M2 — Experiments and the architecture decision

- **FFT-020 — kernel-lab** | M2 | FFT-017 | data for ADR-0001 | power-of-2 Stockham with radix-8/16 passes; separate vs interleaved layout; avx512 / avx512-ymm / avx2; f32 + f64; N ∈ {64, 256, 1024, 4096, 16384, 65536}; verified | results table in ADR-0001 | see status table below
- **FFT-021 — ADR-0001** | M2 | FFT-020 | locked architecture | layout rule (≥ 5% geomean on AVX-512 and AVX2 → single layout, else both), Zen 4 vector width (512 unless 256 wins by ≥ 3%), radix preferences, go/no-go (≥ 1.25× rustfft geomean, f32 fwd in-place AVX-512, N 256–65536) | `docs/decisions/0001-*.md` | see status table below

## M3 — Core library (powers of 2 and smooth sizes, in cache)

- **FFT-030 — Public API + conformance tests** | M3 | FFT-021 | drop-in RustFFT API | traits, planner, options, panics, scratch contracts | conformance suite passes |
- **FFT-031 — ISA layer** | M3 | FFT-021 | safe SIMD dispatch | tiers, tokens, `SimdReal` (+ complex ops), transposes, masked tails | per-tier unit tests |
- **FFT-032 — Codelet generator** | M3 | FFT-031 | generated straight-line kernels | graphs, simplification, CSE, FMA, scheduling, `codegen --check` | generated code committed; check passes |
- **FFT-033 — Twiddles + aligned plan storage** | M3 | FFT-031 | accurate, cache-friendly twiddles | exact angle reduction, per-pass tables, 64-byte alignment | twiddle error ≤ 1 ulp |
- **FFT-034 — Small engine** | M3 | FFT-032 | register-resident small sizes | two-codelet in-register transforms, scalar odd codelets | verified on every tier |
- **FFT-035 — Stockham engine** | M3 | FFT-032 | in-cache mixed radix | vertical passes + final across-lanes pass | verified on every tier |
- **FFT-036 — Correctness suite + CI** | M3 | FFT-030..035 | confidence | exhaustive sweep, proptests, SDE, Miri, tier matrix | green |
- **FFT-037 — Criterion benches + arena adapter** | M3 | FFT-035 | measure fastfft | criterion benches; arena rows fastfft, fastfft/<isa>, fastfft/measure | rows verified |
- Checkpoint: every size with prime factors ≤ 13 in the Small and Stockham ranges passes on every tier; in-cache powers of 2 (64–16384) reach ≥ 1.3× rustfft geomean.

## M4 — Large sizes and batches

- **FFT-040 — FourStep engine** | M4 | FFT-035 | out-of-cache sizes | Bailey four-step, panel columns, fused twiddles, recursive rows, ≤ 2 (oop) / 3 (ip) memory passes | correct to 2^24 |
- **FFT-041 — Batch engine** | M4 | FFT-034 | many small transforms | one transform per lane, transposes in registers | batch suite ≥ 1.3× |
- **FFT-042 — Cache detection + thresholds** | M4 | FFT-040 | portable thresholds | CPUID leaves 4 / 0x8000001D, defaults 32 KB / 1 MB | used by the planner |
- Checkpoint: correct up to 2^24; powers of 2 from 2^15 to 2^24 ≥ 1.5× geomean; batch suite ≥ 1.3×.

## M5 — Every size, plus the planner

- **FFT-050 — Bluestein** | M5 | FFT-035 | every length | chirp-z with exact k² mod 2N, inner length chosen by cost | rough suite verified |
- **FFT-051 — Tuning + cost model** | M5 | FFT-040 | good `Estimate` plans | `cargo xtask tune`, Zen 4 tables, cost model | committed tables |
- **FFT-052 — Measure mode + describe_plan** | M5 | FFT-051 | opt-in timing planner | top-8 candidates within a time limit | Measure never > 2% slower than Estimate |
- **FFT-053 — Per-thread scratch in `process()`** | M5 | FFT-030 | allocation-free `process` | grow-only thread-local buffer | documented + tested |
- **FFT-054 — Fuzz target** | M5 | FFT-050 | robustness | cargo-fuzz: random N / buffer lengths vs reference | runs clean |
- Checkpoint: every N from 1 to 4096 and the rough suite pass; Measure never more than 2% slower than Estimate.

## M6 — Tune on Zen 4 until the gates pass

- **FFT-060 — perf tooling + asm checklist** | M6 | FFT-037 | find bottlenecks | `cargo xtask perf-cell`, asm/spill checklist in `docs/architecture.md` | documented |
- **FFT-061 — Iterate to G1–G9** | M6 | all above | release quality | tuning loop; publish `docs/benchmarks/<date>-zen4-v0.1-candidate/` | all gates pass |

## M7 — API polish and docs

- **FFT-070 — Docs + examples** | M7 | FFT-061 | usable crate | README (usage, migrating from RustFFT, I/Q note), crate docs, examples (I/Q spectrogram, overlap-save), CHANGELOG, final `docs/architecture.md` | reviewed |
- **FFT-071 — API review + semver baseline** | M7 | FFT-070 | stable API | public API review, `cargo-semver-checks` baseline | done |

## M8 — Cloud validation

- **FFT-080 — Cloud arena runs** | M8 | FFT-061 | other CPUs | `full` runs (pow2, smooth, batch, realworld) on Intel Sapphire/Granite Rapids, AMD Zen 5 (EPYC 9005), and an AVX2-only machine (e.g. EPYC 7003); dedicated/bare-metal where available; record virtualization; publish reports | reports published |
- **FFT-081 — Per-family tables + default tiers** | M8 | FFT-080 | right tier per CPU | `intel_avx512.rs`, `zen5.rs`, `generic_avx2.rs` | on each AVX-512 machine: pow2 ≥ 1.3×, smooth ≥ 1.15×, no cell < 0.9×; the AVX2-only machine passes G5; failures block release unless documented exceptions are approved |

## M9 — Release v0.1.0

- **FFT-090 — Release checklist** | M9 | all | ship | every gate passed, docs done, reports published, version bumped; the maintainer runs `cargo publish` | published |

## Future tickets

- **FUT-01** ARM NEON tier, tuned on Apple Silicon and Linux AArch64. [Accepted route and tickets](.scratch/fastfft-arm-macos/map.md); FCMA is deferred pending measured need and stable/MSRV-compatible support. In progress: [native NEON/macOS foundation](docs/benchmarks/2026-10-10-mac-neon/README.md); native x86 performance validation and accepted ARM measurement/tuning gates remain pending.
- **FUT-02** WASM SIMD128 tier (compile-time feature).
- **FUT-03** ARM SVE/SVE2.
- **FUT-04** RISC-V Vector 1.0.
- **FUT-05** Other instruction sets as needed (LoongArch LASX, POWER VSX).
- **FUT-06** Rader's algorithm for primes, to close the G3 gap to parity.
- **FUT-07** Good–Thomas prime-factor algorithm.
- **FUT-08** Multithreading: parallel batches first (rayon feature), then parallel large FFTs.
- **FUT-09** Real-input FFT (real-to-complex and complex-to-real).
- **FUT-10** Integer I/Q input (u8/i8/i16 → f32) converted inside the first pass, and a fused power-spectrum output.
- **FUT-11** Saving and loading plans ("wisdom").
- **FUT-12** More libraries to compare: MKL, KFR, ducc0, kofft, microfft, monarch-butterfly.
- **FUT-13** Nightly performance CI on a self-hosted Zen 4 runner.
- **FUT-14** `no_std` + `alloc` support.
- **FUT-15** AVX10.2 and APX tuning.
- **FUT-16** 2-D and N-D FFTs.
- **FUT-17** API variants for separate real/imaginary arrays and strided data.
- **FUT-18** `rustfft-interop` adapter (`impl rustfft::Fft`).
- **FUT-19** Research: f16/bf16 storage FFT using AVX-512 FP16.

## Status table

| Ticket | Status | Notes |
|---|---|---|
| FFT-001 | done | |
| FFT-002 | partial | workflow committed, not yet run on GitHub |
| FFT-003 | done | |
| FFT-010 | done | |
| FFT-011 | done | per-cell clock drift check and `--procs K` best-of-K processes added (see ADR-0001 §7) |
| FFT-012 | done | |
| FFT-013 | done | FFTW 3.3.11 AVX-512 static build verified |
| FFT-014 | done | |
| FFT-015 | done | |
| FFT-016 | done | no sudo on the lab machine; governor/EPP already `performance` |
| FFT-017 | done | `zen4-baseline` published (`docs/benchmarks/2026-09-25-mini-ryzen-zen4-baseline/`, ticket 08); accepted with a drift flag from two single clock readings, documented oxifft defects and a datacheck caveat |
| FFT-020 | done | final official run `m2-final`: DIT prototype 1.29× f32, 1.32× f64 (ADR-0001 §3.2) |
| FFT-021 | done | go/no-go passed (1.29× ≥ 1.25×); ADR-0001 accepted with revisions (§8, ticket 09): split on every tier for now, with the AVX2 layout revisited using G5 data |
| FFT-030 | in progress | public API implemented; conformance tests pass |
| FFT-031 | in progress | scalar/SSE2/AVX2/AVX-512-ymm/AVX-512 vector types; tier matrix passes |
| FFT-032 | done | generator + committed codelets (2–16, 32); `codegen --check` |
| FFT-033 | done | exact-reduction twiddles, ≤ 1 ulp vs double-double |
| FFT-034 | done | interleaved register-resident small engine for N=2–256 (ticket 11). [small-fma checkpoint](docs/benchmarks/2026-09-28-mini-ryzen-small-fma/checkpoint.md): 1.250× f32 / 1.277× f64 p1 geomean vs rustfft (median 1.245× / 1.259×), no cell below 0.95×; follow-ups in tickets 33–35 |
| FFT-035 | in progress | split DIT Stockham; ticket 10 separates full/tail final-pass blocks and isolates SIMD kernels; residual equal-plan timing variation tracked in ticket 31 |
| FFT-036 | in progress | full release suite plus all 1,202 13-smooth lengths through 32768 pass on all five tiers; every eligible vector shape passes in all three placements; CI remains ticket 21 |
| FFT-037 | done | all 12 Criterion benchmarks run; [M3 quick checkpoint](docs/benchmarks/2026-09-25-mini-ryzen-m3-quick/checkpoint.md) published (ticket 10). Correctness passes; performance is 1.085× f32 / 1.081× f64, below the unchanged 1.3× target |
| FFT-040 | done | grouped FourStep panels and measured large-pow2 defaults (ticket 14). [M4 checkpoint](docs/benchmarks/2026-10-01-mini-ryzen-ticket14-fourstep/checkpoint.md): combined 1.5785× best / 1.5773× median over 80 full-profile cells, minimum 1.1564×, 1.32% drift. Normal accuracy sweep through 2^22 and explicit reference/roundtrip checks through 2^24 pass |
| FFT-041 | done | hybrid size-8 SIMD across transforms and streamed separate-output batches (ticket 15). [M4 batch checkpoint](docs/benchmarks/2026-10-02-mini-ryzen-ticket15-batch/checkpoint.md): combined 1.3242× best / 1.3147× median over 32 verified full-profile cells, 1.67% drift. All modes/caps, both directions/precisions and remainder/scratch contracts pass; G6 1.5× and G8 remain release work |
| FFT-042 | done | CPUID L1D/L2/LLC detection with independent fallbacks drives planner and panel thresholds (ticket 16). [Cache checkpoint](docs/benchmarks/2026-10-02-mini-ryzen-ticket16-cache/checkpoint.md): preserves Zen 4's 8 MiB crossover and 2 MiB group budget; 12 verified before/after cells keep identical plans and remain within ±3%, six smooth cells verify, and release/tier/build checks pass. Per-family tuning remains tickets 18/27/28 |
| FFT-050 | done | SIMD products, packed factors, fused conjugation/padding and cost-based inner lengths (ticket 17). [Quick rough checkpoint](docs/benchmarks/2026-10-02-mini-ryzen-ticket17-bluestein/checkpoint.md): G3 passes at 1.1575× best / 1.1512× median, minimum 0.5458× / 0.5461×, all 34 cells verified and 1.14% drift. Release/tier/build checks pass. G8 planning overhead increases and remains ticket 18; full-profile release gates remain ticket 23 |
| FFT-051 | done | ticket 18: production-pass tuner, 308 measured costs, 650 Zen 4 recipes and 220 footprint corrections. [Validation](docs/benchmarks/2026-10-03-mini-ryzen-ticket18-tuning/validation.md): all 130 default choices within 3% in-place (worst 1.027153×), full correctness/tier/large-accuracy checks pass. Clean quick arena: 164 verified cells, 1.23% drift; G2/G3/G7 pass, G1/G8 remain open. Remaining G8 work is tickets 37–39 by maintainer decision |
| FFT-052 | partial | Measure mode implemented (untested for speed) |
| FFT-053 | done | per-thread grow-only scratch in `process()` |
| others | todo | |

# Measure the library in the arena and check the M3 checkpoint

Type: task
Status: resolved
Blocked by: 09
Roadmap: FFT-037, M3 checkpoint

## Question

How does the library, with its planner's choices, perform against rustfft and against the prototype `lab/dit-ymm-r8`? Does it meet the M3 checkpoint?
- Every smooth size in the Stockham range passes on every tier.
- In-cache powers of two, N = 64…16384, reach ≥ 1.3× rustfft geomean.

## Work

- Quick-profile runs (`--procs 3`) over pow2, smooth, rough and batch. Rows: `fastfft`, `fastfft/avx2`, `fastfft/avx512`, `fastfft/avx512-ymm`, `fastfft/sse2`, `fastfft/scalar`, `rustfft`, `lab/dit-ymm-r8`.
- The library should match the prototype at equal plans. The f32 default prefers `Avx512Ymm` via `prefer()` in `planner.rs`. Fix any planner or engine regressions.
- Check `cargo bench -p fastfft` (criterion) runs.
- Settle radix 4 vs 8 on AVX2 (ADR-0001 §8, item 4).
  - Add `lab/dit-avx2-r4` and `lab/dit-avx2-r8` rows on pow2, and compare them with `fastfft/avx2`, which plans radix 8 today.
  - The final M2 run has no clean radix-8 AVX2 row.
  - If the result is inconclusive, [Tune cost tables and the Estimate model](18-tune-cost-tables.md) settles it.

## Done when

- The answer records per-suite geomeans and the checkpoint verdict.
- A quick run is published.
- Newly found problems are ticketed.

## Answer

Completed on 2026-09-25. [Published checkpoint and analysis](../../../docs/benchmarks/2026-09-25-mini-ryzen-m3-quick/checkpoint.md), [main quick report](../../../docs/benchmarks/2026-09-25-mini-ryzen-m3-quick/report.md), and [AVX2 radix report](../../../docs/benchmarks/2026-09-25-mini-ryzen-m3-avx2-radices/report.md).

**M3 correctness passes; performance does not.** On all nine powers of two from 64 through 16384, default fastfft reaches **1.085× rustfft for f32 and 1.081× for f64**, against the unchanged 1.3× target. Median-time ratios are 1.080× and 1.068×. Resolving this measurement ticket does not complete the M3 milestone.

Whole-suite speedups against rustfft below are geomeans, **best (median)**, using every cell in that suite/precision:

| Suite | f32 cells | fastfft f32 | f64 cells | fastfft f64 |
|---|---:|---:|---:|---:|
| Power of two | 24 | 0.754× (0.748×) | 24 | 0.777× (0.770×) |
| Smooth | 41 | 0.819× (0.815×) | 41 | 1.005× (0.997×) |
| Rough | 17 | 0.792× (0.787×) | 17 | 0.726× (0.722×) |
| Batch | 8 | 0.493× (0.486×) | 8 | 0.688× (0.721×) |

The main run covers all eight requested rows, 180 cells, three processes per cell on CPU 2, with 1,312 verified timed rows and 128 expected unsupported prototype rows. The radix run has 48 cells, 260 verified timed rows and 28 expected unsupported rows. Both have zero child failures, no abort and no drift flag (maximum recorded drift 2.15% and 1.96%). Raw data, environment, plots and exact measured source are preserved with the reports.

Stockham now separates full final-pass blocks from the partial tail, isolates SIMD radix kernels in their own target-feature functions, and selects the twiddle-free first pass at compile time. The matched N=4096 f32 diagnostic improved from 3.446 to 2.627 µs best time (23.8%). The f32 default still prefers 256-bit AVX-512. Equal-plan timings can match the prototype, but vary with the row list/allocation context; [ticket 31](31-stockham-prototype-parity.md) carries the remaining investigation.

**Keep maximum radix 8 on AVX2.** Radix 4 wins the M3 subset by 2.9% f32 / 3.8% f64 best-time geomean, but loses across the complete supported range. Prototype schedules differ from production schedules. [Ticket 18](18-tune-cost-tables.md) will measure production costs and choose radices per size.

Validation passed: the full release suite, all five ISA caps, every 13-smooth length through 32768 in both precisions/directions, and every eligible vector shape in all three placements. The placement test now rejects non-finite errors explicitly. Formatting, workspace Clippy, code generation, scalar-only compilation, all 12 Criterion benchmarks and the arena build passed. See [validation evidence](../../../docs/benchmarks/2026-09-25-mini-ryzen-m3-quick/validation.md).

The arena's `clock_ghz` probe is an uncalibrated throughput proxy: the compiler folds four intended additions into one. [Ticket 32](32-clock-probe-calibration.md) tracks calibration and drift validation. FFT times use `Instant` independently; the reports disclose the caveat and retain the existing drift protocol. Existing tickets 11, 13–15, 17 and 18 cover the missing engines and planner tuning exposed by these measurements.

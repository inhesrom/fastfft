# Build the register-resident small-N engine

Type: task
Status: resolved
Blocked by: 10
Roadmap: FFT-034

## Question

How do we beat rustfft for N ≤ 256? The prototype sits at N = 64 ≈ 0.7× and N = 256 ≈ 0.96×, against rustfft's hand-written butterflies.

## Context

- Small N is latency- and overhead-bound, not throughput-bound.
- When N = L·M with M ≤ L (e.g. 64 = 8×8 on 256-bit vectors), Phase A and Phase B fuse in registers with no scratch round trip: load, codelet, transpose, twiddled codelet, store.
- Tiny N (≤ 16) can use a single codelet.
- Trim per-call overhead: dispatch chain, `read_volatile` of `one`, validation.

## Done when

- pow2 2^1…2^8 in the arena: every cell ≥ 0.95× rustfft (the G1 floor) and geomean ≥ 1.2×.
  - Judged per precision on p1 and median by `scripts/analyze-small-latency.py arena`, on the arena with per-library timing loops, built with 64-byte function alignment (maintainer decision 2026-09-27; see docs/benchmarks/2026-09-27-mini-ryzen-small-fair/checkpoint.md).
- Tests pass on all tiers.

## Answer

Completed on 2026-09-28 at the [small-fma checkpoint](../../../docs/benchmarks/2026-09-28-mini-ryzen-small-fma/checkpoint.md) ([regression audit](../../../docs/benchmarks/2026-09-28-mini-ryzen-small-fma/regressions.md), [validation](../../../docs/benchmarks/2026-09-28-mini-ryzen-small-fma/validation.md)).

**Acceptance passes.** pow2 N=2…256 against rustfft on the per-library-loop, 64-byte-aligned arena, judged by `scripts/analyze-small-latency.py arena`:

| Precision | p1 geomean | Median geomean | Worst cell | Cells below 0.95× |
|---|---:|---:|---:|---:|
| f32 | 1.250 | 1.245 | 1.055 | 0 / 32 |
| f64 | 1.277 | 1.259 | 1.000 | 0 / 32 |

The acceptance run covered 64 cells with three processes per cell on CPU 2. It had zero child failures and a 1.11% maximum control drift. Tests pass on all tiers: the checkpoint's `validate.sh` covers the five ISA caps, the feature matrix, the exhaustive M3 sweep and the leaf contract tests.

The engine keeps `re, im` pairs adjacent (interleaved leaves) in rows of complex values. A row is four complex values in one ymm for f32, in two ymm for f64 up to N=32, and in one zmm for f64 N=64–256; f32 N=128 on the AVX-512 tier uses zmm rows of eight. N ≤ 64 and zmm f32 N=128 stay register-resident; the other N=128/256 leaves take two passes through a 4K-alias-free intermediate.

The last step folded the ∓i rotations and radix-16's ω8 twiddles into FMAs. The leaves had been bound by the FP scheduler, with the add pipes loaded and the FMA pipes idle ([fma-rotations.md](../../../docs/benchmarks/2026-09-28-mini-ryzen-small-fma/diagnostics/fma-rotations.md)). Before that, the [small-fair](../../../docs/benchmarks/2026-09-27-mini-ryzen-small-fair/checkpoint.md) checkpoint changed the measurement, as the maintainer approved: per-library timing loops, p1 and aligned builds.

Left open:

- The in-place N ≤ 16 cells are latency-bound (f32 1.06–1.19×, f64 1.00–1.15×). At f64 N=2 both libraries execute the same instructions.
- The f64 zmm leaves at N=64 and N=128 still run 4–5% above their own p1 on median.
- Batch f64 N=32 is 1.9–3.1% slower than at small-fair in three matched pairs. It is probably memory-bound, and the f64 batch prefetch covers only N ≥ 128.

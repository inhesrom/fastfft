# Recover the batch f64 N=32 speed

Type: task
Status: open
Blocked by: 11
Roadmap: FFT-041

## Question

Why did batch f64 N=32 (32,768 in-place transforms) get 1.9–3.1% slower at the small-fma checkpoint, when single f64 N=32 transforms got 3.5% (in place) to 12% (out of place) faster?

## Context

- In the three matched pairs of [regressions.md](../../../docs/benchmarks/2026-09-28-mini-ryzen-small-fma/regressions.md) it changed by +2.61 / +5.16%, +3.08 / +1.28% and +1.93 / +1.89% (p1 / median).
- The plan is unchanged: small avx512-ymm n=32, interleaved, with R64 rows (two ymm per row).
- The buffer is 16 MiB, beyond L2 and about the size of the 7840HS's L3. The f64 batch loop prefetches two chunks ahead only for N ≥ 128.
- The other batch cells that use the changed leaves got faster: f32 N=16–256 by 8–19%, and f64 N=16/128/256 by 7.7–12% (p1).
- The batch engine ([ticket 15](15-batch-engine.md)) may replace this path.

## Done when

- Either batch f64 N=32 is at least as fast as the small-fair arena in matched pairs, without slowing the other batch cells,
- or the cause is documented and the work is folded into ticket 15.

# Find why the f64 zmm leaves at N=64/128 fall into slow schedules

Type: task
Status: open
Blocked by: 11
Roadmap: FFT-034

## Question

At N=64 and N=128, the f64 zmm leaves run 4–5% above their own p1 on median; rustfft runs under 1% above its own. Why, and can the leaves be written so they always get the fast schedule?

## Context

- [fma-rotations.md](../../../docs/benchmarks/2026-09-28-mini-ryzen-small-fma/diagnostics/fma-rotations.md):
  - Per-call traces of f64 N=128 in place show three speeds, each held for 0.2–0.45 ms on average.
  - perf intervals put the slow state's extra cycles in dispatch stalls on a full FP scheduler.
  - Folding the rotations into FMAs removed the spread at N=256 (5.5% → 1.5%), but not at N=64/128 (3.9–5.1%).
- Already ruled out ([f64-zmm-spread.md](../../../docs/benchmarks/2026-09-27-mini-ryzen-small-fair/diagnostics/f64-zmm-spread.md)): clock frequency, FP state faults, the front end, the other library, input data and split twiddle loads.
- Not yet tried:
  - IBS op sampling to compare fast and slow states;
  - varying the calls per batch;
  - `vpermt2pd` transposes instead of `vshuff64x2`;
  - other op orders in the radix-8 and radix-16 stages.
- The temporary per-batch dump and TSC trace hook is `scripts-and-perf/diag-hook.diff` in `fma-rotations-data.tar.gz`.
- Closing the spread is worth about 1% of the f64 median geomean.

## Done when

- Either the f64 N=64 and N=128 medians are within 2% of their p1 in both placements, without slowing p1,
- or the ticket records the root cause and why the leaf cannot avoid it.

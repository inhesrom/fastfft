# Diagnose the small out-of-place release-gate floors

Type: task
Status: open
Blocked by: 23
Roadmap: FFT-034 / G1–G2

## Context

The [ticket 23 evaluation](../../../docs/benchmarks/2026-10-11-mini-ryzen-ticket23-gates/README.md) records default fastfft/RustFFT speedups
(best / median) of 0.5911× / 0.5914× for f64 forward out-of-place N=8,
and 0.5220× / 0.5282× for f32 forward out-of-place N=12. G1 and G2 require
every supported cell to reach 0.95× on both metrics. Small smooth N=9,
24 and 36 also miss the floor; f32 N=1,000,000 out of place is a separate
larger-size miss and must remain visible in the residual list.

Ticket 33 owns small in-place latency; this ticket owns the out-of-place
release failures. It does not presume a dispatch, kernel, adapter, or memory
cause. Ticket 42 owns the aggregate pow2 throughput shortfall.

## Work

- Reproduce the weakest cells with the same aligned build, verified public
  caller and both directions/precisions; retain absolute timings and all trials.
- Compare public out-of-place execution with in-place execution and profile
  the measured path before selecting a remedy. Separate harness/caller effects
  from FFT work, and record remaining large smooth misses.
- Validate a justified change with matched idle A/B evidence and relevant
  accuracy/API checks. Keep p1 diagnostics separate from best/median gates.

## Done when

The cause and appropriate remedy or explicit limit are documented, with
matched best/median evidence against the unchanged 0.95× floor. Publish
remaining failing cells rather than silently excluding them. No gate is
closed merely because the aggregate geomean passes.

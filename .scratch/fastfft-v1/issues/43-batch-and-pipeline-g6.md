# Diagnose the G6 batch and pipeline shortfalls

Type: task
Status: open
Blocked by: 23
Roadmap: FFT-041 / G6

## Context

The [ticket 23 evaluation](../../../docs/benchmarks/2026-10-11-mini-ryzen-ticket23-gates/README.md) finds batch geomeans of
1.2844× best / 1.2861× median versus the required 1.5×. The weakest
batch is f64 forward in-place N=8×131072 at 0.6261× / 0.6451×.
All six realworld cells are below the per-scenario 1.3× requirement;
f32 spectrogram N=1024 is weakest at 1.0422× / 1.0526×.

Reuse ticket 35 for the historical f64 N=32 batch regression (the current
cell is 1.0763× best / 0.9296× median). Ticket 40 owns the distinct f32
N=32 Measure/Estimate order issue; ticket 23 uses default Estimate and
neither establishes nor resolves that issue.

## Work

- Profile the weak N=8 batch and decompose the scenario pipelines into
  measured stages before deciding whether FFT execution, wrapping, or
  non-FFT work bounds their ratios.
- Retain all 32 batch cells and six scenario cases in validation; coordinate
  f64 N=32 work with ticket 35 rather than duplicating it.
- Establish independent accuracy evidence for pipeline and batch changes,
  coordinating coverage requirements with ticket 45.

## Done when

Publish diagnosed causes and matched best/median validation. G6 requires
batch geomeans ≥1.5× and every realworld case ≥1.3× on both metrics;
record remaining failures explicitly. No implementation is selected solely
from these aggregate ratios.

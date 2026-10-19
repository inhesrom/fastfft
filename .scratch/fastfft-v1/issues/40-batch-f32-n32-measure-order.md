# Resolve order-dependent Measure timing for f32 batch N32×32768

Type: task
Status: open
Blocked by: none
Roadmap: FFT-052 follow-up

## Question

Why does Measure run approximately 2.1–2.2% slower than Estimate for 32,768
out-of-place forward f32 transforms of length 32, despite matching reported
plans, and why does the loss depend on construction/calibration order?

## Context

The maintainer accepted ticket 19 on 2026-10-08 with this issue deferred.
Numerical correctness passes; the cause is not established as a library bug.
This is distinct from ticket 35's f64 batch regression and G8 tickets 37–39.

The frozen default executable is
`42f7c2a3c18bf844420749fc5fdc325e7025f802d1ae64ad93c95df1fd846a5a`.
Both modes report Small AVX2 N32, interleaved 8×4, with AVX512-YMM batch lanes=4.

- The [complete full710 capture](../../../docs/benchmarks/2026-10-04-mini-ryzen-ticket19-measure/diagnostics/selection-fix/vector-stack-scope-full-idle-window/full-checkpoint.json)
  loses 2.0917% best, 2.2725% p1 and 2.2638% median on this case. The capture
  is invalid for strict full acceptance because of one CPU excursion and
  6.41% clock drift.
- The [fixed two-cell rerun](../../../docs/benchmarks/2026-10-04-mini-ryzen-ticket19-measure/diagnostics/selection-fix/failed-two-cells-fixed-recheck/focused-checkpoint.json)
  reproduces the batch loss: 2.1880% best, 2.3389% p1 and 2.0692% median.
  All 11 running monitor observations are quiet, drift is 0.7401%, source and
  executable hashes match, and all 35 reserved masks are verified restored.
- In both eight-process captures, all four Measure-first trials exceed 2%
  in best, p1 and median; all four Estimate-first trials stay below 2%.
  Measure is slower in all sixteen process pairs. Construction and initial
  calibration/execution are coupled, so this establishes association rather
  than a source cause.
- The other full-capture miss, N262144, passes the fixed rerun at 0.4024%.
  Its earlier failed observation remains recorded; this is not a certification
  that every suite always stays within 2% under all timing contexts.

## Work

Use the prepared single-case `--sample-trace --execution-order-factorial`
diagnostic to separate construction order from initial calibration/execution
order. Eight processes cover the four combinations twice. Preserve the public
caller, seven rounds, timing budgets, inputs, controls and every trace sample.
Run only after a fresh sustained quiet/environment gate with monitored,
journaled core reservation and independent affinity restoration.

The diagnostic feature build changes code context and cannot replace default
acceptance evidence. Determine whether the cause is execution, caller/layout
context or benchmark methodology before choosing a remedy. Do not repeatedly
sample until a minimum passes, weaken the 2% ceiling or slow Estimate to hide
the ratio. Retain prior failures and absolute timings.

## Done when

- The reproducible order association has a documented cause and an appropriate
  fix or an explained benchmark correction.
- A fixed quiet default-executable comparison of this case meets the 2% target,
  with passing correctness and retained balanced process evidence.
- Checks appropriate to any production or harness change confirm that the fix
  does not introduce other regressions; unresolved validation limits remain
  explicit in release evaluation.

## Evidence

Prepared protocol, auditor and both bounded Astra reviews are retained under
`docs/benchmarks/2026-10-04-mini-ryzen-ticket19-measure/diagnostics/selection-fix/batch32-followup/`.
No factorial diagnostic was launched before moving to ticket 20.

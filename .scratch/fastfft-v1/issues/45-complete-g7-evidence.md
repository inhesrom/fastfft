# Close the strict G7 accuracy and sweep coverage gaps

Type: task
Status: open
Blocked by: 23
Roadmap: FFT-061 / G7

## Context

The [ticket 23 evaluation](../../../docs/benchmarks/2026-10-11-mini-ryzen-ticket23-gates/README.md) reports G7 INCOMPLETE. Admissible
suite evidence has no strict DD violations, but above-2^20
RustFFT-f64/roundtrip proxies do not establish independent strict or relative
error bounds; scenario references test pipelines; batches sample the
first/second/last transforms. Both fastfft rows and every raw trial matter.

The exhaustive sweep finished all 8190 cells, but 8.2630% recorded clock
drift rejects its entire attempt under the unchanged <3% rule. Its accuracy
observations remain diagnostic and cannot establish official coverage or
replace the specified performance suites. Coordinate clock/environment
diagnosis with ticket 32. G8 coverage remains in tickets 37–39.

## Work

- Design independent reference and strict-bound evidence for the methods
  currently covered only by proxies, with explicit scenario/batch scope.
- If later evidence produces error-bound candidates, diagnose them before
  choosing a remedy; current admissible and rejected-sweep DD checks have
  zero strict violations. Invalid timing evidence cannot establish an official
  gate verdict.
- After environment diagnosis, obtain admissible whole-sweep evidence under
  the existing protocol if needed. Preserve the rejected attempt, avoid cell
  splicing, and do not repeat merely to select a favorable performance ratio.
- Audit actual outer Bluestein convolution lengths and same-trial RustFFT
  DD errors for both fastfft rows. Separate merged diagnostics from raw proof.

## Done when

G7 has complete independent strict/reference evidence under its approved
scope, with fast-path/Bluestein bounds and ≤1.5× same-trial RustFFT error
+1 epsilon. Any scope or sampling-policy revision requires an explicit
maintainer decision in ticket 24. Merely publishing remaining gaps does not
resolve this coverage ticket. It does not close universal G8 planning.

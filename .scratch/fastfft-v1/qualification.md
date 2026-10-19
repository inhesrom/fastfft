# G1–G9 qualification

Status: in progress
Baseline: `88c7b2d` (ticket 23 integrated with NEON and retained diagnostics).
Decision: ticket 24 resolved on 2026-10-13; thresholds and coverage unchanged.

| Gate | Historical result | Work | Current evidence |
|---|---|---|---|
| G1 | fail: 1.3551× / 1.3482×; floor 0.5911× | 41, 42 | fresh baseline pending |
| G2 | fail: floor 0.5220× / 0.5282× | 41 | fresh baseline pending |
| G3 | pass on old revision | preserve rough execution | reconfirm on final candidate |
| G4 | TFHE fail; oxifft incomplete | 42, comparator repair | fresh baseline pending |
| G5 | AVX2 pow2 fail | 42 | fresh baseline pending |
| G6 | batch and all scenarios fail | 43, 35 | fresh baseline pending |
| G7 | incomplete | 45, 32 | strict complete verification pending |
| G8 | open | 37, 38, 39 | universal fresh planning pending |
| G9 | fail: 13.10× | 44, compiler comparison | fresh `4332e48`: 13.027× (1.95), 10.619× (1.99); both fail |

## Execution order

1. Validate measurement controls and repair comparator coverage (32, 46).
2. Compare stable compilers and diagnose G9 before expanding code generation.
3. Fix small out-of-place floors, pow2/AVX2 throughput, batches and pipelines.
4. Complete cold planning, then complete strict accuracy and sweep coverage.
5. Freeze a candidate and run qualification only after targeted gates pass.

## Evidence rules

Use existing hardware, stable Rust, the unchanged arena protocol and public API.
A minimum-Rust increase requires measured benefit or an adopted implementation
that needs it. Keep all attempted raw evidence under ignored `target/qualification/`.
No automatic retry, suite splicing, discarded failures, or waived gates. Compiler
and source changes invalidate affected evidence. Commit compact reports only.

## Progress

- Integrated ticket 23 through merge `88c7b2d`; all 47 audit/supervisor tests pass.
- Recorded the maintainer's threshold, compiler and comparator decisions.
- Added fail-closed continuous CPU/process supervision, sustained idle checks,
  an exclusive benchmark lease, and exact machine-readable G9 verdicts in
  `e7902b0`; supervisor/auditor regression tests pass.
- [Clock diagnostics](../../docs/benchmarks/2026-10-13-qualification-controls/README.md)
  now cover startup, idle, deliberate competing load, and recovery. Boost-change
  validation and datacheck diagnosis remain open; the 3% limit is unchanged.
- Reproduced oxifft f64 planner panics and f32 large-transform accuracy failures;
  vendored minimal correctness repairs with upstream provenance and three
  regression tests (including the subsequently exposed f64 DIF failure).
  All 204 DFT solver tests and 46 distinct affected arena correctness cases
  pass, including all 40 historically missing comparisons. The recheck is
  not timing evidence and retains existing large-transform proxies; fresh
  comparisons and strict G7 coverage remain required.
- Reject unknown `run-cell` request fields after a diagnostic-script typo
  silently selected zero input twice. Retained the invalid pair and reran
  actual zero/random requests; both pass correctness. Datacheck's unchanged
  2% timing criterion remains unresolved.
- Installed stable Rust 1.99.0 for comparison with 1.95.0. The pinned toolchain
  and minimum version remain unchanged pending matched performance/build data.
- Native NEON validation of subsequent shared-engine changes is deferred at
  the maintainer's request (2026-10-14). Linux work and AArch64 compile checks
  continue; those checks do not establish a native pass. The later native
  validation must use the final candidate and selected compiler, following the
  [handoff](../../docs/benchmarks/2026-10-13-qualification-controls/native-neon.md).
- An isolated direction-dispatch candidate passes one controlled G9 pair
  (0.843876×), 126 active engine/tuning tests and library compile/lint checks.
  It remains unadopted: the consumer-build comparison was interrupted by host
  CPU activity, and independent build/runtime confirmation is pending.
  A follow-up trace identifies Paseo daemon activity even with Pi and vault
  sync suspended. The failed attempt and candidate patch are retained in the
  [diagnostic report](../../docs/benchmarks/2026-10-13-qualification-controls/README.md).

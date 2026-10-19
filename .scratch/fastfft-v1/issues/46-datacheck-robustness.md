# Diagnose zero versus random timing differences

Type: task
Status: claimed
Blocked by: 23
Roadmap: Benchmark protocol / datacheck

## Context

The [ticket 23 evaluation](../../../docs/benchmarks/2026-10-11-mini-ryzen-ticket23-gates/README.md) finds zero/random differences above
2% in the otherwise admissible datacheck suite. Forced-AVX2 f32 immutable
N=4096 is 1.1137× best / 1.1180× median random-over-zero; other misses
include RustFFT and FFTW. An oxifft f64 immutable N=2^20 planner panic in both zero/random
conditions (six raw-trial errors) leaves one supported pair incomplete. These findings do not establish
a data-dependent FFT bug or invalidate other suites automatically. Default
fastfft has all eight supported pairs and zero violating metrics, with a
maximum deviation of 1.7041%; forced AVX2 contributes seven of the 13
observed metric violations.

## Work

- Diagnose input/calibration/construction order and placement effects using
  retained raw trials and matched diagnostic comparisons, before assigning
  differences to FFT execution. Coordinate existing methodology work in 32/40.
- Preserve the original 2% criterion and absolute zero/random timings; retain
  every failed comparison rather than repeating until it passes.
- Distinguish documented unsupported adapters from verification failures,
  and record the oxifft comparison gap explicitly.

## Done when

The measured differences have an evidenced cause and justified correction
or explicit limitation. Report complete supported-pair coverage and both
best/median differences against the unchanged 2% criterion; unresolved
external-adapter errors remain incomplete.

## Progress (2026-10-14)

The vendored oxifft correctness repair passes 46 affected arena cases,
including the formerly panicking f64 N=2^20 immutable zero/random pair.
See the [retained recheck](../../../docs/benchmarks/2026-10-13-qualification-controls/oxifft-recheck.json).
An initial diagnostic script misspelled `data` as `timing_data`; both requests
used zero. These invalid pair records are retained. Corrected requests verify
the returned data mode and pass correctness. The arena now rejects unknown
request fields instead of silently ignoring them, without changing historical
result reading. Parser regressions cover this demonstrated failure.

No timing claim follows from the recheck: builds overlapped it. Balanced
construction-order diagnostics, fixed callers, absolute zero/random timings,
and the unchanged 2% check remain open.

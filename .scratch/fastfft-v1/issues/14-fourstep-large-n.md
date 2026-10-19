# Build the four-step engine for large N

Type: task
Status: resolved
Blocked by: 10
Roadmap: FFT-040

## Question

For N ≥ 2^15 (beyond L1/L2), can a Bailey four-step on vectors beat rustfft by ≥ 1.5×?
- Column pass over L1/L2 panels with fused twiddles.
- Row pass fused with the transposing final pass.
- ≤ 2 memory passes out of place, 3 in place.
- Non-temporal stores if measured faster.

## Context

- [Ticket 13](13-odd-smooth-sizes-simd.md) provides reusable smooth-dimension
  SIMD panels in `crates/fastfft/src/engine/fourstep.rs`: bounded AVX-512
  masked tails (local-buffer fallback on other tiers), fused cross twiddles
  and register transposes, and exact public scratch contracts. Its measured
  defaults cover large odd sizes and f64 N=1000000. Reuse this machinery;
  this ticket still owns large-power-of-two tuning and the accuracy range below.
- rustfft 2^20 f32 in place takes 2.89 ms (~13.8 cycles/element).
- FFTW (our AVX-512 build) is slower than rustfft in place at large N.
- The multi-pass Stockham streams the whole array every pass.
- The 2^15 switch point is provisional (ADR-0001 §8, item 5). This ticket and [Detect cache sizes and set engine thresholds](16-cache-detection-thresholds.md) set it by measurement.

## Done when

- pow2 2^15…2^24 geomean ≥ 1.5× rustfft (M4 checkpoint).
- Correct to 2^24 (f64 reference plus roundtrip, sampled sizes in tests).
- The accuracy sweep covers powers of two to 2^22, as the plan's §6 asks (it currently stops at 2^18).

## Progress

- 2026-10-01: claimed on `ticket-14-fourstep-large-n`, starting from the
  ticket 13 merge (`d775eac`). Reuse its panel engine, establish the large-pow2
  arena baseline, and extend coverage at the existing public `Fft` accuracy
  and scratch-contract seams before changing large-size dispatch.
- The saved `target/arena/runs/ticket14-baseline` quick-profile run covers
  all 20 forward/in-place large-pow2 cells: 0.924x best / 0.927x median,
  no verification failures, 1.58% drift. The executable is preserved under
  `target/ticket14/baseline/`.
- Implemented a blocked intermediate, factored cross twiddles, grouped
  panels, padded workspaces and aligned streaming stores. Prefetching and
  recursive panel passes did not improve the diagnostics and were removed.
  The measured Estimate defaults keep Stockham below an 8 MiB transform,
  use AVX-512-ymm for f32 2^20, and use full AVX-512 above that and for f64
  from 2^19. Lower ISA caps retain their existing Estimate choices.
- Workspace release tests pass, including the full double-double accuracy
  sweep through 2^22 and large public buffer contracts. All five ISA caps,
  scalar-only/AVX-512-only builds, Clippy, formatting and codegen checks pass.
  Explicit f64-reference/roundtrip checks through 2^24 also pass in both
  directions and precisions. The official 80-cell M4 arena gate remains
  in progress. Diagnostic logs and earlier
  binaries/sources are under `target/ticket14/`; the baseline is archived in
  `docs/benchmarks/2026-10-01-mini-ryzen-ticket14-before/`.
- The first full arena run completed 73 verified cells before a pre-existing
  calibration bug stalled f64 2^23 out-of-place. A call crossing both warm-up
  boundaries left no tail samples, causing the harness to batch 1,613 calls
  instead of one in a minimal reproduction. The fallback now uses the whole
  warm-up; deterministic regression tests and the original replay pass.
  The interrupted run is preserved under `ticket14-calibration-stalled`.
  Rebuild, exact-cell replay and a fresh full gate are in progress.
- The exact-cell replay passes with 0.63% drift. The next full run verifies
  all 80 cells and passes the speed target, but one control reading causes
  a 7.61% drift flag. Its neighboring cases recheck cleanly at 0.49% drift.
  The unchanged executable's final full repeat passes at 1.5785× best /
  1.5773× median, minimum 1.1564×, with 1.32% drift. Six smooth regression
  cases also pass, minimum 0.9993×, with 0.98% drift. All evidence is archived.

## Answer

Use grouped FourStep panels for large power-of-two transforms on the
measured AVX-512 tiers, starting at an 8 MiB transform. Keep Stockham below
that measured crossover. The implementation reuses ticket 13's panel
codelets and register transposes, with a blocked intermediate, factored
cross-twiddle tables, bounded grouped workspace and padded buffer bases.
Aligned large buffers use measured non-temporal stores with fences;
misaligned buffers use ordinary stores. The two main-array passes preserve
all public placements and reuse scratch across a batch.

The [M4 report](../../../docs/benchmarks/2026-10-01-mini-ryzen-ticket14-fourstep/checkpoint.md)
passes the combined large-pow2 target: **1.5785× best / 1.5773× median**
versus RustFFT across **80/80 verified cells**, with minimum **1.1564×**
and **1.32%** maximum drift. It covers 2^15–2^24, both precisions and
directions, and in-place/out-of-place execution, using core 2 and three
processes per cell on an idle machine. The f32 median alone is 1.4992×;
the combined checkpoint exceeds 1.5×. The complete G1 suite remains ticket 23.

The normal double-double sweep now reaches 2^22. Explicit f64-reference
and roundtrip checks through 2^24 pass in both directions and precisions.
Workspace release tests, all five ISA caps, restricted-feature builds,
Clippy, formatting and codegen checks pass. Public-contract tests cover
aligned/offset buffers, all placements, batches, guards, exact scratch,
immutable input and short-scratch rejection before mutation. A focused
smooth run verifies the shared panel machinery without regressions.

The arena's empty-tail calibration bug exposed by the full run is fixed
with a deterministic regression test and an exact-cell replay. The report
retains the original failure, the control-clock dip and recheck, the clean
final run, source patches, hashes, raw data and validation logs. Portable
thresholds, the general cost model, G8 planning time and other CPU families
remain the existing follow-up tickets.

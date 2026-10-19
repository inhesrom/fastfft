# FUT-01: native NEON/macOS foundation

FUT-01 is in progress. This checkpoint adds native AArch64 SIMD and macOS
cache policy. Native Ryzen timings, calibrated Apple schedules and named Linux AArch64
measurements remain pending; this is not a completed FUT-01 or an x86
performance sign-off. The [accepted ARM route](../../../.scratch/fastfft-arm-macos/map.md)
defers FCMA until measured need and stable/MSRV-compatible support. These
diagnostic captures do not satisfy its full baseline or tuning gates.

## Implementation

- Default `neon` feature, runtime detection, f32/f64 128-bit vectors with
  fused arithmetic, complex shuffles, bounded tails and unaligned memory.
- NEON entries for Stockham, generic/rectangular Small, fixed Stockham,
  FourStep and Bluestein, including existing batch/placement APIs and tuning.
- Mac measurements retain scalar leaves through N=8; the initial vector
  leaves lost 20–140% to scalar at several tiny sizes. That rejected capture
  remains in `after-initial.jsonl` and `summary-initial.json`.
- AArch64 scalar code uses hardware FMA. The original scalar f64 inverse N=19
  fails the existing accuracy comparison at 2.14 epsilon versus RustFFT's
  0.74; saved pre-change source reproduces the exact error and plan. Hardware
  FMA fixes it without relaxing thresholds. Before/after reproduction logs
  are retained.
- macOS cache discovery reads generic and performance-level sysctls, uses
  the smallest reported L1D/L2 capacities across clusters, and falls back
  independently when a level is unavailable. This host reports 64 KiB as
  its smallest L1D and 8 MiB as its smallest L2; scheduling remains unpinned.
- AArch64 CI now exercises `scalar` and `neon`, requiring the selected tier,
  and builds without default features. No hosted CI run was triggered during local validation.

## Local validation

Native release tests, both precisions, directions, all public placements,
unaligned/guarded buffers and remainder batches pass. Eight ISA primitive
tests cover arithmetic, FMA signs/cancellation, shuffles and bounded memory.
Full NEON and forced-scalar accuracy sweeps pass for all N=1..4096 plus the
larger suite through 2^22. The final tiny-size selection change also passes
the quick release suite with tuning enabled. Scalar-cap and no-default-feature
quick suites pass. Clippy with all features/targets, fmt and codegen checks pass.
On the PR base, native Rust 1.89 library checks pass with all features and
without default features; the quick tuning suite and workspace Clippy were
also rerun there.
Exact commands/results are retained in `logs/`.

The x86_64 Linux library cross-check passes. The broader all-target cross-check
cannot build its C dev dependency because this Mac has no
`x86_64-linux-gnu-gcc`; native test binaries are covered by the handoff below.

## Mac performance capture

Results are unofficial: no CPU affinity, macOS can migrate threads, and the
clock proxy is not a calibrated frequency reading. The first arena-driver run
aborted on its >10% proxy-drift rule; it is retained in
`aborted-initial-arena-run/`, without treating it as a completed comparison.

`capture.py` runs the arena's existing `run-cell` protocol on 48 declared
forward/in-place cells, both precisions, with three independent sequential
children per cell. Every timed library verifies before timing. It preserves
all clock readings; it bypasses the driver's abort policy explicitly for
this unofficial local diagnostic. No compilation or tests overlap timing.
`compare.py` takes the median across the three processes separately for best
and median times; all 576 before/after library results must verify and match.
`environment.json` records CPU, compiler, power and cache information.

Final measurements: see `summary.json` and the per-cell `comparison.csv`.

| Suite | Cells | Best-time speedup | Median-time speedup |
|---|---:|---:|---:|
| pow2 | 24 | 2.079× | 2.048× |
| smooth | 10 | 1.865× | 1.812× |
| rough | 6 | 2.667× | 2.604× |
| batch | 8 | 2.321× | 2.277× |
| all | 48 | 2.136× | 2.094× |

Four N=8 cells retain roughly 4% median losses while their best times are
within 0.5% of baseline. The batch RustFFT row shifts by the same amount;
the single-transform RustFFT rows remain stable. These observations do not
establish the cause of the residual losses. Across all cells, RustFFT
medians are about 3.6% slower in the final capture, reinforcing the limited
precision of these unpinned measurements. All regressions remain visible
in `summary.json`; this is not a clean every-cell performance pass.

These are improvements over the saved scalar implementation, not claims of
parity with RustFFT or release-gate acceptance. Clock/scheduler noise and
sequential before/after order limit precision; the RustFFT row is retained
as a reference in every child. Both source snapshots are saved as runnable
workspace archives and hashed in `source-hashes.json`.

## Required manual Ryzen check

Astra found identical active x86 Rust source in six configurations: scalar,
SSE2, AVX2, AVX-512, default and tuning. This includes both AVX-512 widths.
The comparison removes docs and folds the new x86 cost-array dimension to
its unchanged value of five; it removes no executable function bodies.
Exact compiler outputs, commands and source hashes are in
[`x86-source-check/summary.txt`](x86-source-check/summary.txt).
This is source-equivalence evidence, not machine-code or timing equivalence.

SSH to `mini-ryzen` was denied; the maintainer requested a manual handoff.
Copy this directory onto the Ryzen host, then run on an idle machine:

```bash
bash check-x86.sh /tmp/fastfft-neon-x86
```

The script extracts both exact source snapshots, builds both binaries, runs
native release correctness and the five-cap matrix, checks generated code
and the Linux benchmark environment, then captures before/after/after/before.
It uses default-target CPU, aligned functions, core 2 and `--procs 3`, measuring
all x86 tiers plus RustFFT across pow2, smooth, rough, batch and realworld.
Compilation and correctness checks finish before timing. It rejects aborted,
failed or drift-flagged captures. `source-before.tar.gz` includes the prior
macOS harness work so the comparison keeps the harness consistent.

The default quick profile is a regression screen. For both directions and
all profile placements, use a separate output directory:

```bash
FASTFFT_X86_PROFILE=full bash check-x86.sh /tmp/fastfft-neon-x86-full
```

Full runs across seven rows and four captures can take several hours. Return
all four capture directories and `validation.log` for the final audit. Compare
best and median times per cell and per tier, checking the RustFFT reference
and <3% control drift. Investigate every loss above 3%; do not accept a global
geomean that hides a slower cell. No x86 performance claim is accepted until
these measurements have been reviewed.

## PR source base

The implementation was developed against `fbab8a6` and applied cleanly to
`de309938a1b2b4dcd2bf190970a0e3b3768bcf9f` for the PR. The later base adds
ARM planning, profiling tooling and runner configuration; the FFT library
sources are unchanged between those base revisions. The archived snapshots
remain the exact inputs used for the retained measurements and manual x86
comparison. The PR also carries the macOS arena/FFTW prerequisites used by
both snapshots; the earlier four-library report work remains separate.

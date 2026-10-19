# Tuning evidence

These are test-harness diagnostics from the development iterations. They
guided implementation and dispatch, but are not official performance
claims. The enclosing arena report supplies those numbers. Earlier partial
source snapshots are retained under `sources/`; successful build and
timing logs are compressed alongside this file. Large experimental
executables remain in `target/ticket14/` and are not repository artifacts.

| Logs | Question and result |
|---|---|
| `panels-before`, `panels-blocked`, `panels-compact-aligned` | Factor choices alone did not rescue the original large panels. Blocking the intermediate and factoring the cross twiddles reduced traffic and table size. |
| `phases-stream-0/1`, `phases-matrix` | Streaming aligned output and then intermediate stores improved the memory-bound phases. |
| `phases-nopref`, `phases-prefetch` | Explicit prefetching offered no consistent benefit; removed. |
| `phases-iterative`, `phases-recursive` | Recursive panel passes were slower; removed. |
| `phases-group-1/4/8/16` | Adjacent panel groups reduced strided visits and widened output writes. |
| `placement-0/1` | Workspace padding and retaining results in the first panel avoided page-offset conflicts and an extra local copy. |
| `crossover-N-0/1` | Ordinary versus streaming stores at the crossover sizes. Stockham stays selected below an 8 MiB transform. |
| `upper-range` | Wide AVX-512 beats the ymm shape at 2^23 and 2^24; both candidates passed the harness reference checks. |

The harness can narrow sizes, precisions, factors, candidate shape, direction,
placement and public/kernel surface. `FASTFFT_TIMING_ALIGNED=1` aligns its
caller buffers to 64 bytes; `FASTFFT_TIMING_CALLS` limits the batch size for
large transforms. The test's double-double reference checks still exercise
all three placements for every selected candidate.

Final test-only engine controls are `FASTFFT_FOURSTEP_STREAMING=0|1`,
`FASTFFT_FOURSTEP_GROUPS=<power of two>`,
`FASTFFT_FOURSTEP_NO_PADDING=1` and `FASTFFT_FOURSTEP_PROFILE=1`.
They are absent from production builds. A typical focused command is:

```sh
FASTFFT_TIMING_N=1048576 FASTFFT_TIMING_CANDIDATE=fourstep \
FASTFFT_TIMING_SURFACE=public FASTFFT_TIMING_DIRECTION=Forward \
FASTFFT_TIMING_PLACEMENT=ip FASTFFT_TIMING_ALIGNED=1 \
FASTFFT_TIMING_CALLS=2 taskset -c 2 \
  <already-built-test-executable> tests::small_candidate_timings \
  --ignored --nocapture --test-threads=1
```

Diagnostic samples are intentionally short. Some upper-range rows contain
one timed call, so their best and median columns are identical. Choose
defaults from consistent trends across these experiments, then validate
them with the arena's longer rounds and independent processes.

## Arena interruptions and checks

- `calibration-stalled/` retains 73 completed cells, the environment,
  interruption reason, old executable hash, library patch and original
  arena timing source. There is no completed-run gate verdict for it.
- `calibration-test-before.log.gz` and `calibration-test-after.log.gz`
  record the deterministic 1,613-call failure and the corrected one-call
  result. The real warm-up replay logs retain the same failure mode
  (its exact excess batch count depends on timer overhead).
- `reproduce-calibration.py` extracts and compiles the actual warm-up
  function. From the repository root, run it with
  `calibration-stalled/timing-before.rs` as the explicit source path to
  reproduce the old failure, or without an argument to test current source.
- [Calibration replay](calibration-replay/report.md): the exact stalled
  f64 2^23 forward/out-of-place cell passes in 24 seconds, with three
  processes, one call per batch for each library and 0.63% drift.
- [Control dip](control-dip/report.md): all 80 cells verify and the speed
  target passes, but one control clock reading flags the run at 7.61%.
  [Drift recheck](drift-recheck/report.md) repeats its two neighboring FFT
  cells with 0.49% drift. The final checkpoint uses a fresh full repeat.
- [Smooth guard](smooth-guard/report.md): six shared-engine cases verify,
  minimum ratio 0.9993×, with 0.98% drift.

The completed calibration, drift and smooth checks use the same executable
as the final M4 report. Their hashes are saved in each run directory.

# Ticket 12 working data: aligned vs 8-byte-misaligned user buffers

Work in progress for [ticket 12](../../../../.scratch/fastfft-v1/issues/12-unaligned-user-buffers.md).
The ticket's `## Progress` section holds the findings and the resume point.
This directory holds the scripts and each finished run.

## Binary

Every run uses one snapshot of the function-aligned arena, built from
`45669e2` (master after ticket 11) with the ticket 11 command:

```sh
RUSTFLAGS="-C llvm-args=-align-all-functions=6" CARGO_TARGET_DIR=target/aligned \
  cargo build --profile arena -p fastfft-arena --features fftw
cp target/aligned/arena/fastfft-arena target/ticket12/arena
```

sha256 `f78a9e3789a4bcb512708369b0b29d51f0ca25a2f2e55f11f597fbc2395fbd67`.
A rebuild of `45669e2` reproduced this hash exactly.

The mitigation prototype (the commit that adds `validate-proto.sh`) is built
the same way into `target/aligned-proto` and copied to
`target/ticket12/arena-proto`: sha256
`516d4c096f796857fe276dcc14d9faa3433f85b3794e0f17188b0f6a794999e0`.

## Files

- `pipeline.sh`: the runs, in order. Each m0/m8 pair uses the same binary and
  differs only in `--misalign 8`. It writes to `target/ticket12/`
  (git-ignored), waits for an idle machine before each run, skips runs that
  already finished, and keeps an aborted attempt as `<run>.abort<epoch>`.
  Start it detached: `setsid nohup bash <copy in target/ticket12>/pipeline.sh > target/ticket12/pipeline2.log 2>&1 &`.
- `analyze.py`: pairs m0 and m8 cells.
  `python3 analyze.py --m0 full-m0,full-m0-rest --m8 full-m8 [--stat p1|median|best]`.
  A later run replaces an earlier one per cell. A cell whose core-clock
  reading is more than 3% off its run's first control is dropped and listed.
- `<run>/`: `env.json`, `meta.json` and `results.jsonl.gz` of each run.
- `validate-proto.sh`: fmt, clippy, codegen check, workspace tests and the
  five tier caps on the prototype, then its arena build. Its log is
  `validate-proto.log.gz`.
- `pipeline-proto.sh`: stage 2. It re-times the dropped cells on the baseline
  binary, then runs the prototype (m8 first, then m0) on the pow2, large and
  batch sets, and both binaries on the rough suite (Bluestein). Same idle
  gate and resume rules as `pipeline.sh`; log `target/ticket12/pipeline-proto.log`.

## Gated implementation (stage 3, complete)

The maintainer selected the gated-scratch option. `validate-gated.sh` checks the
workspace, five ISA caps, scalar-only build and docs, then builds the arena and
captures the build-source patch/hash manifest. `pipeline-gated.sh` runs idle-gated,
resumable comparisons; `--batch-only` stops after the regression-sensitive batch
cases. `GATED_VARIANT` selects distinct binary/run names (currently defaults to
`gated-v2`), so earlier evidence is not overwritten.

The first gated binary (`gated`, sha256
`778f132ecb372f8503250ab1c745742f77102996a7c72b98fcafb29743f47917`)
passed full correctness validation. Its independent review and responses are in
`gated-review.md`; its source snapshot and validation log are in `gated-build/`.

**The placement-only fix did not pass the batch performance check.** All four
runs below completed cleanly on 2026-09-30 with `--procs 3`:

- `gated-batch-m{0,8}` and `base-recheck-batch-m{0,8}`: N=256, 512, 1024,
  both precisions and placements, forward. `gated-batch-self.txt`,
  `base-recheck-batch-self.txt` and `gated-vs-base-batch-m8.txt` contain p1
  comparisons.
- At N=512 out of place, gated m8/m0 remains **1.301 f32 / 1.236 f64**.
  Against the freshly remeasured baseline at m8 it is **1.139 / 1.152**.
  Separating scratch *bases* modulo 4 KiB is not sufficient to eliminate the
  regression; this does not identify its complete microarchitectural cause.
- At N=1024 in place, the gated binary improves m8 against baseline by 5.3%
  for f32 and 2.7% for f64. Out of place it is roughly unchanged.

The final candidate (`gated-v2`) therefore retains legacy execution and scratch
sizes for **all plans with fewer than three Phase A passes**, even when their
working set fits. Three-or-more-pass plans retain the cache/placement policy.

**Final results:** [gated-result.md](gated-result.md). Eligible measured cells
use 27% less time for f32 and 22% less for f64; aligned and excluded cache-boundary
calls remain effectively unchanged. The N=512 batch regression is avoided.
Full validation passed again. `gated-v2-build/` holds provenance and logs;
`gated-v2-focus-*`, `gated-v2-batch-*`, `gated-v2-rough-*` and
`gated-v2-immutable-*` hold the final measurements. One 3.5% clock-dipped aligned
batch cell is replaced by `gated-v2-retime-batch-m0`, with the original retained.
Final p1/median analyses have no unmatched clock-dropped cells.

## Runs

- `full-m0`: pow2 N = 2…2^20, full profile, aligned. **Aborted at cell 150**
  (control drift 73%): at about 04:57 UTC another agent session started a
  Rust build and code searches, and the unpinned processes shared CPU 2.
  Cells 1–125 lie between clean controls (≤ 1.4% drift) and are kept. Of
  those, `analyze.py` drops five that show single-cell clock dips:
  f32 fwd oop N=16, f64 N=256 (three cells) and f64 fwd ip N=512. They need
  re-timing. `pipeline.log.gz` is the console log of this attempt.
- `full-m0-rest`: the m0 cells `full-m0` never reached (f64 N = 4096…2^20),
  36 cells, not aborted. Three cells show a clock dip in one of their three
  processes (f64 N=4096 fwd/inv oop, f64 N=8192 fwd ip) and need re-timing;
  the controls stayed within 1.2%.
- `full-m8`: pow2 N = 2…2^20, full profile, `--misalign 8`, 160 cells, not
  aborted. 20 cells show clock dips from the other session (mostly f64
  N = 64–2048) and need re-timing.
- `large-m8`: pow2 N = 2^21…2^24, quick profile (forward in place),
  `--misalign 8`, 8 cells. f32 N = 2^23 dipped in one process; re-time it.
- `large-m0`: the aligned pair of `large-m8`, 8 cells, clean.
- `analysis-large-p1.txt`: `analyze.py --m0 large-m0 --m8 large-m8`.
- `batch-m0`, `batch-m8`: batch suite, full profile, 32 cells each, clean.
- `analysis-batch-p1.txt`: `analyze.py --m0 batch-m0 --m8 batch-m8`.
- `pipeline2.log.gz`: console log of the resumable pipeline (`full-m0-rest` through `batch-m8`).
- `analysis-full-p1.txt`, `analysis-full-median.txt`: `analyze.py --m0
  full-m0,full-m0-rest --m8 full-m8` with `--stat p1` and `--stat median`.
- `retime-*`: stage 2 re-times on the baseline binary, every direction and
  placement of each (precision, N) pair that had a dropped cell. With them
  every pow2 pair up to 2^24 is clean:
  `analysis-full-merged-{p1,median}.txt` (`--m0 full-m0,full-m0-rest,retime-m0-f32,retime-m0-f64 --m8 full-m8,retime-m8-f32,retime-m8-f64`)
  and `analysis-large-merged-p1.txt` (`--m0 large-m0,retime-large-m0 --m8 large-m8,retime-large-m8`).
  These supersede `analysis-full-*.txt` and `analysis-large-p1.txt`.
- `proto-full-m8`: the prototype on pow2 N = 2…2^20 with `--misalign 8`.
  `proto-benefit-p1.txt` is `analyze.py --m0 full-m0,full-m0-rest,retime-m0-f32,retime-m0-f64 --m8 proto-full-m8`:
  its "ff m8/m0" column is prototype-misaligned over baseline-aligned.
- `proto-full-m0`: the prototype on the same cells, aligned.
  `proto-self-{p1,median}.txt` is `analyze.py --m0 proto-full-m0 --m8 proto-full-m8`
  (the misalignment cost left in the prototype, same binary; the fair
  comparison). `proto-neutral-p1.txt` is `--m0 <baseline m0 runs> --m8 proto-full-m0`
  (prototype aligned over baseline aligned).
- `rough-m0`, `rough-m8` (baseline) and `proto-rough-m0`, `proto-rough-m8`
  (prototype): rough suite, quick profile, for Bluestein.
  `rough-proto-vs-base-m0.txt` (prototype aligned over baseline aligned: the
  work-buffer fix), `rough-proto-vs-base-m8.txt`, `rough-base-self.txt` and
  `rough-proto-self.txt` (each binary's m8 over m0).
  `pipeline-proto.log.gz` is the console log of stage 2.
- `proto-large-*`, `proto-batch-*`: the prototype on the large and batch
  sets. `proto-{large,batch}-self-p1.txt` pair its own m0 and m8;
  `proto-{large,batch}-neutral-p1.txt` pair baseline m0 with prototype m0.

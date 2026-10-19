# Ticket 14: large-power-of-two M4 checkpoint passes

The Ryzen 7 7840HS run passes the combined M4 target with **1.5785× best /
1.5773× median** speedup over RustFFT. All **80 cells** verified, every best
and median ratio exceeds **1.1564×**, and maximum clock drift is **1.32%**.
The full-profile run covers powers of two from 2^15 through 2^24, both
precisions, both directions and in-place/out-of-place execution.

| Precision | Cells | Best geomean | Median geomean | Minimum ratio |
|---|---:|---:|---:|---:|
| f32 | 40 | 1.5034× | 1.4992× | 1.1564× |
| f64 | 40 | 1.6572× | 1.6596× | 1.2675× |
| Combined | 80 | 1.5785× | 1.5773× | 1.1564× |

The ticket's combined geomean exceeds 1.5×; f32's median alone is 1.4992×.
The minimum is f32 inverse/out-of-place at 2^19. This establishes the M4
large-size checkpoint. The generated report applies its G1 formula to this
filtered range; the complete G1 suite, including smaller sizes, remains
ticket 23's release-gate work. G8 planning time still fails on an unchanged
Stockham size (worst 2.95× RustFFT at f64 2^18).

## Improvement over the saved baseline

The [baseline](../2026-10-01-mini-ryzen-ticket14-before/checkpoint.md) covers
the 20 forward/in-place cells in the quick profile: 0.924× best / 0.927×
median versus RustFFT. Matching cells in this full run reach 1.589× /
1.591×. Fastfft's own best times improve by a geometric mean of 1.723×
across those 20 cells. The before/after profiles differ; the final M4
verdict uses only this full-profile run.

| Precision | N | Previous fastfft | Final fastfft | Final RustFFT |
|---|---:|---:|---:|---:|
| f32 | 2^20 | 3.209 ms | 1.900 ms | 2.951 ms |
| f32 | 2^22 | 32.441 ms | 10.617 ms | 19.164 ms |
| f32 | 2^24 | 128.712 ms | 49.686 ms | 89.448 ms |
| f64 | 2^20 | 12.311 ms | 4.082 ms | 8.035 ms |
| f64 | 2^22 | 72.305 ms | 20.620 ms | 39.918 ms |
| f64 | 2^24 | 288.522 ms | 96.371 ms | 194.920 ms |

These are best times for forward/in-place execution. The
[complete report](report.md) contains every direction and placement.

## Implementation and validation

Large power-of-two plans use grouped FourStep panels, a blocked intermediate,
factored cross twiddles, padded workspaces and fenced non-temporal stores
for aligned buffers. The measured default changes at an 8 MiB transform;
smaller sizes retain Stockham. The general cost model and other CPU families
remain follow-up work.

The normal double-double accuracy sweep now reaches 2^22. Explicit f64
reference and roundtrip tests pass through 2^24 in both directions and
precisions. Workspace tests, all five ISA caps, restricted-feature builds,
Clippy, formatting and code generation checks pass. Public tests cover
offset buffers, all placements, immutable input, batches, guards, exact
scratch and rejection of undersized scratch. The
[validation record](validation.md) explains the implementation and commands.

The [focused smooth check](diagnostics/smooth-guard/report.md) verifies
N=4725, 165375 and 1000000 in both precisions. All six cells pass, with a
minimum best/median ratio of 0.9993× and 0.98% drift. Full G2 was established
by ticket 13; this check covers the shared panel machinery touched here.

## Measurement history and reproduction

The first run was interrupted after 73 verified cells by an existing arena
calibration bug. A slow call could cross both warm-up boundaries, leaving
no completed calls in the tail window; timer overhead then caused thousands
of calls per timed batch. A deterministic regression test and a real
warm-up replay demonstrate the correction. The
[exact stalled cell replay](diagnostics/calibration-replay/report.md) finishes
normally with 0.63% drift. Details and the interrupted data are in the
[diagnostic archive](diagnostics/README.md).

The next full run passed all performance cells but had a single 7.61%
control-clock dip. Its [report](diagnostics/control-dip/report.md) is retained.
Every FFT cell had stable clock readings; the
[neighboring-cell recheck](diagnostics/drift-recheck/report.md) reproduced
the timings with 0.49% drift. The unchanged executable's final full repeat
is the clean 1.32%-drift result reported above. No timings from different
runs are combined for the checkpoint.

All arena runs use an idle machine, core 2, boost enabled and three
processes per cell. Compilation and tests finish before timing starts.

```sh
RUSTFLAGS='-C llvm-args=-align-all-functions=6' \
  cargo build --profile arena -p fastfft-arena --features fftw -j 2
scripts/bench-env.sh check --core 2
RUSTFLAGS='-C llvm-args=-align-all-functions=6' \
  target/arena/fastfft-arena run --suite pow2 --profile full \
  --libs fastfft,rustfft --filter minn=32768 --core 2 --procs 3 \
  --out target/arena/runs/ticket14-fourstep
python3 docs/benchmarks/2026-10-01-mini-ryzen-ticket14-fourstep/check-m4.py \
  target/arena/runs/ticket14-fourstep
```

`check-m4.py` also validates the archived data without arguments. It requires
the exact 80-cell coverage, successful verification, full profile, three
processes, core 2, an official unflagged run, both combined geomeans at least
1.5× and every best/median ratio at least 0.95×. It rejected the control-dip
run before accepting the final repeat. The source patch relative to
`d775eac`, source/executable hashes, raw data, plots and validation logs are
retained alongside this report.

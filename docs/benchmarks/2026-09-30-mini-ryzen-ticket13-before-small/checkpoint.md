# Ticket 13: full smooth baseline before small-kernel tuning

This is the clean checkpoint commit `8a36159`, following the initial panel
implementation. Estimate still uses its preceding dispatch policy; FourStep
panels are available to Measure but are not selected by this run.

```sh
scripts/bench-env.sh check --core 2
target/arena/fastfft-arena run --suite smooth --profile quick \
  --libs fastfft,rustfft --core 2 --procs 3 --label ticket13-before-small \
  --out target/arena/runs/ticket13-before-small
```

The arena was built with the established 64-byte function alignment flag,
`RUSTFLAGS='-C llvm-args=-align-all-functions=6'`, the `arena` profile and
`fftw` feature. All 82 cells verified; maximum control drift was 0.99%.
G2 fails: overall geomean 1.024× best / 1.023× median, worst cell 0.245×
(f32 N=4725). The [report](report.md) contains every cell and the gate table.

The source and executable hashes match the preceding
[initial panel checkpoint](../2026-09-30-mini-ryzen-odd-panels/checkpoint.md).
This run establishes the complete quick-suite comparison before changing
Estimate selection or introducing rectangular small leaves.

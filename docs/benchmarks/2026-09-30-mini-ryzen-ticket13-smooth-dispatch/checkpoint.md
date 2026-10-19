# First measured smooth dispatch

```sh
target/arena/fastfft-arena run --suite smooth --profile quick \
  --libs fastfft,rustfft --core 2 --procs 3 \
  --label ticket13-smooth-dispatch \
  --out target/arena/runs/ticket13-smooth-dispatch
```

The environment check passed on the idle machine. The arena used the
established `arena` profile, FFTW feature and 64-byte function alignment.
All 82 cells verified; maximum control drift was 1.62%.

Relative to the [clean checkpoint baseline](../2026-09-30-mini-ryzen-ticket13-before-small/report.md),
execution improves by a 1.248× geometric mean. The smooth-suite ratio versus
RustFFT rises from 1.024× to 1.282× best (1.023× to 1.279× median).
Examples include f32 N=210 (5.514× faster than the baseline), f32 N=165375
(4.977×), and f64 N=24 (2.826×).

G2 still fails. Eight cells are below 0.95× on best or median: f32
N=80,96,108; f64 N=6,18,36,210,1000000. G7 passes. G8 remains failing.
See the [report](report.md) and [validation notes](validation.md).

Follow-up runs inspect [large even panels](../2026-09-30-mini-ryzen-ticket13-large-even/checkpoint.md)
and [remaining small candidates](../2026-09-30-mini-ryzen-ticket13-remaining-measure/checkpoint.md).
These identify the next changes; this intermediate run is preserved without
substituting measurements from a later executable.

# Ticket 13: validated smooth SIMD checkpoint

This continues commit `8a36159` on `ticket-13-odd-smooth-simd`. The measured
working tree is captured by `source.patch.gz`; source and executable hashes
are alongside the report. The preceding clean baseline is
[here](../2026-09-30-mini-ryzen-ticket13-before-small/checkpoint.md).

## Result

All 82 quick smooth cells verified. Maximum control drift was 0.68%, with
three processes per cell pinned to core 2 on the idle machine.

The overall speedup versus RustFFT improves from **1.024× to 1.292×**
best and **1.023× to 1.292×** median. Compared directly with the
checkpoint's execution times, the geometric-mean improvement is 1.264×.
Cells below 0.95× on either statistic fall from **26 to 7**.

| Precision | N | Faster than checkpoint (best) | vs RustFFT best | vs RustFFT median |
|---|---:|---:|---:|---:|
| f32 | 18 | 3.821× | 1.477× | 1.482× |
| f32 | 96 | 1.999× | 1.169× | 1.201× |
| f32 | 210 | 5.517× | 2.142× | 2.168× |
| f32 | 4725 | 3.967× | 0.982× | 0.976× |
| f32 | 165375 | 5.027× | 1.296× | 1.303× |
| f64 | 24 | 2.825× | 1.106× | 1.103× |
| f64 | 165375 | 2.554× | 1.351× | 1.348× |
| f64 | 1000000 | 1.423× | 1.037× | 1.058× |

G2 still fails: the geomean is below 1.3× and the following cells remain
below the 0.95× floor. Ticket 13 remains **claimed**.

| Precision | N | vs RustFFT best | vs RustFFT median |
|---|---:|---:|---:|
| f32 | 80 | 0.935× | 0.967× |
| f32 | 108 | 0.928× | 0.928× |
| f32 | 120 | 0.917× | 0.935× |
| f64 | 6 | 0.968× | 0.944× |
| f64 | 18 | 0.848× | 0.869× |
| f64 | 36 | 0.941× | 0.947× |
| f64 | 210 | 0.633× | 0.636× |

G7 passes; G8 remains failing. The [full report](report.md) retains all cells,
including misses. No results from earlier executables substitute for this run.

## What changed

Rectangular small leaves, packed complex odd leaves, fixed Stockham schedules
and measured default dispatch replace scalar/narrow-vector bottlenecks. The
final dispatch selects panels for large odd lengths and f64 N=1000000.
Small rectangles use local tiling when either dimension exceeds SIMD width;
in the arena this reduces f32 N=80 from about 57 ns to 40 ns and N=96 from
about 59 ns to 42 ns relative to the first dispatch iteration.

The [validation record](validation.md) describes safety coverage and successful
workspace, five-tier, scalar-only, Clippy, formatting and code-generation checks.
The [diagnostic archive](diagnostics/README.md) retains provisional experiments.

```sh
RUSTFLAGS='-C llvm-args=-align-all-functions=6' \
  cargo build --profile arena -p fastfft-arena --features fftw -j 1
scripts/bench-env.sh check --core 2
target/arena/fastfft-arena run --suite smooth --profile quick \
  --libs fastfft,rustfft --core 2 --procs 3 \
  --label ticket13-smooth-checkpoint \
  --out target/arena/runs/ticket13-smooth-checkpoint
```

## Next work

- Improve f64 N=210, the largest remaining relative gap. Neither the measured
  rectangular nor panel candidates beat the current SSE2 Stockham choice.
- Reduce latency for f64 N=18 and the f32 N=80/108/120 rectangles. The f64
  N=6/36 margins also need to hold in the full suite, not just focused runs.
- Inspect generated code and reduce unnecessary static candidate compilation
  before the release build-time gate. Keep the existing measurement protocol
  and rerun the full smooth suite after further kernel changes.

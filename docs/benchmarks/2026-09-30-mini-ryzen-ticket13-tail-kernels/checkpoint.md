# Ticket 13: smooth SIMD gate passes

The quick smooth suite passes G2 on the Ryzen 7 7840HS: **1.335× best /
1.332× median** versus RustFFT, with **zero cells below 0.95×** on either
statistic. All 82 cells verified. The lowest ratio is 0.985×, for the median
of f32 N=1000000. Maximum control drift is 0.89%.

| Precision | Cells | Best geomean | Median geomean | Lowest ratio |
|---|---:|---:|---:|---:|
| f32 | 41 | 1.331× | 1.327× | 0.985× |
| f64 | 41 | 1.339× | 1.337× | 1.003× |

This continues commit `8a36159` on `ticket-13-odd-smooth-simd`. Compared
with the [pre-dispatch checkpoint](../2026-09-30-mini-ryzen-ticket13-before-small/checkpoint.md),
the overall best geomean rises from 1.024× to 1.335× and the number of cells
below the floor falls from 26 to zero. The
[previous validated checkpoint](../2026-09-30-mini-ryzen-ticket13-smooth-checkpoint/checkpoint.md)
reached 1.292× with seven misses.

## Closing the remaining gaps

| Precision | N | vs RustFFT best | vs RustFFT median |
|---|---:|---:|---:|
| f32 | 80 | 1.060× | 1.069× |
| f32 | 96 | 1.344× | 1.377× |
| f32 | 108 | 1.283× | 1.262× |
| f32 | 120 | 1.035× | 1.033× |
| f32 | 4725 | 1.317× | 1.312× |
| f64 | 6 | 1.039× | 1.009× |
| f64 | 18 | 1.270× | 1.295× |
| f64 | 36 | 1.243× | 1.282× |
| f64 | 210 | 1.023× | 1.027× |
| f64 | 4725 | 1.180× | 1.175× |

Small rectangular leaves now use constant tail lengths and initialize their
local intermediate through first-pass stores. Packed complex kernels cover
f32 N=80/96/108 and f64 N=36; coprime leaves reduce f64 N=6/18 latency.
The planner retains measured choices separately from the general cost model.

The final remaining miss was f64 N=4725. A clean full-suite run reproduced
0.911× best / 0.907× median. Changing panel dimensions offered little margin.
Replacing repeated temporary tail copies with bounded AVX-512 masked loads
and stores improved the existing 63×75 geometry: the final arena measures
8.61 µs f64 and 4.63 µs f32. Other tiers retain bounded local-buffer tails.
No caller padding is required, and the planner geometry stays unchanged.

## Evidence and reproduction

The [complete report](report.md) contains every measured cell. Its raw data,
environment, plots, exact library patch relative to `8a36159`, source hashes
and executable hash are retained here. The [diagnostic archive](diagnostics/README.md)
also keeps failed and rejected runs. In particular, the first run of the final
executable passed every performance cell but was flagged for 13.49% control
drift; the unchanged executable's clean repeat is the result reported here.

Official measurements use an idle machine, core 2, boost enabled and three
processes per cell. Compilation and tests finish before benchmarking starts.

```sh
RUSTFLAGS='-C llvm-args=-align-all-functions=6' \
  cargo build --profile arena -p fastfft-arena --features fftw -j 2
scripts/bench-env.sh check --core 2
target/arena/fastfft-arena run --suite smooth --profile quick \
  --libs fastfft,rustfft --core 2 --procs 3 \
  --label ticket13-masked-gate-repeat \
  --out target/arena/runs/ticket13-masked-gate-repeat
python3 docs/benchmarks/2026-09-30-mini-ryzen-ticket13-tail-kernels/check-g2.py \
  target/arena/runs/ticket13-masked-gate-repeat
```

`check-g2.py` also checks the archived data when called without arguments.
It rejects flagged drift, verification/child failures, missing cells,
geomeans below 1.3× and any best or median ratio below 0.95×. It was checked
against the earlier failing full run before accepting the final result.

The [validation record](validation.md) covers workspace tests, all five ISA
caps, feature-restricted builds and repository checks. This establishes the
ticket's quick smooth gate on this host. G8 planning time still fails in the
arena report; G9 build time and the other release suites remain separate work.

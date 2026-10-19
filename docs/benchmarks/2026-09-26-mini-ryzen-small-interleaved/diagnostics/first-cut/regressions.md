# Matched regression audit

The previous checkpoint's final arena and this pass's final arena each ran the
same 180-cell quick pow2/smooth/rough/batch suite (`--libs fastfft,rustfft`,
three processes, CPU 2). Nine cells were more than 3% slower on best or median.
Two further matched pairs covered all nine at every suite and precision the
filter selects. All runs verified every row, had zero child failures and no
abort; the largest control drift was 2.13%, unflagged.

Positive percentages mean **fastfft became slower**; each entry is best / median.

| Cell (forward, in-place) | Initial pair | Repeat pair 1 | Repeat pair 2 | >3% in all three | Plan |
|---|---:|---:|---:|---|---|
| batch:f64:fwd:ip:n128:b8192 | +1.54 / +3.11% | +7.31 / +12.64% | +1.34 / -0.49% | no | unchanged |
| pow2:f32:fwd:ip:n16777216 | +5.45 / +5.04% | -0.31 / +0.19% | +0.49 / +0.68% | no | unchanged |
| pow2:f64:fwd:ip:n1048576 | +0.24 / +3.74% | -0.57 / +0.04% | +1.40 / -1.16% | no | unchanged |
| pow2:f64:fwd:ip:n16777216 | +3.11 / +3.19% | +0.88 / +0.95% | -1.50 / -1.52% | no | unchanged |
| pow2:f64:fwd:ip:n8 | +6.42 / +8.31% | +6.50 / +8.48% | +7.00 / +7.60% | **best and median** | changed |
| rough:f64:fwd:ip:n2018 | +7.26 / +7.01% | -4.91 / -4.99% | -2.89 / -2.86% | no | unchanged |
| smooth:f64:fwd:ip:n120 | +5.91 / +4.81% | +5.70 / +5.59% | +0.23 / +0.11% | no | unchanged |
| smooth:f64:fwd:ip:n240 | +7.60 / +6.65% | -1.34 / -1.93% | -1.05 / -2.57% | no | unchanged |
| smooth:f64:fwd:ip:n36 | +9.63 / +12.25% | -1.23 / +0.13% | +0.47 / -0.93% | no | unchanged |

Only **f64 N=8** recurs. It moved from the AVX2 scalar-lane codelet
(`small avx2 n=8 decomposition=8x1 kernel=generic`) to the interleaved leaf,
whose in-place critical path is a few cycles longer. It still runs 1.02×
rustfft in the acceptance run, and its out-of-place (0.95× → 1.27×) and batch
(-38%) forms improved. The other flags have unchanged plans and do not recur.

Previous sentinels: f64 N=2048 -0.60 / -0.82%, f64 N=1021 -3.21 / -3.42%,
f32 N=61 -9.13 / -8.39% (its Bluestein inner N=128 now runs the interleaved
leaf, reversing the previous pass's recurring +4-5%). f32 N=2018 is -1.10 /
-1.16% against the previous final; the +33-41% it recorded against the older
Small baseline is untouched by this pass and stays with ticket 31.

The broad audit's geomean over all 180 cells improved by 2.84% (best) and 2.74%
(median). Every cell whose plan changed:

| Cell | Change (best / median) | New plan |
|---|---:|---|
| batch:f32:fwd:ip:n8:b131072 | -60.9 / -61.5% | `small avx2 n=8 decomposition=2x4 scratch=0 kernel=interleaved` |
| batch:f32:fwd:ip:n16:b65536 | -53.9 / -54.3% | `small avx2 n=16 decomposition=4x4 scratch=0 kernel=interleaved` |
| batch:f32:fwd:ip:n32:b32768 | -40.5 / -40.7% | `small avx2 n=32 decomposition=8x4 scratch=0 kernel=interleaved` |
| batch:f64:fwd:ip:n8:b131072 | -38.0 / -36.7% | `small avx2 n=8 decomposition=2x4 scratch=0 kernel=interleaved` |
| pow2:f32:fwd:ip:n32 | -28.6 / -27.1% | `small avx2 n=32 decomposition=8x4 scratch=0 kernel=interleaved` |
| rough:f32:fwd:ip:n31 | -26.6 / -26.6% | `bluestein n=31 m=64 inner=[small avx512-ymm n=64 decomposition=16x4 scratch=0 kernel=interleaved]` |
| batch:f64:fwd:ip:n16:b65536 | -24.2 / -23.6% | `small avx2 n=16 decomposition=4x4 scratch=0 kernel=interleaved` |
| pow2:f64:fwd:ip:n16 | -21.1 / -17.6% | `small avx2 n=16 decomposition=4x4 scratch=0 kernel=interleaved` |
| pow2:f64:fwd:ip:n32 | -18.7 / -18.4% | `small avx512-ymm n=32 decomposition=8x4 scratch=0 kernel=interleaved` |
| pow2:f32:fwd:ip:n4 | -18.1 / -18.9% | `small avx2 n=4 decomposition=2x2 scratch=0 kernel=interleaved` |
| pow2:f32:fwd:ip:n64 | -15.5 / -13.1% | `small avx512-ymm n=64 decomposition=16x4 scratch=0 kernel=interleaved` |
| pow2:f32:fwd:ip:n16 | -12.5 / -15.4% | `small avx2 n=16 decomposition=4x4 scratch=0 kernel=interleaved` |
| pow2:f32:fwd:ip:n128 | -11.8 / -12.2% | `small avx512-ymm n=128 decomposition=32x4 scratch=0 kernel=interleaved` |
| batch:f64:fwd:ip:n32:b32768 | -10.1 / -2.1% | `small avx512-ymm n=32 decomposition=8x4 scratch=0 kernel=interleaved` |
| batch:f32:fwd:ip:n128:b8192 | -10.0 / -9.4% | `small avx512-ymm n=128 decomposition=32x4 scratch=0 kernel=interleaved` |
| rough:f32:fwd:ip:n61 | -9.1 / -8.4% | `bluestein n=61 m=128 inner=[small avx512-ymm n=128 decomposition=32x4 scratch=0 kernel=interleaved]` |
| pow2:f32:fwd:ip:n2 | -7.6 / -9.5% | `small avx2 n=2 decomposition=2x1 scratch=0 kernel=interleaved` |
| batch:f32:fwd:ip:n64:b16384 | -6.6 / -6.7% | `small avx512-ymm n=64 decomposition=16x4 scratch=0 kernel=interleaved` |
| pow2:f32:fwd:ip:n8 | -2.4 / -1.9% | `small avx2 n=8 decomposition=2x4 scratch=0 kernel=interleaved` |
| pow2:f64:fwd:ip:n4 | -1.3 / -2.9% | `small avx2 n=4 decomposition=4x1 scratch=0 kernel=interleaved` |
| pow2:f64:fwd:ip:n2 | -0.0 / +0.1% | `small avx2 n=2 decomposition=2x1 scratch=0 kernel=interleaved` |
| pow2:f64:fwd:ip:n8 | +6.4 / +8.3% | `small avx2 n=8 decomposition=2x4 scratch=0 kernel=interleaved` |

Raw data: [quick-compare.json](quick-compare.json),
[repeat-compare-1.json](repeat-compare-1.json),
[repeat-compare-2.json](repeat-compare-2.json) and the run
directories beside them.

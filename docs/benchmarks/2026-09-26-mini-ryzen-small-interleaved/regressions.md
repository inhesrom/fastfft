# Matched regression audit

The previous checkpoint's final arena and this pass's final arena each ran the
same 180-cell quick pow2/smooth/rough/batch suite (`--libs fastfft,rustfft`,
three processes, CPU 2). Eight cells were more than 3% slower on best or median.
Two further matched pairs covered all eight at every suite and precision the
filter selects. All runs verified every row, had zero child failures and no
abort; the largest control drift was 2.82%, unflagged.

Positive percentages mean **fastfft became slower**; each entry is best / median.

| Cell (forward, in-place) | Initial pair | Repeat pair 1 | Repeat pair 2 | >3% in all three | Plan |
|---|---:|---:|---:|---|---|
| pow2:f64:fwd:ip:n1024 | +11.56 / +12.36% | -10.61 / -10.38% | +0.29 / -0.08% | no | unchanged |
| pow2:f64:fwd:ip:n8 | +2.15 / +3.67% | +2.14 / +4.12% | +2.12 / +3.13% | **median** | changed |
| rough:f32:fwd:ip:n2018 | +33.22 / +34.54% | -0.05 / -0.30% | +31.44 / +32.30% | no | unchanged |
| rough:f64:fwd:ip:n2053 | +5.02 / +4.62% | -0.55 / -0.70% | +4.70 / +4.69% | no | unchanged |
| smooth:f64:fwd:ip:n10368 | +7.07 / +6.84% | -0.31 / -0.49% | +0.49 / +0.48% | no | unchanged |
| smooth:f64:fwd:ip:n1920 | +3.02 / +3.19% | -0.59 / -1.22% | +0.20 / -0.22% | no | unchanged |
| smooth:f64:fwd:ip:n240 | +3.90 / +2.99% | -17.54 / -18.67% | -0.35 / +0.11% | no | unchanged |
| smooth:f64:fwd:ip:n2400 | +9.66 / +10.26% | +4.27 / +4.27% | -0.94 / -0.75% | no | unchanged |

Only **f64 N=8** recurs, on the median statistic. It moved from the AVX2
scalar-lane codelet to the interleaved leaf, whose in-place critical path is
slightly longer. It still runs 1.05–1.07× rustfft in the acceptance run, and its
out-of-place (0.95× → 1.27×) and batch (−37%) forms improved.

The other flags have unchanged plans and do not recur on the same statistic in
all three pairs. f32 N=2018 alternates between about +33% and 0% across runs.
It is the layout-sensitive Bluestein cell the previous pass flagged
(`bluestein n=2018 m=4096`, unchanged here) and stays with ticket 31.

Previous sentinels, initial pair (best / median): f64 N=2048 −0.93 / −1.15%,
f64 N=1021 +1.20 / +1.58% (under the flag threshold). f32 N=61 improved −11.6 /
−11.0%, reversing the previous pass's recurring +4–5%; its Bluestein inner N=128
now runs the interleaved leaf.

The geomean over all 180 cells improved by 3.55% (best) and
3.45% (median). Every cell whose plan changed:

| Cell | Change (best / median) | New plan |
|---|---:|---|
| batch:f32:fwd:ip:n8:b131072 | -62.3 / -62.6% | `small avx2 n=8 decomposition=2x4 scratch=0 kernel=interleaved` |
| batch:f32:fwd:ip:n16:b65536 | -53.1 / -53.3% | `small avx2 n=16 decomposition=4x4 scratch=0 kernel=interleaved` |
| batch:f32:fwd:ip:n32:b32768 | -41.2 / -41.2% | `small avx2 n=32 decomposition=8x4 scratch=0 kernel=interleaved` |
| batch:f64:fwd:ip:n8:b131072 | -37.5 / -36.8% | `small avx2 n=8 decomposition=2x4 scratch=0 kernel=interleaved` |
| pow2:f32:fwd:ip:n32 | -32.2 / -31.3% | `small avx2 n=32 decomposition=8x4 scratch=0 kernel=interleaved` |
| rough:f32:fwd:ip:n31 | -27.8 / -28.1% | `bluestein n=31 m=64 inner=[small avx512-ymm n=64 decomposition=16x4 scratch=0 kernel=interleaved]` |
| batch:f64:fwd:ip:n16:b65536 | -25.0 / -24.6% | `small avx2 n=16 decomposition=4x4 scratch=0 kernel=interleaved` |
| pow2:f64:fwd:ip:n16 | -21.8 / -21.5% | `small avx2 n=16 decomposition=4x4 scratch=0 kernel=interleaved` |
| pow2:f64:fwd:ip:n32 | -20.6 / -21.6% | `small avx512-ymm n=32 decomposition=8x4 scratch=0 kernel=interleaved` |
| pow2:f32:fwd:ip:n64 | -19.4 / -17.8% | `small avx512-ymm n=64 decomposition=16x4 scratch=0 kernel=interleaved` |
| batch:f64:fwd:ip:n32:b32768 | -18.7 / -7.6% | `small avx512-ymm n=32 decomposition=8x4 scratch=0 kernel=interleaved` |
| pow2:f32:fwd:ip:n128 | -17.3 / -17.6% | `small avx512-ymm n=128 decomposition=32x4 scratch=0 kernel=interleaved` |
| pow2:f64:fwd:ip:n64 | -17.1 / -16.6% | `small avx512 n=64 decomposition=16x4 scratch=0 kernel=interleaved` |
| batch:f32:fwd:ip:n128:b8192 | -16.5 / -16.2% | `small avx512-ymm n=128 decomposition=32x4 scratch=0 kernel=interleaved` |
| pow2:f32:fwd:ip:n16 | -16.5 / -20.1% | `small avx2 n=16 decomposition=4x4 scratch=0 kernel=interleaved` |
| pow2:f32:fwd:ip:n4 | -14.9 / -18.9% | `small avx2 n=4 decomposition=2x2 scratch=0 kernel=interleaved` |
| batch:f32:fwd:ip:n64:b16384 | -13.6 / -13.4% | `small avx512-ymm n=64 decomposition=16x4 scratch=0 kernel=interleaved` |
| pow2:f64:fwd:ip:n256 | -13.4 / -9.4% | `small avx512 n=256 decomposition=64x4 scratch=0 kernel=interleaved` |
| pow2:f32:fwd:ip:n256 | -12.6 / -13.4% | `small avx512-ymm n=256 decomposition=64x4 scratch=0 kernel=interleaved` |
| pow2:f64:fwd:ip:n128 | -12.6 / -11.4% | `small avx512 n=128 decomposition=32x4 scratch=0 kernel=interleaved` |
| rough:f32:fwd:ip:n61 | -11.6 / -11.0% | `bluestein n=61 m=128 inner=[small avx512-ymm n=128 decomposition=32x4 scratch=0 kernel=interleaved]` |
| rough:f64:fwd:ip:n31 | -10.7 / -13.2% | `bluestein n=31 m=64 inner=[small avx512 n=64 decomposition=16x4 scratch=0 kernel=interleaved]` |
| batch:f64:fwd:ip:n256:b4096 | -10.2 / -5.3% | `small avx512 n=256 decomposition=64x4 scratch=0 kernel=interleaved` |
| batch:f32:fwd:ip:n256:b4096 | -9.6 / -3.2% | `small avx512-ymm n=256 decomposition=64x4 scratch=0 kernel=interleaved` |
| batch:f64:fwd:ip:n64:b16384 | -9.6 / -5.0% | `small avx512 n=64 decomposition=16x4 scratch=0 kernel=interleaved` |
| rough:f64:fwd:ip:n127 | -8.6 / -8.5% | `bluestein n=127 m=256 inner=[small avx512 n=256 decomposition=64x4 scratch=0 kernel=interleaved]` |
| pow2:f32:fwd:ip:n2 | -7.7 / -10.0% | `small avx2 n=2 decomposition=2x1 scratch=0 kernel=interleaved` |
| rough:f64:fwd:ip:n61 | -5.7 / -4.4% | `bluestein n=61 m=128 inner=[small avx512 n=128 decomposition=32x4 scratch=0 kernel=interleaved]` |
| pow2:f32:fwd:ip:n8 | -3.5 / -4.8% | `small avx2 n=8 decomposition=2x4 scratch=0 kernel=interleaved` |
| pow2:f64:fwd:ip:n2 | +0.0 / -0.1% | `small avx2 n=2 decomposition=2x1 scratch=0 kernel=interleaved` |
| rough:f32:fwd:ip:n127 | +0.1 / -0.2% | `bluestein n=127 m=256 inner=[small avx512-ymm n=256 decomposition=64x4 scratch=0 kernel=interleaved]` |
| pow2:f64:fwd:ip:n4 | +0.1 / -2.9% | `small avx2 n=4 decomposition=4x1 scratch=0 kernel=interleaved` |
| batch:f64:fwd:ip:n128:b8192 | +0.3 / -8.1% | `small avx512 n=128 decomposition=32x4 scratch=0 kernel=interleaved` |
| pow2:f64:fwd:ip:n8 | +2.2 / +3.7% | `small avx2 n=8 decomposition=2x4 scratch=0 kernel=interleaved` |

Raw data: [quick-compare.json](diagnostics/quick-compare.json),
[repeat-compare-1.json](diagnostics/repeat-compare-1.json),
[repeat-compare-2.json](diagnostics/repeat-compare-2.json) and the run
directories beside them.

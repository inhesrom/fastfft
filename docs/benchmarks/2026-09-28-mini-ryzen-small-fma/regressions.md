# Matched regression audit

"Before" is the small-fair tested arena
([provenance.json](provenance.json), `executable-2`) and "after" is the
tested arena. Both were built with 64-byte function alignment, and they
differ only in fastfft. Each ran the same 180-cell quick
pow2/smooth/rough/batch suite (`--libs fastfft,rustfft`, three processes,
CPU 2). Across all 180 cells fastfft's geomean changed by −0.97% (p1) and
−0.87% (median). No cell changed plan.

Fourteen cells were more than 3% slower on p1 or median. Two further matched
pairs covered every size the fourteen share; they were faster overall
(−0.53% / −0.57% and −1.53% / −1.38%) and raised no new flag. All runs
verified every row, with zero child failures and no abort. As at small-fair,
some cells in the "after" quick run started while the core was still ramping
up: that run reports a 12.1% control drift, and its lowest start clock is
0.88 of the end clock. Repeat pair 1's "before" run reports 24.0% for the
same reason.

Positive percentages mean **fastfft became slower**; each entry is p1 /
median.

| Cell (forward, in-place) | Initial pair | Repeat pair 1 | Repeat pair 2 | >3% in all three | Plan |
|---|---:|---:|---:|---|---|
| batch:f64:n1024:b1024 | +4.86 / +5.63% | +1.02 / −2.18% | +5.59 / +5.94% | no | unchanged (Stockham) |
| batch:f64:n32:b32768 | +2.61 / +5.16% | +3.08 / +1.28% | +1.93 / +1.89% | no | unchanged (interleaved) |
| pow2:f32:n4194304 | +4.72 / +5.38% | −0.09 / +0.46% | −0.54 / −0.51% | no | unchanged (Stockham) |
| pow2:f32:n8388608 | +5.88 / +5.93% | −0.30 / −0.36% | +0.80 / −0.11% | no | unchanged (Stockham) |
| pow2:f64:n4096 | +4.51 / +4.41% | −2.38 / −2.32% | −1.42 / −1.39% | no | unchanged (Stockham) |
| rough:f32:n1021 | +6.48 / +6.60% | +0.20 / +0.28% | +1.07 / +1.17% | no | unchanged (Bluestein) |
| rough:f64:n1021 | +4.98 / +4.76% | −3.20 / −3.42% | −4.44 / −4.46% | no | unchanged (Bluestein) |
| rough:f64:n2053 | +3.66 / +3.59% | +4.97 / +4.84% | −6.13 / −6.15% | no | unchanged (Bluestein) |
| smooth:f32:n1000000 | +6.98 / +2.92% | +2.24 / +2.67% | +0.22 / +0.11% | no | unchanged (Stockham) |
| smooth:f32:n15 | +3.60 / −0.10% | −0.13 / +0.27% | +0.22 / +0.03% | no | unchanged (generic small) |
| smooth:f32:n240 | +6.48 / +6.86% | +0.53 / +1.14% | −2.77 / −2.37% | no | unchanged (Stockham) |
| smooth:f64:n10368 | +6.49 / +6.78% | +6.34 / +6.40% | −0.86 / −0.73% | no | unchanged (Stockham) |
| smooth:f64:n108 | +4.57 / +3.71% | −1.35 / −1.49% | +4.59 / +4.90% | no | unchanged (Stockham) |
| smooth:f64:n504 | +2.82 / +3.17% | +1.17 / +0.55% | −0.87 / +0.29% | no | unchanged (Stockham) |

No flag recurs in all three pairs. Thirteen of the fourteen cells run code
this checkpoint did not change: Stockham, Bluestein with a Stockham inner
transform, or the generic small kernel.

The exception is **batch f64 N=32** (32,768 in-place transforms of 512 bytes
each, through the AVX-512VL ymm leaf). It is 1.9–3.1% slower on p1 in all
three pairs, although it crossed the 3% flag on p1 only once. Single f64
N=32 transforms got 3.5% faster in place and 12% out of place, so the batch
is probably limited by memory traffic, not the leaf. The f64 batch prefetch
covers only N ≥ 128.

Every other cell that uses the changed leaves got faster in the initial
pair:

- batch f32 N=16–256: −8 to −19% on p1;
- batch f64 N=16, 128 and 256: −7.7 to −12.0% on p1;
- batch f64 N=64: −5.4% on p1, +0.9% on median;
- the Bluestein cells whose inner transform is N ≤ 256 (rough N=31, 61
  and 127): −1.6 to −7.4%.

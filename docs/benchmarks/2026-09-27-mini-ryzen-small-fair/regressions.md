# Matched regression audit

Both arenas were built the same way, with this checkpoint's harness and
64-byte function alignment:

- "before" is the previous checkpoint's source
  ([small-interleaved](../2026-09-26-mini-ryzen-small-interleaved/checkpoint.md));
- "after" is the tested source.

They differ only in fastfft. Each ran the same 180-cell quick
pow2/smooth/rough/batch suite (`--libs fastfft,rustfft`, three processes, CPU
2). Across all 180 cells the geomean changed by +0.09% (p1) and +0.06%
(median), which is neutral.

Twelve cells were more than 3% slower on p1 or median. Two further matched
pairs covered every size the twelve share. All runs verified every row, with
zero child failures and no abort.

Three of the six runs reported a large control drift (34.5–34.6%). A few
cells in them started while the core was still ramping up: their start clock
reads 13.2 against 20.1 at the end, on the arena's add-chain measure, and the
end clocks are normal. Timing follows a 50 ms warm-up.

Positive percentages mean **fastfft became slower**; each entry is p1 /
median.

| Cell (forward, in-place) | Initial pair | Repeat pair 1 | Repeat pair 2 | >3% in all three | Plan |
|---|---:|---:|---:|---|---|
| pow2:f32:fwd:ip:n1048576 | +10.02 / +8.46% | +3.63 / −0.24% | −3.38 / −0.85% | no | unchanged |
| pow2:f32:fwd:ip:n16777216 | +4.83 / +5.58% | +0.01 / −0.24% | −0.31 / −0.17% | no | unchanged |
| pow2:f32:fwd:ip:n2097152 | +2.56 / +6.75% | −0.54 / +0.62% | −0.47 / −0.67% | no | unchanged |
| pow2:f32:fwd:ip:n8388608 | +6.28 / +6.17% | +0.35 / −0.49% | −0.41 / −0.18% | no | unchanged |
| pow2:f64:fwd:ip:n2048 | +3.47 / +3.38% | −1.76 / −1.88% | −2.36 / −2.52% | no | unchanged |
| pow2:f64:fwd:ip:n524288 | −0.20 / +4.46% | +1.29 / +2.62% | −3.60 / −3.15% | no | unchanged |
| rough:f32:fwd:ip:n1021 | +4.16 / +4.26% | −0.12 / −0.02% | +6.31 / +6.34% | no | unchanged |
| rough:f64:fwd:ip:n257 | +3.51 / +3.55% | −0.23 / −0.27% | −0.30 / −0.26% | no | unchanged |
| rough:f64:fwd:ip:n4099 | +7.37 / +7.36% | +0.05 / +0.11% | +0.32 / +0.38% | no | unchanged |
| smooth:f64:fwd:ip:n1920 | +5.05 / +5.14% | −0.80 / −0.81% | +0.06 / +0.02% | no | unchanged |
| smooth:f64:fwd:ip:n2400 | +3.50 / +3.59% | +0.74 / +0.75% | +1.43 / +1.28% | no | unchanged |
| smooth:f64:fwd:ip:n384 | +3.22 / +2.18% | +0.60 / −0.26% | +2.09 / +1.47% | no | unchanged |

No flag recurs in all three pairs, and every flagged cell has an unchanged
plan. Repeat pair 1 also flagged smooth:f32:fwd:ip:n2400 once; pair 2 did
not.

Three cells changed plan, each from the AVX-512VL ymm leaf to zmm rows for
f32 N=128 (p1 / median):

| Cell | Change |
|---|---:|
| pow2:f32:fwd:ip:n128 | −4.54 / −2.73% |
| batch:f32:fwd:ip:n128:b8192 | −4.72 / −5.46% |
| rough:f32:fwd:ip:n61 (Bluestein, inner N=128) | −0.15 / +0.92% |

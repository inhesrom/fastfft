# Critical absolute review before full710

Proceed to the fixed full710 capture. The completed clean51-cell focus does not appear to pass by selectively degrading Estimate. This is not a claim that every absolute time improved, and it is not full710 acceptance. All eight process trials and all best/p1/median values are retained; process indices are never paired across builds.

The focus has408 ordinary and32 control trials,193/193 quiet running samples,1.0104% maximum clock drift, and no primary or raw-promotion failures. The contaminated indexed capture is included only as labeled exploratory context. Canonical is a quiet prior failure baseline; full-deferred is also a prior failure baseline.

## N210: faster Estimate, narrower process spread

The table reports arithmetic means of all eight per-process statistics in nanoseconds; percentage columns compare mean p1. The current focus contains f32 inverse inplace and all four f64 cells. Other f32 combinations remain for full710.

| Cell | Current E best / p1 / median ns | Current M best / p1 / median ns | E p1 vs anchor | E p1 vs canonical |
|---|---:|---:|---:|---:|
| smooth:f32:inv:ip:n210 | 114.537 / 116.909 / 117.698 | 114.636 / 116.809 / 117.557 | -7.20% | -10.81% |
| smooth:f64:fwd:ip:n210 | 269.436 / 275.957 / 284.324 | 270.874 / 277.113 / 285.813 | -6.31% | unavailable |
| smooth:f64:fwd:oop:n210 | 271.738 / 278.893 / 285.354 | 273.264 / 280.963 / 287.621 | -11.70% | unavailable |
| smooth:f64:inv:ip:n210 | 283.013 / 288.215 / 300.657 | 281.684 / 286.497 / 299.165 | -16.49% | -10.24% |
| smooth:f64:inv:oop:n210 | 284.279 / 291.334 / 300.864 | 285.604 / 291.146 / 300.758 | -11.47% | -8.64% |

For f32 inverseIP, all eight current Estimate p1 values lie116.663–117.424ns versus116.468–149.417ns in anchor and116.620–162.842ns in canonical. The official merged p1 is only0.17% above anchor/0.04% above canonical: the faster all-process mean reflects removal of slow realizations, not raising the previously fast floor. Measure retains14x15 in all eight current processes.

For f64 inverseIP, Estimate mean p1 drops345.144→288.215ns from anchor, and all eight Measure plans now retain FourStep. Across all four f64 cells Measure uses FourStep in31/32 current records; the remaining inverseOOP record selects Small15x14 and passes the unchanged raw gate. Estimate improvement, not degradation, explains why previous Small choices are less attractive. All individual records are included in the JSON.

## Other affected leaves and unchanged controls

N18 inverseOOP Estimate mean p1 is10.695ns, +0.64% versus canonical/full-deferred. Its10.9% mean improvement versus anchor includes the retained anchor21.79ns process; this must not be advertised as uniform acceleration. N160 forward mean Estimate p1 is79.029ns, -0.52% versus anchor/-2.52% versus canonical. N160 inverse is79.004ns, essentially flat versus anchor/+0.64% versus canonical; mean median is+1.78% versus canonical. These costs do not manufacture the focus pass.

N80 forwardIP and N96 inverseIP/OOP Estimate mean p1 are essentially unchanged versus anchor (within0.05%). Canonical differences are+0.40%,+0.49% and-4.67% respectively. Their preserved code and stable latest baseline provide a useful check against a broad shift in leaf timing. N15 keeps its speedup: mean p1 Estimate21.93ns versus Measure14.93ns. Measure is3.08% slower than anchor, with one SSE2 selection among seven AVX2 choices, while Estimate is flat.

## Absolute limitations retained

N4096 OOP retains its older canonical gap: forward/inverse mean Estimate p1 +3.56%/+4.37%, and Measure +3.50%/+3.96%. Versus clean anchor, Estimate is-0.13%/+0.28% and Measure-0.10%/-0.06%. Inplace Estimate is about3.2–3.6% faster than canonical. The stack candidate did not newly widen the old OOP gap, and both members share it. It does not justify another address sweep before full710.

N1M is mixed. Versus canonical, all-eight Estimate mean best/p1/median changes+0.79%/+0.66%/+2.32%; Measure changes-1.90%/-1.32%/-1.20%. The official merged best is2.835435ms E/2.827731ms M: E is2.60% slower and M3.19% faster than the corresponding canonical minima. Thus its ratio recovery is not solely Measure acceleration. Versus anchor, mean best is+1.62% E/+2.05% M; versus full-deferred,+2.32%/+5.09%. Separate captures and their extrema cannot establish a causal source regression, but these less favorable values remain part of the review.

N75600 forwardIP has a common slow process: ordinal2 records107.073us E and107.153us M; the other seven current E p1 values span66.556–69.471us. With all eight retained, mean p1 is+3.07%/+3.08% versus anchor and+8.11%/+8.13% versus canonical. The median of all eight process p1 values is-0.49% E/-0.02% M versus anchor. Neither summary replaces the other. InverseOOP includes an85.081us Estimate process; its mean is+3.96% versus anchor but-1.78% versus canonical. These unchanged Stockham recipes show common absolute variability, not selective Estimate slowing.

The formerly missing f64 N165375 forwardOOP cell also improves both members: mean best/p1 Estimate-4.14%/-3.95%, Measure-5.09%/-4.75% versus anchor. Current merged best is442437ns E/432769ns M.

These findings support moving to full710 with the existing strict primary/raw2% rules, eight processes, six suites, positive controls and sustained quiet policy. Keep all-process absolute review visible during that capture; do not accept a loss by slowing Estimate. No new hard absolute threshold, universal-address promise, source change or additional diagnostic run follows from this review.

Reproduce with `python3 review-all8-absolute.py` then `python3 finalize-absolute-review.py` in this artifact directory. `all8-absolute-records.json` holds every record and metric, with hashes of the original raw/merged inputs. All analysis processes finished; no FFT, build, benchmark, disassembly, source edit or affinity change was performed.

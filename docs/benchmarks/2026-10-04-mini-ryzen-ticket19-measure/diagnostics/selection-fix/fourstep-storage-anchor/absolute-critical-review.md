# Absolute performance review before full710

**Recommendation: hold the full710 run for a targeted causal comparison of f64 inverse N210 Estimate and f32 N4096 out-of-place in both directions. Do not speculatively modify production source yet.** Their absolute slowdowns persist across the eight-process distributions, so passing Measure/Estimate ratios does not clear the concern. This is not a new hard absolute threshold or a change to the user's strict 2% primary rule; all 51 primary and raw-promotion checks passed as reported by the parent. The evidence supports further diagnosis before spending the full gate, not a claim that a specific hardware mechanism has been proved.

The adjacent JSON retains all eight process best/p1/median values, calls per sample, and recipe descriptions for both members of every comparable focus cell. No process is discarded and no alternate summary replaces the official metric. Process indices in separate runs are not treated as randomized matched pairs. Absolute comparisons against canonical-storage are separated in time and executable layout; quiet logs constrain interference but do not make them causal counterfactuals.

| Cell | Estimate mean process p1 | Estimate median process p1 | Estimate mean of sample medians | Measure mean process p1 |
|---|---:|---:|---:|---:|
| smooth:f32:fwd:ip:n80 | +0.39% | +0.31% | +0.51% | +0.09% |
| smooth:f32:inv:ip:n96 | +0.50% | +0.21% | -0.00% | +0.20% |
| smooth:f32:inv:oop:n96 | -4.63% | -0.01% | -5.17% | -4.54% |
| smooth:f64:fwd:ip:n48 | +6.69% | +0.54% | +6.61% | +0.04% |
| smooth:f64:inv:ip:n48 | +5.47% | +1.44% | +4.64% | +0.70% |
| smooth:f64:inv:oop:n48 | +0.18% | +0.99% | -0.41% | -0.92% |
| smooth:f64:inv:ip:n210 | +7.49% | +7.83% | +7.28% | -1.94% |
| smooth:f64:inv:oop:n210 | +3.19% | +5.54% | +3.62% | -5.94% |
| pow2:f32:fwd:oop:n4096 | +3.69% | +4.31% | +4.14% | +3.60% |
| pow2:f32:inv:oop:n4096 | +4.08% | +4.31% | +4.31% | +4.03% |

N210 is the clearest concern in the changed FourStep path. Estimate retains the f64 AVX512 14×15 FourStep plan and scratch456. Its IP slowdown remains about7–8% across central summaries, and OOP remains about3–5.5%. Candidate IP process p1 spans316.75–384.21ns versus prior295.12–383.87ns; OOP candidate316.87–362.57ns versus prior299.11–368.04ns. Variation exists, but the central shift survives it. Measure mostly selects a different small rectangular 15×14 or14×15 kernel; its flat or improved result does not test Estimate's changed storage path. Merged descriptions omit that raw recipe variation, which is retained in the JSON.

For N4096 OOP, both members use the same unchanged Stockham recipe. **Every candidate process-best value exceeds every prior process-best value, separately for each direction and each member.** Means of p1 and sample medians rise roughly3.6–4.3%, which is stronger evidence than the already concerning merged-best ratios. In-place N4096 remains approximately flat or faster. Thus a simple global clock drift explanation is weak, although a quiet same-session build crossover is still needed before claiming a code/storage cause. Calls per sample usually change from21 to20, so diagnostic comparison must retain or control this calibration difference. The preserved Stockham backing does not preserve all surroundings: FftImpl shrank272→192 bytes, potentially changing real object and buffer allocation relationships.

The small anchor issue is materially improved. N80's central shifts are small. N96 IP's official Estimate p1 +2.84% is largely driven by an unusually fast prior process4 value34.164ns; the typical process p1 is35.141→35.213ns (+0.21%), and the mean of all eight sample medians is unchanged. N96 OOP is also near its old typical level, with the prior run containing two slow processes. Keep the compiled N96 batch spill-count caveat, but these absolute data do not reproduce the rejected whole-matrix10–17% loss or establish a systematic new anchor regression.

N48 f64 needs transparent reporting but is weaker evidence for a new systematic implementation regression. Its interleaved path is not the modified generic anchor path. The prior data show order/process-dependent variation, and candidate process3 IP is especially slow: Estimate p1 34.35ns forward /29.40ns inverse, compared with typical22–23ns. Measure process3 selects a different AVX512-width recipe and is also unusually slow. Retaining that process raises means; median-process changes are modest. OOP Estimate mean p1 is only+0.18% despite official minimum-process p1 +3.11%. These observations do not license discarding process3 or declaring the new build causally responsible.

N1M does not show the same absolute loss: Estimate best +1.218%, p1 −0.125%, median +0.565%, while Measure improves. Do not interpret its best-only shift in isolation.

Source-derived geometry gives a concrete N210 control to examine. For f64 14×15 at8 lanes, two24-byte descriptors round to a64-byte prefix; column twiddles contain26 scalars at offset64, row twiddles28 at320, and cross twiddles448 at576. The logical end is4160 bytes, crossing the shared >=4096 threshold and producing an8192-byte,4096-aligned backing. This is arithmetic from the frozen source, not a runtime address probe and not proof that the boundary causes the loss. Each panel has only one radix, so later-pass descriptor decoding does not execute in this case. The existing assembly review found no new execution allocation, full-storage scan, or timing instrumentation; code placement, register scheduling, and caller/storage geometry remain possible confounds.

Next, predeclare only the discriminating N210 inverse IP/OOP and N4096 forward/inverse OOP comparisons, retaining both builds, all processes, all recipes, and the same quiet protocol. Alternate or randomize build order in one session and retain actual plan/coefficient/descriptor, I/O, and effective scratch bases plus calls per sample. For N210 isolate canonical storage from code/caller changes while preserving coefficients and transform choreography; for N4096 investigate object/caller geometry despite unchanged Stockham storage. Do not alter the selector to hide Estimate's slowdown, and do not use full710 as a substitute for resolving these focused absolute concerns.

This review only reads retained artifacts and source; it performs no benchmark, build, disassembly, or source edit.

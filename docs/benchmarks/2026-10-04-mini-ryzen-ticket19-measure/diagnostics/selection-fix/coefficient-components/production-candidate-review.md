# Next production candidate after clean components diagnostic

**Build the default-production indexed-loop candidate at original coefficient offsets and repeat the unchanged51-cell focus. Do not add a displacement policy or start full710 yet.** This clean diagnostic is sufficient to justify that next validation step, not production acceptance. Its40 integrity checks and105/105 quiet samples pass; all35 affinity masks were restored. The prior coefficient-position capture remains invalid and exploratory.

Within the current fixed-object replay, PhaseB-only1024 generally slows N4096 OOP: median-process p1 effects are about+0.81–0.91% across directions/members. Whole-coefficient1024 is worse, about+2.45–2.68%. InverseIP loses about+1.00–1.06% for PhaseB-only and+5.48–5.51% for whole-slab. The inverseOOP process1 is the exception: both members remain near3273ns at zero and change little/slightly improve when shifted. It is not removed. The other seven are near2373–2457ns. Both zero endpoints remain close (maximum p1 change about0.35% across Stockham cells), supporting the within-run positional comparison but not explaining the persistent process-level slowdown.

These results provide no stable benefit to ship. The earlier contaminated build showed the opposite OOP all-shift direction; that was a useful hypothesis generator, not an accepted counterfactual. The new build also moves code/caller context. The clean experiment supports the narrow claim that these shifts hurt most retained objects in this executable. It does not identify a hardware mechanism, and the FourStep loop cannot directly explain Stockham's faster zero timings.

Original arena Estimate p1, shown as mean / median across all eight processes (ns):

| Cell | Canonical default focus | Anchor default focus | Current diagnostic originals |
|---|---:|---:|---:|
| pow2:f32:fwd:oop:n4096 | 2424.74 / 2420.29 | 2514.18 / 2524.50 | 2419.40 / 2419.10 |
| pow2:f32:inv:ip:n4096 | 2736.11 / 2717.50 | 2661.69 / 2658.71 | 2658.75 / 2632.63 |
| pow2:f32:inv:oop:n4096 | 2421.50 / 2420.07 | 2520.20 / 2524.28 | 2530.20 / 2420.29 |
| smooth:f64:inv:ip:n210 | 321.10 / 318.12 | 345.14 / 343.03 | 299.89 / 302.39 |
| smooth:f64:inv:oop:n210 | 318.90 / 306.81 | 329.07 / 323.80 | 318.80 / 320.89 |

N210 IP provides encouraging evidence beyond the single best: Estimate mean-p1 falls from345.14ns in the anchor focus to299.89ns, and from321.10ns in canonical focus. N210 OOP is less decisive: mean-p1 improves from329.07 to318.80ns, approximately canonical318.90ns, but median-process p1 is320.89 versus canonical306.81ns (+4.59%). Its sample-median summaries also remain mixed. Therefore the new best near281ns must not stand alone as proof the regression is fixed. The compiled gate did confirm removal of the empty-range pointer-distance multiply; it does not prove that operation caused all the measured change.

Measure recipes also changed. For current N210 IP it retains FourStep14×15 in seven processes and selects small14×15 in process7; OOP retains FourStep14×15 in all eight. The anchor build mostly selected small15×14 or14×15. Comparing Measure averages across those builds is not a fixed-kernel comparison. Current IP process7 has Measure p1=307.58ns versus Estimate288.85ns (about+6.49%) in the original arena runner. This is not by itself a selector raw-promotion violation, because the selection and outer timing contexts differ, but it is a concrete reason to keep the unchanged focus promotion audit.

Current N4096 forwardOOP originals have returned to canonical central times for both members. InverseOOP's typical process is also near canonical, but its all-process mean remains about4.5% higher because of the retained process1 slowdown, already present in both original and replay timings. Same-member recipe strings and matched E/M behavior do not dismiss an absolute regression. The default focus must establish what transfers to its executable and expose any repeating process-specific geometry issue.

The JSON retains every original process best/p1/median, recipe, calls per batch and all summary comparisons for both members in canonical, anchor, current and contaminated-reference runs. It also retains every current replay condition and endpoint result. No process indices are paired across runs and no subset is used to declare success. N210's six replay conditions perform no relocation; their small temporal changes are not displacement effects. Its largest zero-endpoint p1 change is about1.03%, which remains visible rather than being described as perfectly flat.

Freeze the current generic indexed FourStep implementation into a fresh default build, keeping canonical layouts and the small aligned anchor unchanged. Tuning relocation hooks remain inactive. Run existing correctness/code checks, fresh quiet positive controls, then the unchanged51-cell focus. Review absolute best/p1/median against both canonical and anchor default focuses, especially N210IP/OOP, N4096OOP/IP, f64N48, f32N80/N96 and larger/grouped FourStep cases. Preserve the strict2% primary rule and raw-promotion audit. Full710 remains contingent on those results plus an honest absolute review; no new absolute threshold or favorable M/E waiver is proposed.

Further displacement sweeps are not the best next step: they would tune this diagnostic executable without establishing default-build transfer, and neither tested component move offers a clean in-place/out-of-place compromise. No code changes, builds, disassembly or benchmarks were performed in this review.

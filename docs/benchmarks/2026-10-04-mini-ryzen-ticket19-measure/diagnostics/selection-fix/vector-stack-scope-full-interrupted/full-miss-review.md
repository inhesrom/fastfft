# Interrupted full-run miss

Retain the strict failure: **f32 inverse OOP N16384, M/E best1.020155288248783** (12679/12428.5ns). The323/710 capture remains incomplete and invalid; later host interference does not explain away this earlier clean-window miss. No production source remedy is justified by this cell alone.

All eight pairs have the same Stockham AVX512-YMM8x4x8x8 recipe and4 calls per batch. Times below are nanoseconds; ordinals apply only within this capture.

| Ordinal | E best / p1 / median | M best / p1 / median | Paired best ratio |
|---|---:|---:|---:|
| 0 | 12684.00 / 12786.75 / 12924.50 | 12759.25 / 12829.25 / 12969.50 | 1.005933 |
| 1 | 12699.00 / 12809.25 / 12952.00 | 12726.50 / 12801.50 / 12944.50 | 1.002166 |
| 2 | 12428.50 / 12528.75 / 12691.50 | 12686.50 / 12789.25 / 12929.50 | 1.020759 |
| 3 | 12731.75 / 12806.75 / 12969.50 | 12679.00 / 12779.25 / 12924.50 | 0.995857 |
| 4 | 12669.00 / 12766.50 / 12896.75 | 12699.00 / 12784.25 / 12924.50 | 1.002368 |
| 5 | 12761.75 / 12826.75 / 12972.00 | 12694.00 / 12784.25 / 12927.00 | 0.994691 |
| 6 | 12661.50 / 12781.50 / 12919.50 | 12686.50 / 12786.75 / 12924.50 | 1.001974 |
| 7 | 13169.75 / 13247.75 / 13385.50 | 13099.75 / 13215.00 / 13357.75 | 0.994685 |

Ordinal2 supplies a faster Estimate distribution, including p1, so this is not merely one extreme best sample. The other seven paired best ratios span0.994685–1.005933. Ordinal7 slows both members. All-eight E means(best/p1/median) are12725.66/12819.25/12963.91ns; M12753.81/12846.19/12987.72ns. Their ~0.2% mean difference does **not** replace or waive the2.0155% strict failure.

The latest matching full-deferred means are E12873.41/12970.47/13117.66ns and M12894.38/12986.78/13132.72ns: both current members are faster. Its merged ratio was1.002538; two earlier retained full baselines were0.995903 and0.997463. All raw baseline records and hashes are retained in JSON, with no cross-build process pairing.

The other three N16384 direction/placement cells pass. Bracketing N4096 control best times are2617.63 and2622.84ns (+0.20%); their p1 values differ-0.32%. This supports an instance/context-sensitive difference, not a general kernel or selector regression. Default records lack the addresses needed to identify its cause.

**Smallest next diagnostic:** one fixed same-plan instance/owner crossover for this cell: retain two actual plan instances, one fixed I/O/scratch pool and public-call route; alternate original/swapped complete coefficient owners with balanced call order across eight processes. Record geometry, verify outputs and exact restoration. If the gap follows the owner, investigate owner/cache geometry; if it follows execution label/order, investigate caller/preparation context. A diagnostic build is its own context and cannot replace production acceptance. Do not sweep displacements, hunt allocations, change the2% rule, or rerun full merely hoping this minimum disappears.

JSON retains all eight raw pairs, three matching baselines, bracketing controls, executable/input hashes, checkpoint and the bounded experiment specification. Analysis finished; no FFT, timing, build, disassembly or source mutation performed.

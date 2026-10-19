# Ticket 19 validation checkpoint

**Status: ticket 19 accepted with an explicit maintainer exception on 2026-10-08.**

The reproducible f32 batch N32×32768 timing issue is deferred to
[ticket 40](../../../.scratch/fastfft-v1/issues/40-batch-f32-n32-measure-order.md).
This closes the implementation ticket without claiming a clean strict full710
performance pass. All failed and invalid captures remain retained. Ticket 20
completed separately in the same work session; its fuzz evidence is retained
in [the ticket 20 report](../../fuzz/2026-10-08-ticket20/README.md).
G8 stays separate in tickets 37–39.

The 2026-10-07 `selection-fix/vector-stack-scope-full-idle-window` capture
completes all 710 cells in 3 hours 41 minutes using the unchanged frozen default
executable. Strict acceptance fails: f32 forward OOP N262144 loses 2.2019%,
and batch f32 forward OOP N32×32768 loses 2.0917%; both report identical
Estimate/Measure recipes. One running CPU excursion and 6.41% clock drift
also invalidate the capture. All surviving host affinities are independently
verified restored, all source/executable hashes still match, and all evidence
is retained in the immutable 59-file archive. Earlier failures remain visible.

The agreed scope is the full pow2, smooth, rough, batch, realworld and
datacheck suites. Every cell must have Measure/Estimate <= 1.02. The
exhaustive length sweep belongs to ticket 20; G8 planning work remains
in tickets 37–39.

## Changes under validation

- Measure constructs the Estimate executable before exploring alternatives
  and retains the actual timed public plan, including its batch wrapper.
  Promotion requires at least 3% improvement in both minimum and median
  across all three placements, three buffer-offset triples and representative
  batches. Three untimed executions warm each plan before a timed sample;
  candidates share the remaining overall search budget so a promising
  comparison can finish every workload. Incomplete or marginal measurements
  retain Estimate.
- `describe_plan` reports engine, actual ISA, executed radices and all three
  scratch requirements in complex elements. Identity, Bluestein, packed
  leaves, FourStep panels and batch wrappers have explicit descriptions.
- A/A controls exposed benchmark allocation and construction-order bias.
  The arena shares caller buffers/scratch, reserves parent-sized workspace
  before child planning, retains the actual pipeline runners, rotates row
  construction order and saves every process trial. The clock probe now
  uses four dependent register additions, verified in disassembly.
- Secondary cheap-planner samples run after execution timing, with the actual
  runners still retained. This removes throwaway Estimate plans between real
  row constructions and preserves the minimum-of-five planning statistic.
  Matched controls improve merged ratios, but raw construction-order
  sensitivity remains; balanced trials and the strict ceiling are retained.

Parent-sized workspace changes allocation layout and absolute timings;
these harness corrections are not claimed as FFT engine speedups. Planning
times exclude parent workspace sizing and do not establish G8 acceptance.
Two coefficient-alignment experiments were rejected and fully reverted.

## Latest evidence

| Run | Coverage | Cells above 2% | Acceptance status |
| --- | ---: | ---: | --- |
| [`selection-fix/vector-stack-scope-full-idle-window`](diagnostics/selection-fix/vector-stack-scope-full-idle-window/full-checkpoint.json) | 710 cells, 8 rotating processes | 2 merged; no changed-recipe promotion failures | Complete; invalid CPU monitoring and 6.41% clock drift; acceptance fails |
| [`selection-fix/failed-two-cells-fixed-recheck`](diagnostics/selection-fix/failed-two-cells-fixed-recheck/focused-checkpoint.json) | Two failed cells, 8 rotating processes | 1 | Quiet fixed rerun, 0.74% drift; N262144 passes, batch N32×32768 still loses 2.19%; cannot replace full acceptance |
| `layouts-full` | 710 cells, 3 fixed-order processes | 28 | Invalid: 22.10% clock drift; earlier harness |
| `parent-focus` | 29 cells, 4 rotating processes | 1 | Diagnostic; batch f64 N=256 out of place loses 6.82% |
| `parent-batch-controls` | Fixed A/A and 8-process Measure controls | A/A loses 2.76%; Measure passes | Diagnostic; confirms low-tail variation, does not waive the earlier miss |
| `parent-all8` | 80/710 cells, 8 rotating processes | 0 | Invalid: automatic abort at 55.60% clock drift |
| `selection-fix/native-cold` | 2 cells, 16 rotating processes | 0 merged; 3 raw promotions | Quiet diagnostic reproduction; 0.46% drift |
| `selection-fix/native-warm` | 2 cells, 16 rotating processes | 0, including raw promotions | Focused correction passes; 0.29% drift |
| `selection-fix/full-all8-interrupted` | 62/710 cells, 8 rotating processes | 0 | Invalid: quiet monitor detected activity on the SMT sibling |
| `selection-fix/core4-focus` | 2 cells, 16 rotating processes | 0, including raw promotions | CPU 4 focus passes; 0.76% drift |
| `selection-fix/full-core4-all8-interrupted` | 2/710 cells, 8 rotating processes | 0 | Invalid: quiet monitor detected activity on CPU 12 |
| `selection-fix/core4-attribution` | 2 cells, 32 rotating processes | 0, including raw promotions | Attributed focus passes; 0.80% drift |
| `selection-fix/full-core4-attributed-all8-interrupted` | 188/710 cells, 8 rotating processes | 1 | Invalid: competing service activity on CPU 12; primary 1.020914x miss retained |
| `selection-fix/fixed-repeat` | 1 cell, 8 rotating processes | 0 | Prescribed diagnostic passes; cannot erase primary failure |
| `selection-fix/order-native-old` | 4 cells, 8 rotating processes | 0 | Matched original construction control; worst 1.018744x |
| `selection-fix/order-native-deferred` | 4 cells, 8 rotating processes | 0 | Deferred planning repeats; worst 1.011044x, residual order sensitivity |
| `selection-fix/deferred-selection` | 2 cells, 8 rotating processes | 0, including raw promotions | Deferred executable selection check; worst 1.002790x |
| `selection-fix/deferred-pipelines` | 6 cells, 8 rotating processes | 0 | All pipelines pass; worst 1.006580x, 0.75% drift |
| [`selection-fix/full-deferred-reserved-all8`](diagnostics/selection-fix/full-deferred-reserved-all8/checkpoint.json) | 710 cells, 8 rotating processes | 5 merged; 6 raw promotions | Complete, quiet, 1.42% drift; acceptance fails |
| [`selection-fix/primary-repeats`](diagnostics/selection-fix/primary-repeats/checkpoint.json) | Five prescribed cells, 8 rotating processes each | 0 | Fixed diagnostics pass; matching plans, worst 1.018924x; cannot erase primary misses |
| [`selection-fix/diagnostics/order-coupled`](diagnostics/selection-fix/diagnostic-controls/order-coupled/inspection.json) | 8 cells, 8 rotating processes | 1 | Unofficial trace control; same-plan batch loss 4.235%, clean monitor, 0.739% drift |
| [`selection-fix/diagnostics/order-factorial`](diagnostics/selection-fix/diagnostic-controls/order-factorial/inspection.json) | 8 cells, 8 rotating processes | 0 | Unofficial trace control; worst 1.017670x, clean monitor, 0.869% drift; cannot replace acceptance |
| [`selection-fix/diagnostics/three-arc`](diagnostics/selection-fix/diagnostic-controls/checkpoint.json) | 20 cells, 8 rotating processes | 2 merged; 2 raw promotions | Unofficial trace replay; clean monitor, 2.642% maximum original drift, zero evidence-integrity errors |
| [`selection-fix/context-controls`](diagnostics/selection-fix/context-controls/n96/context-inspection.json) | N=96, 8 rotating processes | 0 merged; 1 raw promotion | Original-buffer control; raw promotion loses 2.1907%, clean monitor, 0.6845% drift; location/count alone insufficient |
| [`selection-fix/planning-controls`](diagnostics/selection-fix/planning-controls/checkpoint.json) | N=96, 8 rotating processes | 1 merged, matching plans | Unofficial planning crossover; 0.7414% drift, integrity passes; generated caller/schedule remain coupled |
| [`selection-fix/caller-controls`](diagnostics/selection-fix/caller-controls/checkpoint.json) | N=96, 8 rotating processes | 0 merged; 1 raw promotion | Caller-route ranking reversal isolated; 0.6871% drift, integrity passes |
| [`selection-fix/caller-qualification-fullroutes`](diagnostics/selection-fix/caller-qualification-fullroutes/checkpoint.json) | Default SIMD Measure module, both positive controls | Large positive control fails | Full Cartesian dual-caller proposal rejected; 10/11 tests pass, clean quiet gate, all service masks restored; focus/full runs not started |
| [`selection-fix/budget-diagnosis`](diagnostics/selection-fix/budget-diagnosis/checkpoint.json) | One default-SIMD large positive control | Control fails | Fixed test-only ledger proves sampling deadline: eight dual-route workloads pass, ninth expires; clean quiet gate, live service masks restored |
| [`selection-fix/caller-qualification-canonical`](diagnostics/selection-fix/caller-qualification-canonical/focus-checkpoint.json) | Both positive controls and fixed 30 cells, eight processes | Focus fails | 13/13 tests pass; two same-plan N=4096 primary misses and one slower changed-plan N=210 raw trial; two isolated monitor excursions; full run not started |
| [`selection-fix/storage-crossover`](diagnostics/selection-fix/storage-crossover/checkpoint.json) | Four N=4096 cells, eight processes, reversible Phase-B table exchange | Valid diagnostic | Clean monitor, all correctness and restoration checks pass; storage location contributes to OOP gaps, but the production IP miss is not reproduced and no remedy is established |
| [`selection-fix/storage-graph`](diagnostics/selection-fix/storage-graph/checkpoint.json) | Two OOP N=4096 directions, eight processes, four storage combinations twice | Valid causal diagnostic | Joint storage exchange reverses gaps in all 16 processes; objects and buffers stay fixed; clean monitor and verified restoration; canonical storage is the next candidate |
| [`selection-fix/canonical-storage`](diagnostics/selection-fix/canonical-storage/focus-checkpoint.json) | Canonical Stockham backing, positive controls and 34 cells/eight processes | Focus fails | 72 optimized correctness tests and both promotions pass; N4096/N32768/original N524288 pass; same-plan N96 and N1000000 primary misses plus raw N80 slower promotion remain; monitor clean |
| [`selection-fix/coefficient-crossover`](diagnostics/selection-fix/coefficient-crossover/checkpoint.json) | N96 and N1000000, eight processes, reversible whole coefficient backing exchange | Valid causal diagnostic | All four N1000000 Measure-first gaps reverse with backing ownership and return on restoration; N96 miss not reproduced; clean monitor, 0.6930% drift, all 31 masks restored; allocator mechanism unresolved |
| [`selection-fix/coefficient-mappings`](diagnostics/selection-fix/coefficient-mappings/checkpoint.json) | Same fixed exchange plus post-timing live smaps | Valid diagnostic | Three heap-backed Estimate owners at page offset 960 are faster and transfer their advantage; one heap owner at offset 1088 has no advantage. All covering VMAs have 4 KiB pages and zero anonymous huge pages; clean monitor and verified restoration |
| [`selection-fix/page-storage-stack`](diagnostics/selection-fix/page-storage-stack/checkpoint.json) | Page-aligned large backing and source-aligned local matrices | Rejected before timing | 21 storage checks, 75 optimized correctness tests and Clippy pass; packed N80 matrix alignment survives, but LLVM removes the generic N80/N96 alignment constraint. No timed stage launched |
| [`selection-fix/page-storage-observable-stack`](diagnostics/selection-fix/page-storage-observable-stack/focus-checkpoint.json) | Page storage, observable aligned matrices, positive controls and 34 cells/eight processes | Focus fails | Two same-plan primary misses: f32 inverse OOP N75600 1.023535x and f64 inverse OOP N165375 1.025394x; no slower raw promotions. Small Estimate p1 regresses 10–17%; clean monitor, 1.4367% drift, all masks restored |
| [`selection-fix/large-storage-crossover`](diagnostics/selection-fix/large-storage-crossover/checkpoint.json) | Two large OOP cells, eight processes, full coefficient storage exchange | Valid causal diagnostic | All eight FourStep processes reverse relative p1/median ranking with table ownership; N75600 primary miss is not reproduced. Clean monitor, 0.6617% drift, all 31 masks restored; production remedy pending |
| [`selection-fix/fourstep-storage-anchor`](diagnostics/selection-fix/fourstep-storage-anchor/focus-checkpoint.json) | Canonical FourStep storage, small stack anchor, positive controls and 51 cells/eight processes | 0, including raw promotions | Focus passes with 193 clean monitor samples and 1.7098% drift. Full run held: absolute N210 Estimate and N4096 OOP regressions require a controlled comparison; all evidence retained |
| [`selection-fix/coefficient-position`](diagnostics/selection-fix/coefficient-position/checkpoint.json) | Five cells, eight processes, six fixed in-allocation displacements | Diagnostic only | All 40 trial-integrity checks pass, but one of 105 monitor samples exceeds background-load limit; clean-evidence gate fails. Exploratory 1 KiB shift helps N4096 OOP and hurts IP, with no N210 recovery; no blanket remedy |
| [`selection-fix/coefficient-components`](diagnostics/selection-fix/coefficient-components/checkpoint.json) | PhaseB-only versus whole-slab displacement; unshifted N210 indexed-loop control | Diagnostic only | All 40 trials and 105 quiet samples pass; 35 affinities restored. Neither displacement supports a production change. Indexed FourStep completion proceeds to the unchanged production focus; all 164 evidence files retained |
| [`selection-fix/fourstep-indexed-completion`](diagnostics/selection-fix/fourstep-indexed-completion/focus-checkpoint.json) | Indexed FourStep loop, unchanged coefficient positions, fixed 51-cell production focus | Invalid/incomplete | Monitor stops at 30/51 cells after sustained competing activity. All completed merged ratios pass; 242 raw trials retained. Eight dirty samples and 5.1% clock warning invalidate acceptance; 35 live affinities restored and 232 files archived |
| [`selection-fix/fourstep-indexed-completion-quiet`](diagnostics/selection-fix/fourstep-indexed-completion-quiet/focus-checkpoint.json) | Same frozen executable, five-minute quiet preflight, complete 51-cell/eight-process focus | 1 primary; 2 raw promotions | All 408 ordinary trials retained. N165375 best loses 2.11%; N210 raw promotions lose 2.53%/7.00%. Two of 193 running samples are dirty; 35 live affinities restored. All 192 evidence files archived. Astra identifies missing fused Small/FourStep stack alignment; full710 remains held |
| [`selection-fix/vector-stack-anchor`](diagnostics/selection-fix/vector-stack-anchor/static-checkpoint.json) | Unconditional fused Small/FourStep anchor; generated-code review only | Rejected before timing | Correctness and six tiled/indexed code controls pass, but avoidable narrow-path and frameless-leaf costs fail the scope gate. All 677 files retained, including complete fused inventory. Refined ISA/register-family and vector-width guard proceeds to fresh code review |

| [`selection-fix/vector-stack-scope`](diagnostics/selection-fix/vector-stack-scope/focus-checkpoint.json) | Scoped fused Small/FourStep stack alignment, positive controls and 51 cells/eight processes | 0, including raw promotions | Focus passes: 408 ordinary trials, 193 clean running samples, 1.0104% drift and verified affinity restoration. Astra's code and all-eight absolute reviews support the separate fixed full710 gate; full acceptance remains pending |

| [`selection-fix/vector-stack-scope-full-interrupted`](diagnostics/selection-fix/vector-stack-scope-full-interrupted/full-interrupted-checkpoint.json) | 323/710 cells; 2,590 ordinary and 104 control trials retained | 1 primary; no completed slower raw promotions | Invalid/incomplete: automatic stop after competing activity; 9/1,339 running samples dirty, 3.1% clock warning. All 35 live affinities restored; four exited. Earlier clean N16384 inverse OOP same-plan miss is 1.020155x and remains failed; bounded owner crossover follows |

| [`selection-fix/n16384-owner-crossover`](diagnostics/selection-fix/n16384-owner-crossover/checkpoint.json) | One fixed cell, eight processes, four reversible owner states and CALLS=4 | Valid diagnostic; no acceptance | 18 clean running samples, 0.6301% drift, all 37 masks restored. Averaged p1 ranking reverses in all eight processes, with modeled owner effects -0.392% to +0.215%; the 2.0155% production miss is not reproduced or waived. Exact audit correction and all 278 evidence files retained |

| [`selection-fix/vector-stack-scope-full-quiet`](diagnostics/selection-fix/vector-stack-scope-full-quiet/checkpoint.json) | 176/710 cells, 1,413 ordinary and 64 control trials retained | 0 in completed primary and changed-plan trials | Invalid/incomplete: three consecutive background excursions stop the fixed completion attempt after 61 minutes. Five-minute preflight passes; 3/730 running samples dirty. All 37 live masks restored; three exited. All 26 evidence files archived. Read-only five-minute monitoring resumes; ticket remains open |

The earlier `parent-all8` attempt's 80 completed cells have worst ratio **1.015136**
and geometric mean **0.999895**, with passing correctness checks. Its
incomplete coverage and drift failure prevent acceptance. All four f32
N=32768 cells pass, including the earlier persistent regression cases.
The [audit](diagnostics/parent-all8/comparison.json),
[run log](diagnostics/parent-all8/run.log), metadata and compressed raw
and merged results are retained together.

Auditing all 640 raw trials finds **two slower promotions** at f32 forward
N=524288, in place and out of place. Measure changes the Stockham radix
schedule from `8x4x8x8x4x8` to `8x2x8x8x8x8`; these individual trials lose
4.60%/4.61%, with similar p1 and median losses and ordinary endpoint clocks.
Both pass correctness. They are absent from the merged winners, so a
merged-cell-only view would hide them. Their [complete choice records](diagnostics/parent-all8/choices.json)
were reproduced on a quiet host and addressed by warming before each
selector sample. The matched uninstrumented old/new comparison retains
32 raw trials per executable: the old executable has three slow promotions,
while the corrected executable retains Estimate in all 32 trials. Its worst
merged ratio is 1.005507, with passing correctness and 0.29% maximum drift.
The [matched evidence](diagnostics/selection-fix/) also retains the diagnostic
traces and a passing large-transform positive promotion control. The complete
710-cell acceptance is pending: the quiet monitor interrupted both CPU 2
and CPU 4 attempts when their SMT siblings became busy. The same frozen
executable passes the CPU 4 focus (worst ratio 1.009435); each run records
its pinned core. An attributed 64-trial focus also passes, worst ratio
1.007763. The subsequent `full-core4-attributed-all8` attempt captures host
threads continuously and stops at 188/710 cells when `herdr` activity is captured
on CPU 12. Its sole primary miss is f32 forward out-of-place N=32768 at
1.020914x. A tested temporary service-affinity reservation is now used for
the prescribed diagnostic repeat, with original masks restored afterward.
The fixed repeat and the deferred executable's four matched controls, two
selection cases and six pipelines all pass. Original misses remain retained.
A new complete attempt, `full-deferred-reserved-all8`, uses the frozen
deferred executable, a journaled temporary physical-core reservation and
continuous quiet monitoring. All completed reservations restore original
affinities; no service is stopped or suspended. Ticket 19 remains open until
complete acceptance passes.

The completed reserved attempt has matching-plan primary
misses at f32 forward in-place N=4096 (1.026009x) and N=16777216
(1.023391x), plus smooth f32 inverse in-place N=1000000 (1.041299x) and
smooth f64 inverse out-of-place N=165375 (1.027387x), and batch f64 forward
out-of-place N=32, batch 32768 (1.030219x).
Raw trials expose slower changed-plan promotions in smooth
f32 inverse out-of-place N=18 (1.130426x), forward in-place N=80
(1.031495x), inverse in-place N=96 (1.024284x) and inverse in-place N=210
(1.020772x), plus forward in-place N=75600 (1.040640x), and f64 forward
out-of-place N=48 (1.060860x). These raw losses
are hidden by the merged winners. All 710 cells, 5680 non-control raw trials
and 240 raw control trials are retained with their environment, source and
executable provenance. The 3 hour 38 minute run has no dirty running quiet
sample, failed correctness check, child failure or drift warning; maximum
drift is 1.42%. The strict audit validates the full manifest, eight rotating
trials, controls, clock ranges and merged winners. Both original N=524288
cases retain Estimate and pass at 0.997774x/0.995264x. All 31 service thread
masks are independently verified restored. Fixed diagnostic
repeats cannot waive primary misses, and the new selection failures require
correction before another complete acceptance run.

A subsequent unchanged-probe control passes 1,000 samples. A fresh-process
control reproduces 172/1,000 excursions above 3%, clustered in time. Host
inspection observes an unrelated Cargo test process using 350% CPU.
Concurrent activity is consistent with these excursions; individual earlier
drops are not conclusively attributed. No unrelated process was stopped,
and no system power setting was changed. A quiet 3–4 hour window is needed
for another complete run.

## Verification and reproducibility

- Warmed-selector release library tests: 57 passed, 3 ignored, one timing
  control filtered for a separate quiet run; description integration tests:
  2 passed. All six Measure module tests, including both positive promotion
  controls, then pass under the quiet gate. The preceding checkpoint's
  library and description binaries also passed under scalar, SSE2, AVX2,
  AVX512-YMM and AVX512 caps on this machine.
- Arena tests: 4 passed. Benchmark audit tests: 24 passed, including strict
  full coverage, raw order, controls, clocks and merge checks.
- Workspace/all-target Clippy with warnings denied, formatting and diff
  whitespace checks pass.

The executable used by `parent-all8` is recorded in
[parent provenance](diagnostics/parent/); it is built from base revision
`932ed59` plus the saved source patch and explicit `clock_probe.rs` file.
Check logs are retained in [checks](checks/).

The [method](method.md) records commands, metrics, environment, hypotheses,
rejected experiments and all earlier evidence. The threshold remains 1.02;
p1 is used for single transforms at N <= 256 and best otherwise. The
arena selects the lowest-p1 process per row and retains all child trials.
Drift warnings at 3% and aborts at 10% remain active.

The next full run uses the same eight-process protocol and normal allocator.
Every failed cell receives one fixed eight-process diagnostic repeat after
the full attempt finishes. Repeats do not erase primary failures. Use
`focus-failures.py --procs 8 --core 4` for those diagnostics and `inspect-choices.py`
to retain every raw trial where Measure changes the plan.

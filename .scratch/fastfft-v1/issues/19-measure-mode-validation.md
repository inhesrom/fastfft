# Validate Measure mode and describe_plan

Type: task
Status: resolved
Blocked by: none (18 resolved)
Roadmap: FFT-052

## Question

Is Measure mode (`measure.rs`: times up to 8 candidates within `time_limit`) never more than 2% slower than Estimate across the suites? Does `describe_plan` report engine, tier, radices and scratch for every engine?

## Done when

The arena `fastfft/measure` row vs `fastfft` shows ≤ 2% loss on every cell (or deviations are explained and fixed).

The maintainer accepted the current implementation on 2026-10-08 with the
remaining batch timing issue deferred to [ticket 40](40-batch-f32-n32-measure-order.md).
This closes the ticket by explicit exception; it does not claim that the
original clean full710 performance acceptance gate passed.

## Progress (2026-10-05)

Ticket 18 is resolved. The maintainer confirmed the six benchmark suites
(pow2, smooth, rough, batch, realworld, datacheck); exhaustive N=2..4096
coverage remains with ticket 20. G8 follow-ups remain tickets 37–39.

Description fixes report engine, actual ISA tier, executed radices and all
three scratch requirements, including identity, Bluestein and batch wrappers.
Tests cover every engine, both precisions/directions, cached descriptions
and five ISA caps. Library tests, arena tests, audit tests and workspace
Clippy pass.

The selector now constructs Estimate before exploring candidates and retains
the actual timed executable. Promotion requires a 3% improvement in both
minimum and median across all placements, three buffer-offset triples and
representative batches; incomplete comparisons retain Estimate.

A/A controls exposed benchmark context bias as well as selector failures.
The harness now uses a verified register-dependent clock probe, rotates
construction order, retains every raw process trial, shares caller buffers
and scratch, and retains the actual timed pipeline runners. The parent
sizes scratch so each fresh child can allocate it before mode-specific
planning. This changes allocation layout and does not establish G8 planning
acceptance. Rejected coefficient-alignment experiments were reverted.

The latest eight-process full comparison automatically aborted at 80/710
cells after 55.60% clock drift. All 80 completed ratios pass (worst 1.015136x)
and all correctness checks pass, but the attempt is invalid and incomplete.
A fresh-process clock control reproduces clustered excursions, and host
inspection finds unrelated Cargo tests using several cores. A quiet 3–4
hour window has been requested before another full attempt. No unrelated
process was stopped and no system power setting was changed.

The full attempt's 640 raw trials also expose two slower Measure promotions
at f32 forward N=524288 (in place and out of place): approximately 4.6%
losses with ordinary endpoint clocks. The merged winners hide these trials.
A quiet matched comparison reproduced three slow promotions in 32 raw
trials. Three untimed executions before each selector sample now warm the
current plan; a shared overall budget permits complete comparisons. The
corrected executable retains Estimate in all 32 matched trials, with worst
merged ratio 1.005507x and 0.29% drift. Both small and large positive promotion
controls pass. Quiet monitors interrupted the fresh CPU 2 and CPU 4 full
attempts at 62 and two completed cells when their SMT siblings became busy.
Every completed cell passes, but neither attempt establishes acceptance.
The attributed CPU 4 attempt stops at 188/710 cells after repeated competing
service activity on CPU 12. Its primary miss is f32 forward out-of-place
N=32768 at 1.020914x, with matching plans and ordinary clocks. An Astra review finds order-correlated timing shifts in
the raw trials; matching plans or a passing diagnostic repeat cannot waive
this miss. Concurrent attribution also captures `herdr` on CPU 12 during
a busy sibling sample, which subsequently clears before the stop threshold.

The prescribed eight-process repeat passes, without replacing the primary
miss. Deferring four secondary cheap-planner samples until after execution
removes throwaway plans between real runner constructions; matched controls
improve the worst merged ratio from 1.018744x to 1.011044x. Raw order
sensitivity remains and is explicitly retained as a limitation. The same
deferred executable passes both original selection cases (worst 1.002790x)
and all six pipelines (worst 1.006580x), with passing correctness and less
than 1% drift. Its selector source matches the already validated warm fix.

The new `full-deferred-reserved-all8` acceptance attempt uses that frozen
executable and eight rotating processes across all 710 cells. A tested,
journaled reservation temporarily keeps the identified service off CPU 4
and CPU 12, restoring original thread masks afterward. The quiet monitor
requires 60 seconds of sustained quiet before launch and monitors throughout.
No service is stopped or suspended. The run completes all 710 cells. Five primary
misses have matching plans: f32 forward in-place N=4096 at 1.026009x and
N=16777216 at 1.023391x, plus smooth f32 inverse in-place N=1000000 at
1.041299x, smooth f64 inverse out-of-place N=165375 at 1.027387x, and batch
f64 forward out-of-place N=32 (32768 transforms) at 1.030219x.
Raw trials additionally expose slower changed-plan
promotions in smooth f32: inverse out-of-place N=18 (1.130426x), forward
in-place N=80 (1.031495x), inverse in-place N=96 (1.024284x) and inverse
in-place N=210 (1.020772x), plus forward in-place N=75600 (1.040640x),
and smooth f64 forward out-of-place N=48 (1.060860x).
Correctness passes, the host remains quiet and
there is no printed drift warning. Astra is reviewing the selection paths;
the N=18 loss is approximately 1.4 ns and may depend on the tiny-call timing
context, but its cause is not established. The complete failure set is
retained. All 5680 non-control and 240 control raw trials pass correctness
where checked. The 3 hour 38 minute run has no dirty running quiet sample,
child failure or drift warning, with maximum drift 1.42%. Strict full audit
validates coverage, controls, eight rotating repetitions and merge behavior;
its 24 regression tests pass. All 31 service thread masks are independently
verified restored. The original N=524288 cells pass at 0.997774x/0.995264x.
Acceptance still fails. Required fixed repeats cannot erase primary misses. New bad promotions
require correction and another complete acceptance run.

All five prescribed primary repeats pass with matching plans and clean
monitors; their worst ratio is 1.018924x. The primary failures remain.
Optional, explicitly unofficial tracing retains the actual arena Estimate,
internal baseline and chosen Measure objects, together with selector samples
and both public execution loops on the original buffers. Complete coupled
and factorial order controls pass integrity checks with clean quiet
monitoring; coupled still has a same-plan batch miss, while factorial passes.
Three-object replay completes all twenty cells and 160 raw trials with a
clean monitor, passing correctness and zero evidence-integrity errors.
It captures slower promotions at f32 inverse-IP N=96 (1.031225x) and f64
forward-IP N=48 (1.103954x). Both have complete, arithmetically valid selector
qualification, but the same retained internal baseline runs much faster
later and the candidate loses during both replay callers. Maximum original
clock drift is 2.642%; all 31 live service masks are independently verified
restored. Source, raw samples and restoration proof are archived with hashes.
The fixed eight-process original-buffer control completes with 0.6845%
maximum drift, clean monitoring and all 31 live service masks restored.
One raw process promotes N=96 candidate 1 and loses 2.1907%; the merged
ratio passes. On identical retained selector addresses and common call
counts, the internal baseline is already much faster after arena execution.
Location and count alone do not explain its ranking reversal, and later
flat exposure cannot rule out earlier history. The next fixed control pairs
the original sampler entry and a separate slice bridge while still inside
planning, before and after 100 ms of exposure. Original choice, scores and
selection time are frozen first; this is diagnostic evidence only.
No new production remedy is established and ticket 19 remains open.

The latest 29-cell focused run passes 28 cells; its batch miss also occurs
in A/A, while a fixed eight-process Measure repeat passes. That does not
waive the primary miss. The 2% ceiling, timing statistics and drift gates
remain unchanged. The [validation checkpoint](../../../docs/benchmarks/2026-10-04-mini-ryzen-ticket19-measure/README.md)
records what is verified and what remains. This ticket is open.

Raw runs, failed attempts, source/executable provenance and the
[method](../../../docs/benchmarks/2026-10-04-mini-ryzen-ticket19-measure/method.md)
are retained under the ticket 19 benchmark directory.

The fixed paired planning-path control completes with all eight processes
retaining Estimate, clean quiet monitoring, 0.7414% maximum drift and all
service masks restored. Its merged N=96 same-plan ratio fails at 1.024243.
The baseline sustains 50 ns during original-only exposure but measures 35 ns
in the adjacent paired blocks; generated caller routes and schedule differ.
The independent 23-fixture auditor passes evidence integrity. All records
are archived. A fixed direct-versus-helper crossover to the same sampler
entry will isolate caller route with an identical interleaved schedule.

The direct/helper crossover isolates a ranking reversal under identical
objects, buffers, counts and interleaved schedule: one route passes the
existing improvement rule while the other loses. A real N=96 promotion
also loses 2.7368% in process six. The complete clean run, raw failure,
27-fixture audit, source, verified callsites and restoration are archived.
A full Cartesian dual-caller qualification proposal preserves the existing
margin, samples, candidate cap and deadline, but fails the large positive
promotion control under a clean quiet gate. Ten of eleven default-SIMD
Measure tests pass; all service masks are restored. Its evidence is retained,
and the fixed 30-cell and full runs have not started. A test-only ledger will
identify deadline exhaustion versus timing rejection before another remedy
is chosen. Ticket 19 remains open.

The fixed test-only ledger confirms sampling deadline exhaustion after eight
complete dual-route workloads, with no ranking rejection. Its clean quiet
run, source, executable provenance, raw records and verified restoration are
retained. The next experimental guard preserves original-route coverage at
every offset/placement/length and requires helper-route agreement at
canonical offset zero for every placement/length. It keeps all sampling,
margin and budget rules; reduced coverage is explicit and remains subject to
both positive controls, the predeclared 30 cells and a complete 710-cell run.

The canonical-offset experiment passes both positive controls (13/13 default
SIMD Measure tests), then fails its fixed 30-cell/eight-process focus. The
two same-plan f32 in-place N=4096 direction cells lose 3.25% and 3.39%; one
f64 inverse in-place N=210 changed-plan raw trial loses 2.13%. Correctness
passes, maximum drift is 1.11%, and all surviving service affinities are
verified restored. Two isolated background-activity excursions are retained;
this is not a completely quiet run. Source, provenance, raw trials, audit and
monitor logs are archived. Astra is examining the consistent construction-order
dependence of the N=4096 failures. No new full attempt is launched and the
ticket remains open.

A fixed four-cell/eight-process storage crossover now passes evidence
integrity with clean quiet monitoring, 0.6654% maximum drift and verified
restoration of all 31 live service affinities. Exchanging only equal-valued
existing Phase-B tables causes repeatable OOP timing reversals, establishing
a storage-location contribution. It does not reproduce the production IP
gap or establish an alignment fix; other object storage still contributes.
The complete diagnostic is archived and ticket 19 remains open.


The follow-up two-direction storage-graph factorial is also complete and
archived: all 16 trials reverse the same-plan timing gap when the full table
ownership is exchanged while objects and caller buffers remain fixed. All
56 running monitor samples pass, maximum drift is 1.0864%, and all 31 live
service masks are independently verified restored. This supports a canonical
Stockham storage candidate. It does not establish a fix for the original IP
failures or FourStep N=210. The next fixed focus contains the previous 30
cells plus all four f32 N=32768 direction/placement cases. Ticket 19 remains
open pending positive controls, focused validation and a complete passing
710-cell run.


The canonical Stockham backing candidate passes 15 storage/contract tests,
72 optimized correctness tests, Clippy and both quiet-gated positive
promotion controls. Its fixed 34-cell/eight-process focus finishes with a
clean 130-sample running monitor, 1.0587% maximum drift and all 31 service
masks restored. N4096, N32768 and original N524288 cells pass, but N96 and
N1000000 same-plan primary ratios fail at 1.025229 and 1.056925. One raw N80
changed-plan promotion loses 2.4644%. The complete source, results and audits
are archived. Ticket 19 remains open; a further causal comparison is required
before another full 710-cell attempt. Ticket 20 and G8 planning stay separate.

The two-cell coefficient crossover is complete and archived in 131 files.
All four N1000000 Measure-first gaps reverse upon exchanging only existing
coefficient backings and return upon restoration, with the same objects and
caller buffers. Different page-offset/address regimes correlate with the
gap; allocator and mapping causes need direct observation. N96's prior
lower-tail failure is not reproduced and remains unresolved, as does N80.
The independent diagnostic audit passes, all 37 running quiet samples pass,
maximum drift is 0.6930%, and all 31 live service masks are verified restored.
This is causal evidence, not acceptance. Ticket 19 remains open.

The post-timing mapping observation confirms `[heap]` versus anonymous
backing regimes, with 4 KiB pages and no anonymous huge pages in all covering
VMAs. Three page-offset-960 heap backings carry a reversible advantage;
one offset-1088 heap backing does not. Heap regime alone is insufficient.
The fixed run, its negative case, source and audits are retained in 131 files;
quiet monitoring and independent affinity restoration pass. A separate
64-byte local-matrix alignment candidate for the small rectangular kernels
is awaiting generated-code and correctness validation. Ticket 19 remains open.

Latest fixed focus fails the two large same-plan cells (f32 inverse OOP
N75600 1.023535x; f64 inverse OOP N165375 1.025394x). No slower raw promotion
remains in this focus, but the whole-matrix barrier regresses small Estimate
p1 by 10–17% and is rejected. Quiet monitoring, correctness and all 31 mask
restorations pass; 163 evidence files are retained. A smaller stack anchor
and fixed two-cell storage crossover are under investigation. No full710
run has started; ticket 19 remains open, with ticket 20 and G8 separate.

The fixed large-storage replay is valid: all eight FourStep trials reverse
relative speed with existing table ownership and restore it, with unchanged
objects/caller buffers. N75600 prior loss is not reproduced. All 34 quiet
samples, correctness and 31 affinity restorations pass; drift0.6617%. The
FourStep storage remedy is being reviewed. The smaller stack anchor restores
canonical vector traffic in inspected diagnostic assembly, but production
performance is still unverified. Full acceptance remains pending.

Canonical FourStep storage and the smaller stack anchor pass 78 optimized
correctness tests, both description tests, Clippy, both quiet promotion
controls, and all 51 fixed focus cells across eight processes. The audit finds
no slower raw promotion among 408 ordinary trials. All 193 running monitor
samples are clean, maximum drift is 1.7098%, and all 31 surviving service
affinities are independently verified restored. The 222-file archive retains
source, generated-code reviews, raw trials, controls and environment evidence.

Full710 is held after Astra's absolute-performance review: f64 inverse N210
Estimate and f32 N4096 out-of-place lose speed across process summaries even
though Measure/Estimate passes. The N96 anchor does not reproduce the prior
10–17% slowdown. A fixed-allocation coefficient-position diagnostic will
separate storage effects from object/caller/code changes. No acceptance
threshold or sampler policy changes; ticket 19 remains open.

The five-cell coefficient-position diagnostic completes all 40 process trials
with valid geometry, raw statistics, bitwise coefficients/output and exact
restoration. One of 105 monitor samples exceeds the background-load limit,
so its timing evidence fails the clean gate. Maximum drift is 0.8766%; all 35
surviving service masks are verified restored. All 247 evidence files are
retained. Exploratory results oppose a blanket offset fix: a 1 KiB slab shift
helps N4096 OOP but hurts IP, and does not recover N210. Further isolation is
required before changing production storage or launching full710.

The fixed component diagnostic is clean: all 40 process trials, 105 running
quiet samples and 35 independent affinity restorations pass; drift 0.8323%.
All 164 evidence files are retained. Moving only PhaseB or the whole slab
provides no production remedy in this build. Generic indexed FourStep
completion removes redundant empty-range bookkeeping and improves N210 IP
across process summaries, but OOP and changed-plan selection still require
default-production validation. The unchanged 51-cell focus is prepared for
that candidate; full710 and ticket closure remain pending. Ticket 20 and
G8 tickets 37–39 remain separate.

The indexed-loop production candidate passes 78 optimized correctness tests,
both describe_plan tests, Clippy, generated-code checks and all 13 quiet
Measure tests. Its fixed focus is automatically stopped at 30/51 cells after
sustained external activity: 8/119 dirty running samples, peak background
4.98 cores and a 5.1% clock warning. Every completed merged ratio passes,
including both original N524288 cases; no slower raw promotion appears in
242 retained ordinary trials. Incomplete coverage and missing final controls
invalidate acceptance. All 35 live affinities are restored; one thread exited.
Evidence is being retained and Astra is reviewing the remaining Stockham
context concern. Ticket 19 remains open; no full710 launch follows from this
interrupted attempt.

The interrupted indexed attempt is retained in 232 files, including Astra's
Stockham context review. That review finds identical normalized Stockham
instructions across anchor/indexed/diagnostic builds but differing public
caller contexts; it supports no speculative padding threshold. A single
complete capture with the identical frozen production executable and unchanged
51-cell/eight-process protocol now waits for five minutes of sustained quiet.
All original checks and clean positive controls carry forward by verified
hash. Full710 still requires complete clean focus and strict acceptance.

That complete indexed capture finishes all 51 cells and 408 ordinary trials,
but fails one primary cell (f64 forward OOP N165375, best +2.11%) and two raw
N210 inverse IP promotions (f32 p1 +2.53%; f64 +7.00%). Two of 193 monitor
samples are dirty despite the verified five-minute quiet start. Correctness,
2.0935% drift and all 35 live affinity restorations pass. All 192 evidence
files are archived; full710 is not launched and ticket 19 remains open.

Astra identifies missing local stack alignment in fused Small and FourStep
execution. A narrow generic anchor candidate is being built, with actual
spill-layout and generated-code cost review required before fresh quiet
promotion controls and the unchanged focus. No selector policy, workload or
acceptance threshold changes. Ticket 20 and G8 tickets 37–39 remain separate.

The unconditional stack anchor is rejected before timing for avoidable narrow
FourStep and frameless fused-leaf costs. Its 677-file static archive retains
the complete review and inventory. A refined hardware-family/vector-width
guard is building; Astra will verify exposed spills, exempted code identity
and the remaining costs before any benchmark. The five-minute host watcher
continues. Ticket 19 stays claimed; full710 and ticket 20 remain pending.

The refined vector-stack-scope candidate passes 78 optimized correctness
checks, both description tests, Clippy and all generated-code/storage gates.
Fresh quiet positive controls and all 51 fixed focus cells pass, including
every raw changed-plan promotion. All 408 ordinary and 32 control trials,
193 clean running samples and independent affinity restoration are archived.
Maximum drift is 1.0104%; both original f32 N524288 cells pass.

Astra's critical all-eight absolute review supports the fixed full710 run,
with N210 Estimate improvements and the older N4096/mixed N1M limitations
explicitly retained. The complete immutable focus archive is
`docs/benchmarks/2026-10-04-mini-ryzen-ticket19-measure/diagnostics/selection-fix/vector-stack-scope`.
The same frozen executable proceeds through a fresh monitored quiet gate for
all 710 cells/six suites/eight processes. Ticket 19 stays claimed until that
complete capture passes every strict gate. Ticket 20 follows; G8 stays in
37–39.

The scoped-anchor full710 attempt automatically stops for competing activity
at 323/710 cells. All 2,590 ordinary trials (including six partial-cell trials)
and 104 controls are retained. Nine of 1,339 running samples are dirty, peak
background activity is 2.286 cores, and a 3.1% clock warning also prevents
acceptance. Independent host verification confirms all 35 surviving masks
restored; four recorded threads exited. The immutable interrupted archive
retains the full audit, source/protocol hashes and Astra's bounded review,
with the complete source/code archive referenced by manifest hash.

One completed earlier clean-window cell fails the strict ceiling: f32 inverse
OOP N16384, same Stockham recipe, best M/E 1.020155 (12,679/12,428.5 ns).
Astra retains all eight pairs: one Estimate instance is consistently faster,
while the other seven paired best ratios span 0.994685–1.005933. Neither
all-process means nor later contamination waive this miss. Both original
f32 N524288 cells pass in the interrupted capture (IP 1.005090, OOP 0.997409).
No production remedy is yet justified. The next single fixed diagnostic
retains both actual plans and shared caller buffers, exchanges their complete
equal-valued coefficient owners and balances execution/assignment order
across eight processes. It cannot replace full710 acceptance or justify
retrying until a minimum passes. Five-minute read-only quiet monitoring
continues; any diagnostic requires a fresh sustained quiet gate first.

Ticket 19 remains claimed. Ticket 20 and G8 tickets 37–39 remain pending and separate.

The single N16384 retained-owner diagnostic is valid: eight processes, four
balanced owner states, four public calls per measured batch, exact initialized
coefficient/output restoration and fixed buffers. All 18 running samples are
quiet, drift is 0.6301%, and all 37 reserved masks are independently restored.
The initial audit copied a stale 272-byte object size; all 16 recorded owners
have the current 192-byte FftImpl. The exact corrected check tightens containment,
with all coefficient/workspace expectations preserved, an actual-metadata
regression fixture and 32 passing audit tests. Initial rejection and raw data
are retained in the immutable 278-file diagnostic archive.

Averaged p1 ranking reverses under owner exchange in all eight processes;
modeled owner effects range -0.392% to +0.215%. This establishes small owner
sensitivity in the diagnostic context but does not reproduce or dismiss the
earlier clean-window 2.0155% production miss. Astra supports no specific source
remedy and recommends one fixed complete unchanged-default capture for missing
coverage and quietness. Temporary diagnostic Rust extensions are archived and
restored to their pre-extension versions; all 96 default source hashes match.

`vector-stack-scope-full-quiet` is the one fixed completion attempt, using the
identical frozen default executable (42f7c2a3c18bf844420749fc5fdc325e7025f802d1ae64ad93c95df1fd846a5a),
all 710 cells/six suites/eight rotating processes and unchanged statistics,
controls, selector rules and 2% ceilings. Its start requires five minutes of
sustained quiet; running monitoring and journaled reservation remain unchanged.
Every previous failure stays visible. Any new strict miss or invalid monitoring
prevents acceptance; no automatic retries. Ticket 19 stays claimed until the
complete strict run passes. Ticket 20 and G8 tickets 37–39 remain separate.

The one fixed fresh complete attempt starts after five verified quiet minutes
but automatically stops after 61 minutes at 176/710 cells. Every completed
primary and changed-plan trial passes (worst primary 1.011108); both original
f32 N524288 cells pass at 0.999784/1.009080. The earlier N16384 strict failed
observation remains retained; this capture cannot replace it or supply full
acceptance. All 1,413 ordinary trials, including five partial-cell records,
and 64 controls are archived with every quiet/reservation/audit record.
Three consecutive background excursions (peak 0.688348 busy cores) invalidate
the 730-sample monitor and trigger exit 75. Independent host verification
confirms all 37 surviving masks restored; three recorded threads exited.

Ticket 19 remains claimed: a complete quiet 710-cell strict pass is still
missing. No further benchmark retry is queued. Read-only host checks now run
automatically every five minutes in
`target/ticket19/selection-fix/vector-stack-scope-full-quiet/next-window-watch/idle-watch.jsonl`.
They make no affinity changes or FFT calls and require no ongoing model
polling. A future benchmark still needs its own sustained quiet/envcheck and
unchanged acceptance gates. Ticket 20 and G8 tickets 37–39 remain separate.

At the next status check, the original observer has recorded 190 observations,
158 quiet. The earlier long quiet window has ended: recent background activity
uses approximately four cores. Preparation of a new full capture stops before
any benchmark or affinity change; the prelaunch rejection and all observations
are retained under `target/ticket19/selection-fix/vector-stack-scope-full-idle-window`.
Automatic read-only five-minute monitoring continues in that directory's
`next-window-watch/idle-watch.jsonl`. No benchmark retry is queued.

On 2026-10-07 the user requests continuation. The new observer records 198
consecutive quiet five-minute observations; a fresh host-visible observation
also passes (0.186855 background cores, load 0.096191). All 96 production
source hashes and six auditor hashes still match the frozen default executable.
The prepared `vector-stack-scope-full-idle-window` capture enters a fresh
300-second sustained quiet/environment gate, then runs the unchanged full710
protocol once. Its supervisor independently verifies host affinity restoration,
runs the strict full audit, checks source/executable hashes again and retains
all evidence in an immutable archive automatically. It never retries a
benchmark. Earlier failures and the blocked prelaunch remain visible.
Ticket 19 remains claimed pending completion and review; ticket 20 and
G8 tickets 37–39 remain separate.

The 2026-10-07 fixed full capture completes all 710 cells across six suites
in 13,253.839 seconds, with zero child failures. Strict acceptance fails:
`pow2:f32:fwd:oop:n262144` best M/E 1.022019 and
`batch:f32:fwd:oop:n32:b32768` best M/E 1.020917. Both retain the same reported
Estimate/Measure recipe; no changed-recipe promotion failure is reported.
The first case also fails in one of its eight individual process pairs
(best 1.023050, p1 1.021238); its close median does not waive the failure.
Astra establishes neither dismissible noise nor a source remedy. It recommends
one fixed single-case sample-traced diagnostic after completion and fresh quiet,
with unchanged budgets, rounds, public caller and controls. A second bounded
critical review examines the batch miss; neither diagnostic can replace full
acceptance or discard earlier failures.

One of 2,643 running monitor samples is dirty (0.805874 background cores at
19:00:03 UTC), and 6.4145% clock drift independently rejects acceptance.
The original execution handle is unavailable after the server restart;
post-run proof, strict audit and retention are finalized without a benchmark
rerun. Independent host verification confirms 35 surviving affinity masks
restored; six recorded threads exited. All 96 source hashes, six auditor hashes
and the frozen default executable still match. The immutable 59-file,
20,359,719-byte archive retains every trial/control, monitor, restoration proof,
audit, provenance and first critical failure review. Scheduled reports stop
with capture completion. Ticket 19 remains claimed; ticket 20 and G8 remain
pending and separate.

Astra's second bounded review finds all four Measure-first batch N32×32768
trials above 2% in best, p1 and median; all four Estimate-first trials stay below
2%. The order association is consistent, but construction and initial
calibration/execution remain coupled. No source cause or remedy is established.
The existing factorial diagnostic can separate those orders; it is proposed
separately and is not queued.

One predeclared `n262144-sample-trace` diagnostic is queued. It first builds
the existing `measure-diagnostics` feature on CPU0, freezes its binary and
unchanged source hashes, then enters a new 300-second sustained quiet gate.
The sample-only run covers the single f32 forward OOP N262144 case with eight
rotating processes, unchanged full-profile rounds/budgets/public caller and
standard controls. All 16 ordinary member records must observe CALLS=1.
Tracing uses a different feature-build context; results cannot replace the
failed default cell or close ticket 19. Independent restoration, trace auditing
and immutable retention are automated. There are no automatic benchmark retries.

The user then requests one quick rerun of both failed cases. The pending trace
monitor is stopped before ordinary timing, its reservation is restored and its
interrupted evidence retained. `failed-two-cells-fixed-recheck` runs only the
two failed keys with the same frozen default executable, eight rotating
processes and unchanged full-profile timing/controls, behind its own 300-second
sustained quiet gate. Both prior failed results remain recorded. This is one
fixed user-requested rerun, with automated audit/restoration/retention and no
automatic repeats; its focused result does not replace the failed full capture.

The fixed two-cell rerun finishes in six minutes including its quiet gate
(50.913 seconds of arena timing). All 11 running observations are quiet;
clock drift is 0.7401%, no child fails, all source/executable hashes match,
and all 35 reserved masks are independently verified restored.
N262144 passes this rerun at best M/E 1.004024. Batch N32×32768 fails again
at best 1.021880, p1 1.023389 and median 1.020692, with the same recipe.
The immutable 24-file, 446,433-byte archive retains all raw trials, controls,
quiet/reservation logs, audit and provenance. Both earlier full failures remain
recorded; ticket 19 remains claimed. Astra reviews the reproducible batch/order
association and prepares the smallest bounded diagnostic without running it.

## Answer

Accepted by the maintainer on 2026-10-08 with a documented performance-validation
exception. The original f32 N524288 selection failures are corrected, and the
`describe_plan` fixes pass their tests. Selector qualification retains the
actual timed plan and requires its existing 3% minimum/median improvement.
Default correctness tests and all measured correctness checks pass.

The latest complete comparison covers 710 cells and eight rotating processes:
708 headline ratios are within 2%; f32 forward OOP N262144 loses 2.2019% and
batch f32 forward OOP N32×32768 loses 2.0917%. One CPU excursion and 6.41%
clock drift invalidate that run's strict performance acceptance. A single
quiet fixed rerun passes N262144 at 0.4024% loss, while the batch case again
loses 2.1880%, with 0.7401% drift and all 11 running observations quiet.
Both full and focused evidence remain retained; no failed observation is
replaced or relabeled as passing.

Ticket 40 owns the reproducible batch/order issue. Both captures show all four
Measure-first process trials above 2% and all four Estimate-first trials below
2%; cause remains unproven. Prepared factorial diagnostics are retained but
are not launched. Ticket 20 is the next work item. G8 tickets 37–39 remain
separate, and release performance gates are not silently relaxed.

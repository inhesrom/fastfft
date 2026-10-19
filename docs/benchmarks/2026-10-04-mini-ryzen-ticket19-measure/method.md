# Ticket 19: Measure versus Estimate

The baseline is revision `932ed59` on the Ryzen 7 7840HS (family 25,
model 116). Each timing process is pinned to CPU 2 after compilation and
correctness checks finish. The arena profile uses the default target CPU
with `RUSTFLAGS="-C llvm-args=-align-all-functions=6"`, matching the
documented small-transform protocol. Boost is enabled. Environment and
drift checks remain active.

## Coverage and acceptance

The acceptance run covers the complete `full` pow2, smooth, rough, batch,
realworld and datacheck suites: 710 cells. This includes powers of two
through 2^24, both precisions and directions, in-place and out-of-place
transforms, the standard batch counts, all six pipelines, and immutable
zero/random data. The exhaustive N=2..4096 `sweep` is separate coverage;
these six suites are not evidence for every integer length or every ISA.

Every cell pairs `fastfft/measure` (one-second budget) with `fastfft`
(Estimate). The acceptance ratio is Measure time / Estimate time, with
an unchanged ceiling of 1.02. The statistic is p1 for single transforms
at N <= 256 and best for other cells, following the arena headline
convention. Best, p1 and median ratios are all retained. A matching plan
description does not automatically excuse a failed timing ratio.

`scripts/check-measure.py` audits every paired row, correctness results,
completion, expected cell count, environment status and drift. It exits
nonzero for any missing/failed cell or ratio above 1.02. Summary means
cannot hide individual failures.

## Runs

Baseline screening uses the quick profile across the same six suites.
It diagnoses failures; it does not establish full direction/placement
coverage. The first full attempt uses three child processes in a fixed
construction order. After the A/A bias investigation below, final validation
uses eight child processes with rotating construction order: both rows get
four trials in each position. Four-process focused runs preceded this
choice; the remaining A/A low-tail variation is documented below. It retains the lowest-p1 process per row as
the arena specifies, together with every raw child result.
Focused repeats retain
the initial evidence and identify both the selection difference and
timing variation. No acceptance threshold changes between attempts.

```sh
RUSTFLAGS='-C llvm-args=-align-all-functions=6' \
  cargo build --profile arena -p fastfft-arena
scripts/bench-env.sh check --core 2
target/arena/fastfft-arena run \
  --suite pow2,smooth,rough,batch,realworld,datacheck \
  --profile full --libs fastfft,fastfft/measure --core 2 --procs 8 \
  --out target/ticket19/final
python3 scripts/check-measure.py target/ticket19/final --require-full \
  --out target/ticket19/final-comparison.json
```

G8 planning work belongs to tickets 37–39. Planning times are retained
here but ticket 19 does not claim that the G8 requirement passes.

## Diagnosed failures

The initial quick baseline stopped at cell 175 of 202 when the existing
control flagged 15.79% drift. It retains 31 ratios above 1.02, but is
diagnostic evidence only. The unchanged executable then reproduced f32
N=32768 at 1.246907x in a full, three-process repeat with 1.00% drift.

The first experiment only aligns Measure's input buffer; other changes
complete description fields and fix the scenario harness's description
of the runners actually timed. Its 56-cell full comparison (one process)
has 1.17% drift and 11 failures: the worst is 1.359820x at f32 inverse
N=4096. This rejects alignment alone as a sufficient fix. Different plans
also lose about 20% out of place at f64 N=4096. Every raw row is retained.

## Selection policy under validation

The replacement compares each contender with the actual Estimate plan on
shared, aligned input/output/scratch addresses. Seven alternating rounds
follow batch calibration to at least 50 microseconds. Both minimum and
median must improve by 3% in all three placements; small power-of-two
plans also check the public batch wrapper with 2^20 complex values.
This promotion margin does not change the external 2% acceptance gate.
Incomplete or marginal comparisons retain Estimate. The selected executable
is returned directly, avoiding another construction after temporary
allocation activity. A zero budget takes the Estimate path.

The search budget includes candidate construction and measurement after
enumeration, but an in-progress allocation, construction or FFT cannot be
interrupted. Candidates are capped at eight, with Estimate always first.
The policy is deliberately conservative because the public planner has no
placement, alignment or batch-count option with which to restrict a plan.

## Allocation-order investigation

The guarded selector's complete 202-cell quick screen has 1.59% drift
and 19 failures. Eighteen use the same plan description in both modes;
the largest is f32 N=4096 at 1.412663x. A three-row full control compares
default Estimate, Estimate capped at the detected AVX-512 tier, and Measure.
All three select exactly the same recipe, but the second Estimate is about
6.3% faster than the first and Measure matches the second. Its drift is
0.91%. This shows that recipe identity alone does not ensure equal timing.

Ten exact independent replays of the failing two-row N=4096 specification
retain p1 ratios of 1.232–1.380 with identical recipes. The replay script
retains every child result and correctness check; these diagnostic replays
have no parent drift-control series. The f64 N=96 selection failure does
not recur in ten replays or its full three-process control (0.52% drift),
but the initial failure remains part of the record.

The next isolated change constructs Estimate before enumerating alternatives,
so exploratory allocations cannot change its coefficient placement. The
executable is retained if no contender wins. All ten N=4096 replays then
pass at p1 ratios 0.914–0.940. N=96 still changes to a slower configuration
once in ten replays (1.083877x).

The subsequent experiment requires the contender to win at three aligned
input/output/scratch offset triples, in bytes: (0,0,0), (1024,2048,3072)
and (2048,3072,1024). This protects against a configuration winning only at
one accidental alias between caller buffers, scratch and coefficient tables.
The budget and 3% promotion margin are unchanged; every offset must have
complete minimum/median comparisons. All 30 N=4096 replays pass. All 30
N=96 replays retain Estimate; one identical-plan result is 1.021503x and
the others meet 1.02. These remain diagnostic results rather than a
substitute for the full run. The complete three-process run finishes all
710 cells in 4818 seconds: 28 ratios exceed 1.02, all with matching plans.
Its per-cell clock excursions invalidate acceptance (see below). Three
cells select different plans and improve; all retained correctness checks
pass. The complete output is archived under `diagnostics/layouts-full`.

```sh
scripts/bench-env.sh check --core 2
python3 docs/benchmarks/2026-10-04-mini-ryzen-ticket19-measure/replay.py \
  target/ticket19/ordered/fastfft-arena \
  target/ticket19/guarded-quick/results.jsonl \
  --cases pow2:f32:fwd:ip:n4096 smooth:f64:fwd:ip:n96 \
  --trials 10 --out target/ticket19/ordered-replays.jsonl
```

## Follow-up controls

The first complete power-of-two portion has seven ratios above 1.02,
all with matching descriptions. Before further timing, the diagnostic
plan is three full-profile independent replays each of f32 inverse
in-place N=128 and f64 inverse in-place N=16384, in both library orders.
The same two orders will also compare Estimate against Estimate capped
at AVX-512 (the detected tier on this host). This tests whether the gaps
track mode selection or construction/allocation context. It does not
discard or replace the original failures. The replay script's
`--reverse` and `--contender fastfft/avx512` options express these controls.

The full run's periodic controls have not warned, but inspection of the
per-cell clock ranges finds excursions above 3% (maximum 22.10% at f32
N=512). The driver flags these without printing a per-cell warning. This
attempt is therefore diagnostic, not valid acceptance evidence, regardless
of its timing ratios. It has collected all six suites; the clock
probe must be investigated before the next acceptance attempt. No drift
threshold has been changed or disabled.

The direct-child controls do not reproduce the N=16384 loss. Repeating
through the arena driver does: 1.046796x, with 1.14% drift. Driver controls
comparing the two Estimate labels show the second row slower by 3.60%
and 5.06% in opposite library orders, with at most 0.62% drift. This is
evidence of construction/execution-context bias independent of Measure.
Direct replay serializes its JSON argument with spaces by default;
`--compact-spec` is available to match the driver's argument spelling.
Such replays preserve the logical specification, not every process address.

Disassembly in `diagnostics/clock-layouts.asm` confirms the clock loop's
four source additions collapse into one `addq $4` on the stack. Its
reported approximately 20 GHz is memory-loop throughput, not the intended
dependent-register cycle probe. This must be repaired without weakening
the 3% flag or 10% abort thresholds.

The next isolated library change retains the complete public executable,
including the batch wrapper and its coefficient table, after measurement.
Previously only the inner FFT survived, while the outer wrapper was built
again after exploratory allocations. Its eight-cell batch check has one
remaining 2.94% miss (f32 N=64 out of place), with 1.43% drift. The earlier
f64 N=256 batch miss does not recur in that run. The harness correction rotates construction order
across processes; an even process count will give both rows equal exposure
to each position. Original results and A/A controls remain part of the record.

The standalone pinned clock comparison takes 1000 probes per implementation,
with 20 ms between probes. The original produces three >3% excursions,
worst 15.42%, and a median of 20.119 in its mislabeled GHz units. The repaired
register chain reports median 5.028 GHz, no >3% excursions, and worst 0.61%.
Raw samples, comparison JSON, source and disassembly are archived. The arena
now also prints per-cell drift warnings and aborts on a per-cell excursion
above the existing 10% threshold, retaining the triggering row.

Every process is retained in `trials.jsonl` before merging. The audit checks
the requested repetition count and verifies every raw child, so selecting
the fastest process cannot hide a failed correctness check in another one.

With corrected clocks and rotating order, the N=16384 A/A control is
0.999701x with 0.13% drift. Repeating all original failures covers 29 cells
(the scenario filter also includes overlap-save): six still exceed 1.02,
all identical-plan f64 cases, and every run has drift below 0.63%. These
complete runs are retained under `diagnostics/fair-focus`.

A diagnostic using `MALLOC_MMAP_THRESHOLD_=16384` reduces the forward
f64 N=16384 ratio from 1.045711x to 1.007703x, and N=768 from 1.027240x to
1.019173x, without changing either plan. It has 0.09% drift. This supports
allocator-context sensitivity; the environment override is not used for
acceptance. The next harness change gives sequential fastfft and RustFFT
runners the same aligned caller scratch, grown outside timing to the largest
reported requirement. The scenarios retain their own per-pipeline buffers.

The shared-scratch smoke covers 18 cells with fastfft, Measure and RustFFT:
all 54 verification results pass, with 0.09% drift. The focused repeat
clears the prior f64 N=16384 and N=768 failures, but f32 forward out-of-place
N=1,000,000 has a 1.053218x minimum-time ratio with identical plans and
0.25% drift. Its p1 ratio is 1.018530x; the declared best-time metric still
fails. Before another full run, controls will compare Estimate against
Estimate at the same length (four rotating processes) and Measure against
Estimate (eight rotating processes). Ranked explanations are (1) a low
minimum outlier, predicting convergence with additional process samples;
(2) coefficient-allocation context, predicting a similar gap between
Estimate labels or a construction-position effect; (3) a mode-specific
state difference despite identical recipes, predicting a loss in both
construction positions. These controls will be retained regardless of
outcome; they do not change the acceptance metric or threshold.

The shared-scratch focused run finishes all 29 cells with two misses:
N=1,000,000 above and f32 N=1024 spectrogram (1.022763x). All verification
checks pass and every group has drift below 0.58%. The fixed controls give
N=1,000,000 A/A minimum 0.972871x (p1 0.999974x) and eight-process Measure
0.936278x. Spectrogram A/A is 0.982132x; eight-process Measure is still
1.067454x, despite matching descriptions. These controls do not justify
dismissing the pipeline failure. Raw orders favor the first-constructed
pipeline; each previously owned distinct buffers, and the harness discarded
its initially planned forward runner and rebuilt another after planning.
The next pipeline experiment shares caller buffers between sequential
libraries and retains the initial forward executable, as ordinary cells do.
All six scenarios and the previous focused set will be repeated.

The pipeline buffer/lifetime correction passes all 24 smoke verifications
across six scenarios and four rows (Estimate, Measure, RustFFT and PhastFT
split). The full four-process two-row pipeline run then passes every scenario:
worst Measure/Estimate ratio 1.008310x, geomean 0.990120x, maximum clock drift
0.31%. The formerly failing N=1024 spectrogram is now faster in Measure.
The complete previous-failure set is repeated with this executable before
full-suite acceptance. Library code is unchanged from the public-wrapper
variant; these last two fixes concern caller storage and plan lifetime in
the benchmark harness.

The pipeline executable's 29-cell focused repeat has one remaining miss:
f64 N=256 batched out of place, minimum 1.037592x, p1 1.026518x, median
1.002030x, with matching plans and 0.09% drift. All earlier smooth, rough,
pipeline and immutable misses pass; every group has drift below 1.08%.
A fixed four-process A/A control and eight-process Measure control will
check this batch cell. The hypotheses are minimum-sample variation,
coefficient placement, and mode-specific state, in that order; the controls
have the same predictions as the earlier N=1,000,000 investigation.

The fixed batch controls pass: A/A minimum 1.006326x; Measure with eight
processes 0.990503x, maximum drift 0.26%. Full 710-cell validation now uses
the frozen `pipeline` executable, four rotating processes, and the normal
allocator. Before reading full-run results, the diagnostic follow-up rule
is fixed: repeat every failing cell once with eight rotating processes.
Retain both readings and their complete raw trials; a diagnostic repeat
does not erase a primary failure or change the metric or 1.02 threshold.
Persistent misses require further diagnosis and correction.

The new full attempt is stopped early, retaining 84 completed cells. The
f32 N=32768 in-place forward/inverse cases lose 2.80%/3.86% with matching
plans, and both p1 and median also lose about 3–4%; this is not just a low
minimum. There are no completed-cell correctness failures. SIGINT stopped
the terminal wrapper but not the driver; idle checks blocked the next
experiment until the exact driver and its child were terminated. The
partial attempt is diagnostic, never acceptance evidence. A short C build
overlapped the detached driver before this was discovered.

The next control keeps the frozen executable and compares a glibc allocation
tracer with a 64-byte-aligning interposer, eight rotating processes each,
at f32 N=32768 in place (both directions) and f64 N=256 batched out of
place. Both interposers log 256 KiB allocation addresses, the f32 N=32768
Phase B table size. Ranked explanations are SIMD coefficient alignment,
other heap-object placement, and sample variation. Aligning every allocation
can only support a general allocation hypothesis; a subsequent targeted
library experiment is necessary to attribute the effect to coefficients.
The preload is diagnostic and will not be used for acceptance.

All four allocation-control runs complete with drift below 1.11% and
passing verification. The unaligned forwarding wrapper gives N=32768
forward/inverse ratios 1.004366x/1.008525x; the aligned wrapper gives
0.996269x/0.999605x. The aligned control slows both absolute transform
times by about 7%, so it is not a proposed solution. Batch ratios are
0.949480x and 0.994880x respectively. The wrappers share explicit
calloc/realloc implementations, so the unaligned wrapper is not identical
to the native allocator; these are controlled diagnostic contexts only.
Allocation logs confirm 0/16/32/48-byte offsets for 256 KiB tables.

The next library experiment aligns only Stockham's Phase B coefficient
table, using initialized Vec padding and a cached offset. Cloning preserves
alignment. The normal allocator is restored. Both mode ratios and absolute
Estimate time at N=32768 will be checked; a broad slowdown is grounds to
reject the experiment. No other coefficient tables change in this trial.

The SIMD-table-only experiment retains two misses at N=32768: 1.022284x
forward and 1.026013x inverse (eight processes, 0.35% drift). Estimate is
23.23/23.10 microseconds; a matched eight-process native-allocator control
with the previous binary is 23.39/23.36 microseconds, with Measure at
23.89/23.77 microseconds. Thus alignment of Phase B alone modestly changes
absolute timings but does not fix the gap. The next isolated extension
uses the same aligned storage for Stockham's pass coefficients, leaving
other engines and batch tables unchanged. No table variant is accepted
until its measured effects and correctness have been checked.

Aligning all Stockham coefficients still leaves the inverse N=32768 ratio
at 1.020019x (forward 1.014614x), so both coefficient-storage experiments
are rejected and fully reverted. Their source snapshots and measurements
remain archived.

Shared scratch was still first allocated *after* the first mode had planned.
Estimate-first and Measure-first therefore established different caller
workspace contexts, even though both rows subsequently shared an address.
The next harness experiment uses a canonical, deduplicated Estimate/RustFFT
preflight to size scratch before measured planning begins. Actual Measure
plans remain independently constructed and may grow workspace if a selected
engine requires more. This preflight changes planning context and is recorded
in environment metadata and the benchmark documentation; it does not claim
fresh-planning/G8 acceptance. Production library code returns to the tested
public-wrapper version.

In-child preflight removes the N=32768 mode gap (0.979611x forward and
0.995478x inverse), but both absolute times are around 25.5 microseconds
versus about 23.4 previously. A separate native-allocation tracer confirms
the mode-dependent caller scratch placement in the prior harness: the input
and output both have page offset 64, while scratch alternates between 64
(Estimate first) and 3072 (Measure first). Preflight makes scratch offset 64
in every child, but also changes the heap state used to construct both FFTs.

The next refinement moves workspace sizing to the parent driver. It passes
the required complex-element count in `CellSpec.caller_scratch`; each fresh
child reserves that buffer before actual planning, with no preliminary FFT
in that process. Raw and merged specifications retain the reservation, and
the audit checks consistency. Legacy direct run-cell specs remain readable.
The production library remains unchanged by these harness experiments.

Parent-side sizing passes both N=32768 cases, worst 1.006876x,
with 1.77% drift. Absolute times remain about 25.6 microseconds; reserving
workspace before FFT construction establishes a different allocation layout
from the old harness, rather than preserving its absolute speed. The tested
production FFT code is unchanged. This mode-independent caller setup is
retained for wider validation, with all prior absolute times still visible.
The original 29-cell failure set is now repeated with the parent executable.

The parent-workspace focused run has 28/29 passing cells, with only the
f64 N=256 out-of-place batch missing (1.068162x). Its fixed A/A control
also exceeds the gate: best 1.027555x, p1 1.037117x, median 0.987213x. The
fixed eight-process Measure control passes at 0.967946x (p1 0.984123x,
median 0.985775x), with 0.28% drift. These readings confirm that the low
tail remains variable even without a mode change.

Before the next complete attempt, repetitions increase uniformly to eight
processes for all 710 cells, four in each construction position. Metrics,
the 1.02 threshold, raw-trial retention, verification and drift gates remain
unchanged. The normal allocator and parent-sized shared workspace are used.
This complete run will finish before any follow-up timings are collected;
failures remain visible and receive the previously declared fixed diagnostic
repeat, rather than stopping early to sample only convenient cells.

The eight-process full attempt automatically aborts after 80 cells when a
clock probe falls to 2.235 GHz (55.60% drift) before the f32 inverse
N=1,048,576 out-of-place trial. All 80 merged ratios pass, worst 1.015136x,
geomean 0.999895x, with no correctness failures. Earlier adjacent probes
at N=131,072 also show 5–6% excursions. The attempt is retained as
`diagnostics/parent-all8`; it is incomplete and invalid, not acceptance.
No manual early stop or post-failure resampling occurred. A subsequent
1,000-probe unchanged-binary control ranges from 4.984 to 5.037 GHz,
with no 3% excursions. Fresh-process and non-boost controls follow to
distinguish startup/boost variation from other transient machine load.

The fresh-process control reproduces the clock drop: 172/1,000 probes
exceed 3% drift, clustered in time, with a minimum of 2.193 GHz. A host
process inspection then finds an unrelated Cargo test workload using
350% CPU. This is evidence of concurrent host activity, consistent with
the clustered drops; it does not prove the exact cause of each earlier
excursion. The no-boost experiment is deferred: controlling the clock
would not remove competing CPU and cache traffic. No unrelated process
is stopped and no system power setting is changed. A quiet benchmark
window is requested before another acceptance attempt.

The raw-trial choice audit is essential: 2/640 trials change the plan at
f32 forward N=524,288 (IP and OOP), from Stockham radix schedule
8x4x8x8x4x8 to 8x2x8x8x8x8. They lose 4.60%/4.61% in best time,
with similar p1/median losses. Their endpoint clocks are ordinary
(4.991–5.025 and 5.023–5.027 GHz). Correctness passes. Merged winners
hide both slower choices. These are unresolved selection failures; the
next quiet-window work must diagnose/fix them before full acceptance.
See `diagnostics/parent-all8/choices.json` for every changed-plan trial.

## Ticket 19 continuation (2026-10-05)

Work continues on `ticket-19-measure-validation`, preserving the existing
uncommitted implementation and evidence. The maintainer explicitly requires
monitoring for a quiet machine before any benchmark. `quiet-run.py` samples
host-wide `/proc/stat` every five seconds, waits for 60 continuous quiet
seconds and a passing `bench-env.sh check`, then pins the entire benchmark
process group to CPU 2. The launch gate requires at most half a busy CPU
across the host, CPU 2 and its SMT sibling at most 5% busy each, and load1 at
most 1. During the run it excludes the benchmark CPU, permits load1 up to
2, and terminates only its own process group after three consecutive busy
samples. Logs retain every sample. The original clock drift gates remain
unchanged. Initial monitoring used a quarter-core ceiling; host process
sampling found light service/client activity around that level, so the
half-core criterion was set before any new timing began. Compilation and
tests must finish and the host settle before benchmarks launch.

Re-auditing `parent-all8/trials.jsonl.gz` reproduces the two slow promotions:
1.045967x in place and 1.046087x out of place at f32 forward N=524288.
The audit now fails on a different-plan raw trial above 1.02, so selecting
a faster process cannot conceal these failures. A regression test first
failed against the previous audit and passes with this check; all 13 audit
tests pass.

Ranked hypotheses before new measurements:

1. Switching large plans disturbs cache state, unlike the arena's repeated
   execution; untimed execution after switches should change the ranking.
2. Seven short selector samples do not reach stable execution; sustained
   sampling should remove a false promotion.
3. The promoted recipe is sensitive to coefficient/caller allocation
   context not represented by the three offset triples; it should remain
   context-dependent even after warm-up.

The frozen `parent` executable is used for a fresh two-cell, eight-process
baseline. A separate temporary trace build records all selector sample
pairs and allows an untimed warm-up control. Trace records are diagnostic
only; instrumentation must be removed before the final acceptance build.

The monitored native baseline reproduces a slower promotion on out-of-place
trial 7: best 1.055172x, with passing correctness. The two merged cells
both pass (worst 1.010505x), but the strengthened raw-trial audit correctly
rejects the run. Maximum clock drift is 0.30%; the monitor observed no
sustained competing activity. This confirms a selector problem even on a
quiet host, independent of the earlier aborted full run.

The cold and three-call warm controls use the same trace executable and
32 raw process trials each. Both retain Estimate in every trial, with
passing correctness and maximum drift 0.95%/1.68%. Their first-workload
sample traces reject the alternative schedule in every comparison, rather
than timing out. Across those comparisons, median selector IP timings move
from 760.97/796.28 microseconds (Estimate/contender) to 681.10/713.45
microseconds after warm-up. The warmed comparison is closer to the arena's
steady execution. These controls support representativeness but do not
alone establish that the sporadic promotion is fixed.

A read-only Astra review identifies a cache-boundary mechanism: each f32
N=524288 Stockham plan has roughly 4.5 MiB of coefficient tables and uses
8 MiB of active caller/scratch buffers. Repeated execution of one plan
fits this host's 16 MiB L3; alternating two plans touches roughly 17 MiB.
The prior one-call selector samples and the arena's warmed consecutive
execution therefore exercise different cache states.

The production change discards three single-call warm-up executions before
each timed sample, checking the deadline before each warm-up and before
measurement. All original statistics, placements, offsets, promotion margin
and completeness rules remain. One overall budget replaces equal slices
for remaining candidates: a complete warmed comparison at N=524288 can
need about 350 ms, whereas the prior first-candidate slice was only 143 ms.
Obvious losers still exit after the first disqualifying workload. This may
reduce the number of later candidates explored under a short budget; only
complete improving evidence can change the choice. A quiet-machine large
positive control verifies that a faster executable can still be promoted
within one second with eight candidates available.

Temporary trace code and environment switches are removed before the
production build. The saved diagnostic source remains with its executable
hash and source patch. Deterministic tests check that warm-up never enters
timing statistics and that expiry during warm-up supplies no measured result.

All six Measure module checks pass under a sustained quiet gate, including
both positive promotion controls. The large control offers eight candidates,
uses an SSE2 baseline and the default-tier candidate list at N=524288, and
promotes a faster executable with a one-second overall search budget. Both
returned positive-control plans pass impulse correctness. Deadline expiry
after any of the three warm-up calls returns no timing result.

The matched native comparison fixes 16 rotating processes per cell, 32 raw
trials for each executable, and the normal allocator. The frozen old
executable makes three slower promotions: in-place trials 11/15 at
1.030890x/1.031176x and out-of-place trial 13 at 1.044269x. Its merged cells
still pass, and clock drift is only 0.46%. The warmed production executable
makes no promotions in the same 32-trial comparison; both merged cells pass,
worst 1.005507x, geomean 1.005112x, with 0.29% maximum drift. Every correctness
check passes. This confirms that the two problem selections are prevented
in the focused comparison without disabling useful promotion generally.

The full eight-process attempt is started with the frozen warmed executable
under the same quiet gate, all 710 cells, normal allocator and default target
CPU plus the established function-alignment flag. Retain all results and
monitor samples. One fixed eight-process repeat of every failing cell remains
the diagnostic rule; primary misses cannot be erased by those repeats.

Serial release tests pass: 57 unit checks (the normal promotion control was
run separately under the quiet gate), two description tests, four arena
checks, and 13 audit checks. Workspace/all-target Clippy, formatting and
whitespace checks pass. The large ignored promotion control also passes.
A parallel optimized build was killed under memory pressure; its log is
retained, and the successful production arena build was rerun serially.

The first warmed full attempt is interrupted by the quiet monitor at
62/710 cells (501 raw trials, including five trials of an incomplete cell).
Every completed cell passes, worst 1.019120x, with no slow promotions,
correctness failures or printed drift warnings. It is incomplete diagnostic
evidence. Three consecutive host samples show CPU 2's SMT sibling (CPU 10)
at 7.80%, 9.02% and 8.82% busy, despite total background activity below
0.17 cores. Services have unrestricted affinity and can migrate to that
sibling. No unrelated process or power setting is changed.

A read-only CPU sample finds CPU 4 at 0.4% and its sibling CPU 12 idle;
`bench-env.sh check --core 4` passes. The next focus and complete attempt
use CPU 4, explicitly recorded in each environment and command, with the
same frozen production executable, normal allocator, repetitions and gates.
The earlier CPU 2 focused comparisons remain the evidence reproducing and
correcting the two selections. Absolute times on different cores are not
used as a speedup claim; acceptance pairs both modes on the same pinned core.

The CPU 4 focused comparison completes both cells and all 32 raw trials:
worst merged ratio 1.009435x, no different-plan promotions, passing
correctness, 0.76% maximum clock drift, and no sustained competing activity.
The fresh full attempt is `full-core4-all8`, using all six suites and eight
rotating processes per cell. Diagnostic repeats will use `focus-failures.py
--procs 8 --core 4` to match this primary run. Changing the core does not
change the 1.02 ceiling, metrics, allocator, executable or drift gates.

The CPU 4 full attempt is also interrupted by the quiet monitor, at two
completed cells and 19 raw trials (three of an incomplete next cell).
Both completed ratios pass. CPU 12 records 7.01%, 6.99% and 7.20% busy
in three consecutive samples, after a similar workload disappears from
CPU 3. This attempt is archived as `full-core4-all8-interrupted` and is
invalid acceptance evidence.

A second read-only Astra review checks the driver, child pinning, dependency
sources, retained CPU fields, topology and accounting. It finds no arena
affinity escape: outer `taskset` pins the parent, reader thread and fresh
children, which also explicitly pin themselves. CPU accounting and SMT
topology agree. The existing running gate cannot identify unrelated work
on the benchmark logical CPU itself, so any resource reservation must
cover both logical CPUs of its physical core. Concurrent per-thread
runtime, last CPU and affinity must identify a culprit before changing it.
`host_activity.py` records those fields and CPU user/system/IRQ counters,
without command-line arguments. `quiet-run.py --attribute` adds this
read-only capture from the host PID namespace to a bounded diagnostic.

While inspecting command options, invoking `run --help` unexpectedly starts
a default benchmark because the parser ignores this flag. Its driver
(PID 1026600) and child (PID 1026722) are terminated after discovery. The
unmonitored partial run remains in
`target/arena/runs/20261005T061006Z-mini-ryzen` with `invalid-reason.txt`;
it is excluded from all validation. Subsequent option checks read source.

The attributed CPU 4 diagnostic completes both N=524288 cells and all
64 raw trials with no plan changes: worst merged ratio 1.007763x,
geomean 1.004514x, passing correctness and 0.80% maximum drift. No
sustained competing activity occurs. Samples show the long-lived `herdr`
main thread as the largest background consumer, around 8% of a core,
but do not observe it on CPU 4 or CPU 12 during this diagnostic. Its
identity is therefore not yet established as the cause of the interruptions.

The fresh complete attempt is `full-core4-attributed-all8`, with the
unchanged frozen executable and eight rotating processes per cell. The
capture now emits thread starttimes and every observed benchmark-group
thread's affinity, including newly created or idle threads; CPU/thread
baselines reset after launch. Threads born and exiting between samples
remain unobserved. The running gate conservatively treats a foreign thread
with more than 5% interval runtime and an endpoint on CPU 4 as competing
activity, in addition to the unchanged aggregate and sibling checks. This
endpoint is not an exact per-CPU runtime attribution. SIGTERM now unwinds
through cleanup, terminating only the monitor's benchmark process group.
No unrelated affinity or power setting has been changed.

The attributed full run has a primary miss at f32 forward out-of-place
N=32768: best 1.020914x, p1 1.013546x, median 1.013375x. Plans match and
clock drift is ordinary. The run continues to collect the full failure set;
it cannot pass acceptance unless the primary miss is corrected in a new run.
A read-only Astra review finds the winning Estimate/Measure trials are
4/1 (one-based): Estimate best/p1/median are
28.043/28.459/28.8595 microseconds, versus Measure
28.6295/28.8445/29.2455. Every Estimate winner across all four N=32768
cells comes from a Measure-first process. Forward OOP median paired p1
ratio is 1.001309 with Estimate first and 1.015680 with Measure first.
Construction/allocation context ranks ahead of a new selector defect;
extra low-tail separation adds about 0.73 percentage points to the headline.
Neighboring median shifts mean this is not solely an isolated minimum.
Construction, calibration and timing order remain confounded. The original
fixed eight-process repeat is still required after the full attempt ends.

At 06:59:29 UTC, a dirty sibling sample records CPU 12 at 7.57% busy
(3.98% user plus 3.59% system). The long-lived `herdr` main thread has
7.38% interval runtime and its endpoint CPU is 12. This is strong concurrent
evidence for a competing service on the benchmark's physical core; it does
not retroactively prove the causes of earlier interruptions. Subsequent
samples clear before three consecutive dirty samples, so the full run
continues. No unrelated task is stopped or modified.

At 07:29:15 UTC the monitor interrupts the attempt at 188/710 completed
cells and 1507 raw trials. One completed cell exceeds 1.02; no raw trial
changes plan, every completed correctness check passes and no printed drift
warnings occur. Consecutive CPU 12 samples are 9.42%, 9.00% and 8.60% busy.
The first two record `herdr` main-thread interval runtime 9.76%/8.97%
with endpoint CPU 12. The last snapshot ends elsewhere; endpoint capture
cannot assign every interval exactly. This attempt is archived as
`full-core4-attributed-all8-interrupted`, never acceptance evidence.

Before any new timing, `reserve-core.py` is reviewed by Astra and exercised
only on disposable processes. It journals the service identity, owner,
boot ID, PID namespace and all original thread masks before excluding CPU 4
and CPU 12. All initial service masks must match; fourteen CPUs remain.
SIGTERM unwinds through cleanup; child signal masks are unblocked before
exec. New service threads and observed affected child lineages are restored;
preexisting descendants form boundaries and are not changed. Identity uses
PID/starttime/owner, so a tracked child can exec without escaping restoration.
Cleanup attempts remaining threads even if one journal write fails.
Completed/dry-run journals cannot authorize a later affinity change.

Tests verify normal exit, newly created threads, an inherited child that
execs `sleep`, preservation of a deliberately restricted preexisting child,
cancellation of a waiting quiet monitor, completed/dry-run recovery guards,
and restoration despite a journal-write failure. An initial test exposes
an inherited blocked-signal mask; the child pre-exec unmask fixes it. These
tests do not establish cancellation of an already launched arena session.
An unobserved child that double-forks and reparents between samples remains
a best-effort cleanup limitation. No unidentified orphan's mask is widened.
The durable journal supports explicit recovery in the original host PID
namespace after a crash; PID checks cannot atomically eliminate TID reuse.

A brief real-service smoke reservation runs `true`, completes with no
restoration errors, and a separate host check verifies all 31 live threads
back at CPUs 0–15. No service is stopped or suspended, and no power setting
changes. The prescribed single eight-process diagnostic repeat is now
`fixed-repeat`, with the frozen executable, normal allocator and CPU 4.
The service reservation covers that run's quiet wait and timing, then
restores masks. The 1.02 ceiling, metrics and clock gates are unchanged;
repeat outcomes cannot erase the original primary failure.

The prescribed repeat completes its one cell and eight raw trials on a
quiet host: best 0.994661x, p1 0.999293x, median 0.998257x, passing
correctness and 0.56% maximum drift. The reservation journal reports no
restore errors, and a separate host check verifies all 31 live service
threads back at CPUs 0–15. This passing repeat does not erase the original
1.020914x miss.

The next declared experiment addresses a concrete harness asymmetry:
`plan_all` currently constructs the retained Estimate runner plus four
throwaway Estimate planning samples before constructing the next real row;
Measure has a different exploratory allocation history. An isolated change
keeps the actual runners and first planning samples, moving all four
cheap-planner repeats until after every execution timing. The minimum-of-five
planning statistic is preserved; scenarios retain their normalized forward
specification and untimed inverse construction. Secondary build failures or
panics are now explicit errors while completed timing data remain recorded.
These post-execution planning samples are a warmed context, not G8 evidence.

Before the new control results, the matched comparison is fixed at all four
f32 N=32768 direction/placement cells, eight rotating processes each,
frozen warmed versus the separately built deferred-sample executable,
normal allocator, CPU 4 and the same quiet/service reservation. Hypothesis:
removing throwaway plans from between real constructions reduces the
order-correlated timing difference; similar separation in both versions
rejects deferral as the explanation. This control is distinct from the
prescribed repeat and cannot replace or erase the primary failure. The
two N=524288 selection cases and all six pipelines will also be checked
before any new 710-cell attempt. No timing statistic, 1.02 ceiling or
clock gate changes.

The matched N=32768 control completes all four cells and 32 raw trials per
executable, with matching plans and passing correctness. The frozen version
has worst ratio 1.018744x, geomean 1.013456x and 0.64% maximum drift;
deferral gives 1.011044x, 1.007577x and 0.80% drift. Both complete without
quiet interruptions or restoration errors. The selector source is identical
between the frozen and deferred executables.

Astra's raw-order analysis rejects the broad prediction of an order-neutral
result: order sensitivity remains and the split widens. Forward IP median
paired p1 is 1.006515/1.023619 (Estimate-first/Measure-first) in the frozen
control and 0.983440/1.019792 after deferral. The other cells show the same
Estimate-first improvement, while Measure-first still tends to favor
Estimate. This supports the narrower explanation that intervening
throwaway Estimate plans change the next actual Measure allocation context;
it does not establish neutrality or complete causality. Three merged cells
improve and one is similar. The balanced eight-process protocol and strict
1.02 gate remain necessary, and the original primary failure is retained.

The deferred executable's original two selection cases also pass their
eight-process check: worst ratio 1.002790x, geomean 0.999543x, no changed
plans in 16 raw trials, passing correctness and 0.90% maximum drift. All
six pipelines are checked next before another complete attempt.

The cleanup test is broadened to an active separate process group containing
a sleeping child and grandchild, with cancellation injected before Popen's
result assignment. It passes. Synthetic quiet counters accelerate this unit
test only; it executes no FFT benchmark and supplies no timing evidence.
The actual benchmark monitor continues to use host counters and the full
60-second quiet gate. The test log is `reservation-tests-active-cleanup.log`.

The deferred executable completes all six pipeline cells and 48 raw trials:
worst ratio 1.006580x, geomean 0.998824x, matching plans, passing correctness,
0.75% maximum drift and no child failures. The quiet monitor completes
normally, the reservation reports no restoration errors, and a separate
host check verifies all 31 live service threads restored to CPUs 0–15.
The four matched construction controls, selection check, pipelines, frozen
deferred source and reservation checks are retained under
`diagnostics/selection-fix/`. No diagnostic repeat replaces a primary result.

The next acceptance attempt is `full-deferred-reserved-all8`: the same frozen
deferred executable, all six full suites, eight rotating processes, normal
allocator and CPU 4. It uses the journaled physical-core reservation and
60-second quiet gate with continuous host thread capture. Every one of the
710 merged cells must pass 1.02, and every changed-plan raw trial must also
pass. Planning-repeat deferral is a harness correction with residual order
sensitivity; it does not relax that requirement or establish G8 acceptance.

While the frozen executable runs, a read-only Astra audit identifies gaps in
the acceptance script: suite counts alone do not prove cell identities or
the declared eight-process protocol, and the driver's first control does
not include its own range in `max_drift`. The final `--require-full` audit
is strengthened without changing the executable or timing: an independently
encoded frozen manifest checks all semantic specs and seeds; metadata must
match the declared protocol; every raw record must have valid timing,
description, correctness, affinity and rotating order; merged timing and
description must match the first lowest-p1 raw winner. Planning statistics
remain separately aggregated. Exact duplicate complete raw records fail.
The frozen schema has no explicit per-trial PID, so process uniqueness also
depends on retained driver and runtime provenance, rather than counts alone.

Clock ranges are reconstructed from both chronological endpoints of every
raw record, including all controls and the initial control, against the
initial merged control's maximum. Every raw excursion must remain within
3%; the existing 1.02 gate is unchanged. Tests exercise corrupted complete
evidence and remain queued until timing finishes. A selected runtime
environment snapshot confirms CPU 4 affinity and no allocator override or
`FASTFFT_ISA_CAP`, without retaining unrelated environment variables.

The reserved deferred attempt records a primary miss at f32 forward in-place
N=4096: headline best ratio 1.026009x. At 54 completed cells it is the sole
miss, with matching plans, passing correctness, no printed drift warnings
and a quiet host. The attempt continues to collect its complete failure set;
it cannot establish acceptance. The required fixed eight-process repeat
waits until the full attempt finishes, and cannot erase this primary miss.

Astra's raw review finds identical Stockham AVX512-YMM `8x8x8` plans,
scratch 9224 and 19 calls per timed batch in both N=4096 winning rows.
Estimate wins from trial 6 and Measure from trial 1. Their best/p1/median
are 2.553789/2.625474/2.675105 and 2.620211/2.649211/2.694053 microseconds,
respectively: ratios 1.026009/1.009041/1.007083. The inverse in-place neighbor
has similar p1/median losses but a passing best ratio. This separates a
larger low-tail contribution from a smaller context/order shift, without
waiving the primary miss or establishing a corrective cause.

Before collecting any new order-control data, the next experiment is fixed
at all four f32 N=4096 direction/placement cells, eight processes each,
after this full attempt and its prescribed fixed repeats. A separate
diagnostic executable will keep retained-runner construction alternating
E,M,E,M,E,M,E,M, while calibration/initial timing starts E,E,M,M,E,E,M,M
(E = Estimate, M = Measure). Each of the four construction/execution
combinations receives two processes, split across both halves of the run.
The diagnostic changes only an explicit execution-order field and active
index order after verification; it does not rebuild runners or alter
warmup, turn duration, rounds, batches, best/p1 merge, allocator or gates.
Both orders must be retained in raw specs. Four predetermined paired
best/p1/median group summaries and the merged result will be retained.

An effect following execution order at fixed construction supports
independent balancing as a harness remedy, requiring another unchanged
710-cell acceptance. An effect following construction at both execution
orders rejects that remedy and requires a separate Estimate/Estimate
construction-context control. Verification history remains part of
construction context; this control cannot establish an allocation cause by
itself. Existing records do not contain coefficient addresses and do not
justify another coefficient-alignment change or rebuilding the baseline.

At 93 completed cells a second reserved-run primary miss appears at f32
forward in-place N=16777216, ratio 1.023391x. The host remains quiet with
no printed drift warning, failed correctness check or slower raw promotion.
This large-transform case joins the prescribed repeats after completion;
its relation to the small-transform order hypothesis is still unestablished.

The large case has a distinct sampling regime. All four f32 N=16777216
cells use identical FourStep AVX512 split L=16, decomposition 4096x4096,
radices `8x8x8x8/8x8x8x8` and scratch 17170856. Each row times one call
per batch and records only 14 samples; the implemented p1 equals best.
Forward IP winning Estimate/Measure trials are 5/6: best=p1
50.003789/51.173412 ms, median 51.9807745/51.902461 ms. Median ratio
0.998493x does not corroborate a general Measure slowdown. The Estimate
winner's minimum is 3.80% below its median, but this establishes low-tail
sensitivity, not a cause. Paired order groups are near unity, unlike N=4096.
The strict 1.023391x headline miss remains binding.

Before any factorial data, include this large forward-IP case as a separate
stratum alongside the four N=4096 cells. Preserve all timing parameters and
record its already collected chronological samples and turn boundaries
only in untimed diagnostic output. Its group results must be reported
separately; a remedy inferred from the small case cannot be assumed to fix
this one. No minimum-sample rule or longer timing profile has been adopted.

Source review identifies an avoidable coordinator-interference path:
`quiet-run.py`'s outer taskset pins the arena parent to CPU 4, where
`spawn_cell` wakes every 20 ms to call `try_wait`. The stdout reader blocks
until the child emits its post-timing result. The quiet gate excludes this
benchmark process group, so quiet host logs do not exclude coordinator work.
The polling body is small and does not establish the observed loss's cause.

After the first order control, a separately declared matched placement
control will use the same diagnostic executable and timing protocol,
moving only the coordinator to CPU 0 while each `run-cell` explicitly
pins itself to CPU 4. Keep the service reservation, quiet gate, input,
allocator, construction/execution schedule and metrics identical. A
coupled baseline and factorial control must share that diagnostic binary
and metadata fields, so new executable layout is not a factor between them.

The percentile implementation rounds `(samples - 1) * 0.01`; 51 samples
is the minimum selecting beyond the first element. Eight samples per turn
would ensure 56 over seven turns, but would materially extend both large
FFT and pipeline timing and give best more chances to fall. This remains
an unadopted, separate profile experiment, rather than a corrective claim.

The diagnostic design uses a numeric `CellSpec.execution_rotation`, emitted
even at zero. Coupled mode uses zero; factorial mode uses
`(process % 2) XOR ((process / 2) % 2)` after construction rotation. Rotate
the existing active indices in place only after verification/empty handling
and before calibration, without allocating another label vector. Both arms
share the same executable, schema and capture settings. Unsupported
diagnostic scenarios must fail explicitly rather than silently ignoring the
requested order; pipeline timing has its own seam.

Large-case tracing will reuse the already collected chronological sample
vectors. Fixed stack storage records cumulative sample endpoints for two
rows and seven turns after each existing turn. After all execution and
secondary planning samples, move the vectors into optional untimed output.
Values are nanoseconds per whole-buffer call; these targeted cells have
batch one. Turn endpoints identify rounds, not wall-clock preemptions or
cache addresses. Diagnostic fields can affect layout, reinforcing the need
for same-executable controls. No new timed clocks or per-call allocations
are introduced by this design.

At the 250-cell reserved-run checkpoint, the two matching-plan primary
misses remain. Four changed-plan raw promotions now also fail: smooth f32
inverse OOP N=18 p1 ratio 1.130426, forward IP N=80 1.031495, inverse IP
N=96 1.024284 and inverse IP N=210 1.020772. All completed correctness
checks pass, quiet samples remain clean and no drift warning is printed.
These new selection failures take precedence over harness order remedies.

Astra's read-only N=18 review confirms trial 5 changes Small rectangular
6x3 from AVX2 to AVX512-YMM, both with zero scratch. Estimate best/p1/median
are 10.5940/10.6116/10.6356 ns; Measure is
11.9825/11.9956/12.2765 ns. Calls per batch are 1707/1602 and clock
endpoints are 5.0246446/5.0298351 GHz. The other seven trials retain
Estimate. Planning finishes in 34.8832 ms, far below its one-second budget.
No direction, batch-wrapper, deadline or denominator defect is identified.

The leading unconfirmed hypothesis is poor transfer between tiny-call
timing contexts. Measure resolves slices and placement outside its tight
dynamic-FFT loop; arena invokes FastRunner::run per call. Arena's warmup
also checks elapsed time each invocation, so the nominal 50 us target
produces approximately 18--20 us timed batches in this case, unlike the
selector's doubling calibration. These differences do not yet establish
why the kernel ranking reverses. After this attempt, retain all nine
selection comparisons and replay the same actual candidate plans through
both loop contexts on shared buffers, with diagnostics outside timed calls.
Do not adopt a blacklist, relax either threshold or infer a remedy from the
order factorial alone.

The declared small-rectangle diagnostic covers the four identified cells
with eight fresh rotating processes each, retaining every outcome. Each
affected cell currently has one promotion in eight raw trials, all E-first.
N=80 changes AVX512-YMM 8x10 to 16x5; N=96 changes 8x12 to 16x6.
The promoted shapes use the packed f32 specialization despite the YMM
wrapper. N=210 changes AVX512 14x15 to 15x14. These span different kernel
paths and cannot justify a shared ISA or size blacklist. N=210 trial 4 has
an additional identical-plan p1 ratio of 1.184953, not a changed-plan
promotion, confirming variability independent of selection.

Under the developer-only tuning feature, record numeric selector comparison
data outside timed calls in at most 126 fixed-capacity workload records
(seven contenders, eighteen workloads each). Each record contains candidate,
offset and placement indices, length, buffer addresses, call counts, seven
per-plan sample pairs, validity and completion/rejection reason. Preserve
early rejection and deadlines; do not force losing candidates through all
workloads. Publish only after the decision, without retaining rejected plans
or formatting output during exploration. Original and replay buffer addresses
are distinct evidence, never assumed equal.

Retain three actual plan roles: the arena Estimate, Measure's internal
Estimate baseline and Measure's chosen executable. Extract the external
runner Arcs after all construction and before verification can plan other
transforms; assert the chosen Arc matches the actual Measure runner.
Deduplicate object identity while retaining all role mappings and order.
The internal baseline must be retained before pick returns on promotion;
delaying its destruction can alter later Estimate allocation in M-first
trials. This is a bounded diagnostic perturbation, not an exact replay of
the old process. No-promotion baseline/chosen identity becomes an A/A check.

Time the original arena pair first, then replay the retained objects on one
shared arena buffer allocation. Compare arena Estimate/internal baseline,
internal baseline/chosen and arena Estimate/chosen through both the actual
arena loop and the selector slice-sampling body. Initially hold per-plan
calls and warm-call counts equal across loop contexts; do not change
calibration at the same time. Record runner/Arc data pointers outside timing.
These pointers do not locate coefficient storage. Confirm generated callsites
in post-run disassembly before attributing an effect to source-level loops.
All builds, replay timing and fixed repeats wait until this attempt finishes.

At 360 completed cells, the reserved run adds a fifth changed-plan raw loss:
smooth f32 forward IP N=75600 trial 7, E-first, best ratio 1.040640. It
changes Stockham AVX512-YMM L8 from `14x15x15x3` to `7x5x5x6x9`, both with
152232 scratch elements in every placement. Best/p1/median are
66.806/67.457/69.531 us versus 69.521/69.823/71.245 us, calls one each,
and clock endpoints 5.034166/5.026529 GHz. This disproves a tiny-call
overhead-only explanation. All four f32 direction/placement cells retain
eight correct trials; only this one promotes. Same-plan trial 4 places both
rows around 87 us instead of 67--70 us with ordinary endpoints. Add all
four N=75600 cells with eight fixed processes as a separate three-Arc
diagnostic stratum. Address capture must include Stockham pass_tw and vtw
allocations in addition to Small storage and caller buffers.

A third primary miss appears at smooth f32 inverse IP N=1000000:
1.041299x best, 1.030643x p1, 0.994429x median. All 32 f32 trials retain
the same Stockham AVX512-YMM L8 `10x5x10x5x5x10` plan; IP scratch is
1000008 and OOP scratch is zero. Both merged winners are trial 7 E-first,
excluding cross-process winner mixing as this miss's explanation. Estimate
best/p1/median are 2.644324/2.681655/2.889168 ms; Measure is
2.753531/2.763829/2.8730715 ms. Calls are one, sample counts 237/240,
and endpoints 5.0190914/5.0219831 GHz. Its p1 is the third sample, so the
p1 miss is distinct from the minimum. Measure planning exhausts the common
one-second budget and retains baseline throughout. A substantial order split
also appears in the raw same-plan medians. Add inverse-IP N=1000000 as a
separate large same-plan stratum to fixed order and three-Arc diagnostics,
retaining already collected chronological samples. The quiet host,
passing correctness and lack of warnings do not waive any primary miss.

At 400 completed cells, a sixth changed-plan raw loss breaks the previous
E-first-only pattern: f64 N=48 forward OOP trial 6 is M-first. Interleaved
AVX512-YMM changes to AVX512, both described as 12x4 with zero scratch.
Best/p1/median are 19.285281/19.573596/20.045524 ns versus
20.657591/20.764851/22.170792 ns; p1 ratio is 1.060860 and median ratio
1.106022. Calls are 1318/1212; endpoints are 5.0305632/5.0288834 GHz.
All 32 neighboring trials pass correctness; only this one promotes. A
separate same-plan E-first trial has median 20.370008 versus 33.116935 ns.
This adds a different precision and the separate Interleaved type, whose
tw storage needs its own address accessor. Add f64 N=48 forward OOP and
its three direction/placement neighbors, eight fixed fresh processes each,
to the declared three-Arc replay. Preserve all outcomes and the thresholds.

At 541 completed cells, a fourth same-plan primary miss remains from the
completed smooth suite: f64 inverse OOP N=165375 best 1.027387x. All 32
neighboring trials retain FourStep AVX512 L8 375x441, radices
`15x5x5/7x7x9`, scratch 172436. Estimate wins from trial 8 M-first:
454.701/465.351/484.351 us best/p1/median. Measure wins from trial 3 E-first:
467.154/472.164/486.521 us, giving p1 1.014641x and median 1.004480x.
Both use one call and have 1404/1409 samples. Trial 8 itself loses across
all three metrics (1.042390/1.040604/1.043532), so the context disparity
extends beyond the merged minimum. All M-first inverse-OOP trials lose
median by 2.03--4.35%; E-first trials are mixed. This is an unblocked,
single-group FourStep path with partial lane panels, distinct from the
N=16777216 blocked case. Add f64 N=165375 inverse OOP as a separate
fixed order/context diagnostic stratum and capture cross-twiddle/panel
tables and effective scratch regions. No physical cause is established.

The reserved attempt completes all 710 cells at 12:00 UTC. It retains 5680
non-control and 240 control trials. Elapsed time is 13115.527 seconds;
maximum drift is 1.420516%, without warnings or child failures. All 2615
running quiet-monitor samples pass. The service journal reports restoration
verified with no errors, and a separate host read confirms all 31 live
threads have their original 0--15 CPU masks. Strict full audit validates the
independent manifest, metadata, control sequence, four/four construction
rotation, every raw clock and lowest-p1 winners. All 24 audit tests pass.
Only the five primary performance misses and six slower raw promotions
reject acceptance. All six pipelines, rough and datacheck pass their merged
gates. The original N=524288 f32 forward IP/OOP cases pass at
0.997773801/0.995263616, with no changed plan in any of their raw trials.

The fifth primary miss is batch f64 forward OOP N=32, batch 32768:
best 1.030219x, p1 1.006832x, median 0.992096x. Both rows retain the same
public wrapped plan. Estimate winner trial 4 M-first has
19.668579/20.543610/23.150787 ns per transform; Measure winner trial 7
E-first has 20.262939/20.683960/22.967804 ns. Calls are one, sample counts
906/912. Each call processes 1048576 complex values (32768 transforms),
so best whole-buffer times are 644.500/663.976 us. The active OOP path is
Batch::groups streaming through AVX512 leaf_stream, without fallback calls;
the described YMM interleaved fallback is inactive here. Capture the
wrapper's leaf_twiddles, entry/copy function addresses, threshold and lanes,
and forward fallback relationships. Its stack temporary is unobserved.
Add this exact batch cell to fixed order/context replay, preserving whole-
buffer sample units and the eighteen selector workloads at lengths 32/2^20.

The complete failed attempt is archived under
diagnostics/selection-fix/full-deferred-reserved-all8 with a hash manifest,
full audit/choices, compressed raw rows and monitors, restored-affinity proof,
plots, 24-test audit source and frozen executable hash. Fixed repeats use
the same frozen executable, one eight-process run for each primary miss,
each with its own 60-second quiet gate and journaled reservation. Repeats
cannot erase primary misses; no retry-until-pass policy is permitted.
Optional developer-only tracing/replay is being implemented separately;
it does not change default selector policy or constitute acceptance.

All five fixed primary repeats complete with passing correctness, matching
plans, clean monitors and restored affinity. In audit order their merged
ratios are 1.014871, 0.998327, 0.977278, 1.018924 and 0.976571; maximum
clock drift is 1.0773%. These diagnostics do not erase the failed full run.
Their 62 retained files include both raw/merged rows, five independent quiet
logs/journals, audits, choices and an independent 31-thread restoration read.

Before any instrumented data is collected, the replay/order protocol is
fixed in target/ticket19/selection-fix/diagnostics/plan.json. The same new
diagnostic executable runs coupled and factorial sample-trace controls for
eight declared same-plan strata, then three-Arc replay for twenty cells,
each with eight processes and a fresh 60-second quiet gate per driver.
Diagnostic runs are explicitly unofficial. All full-profile parameters and
the acceptance statistics remain unchanged. A semicolon-separated union
filter selects the declared ordinary cells without adding a timing seam.

Replay runs all three pairs on the original arena allocations and actual
public Arcs, deduplicating identities while preserving roles. Pair order
rotates by process modulo three. Within each of seven rounds, loop-context
order alternates with starting rotation process modulo two; member order
alternates independently with starting rotation (process / 2) modulo two.
This balances context/member starts across all eight processes. Original
arena clock/wall measurements end before replay; separate replay endpoint
clocks and elapsed time are retained. Neither bracket claims to measure
every intra-cell frequency excursion. Emit all chronological whole-buffer
samples and round boundaries after timing; per-transform summaries divide
by batch. No invalid selector sample is presented as zero-valued evidence.

Replay holds each actual Arc's original arena call count across both loop
contexts; the internal baseline borrows Estimate's count. Both contexts warm
k.min(8) calls. Selector-slice warming has an additional untimed timer
bracket, and sample vectors can grow between timed batches, as in the arena.
Capture preallocation and retention of the internal baseline perturb plan
allocation history. Those limitations require matched controls and prevent
diagnostic timing from substituting for uninstrumented acceptance. Table
and wrapper records describe virtual storage and predicted batch execution;
stack temporaries and physical cache coloring remain unobserved. Disassembly
must confirm generated callsites before source-level loop differences can
be treated as a mechanism.

The first coupled-order diagnostic completes three of eight cells, then
aborts at a reported 43.45199% clock excursion. The sole outlier among 64
raw endpoints is inverse-IP N=4096 process six's opening value, 2.857509
versus ordinary 4.996836--5.053244; its closing value is 5.028492.
All 24 ordinary raw trials are correct and retain matching plans. The
quiet monitor remains clean and all service masks are restored. Driver
stability/coverage inspection rejects the incomplete attempt. Astra's
disassembly verifies four dependent ADDs and the intended iteration count;
the loop lies within one 32-byte block. Since the probe chooses the maximum
of three rates, all three calls were slow. This does not prove downclocking:
the probe measures effective ADD throughput against wall time, and five-
second quiet averages cannot exclude a brief scheduling disturbance.

Astra also finds that this diagnostic was mistakenly built with empty
RUSTFLAGS, omitting the documented function-alignment flag. It is retained
separately as diagnostic-missing-alignment-interrupted, including source
and executable hash; no partial result is reused as a valid matched control.
The corrected build must pass a metadata check for arena profile, exact
function-alignment flags and default target CPU before execution. The
fixed control protocol restarts from complete coupled/factorial runs on
one corrected executable, with independent quiet gates. Clock telemetry
records each unchanged probe's wall duration, thread CPU time, context
switches and CPU endpoints outside its ADD timing bracket in fixed-capacity
TLS storage. It adds no clocks to FFT timing loops and preserves the three-
probe maximum and drift thresholds. Diagnostic builds are always unofficial.

The corrected diagnostic executable has SHA256
`6e9db2bda50e7f9a52a0d606e622d779f942fc7958f9941e06b9bb60ec0396ce`.
Its environment metadata verifies the arena profile, exact
`-C llvm-args=-align-all-functions=6` flags and default target CPU. The complete
coupled control has eight cells and 64 ordinary trials, with 0.739% maximum
drift and clean quiet monitoring. Its batch cell retains the same plan but
loses 4.235% on the original merged best statistic. The complete factorial
control uses the same executable and another independent quiet gate; all
eight original cells pass, worst 1.017670x, with 0.869% maximum drift.
Both inspections pass evidence-integrity checks. All construction/execution
groups, including adverse subgroups, are retained. A passing factorial
diagnostic cannot replace acceptance or establish a production remedy.

Three-Arc replay is still running. A bounded read of its first sixteen
completed ordinary trials shows a repeatable forward-OOP N=4096 A/B gap
in both loop contexts, while B/C is the same Arc and remains within roughly
0.1%. Process five already has equal call counts of 20/20: B/A p1 is
1.038124x and median is 1.039247x. Unequal calibration counts therefore
cannot be the sole cause. Other allocation and execution context remains
coupled; virtual table offsets do not prove a cache mechanism or justify
another alignment change. A later completed N=96 inverse-IP trial captures
a changed-plan promotion losing 3.122% in the original arena. Its actual
three distinct Arcs, selector samples and replay data are retained for
comparison. These are diagnostic observations, not acceptance results.

The captured N=96 inverse-IP promotion is a genuine internal-baseline /
chosen-candidate ranking reversal. All nine selector workloads have full
valid masks and pass; the worst minimum/median ratio is 0.727794. Baseline
8x12 executes at roughly 49--51 ns, while candidate 16x6 executes at
31--36 ns during qualification, at 1024/2048 calls. Later on the shared
arena buffers, those same B/C Arcs have p1 ratios 1.020673 in the arena loop
and 1.026991 in the selector-slice loop. External A and internal B are
comparable in that replay. B's Arc/table pointers remain unchanged, but
caller-buffer locations, counts, exposure and stack context differ.
The replay endpoints decline by 2.28%, below the warning threshold; this
does not establish constant frequency, though it cannot alone explain
the baseline's roughly 30% selection-to-replay speedup. No specific
allocation, stack or warm-history mechanism is established yet.

The fixed eight-process N=96 location/count/post-arena-exposure control uses
frozen executable SHA256
`ff9d0f213dc9c3d0606726ae0eed93ccc255a3a247e4f1a8e82df13d89fbfdf0`.
All original selector allocations and the nominated actual candidate survive;
nomination remains independent of the real selection. Raw timed-batch
durations independently validate per-call normalization. The complete control
passes all integrity checks with 0.6845% maximum original clock drift, clean
monitoring and independently restored masks on all 31 live service threads.
One process promotes candidate 1 and loses 2.1907% in the original raw p1;
the merged ratio passes at 1.012297x. The failure remains retained.

That process qualifies baseline B at 51.171/56.327/51.112 ns medians at the
three selector offsets, versus candidate C at 36.769/35.903/36.059 ns.
Afterward, on those SAME original addresses, B runs at 35.321/35.213/35.135 ns
and C at 35.844/36.118/36.143 ns. Common-count controls at 718, 992, 1024 and
2048 keep B near 35.4 ns and C slower. Post-arena exposure starts with B
already fast and does not reproduce a qualification-sized transition.
Location and count alone are insufficient; this does not prove a warming
remedy or isolate stack/generated-code effects. All eight processes' context
conditions remain retained under diagnostics/selection-fix/context-controls.

The next fixed control pairs the original Buffers::sample route and a
non-inlined slice bridge within planning, with identical original buffers,
actual B/C Arcs, counts, three warm calls and seven samples per path. It
interleaves paths/members, then repeats after a declared 100 ms original-route
exposure. The completed original choice, scores and selection elapsed must
be frozen before this intervention; no later candidate search may consume
its history or budget. Caller/code/stack changes can still alter reproduction
when compiling this instrumentation, so absence of the old regime alone is
not a production fix. Diagnostics remain explicitly unofficial.


The fixed planning-path control completes one cell/eight processes in 99.912 s,
with 0.7414% maximum original drift, twenty clean running quiet samples and
all 31 live service masks independently restored. All eight retain Estimate;
the merged same-plan p1 ratio is 1.024243 and remains a failure. Its strict
planning/context/replay audit reports zero integrity errors; all 23 planning
fixture tests pass. Source, raw timings, command, monitor, restoration proof
and executable SHA256 `6410f5da42d2c7e9f8706434cb6766d99980789a1b04fb533c9e4aa28e0ddcc1`
are retained under diagnostics/selection-fix/planning-controls.

Process zero's baseline measures 35.34 ns in the paired original-route block,
50.33 ns throughout original-only exposure, and 35.38 ns in the following
paired block. The slow exposure persists across all four quarters. Longer
execution is therefore not an established remedy. Disassembly shows exposure
calling the black-boxed sampler pointer directly while the paired block calls
through planning_path_sample; the same Buffers::sample entry receives both.
Caller route and sample schedule remain coupled. Candidate timings also differ
between original and bridge routes in processes zero and one. No production
sampler replacement follows from this instrumented control alone.

The next fixed caller-route crossover interleaves direct black-box dispatch
and dispatch through an explicitly non-inlined helper to the SAME original
sampler entry. B/C objects, original offset-zero buffers, counts, three warm
calls, seven rounds and surrounding schedule are identical. Route/member
starts are independently balanced across eight processes. The original choice
and timing remain frozen before intervention. Generated callsites must verify
both routes before the executable is frozen; one eight-process run follows a
fresh quiet gate. No retry-until-promotion rule is used.


The direct/helper crossover completes in 99.933 s, with 0.6871% maximum
original drift and twenty clean running quiet samples. All 31 live service
masks are independently verified restored. Its 27-fixture strict auditor
reports zero integrity errors. The merged ratio passes at 1.001038, but
process six promotes the nominee and loses 2.7368% at p1; this failure is
retained. Executable SHA256 is
`1a913859ef19a13cda01f63f93611b42d25bd7225fc173d33cdf7592658a445f`;
120 evidence files are retained with verified hashes under
 diagnostics/selection-fix/caller-controls.

Process one isolates a caller-route workload ranking reversal. Before
exposure, direct best/median C/B ratios are 0.929201/0.931879; helper ratios
are 1.031900/1.032994. Afterward they are 0.936337/0.943691 versus
1.042029/1.039264. Both use the same actual sampler, objects, buffers, counts
and interleaved schedule. Disassembly confirms one shared warm/timed
indirect callsite; the helper adds 24 local stack bytes plus its return
address and returns after calling the original sampler. This supports
requiring agreement across caller contexts. It does not identify a hardware
cause or prove that both contexts cannot share a bias in qualification.

The candidate remedy makes caller route a general qualification dimension:
seven samples per plan per route, independent statistics, and the unchanged
3% improvement requirement in both minimum and median for every route and
workload. Existing placements, offsets, batch coverage, eight candidates and
one-second global deadline remain. A fixed uninstrumented 30-cell/eight-
process validation includes all fourteen previously changed-plan cells,
all six slower promotions, both original N=524288 cells, all five primary
misses and prescribed neighboring contexts. Small and large positive
promotion controls must pass first; the large control retains its one-second
budget. A complete new 710-cell acceptance remains required afterward.

The full Cartesian dual-caller proposal fails its large positive control in
the default-SIMD release test executable: ten of eleven Measure tests pass,
including the small positive control, but the N=524288 control retains its
forced-SSE2 baseline. The module finishes in 1.04 s. Its fresh sixty-second
quiet gate and running monitor are clean, and all 31 service masks are
independently verified restored. The 30-cell and complete runs are not
started. The failed candidate's 115 evidence files, including source,
commands, raw output, monitors, provenance and sampler disassembly, are
retained under diagnostics/selection-fix/caller-qualification-fullroutes.

Elapsed time alone does not prove budget exhaustion. A fixed-size,
explicitly armed cfg(test) ledger will record each returned workload's
existing counts, masks and completed statistics, build/search outcomes and
elapsed time, then print only after pick returns. This single default-SIMD
large-control diagnostic keeps the one-second budget and promotion assertion
unchanged, introduces no FFT-loop instrumentation, and requires its own
fresh sustained quiet gate. No reduced-cost guard is accepted before the
actual rejection or deadline is identified.

The single ledger diagnostic confirms sampling deadline exhaustion. Candidate
one passes both routes at workloads zero through seven; the eighth completed
workload returns at 981148665 ns. The final Immutable workload at complex
offsets [256,384,128] expires at 1000001775 ns with calls [1,1], partial masks
[3,2], no invented completed statistics and no ranking rejection. The
incomplete comparison correctly retains the forced-SSE2 baseline. Its own
sixty-second gate and running sample are quiet; all 31 surviving service
threads have their original masks independently verified. One temporary
thread exited. The ledger does not overflow. Ninety-nine retained files under
diagnostics/selection-fix/budget-diagnosis include the frozen default-SIMD
test executable's provenance, SHA256
`2268d55d1bf63803a66c985d45e883240f259ccfb4fd9214b4b06dc10d027610`,
source, ledger output, monitor and restoration proof.

The next experimental guard keeps the original route across the complete
existing offset/placement/length matrix, and adds helper-route agreement at
canonical offset zero for every placement and length. The secondary route
is interleaved with the original there; other offsets retain seven samples
per plan on the original route. N=524288 thus has twelve route comparisons,
rather than eighteen in the rejected Cartesian proposal or nine originally.
Seven samples, three warm calls, both minimum/median improvement rules,
eight candidates and the one-second global deadline remain unchanged.
Incomplete comparisons still retain the incumbent. This guard does not test
the full caller-route by offset Cartesian product; trace metadata and strict
auditors must state and require its actual coverage. The actual positive
controls, predeclared 30 cells and full 710 cells must establish feasibility
and acceptance. The budget estimate alone is not evidence that it works.

The canonical-offset guard passes both positive promotion controls under its
own clean sixty-second quiet gate. All thirteen default-SIMD Measure tests
pass. The large control completes all twelve required route comparisons and
qualifies candidate one at 769705637 ns, with worst score 0.6455203384.
Candidate two later expires; the actual completed winner is retained and
passes impulse correctness. The ledger has no overflow, inactive helpers
have no invented statistics, and all 33 surviving service threads are
independently verified restored. Seventeen scalar deterministic Measure tests,
five trace tests, both arena type checks and seventy updated auditor fixtures
also pass. The auditor test log is explicitly a transcript of the original
combined tool output, not a fresh repeated run. These controls establish budget
feasibility, not performance acceptance. The unchanged fixed 30-cell run must
still pass before another complete 710-cell attempt.

The fixed canonical-offset focus completes all 30 predeclared cells and 240
ordinary trials in 585.623 s, with passing correctness, no child failure and
1.1104% maximum drift. It fails two same-plan primary comparisons: f32
forward/inverse in-place N=4096 at 1.032517x/1.033923x. A changed-plan f64
inverse in-place N=210 promotion in process eight loses 2.1254% at p1.
Two isolated running samples exceed the background-activity limit (0.5013
and 1.0678 busy cores); the other 115 samples pass and no three consecutive
dirty samples trigger an abort. This is not a completely quiet run and is
not accepted. All 31 surviving service threads are independently verified
restored; three temporary threads exited. The 150-file archive preserves the
positive-control checkpoint, frozen source/executable provenance, exact
focus coverage, raw results, audit, monitors and restoration proof.

For both N=4096 directions, every Measure-first process loses in p1 and
median. Estimate becomes 3.3–4.4% faster on average when constructed after
Measure; Measure's mean changes much less. Equal call-count processes also
lose, so unequal calibration counts cannot be the sole explanation. This
distribution shift requires a controlled examination of construction history
and actual object placement. It does not establish a coefficient-alignment
cause. The candidate remains experimental and no new full run is launched.

The next fixed diagnostic exchanges only existing, equal-valued Stockham
Phase-B Vec ownership between the retained Estimate and Measure objects.
Earlier A/B gaps persist through the slice caller, which bypasses runner
boxes, while same-object B/C comparisons stay near unity. A separate
runner-box crossover would add little evidence. Table offsets correlate with
the earlier gap, but other addresses covary, so an actual storage exchange
is needed before another coefficient-layout remedy is justified.

The tuning-only safe helper requires unique Arcs (including no Weak owners),
matching concrete Stockham shape/direction/metadata, bitwise-equal pass and
Phase-B tables, and equal nonempty target length/capacity. It validates both
objects before swapping the existing Vecs, without allocation or copying.
Six deterministic tests pass, including both precisions' impulse correctness,
exact pointer restoration, all other regions unchanged and rejection cases.

The predeclared diagnostic covers all four f32 N=4096 direction/placement
cells, eight processes each. Construction order uses process bit zero;
ABBA/BAAB table assignment uses bit one and initial member order uses bit
two. Each phase has the existing 200 ms warmup, seven 100 ms turns per
member and fixed k=19 for every recorded batch. Sham assignments exchange
twice; changed assignments exchange once, followed by equal warmup. All
original FFT objects, runner boxes and caller buffers stay fixed. Metadata
and sample capacity are allocated before replay; capacity growth fails.
Snapshots start before the preflight exchanges, and every assignment plus
final restoration is checked against those original addresses.

Original arena timing and secondary planning precede replay. The tuning
feature changes generated library code even though selector tracing is off;
therefore reproduction of the production gap must be assessed, not assumed.
Replay has separate clock endpoints and remains unofficial. A consistent
reversal or reduction after exchanging tables identifies a storage-location
contribution; an absent or inconsistent effect is negative or inconclusive.
No physical-cache explanation or alignment fix follows automatically. The
single fixed run requires a fresh sustained quiet gate and continuous
monitor, and cannot replace the 710-cell acceptance requirement.

The storage crossover completes all four cells and 32 ordinary trials in
308.253 s. All 62 running monitor samples pass, maximum original clock
drift is 0.6654%, and the strict auditor finds no evidence-integrity errors.
All 31 surviving service affinities are independently verified restored.
Twenty auditor fixtures pass before launch. The 128-file archive retains
70.3 MB of evidence in 11.2 MB, with raw JSONL losslessly compressed;
decompress copies to rerun the archived auditor. The frozen executable SHA256
is `6f59c8a77cf5a50ff2657dc8333522b326f73146a466fdbe055777d354e233bd`.

In every Estimate-first out-of-place process, the exchange slows Estimate
and speeds Measure, and the repeated original assignment restores the
previous levels. Mean forward p1 changes from 2421.68 to 2471.59 ns for
Estimate and 2470.21 to 2431.18 ns for Measure; inverse changes from 2418.45
to 2462.28 ns and 2462.62 to 2425.51 ns. Median agrees. This is an actual
cost transfer caused by storage location, not merely a ratio relabeling.
The summed cost is slightly worse after exchange, so the exchange itself
is not a remedy. In Measure-first OOP processes, comparing both plans with
the same table address still leaves Measure about 3–4% faster; other plan
storage contributes too. The original production 3–4% IP gap is absent in
this diagnostic (worst original merged ratio 1.012510). Phase-B effects in
IP are smaller. These results do not establish a universal alignment rule,
a physical-cache mechanism, or a correction for FourStep N=210.

The absolute same-table-address comparison is retained as a 129th archive
file. It motivates one fixed ownership factorial: independently exchange
Phase-B and the remaining read-only graph (radices Vec plus the pass-table
descriptor Vec and all of its inner allocations), keeping the two FFT
objects in place. Two f32 OOP N=4096 direction cells each use eight processes.
The eight conditions are `[0,1,3,2,2,3,1,0] XOR ((process/2)%4)`; bit one
selects Phase-B, bit two the remaining graph. Every combination is measured
twice with opposite initial member order. Fixed k=19, seven 100 ms turns,
200 ms warmup, buffers and original objects remain. Every phase performs
the same full metadata/value/capacity validation, including a no-op for an
unchanged assignment. All selected owners are restored before return.

Eleven deterministic safety tests and 27 auditor fixtures pass. No execution
body, FFT object field or default-feature behavior changes. If the residual
gap follows the remaining storage and joint exchange reverses the whole
gap, a canonical coefficient-storage layout becomes a justified candidate
remedy. If it stays with the object after joint exchange, a table-allocation
fix is rejected. The diagnostic still cannot waive the failed primary runs.

The complete storage-graph comparison passes evidence integrity across both
directions and all 16 ordinary trials in 277.109 s. All 56 running monitor
samples pass; maximum original clock drift is 1.0864%. The independent
restore check verifies all 31 live service threads; one temporary thread
exited. Joint exchange reverses the p1 gap in every process: Estimate-first
ratios of about 1.007–1.015 become 0.985–0.994, while Measure-first ratios
of 0.961–0.976 become 1.021–1.036. The remaining-table exchange reverses
the Measure-first residual that Phase-B alone did not remove. Actual FFT
objects, runner boxes and caller buffers remain fixed throughout. Repeated
conditions, including variations within them, are retained without dropping
outcomes. This identifies coefficient/storage geometry as a causal source
of the observed same-plan OOP differences and justifies testing a canonical
layout. It is not acceptance or evidence about FourStep N=210. The executable
SHA256 is `74f58b3059b430ebd47cd250d643ef55a884664bb558a045acf26f665ce78bf9`;
full source, raw records, protocol, tests, audit and restoration are archived.


The production candidate following this causal result stores compact pass
descriptors and all Stockham coefficients in one 64-byte-aligned backing
allocation, with deterministic relative offsets. It preserves coefficient
generation order, execution arithmetic and logical-coefficient cache gating.
This is a candidate, not an established fix: base placement relative to
caller buffers can still vary. The completed mutation experiment is retired
from the current API/arena; its full frozen source and reproducible command
remain in the immutable storage-graph archive.

Before timing, validate storage bounds/alignment, bitwise coefficients and
clone independence, plus public FFT and scratch contracts. Then run both
positive promotion controls under a fresh quiet gate. The fixed production
focus has 34 cells and eight rotating processes: the previous canonical-offset
30-cell manifest plus both directions and both placements of f32 N=32768,
which exposed earlier coefficient-alignment regressions. Keep all primary
and raw changed-plan failures. Only a passing candidate proceeds to a separate
complete 710-cell/six-suite run; the 2% ceiling and existing Measure samples,
margin, caller coverage and one-second budget do not change.


Canonical storage validation completes with 15 scalar Stockham/storage tests,
72 optimized library correctness tests and workspace Clippy passing. Both
positive promotion controls pass under their own sustained-quiet gate (13
Measure tests); the large first candidate qualifies at 763.013 ms with score
0.681786 and remains selected after the next candidate reaches the unchanged
deadline. Its test executable SHA256 is
`22c45cee4fe9e3bc8c8218ecc02e9b7b0187221ac04131e3fdefdfc3f26bb8f8`.

The predeclared 34-cell/eight-process production focus then completes in
647.604 s, with 272 ordinary trials, 24 control trials, passing correctness,
no child failures and 1.0587% maximum drift. All 130 running quiet samples
pass; all 31 live service masks are independently verified restored. The
exact manifest, build and run protocol pass audit. Its executable SHA256 is
`9740ae4e14663f27ab0c72468b655a6f79fb6a9289a5d09837b464f27bf83b67`.

All N4096, N32768 and original N524288 cells pass, but the focus fails two
same-plan cells: f32 inverse IP N96 p1=1.025229 and N1000000 best=1.056925
(p1=1.039853, median=1.062100). The N96 merged medians agree within 0.014%;
one Estimate process has a faster lower tail. At N1000000, all four
Measure-first processes instead show a persistent faster Estimate instance;
Estimate-first pairs are close. Both use the same Stockham recipe and k=1.
The raw audit also retains a slower changed-plan promotion at f32 forward
IP N80, process three: 8x10 to 16x5 rectangular, p1=1.024644. The earlier
N210 case passes this run; no FourStep cause or fix is claimed.

The complete failed candidate is archived in 149 evidence/source files,
including both positive and negative outcomes. This does not authorize a
retry or waive either primary miss. Relative Stockham table layout alone is
insufficient. A next controlled comparison must distinguish absolute table
storage placement from object/caller/history effects before more production
changes. No new full 710-cell attempt has started.


The next fixed diagnostic contains only f32 inverse IP N96 and N1000000,
eight processes each. It retains the actual original Estimate/Measure
objects and caller buffers. Selector tracing stays off; original arena
sample traces are explicitly enabled to retain chronological lower-tail
positions. After the original clock endpoint, four replay phases exchange
only the complete existing coefficient owner: Small's 192-f32 Vec at N96,
and the canonical Stockham backing Vec at N1000000. No value copying,
allocation, plan rebuilding, arithmetic or default-feature change occurs.

Assignments are `[0,1,1,0] XOR ((process/2)%2)`; construction rotates at bit
zero and initial timed member at bit two. Each phase performs the same full
bitwise/configuration/capacity validation, including unchanged assignments.
Both members receive the existing 200 ms warmup and seven alternating
100 ms turns. Fixed common call counts are 972 at N96 and 1 at N1000000.
Snapshots and samples use preallocated capacities; all non-target regions
and caller buffers must stay fixed, and original ownership is restored.
Chronological samples, turn boundaries, clock endpoints and every failure
are retained. This is an unofficial causal intervention, not acceptance.

Nine SSE2+tuning ownership safety tests and 20 independent auditor fixtures
pass before the optimized build. The auditor checks exact compact backing
geometry and all borrowed views, raw statistics, call counts, assignment
and construction balance, original correctness, clocks and quiet evidence.
Frozen generated callsites and the timer establish the 100 ms turn duration;
raw batch durations alone exclude bookkeeping gaps and cannot prove that
wall-clock duration. A reversible same-object cost transfer would establish
an existing-storage contribution, without identifying virtual placement,
physical placement or allocation history. Failure to reproduce the original
diagnostic order effect limits any inference about the production failure.

The coefficient crossover completes all 16 ordinary trials and 16 bracket
controls in 182.380 s. Its independent audit passes, all 37 running quiet
samples pass, maximum original clock drift is 0.6930%, and all 31 live
service affinity masks are independently verified restored. The executable
SHA256 is `78b548e01487929de19c8676fd2a15764df36af1566e860faa0b0c90552be12c`.
All 131 evidence/source files, including chronological raw samples and
negative outcomes, are archived with verified compressed and original hashes.

At N1000000, every Measure-first process reproduces the original gap. Mean
p1 ratios across repeated original assignments are 1.032489, 1.060180,
1.055832 and 1.038505; exchanged assignments yield 0.966133, 0.946972,
0.950141 and 0.968260 respectively. Restoration returns the gap. The complete
existing backing therefore carries this cost with objects and caller buffers
fixed. Canonical relative layout alone is insufficient. Every Measure backing
has page offset 64, as do Estimate-first Estimate backings; the four faster
Measure-first Estimate backings have page offsets 1024 or 960 and a different
virtual-address regime. This suggests allocator/mapping history but does not
identify heap versus mmap, page backing, cache conflicts or their mechanism.

N96 does not reproduce its prior 2.5% original lower-tail miss. Exchanging
its coefficient Vec has no consistent meaningful effect. One process has
both replay members near 40.3 ns instead of about 35.1 ns throughout the
assignments; this unexplained context effect is retained. Neither N96 nor
the separate N80 slower promotion is waived or fixed by the N1000000 result.
The standard acceptance auditor's environment-invalid message here comes
from the explicit unofficial diagnostic flag; the actual environment check
passes and the diagnostic auditor verifies it. Ticket 19 remains open and
no new full attempt has started.

The next fixed observation repeats the same two-cell/eight-process owner
exchange with one addition: after all timing endpoints and restoration, while
both owners and caller buffers are alive, retain `/proc/self/smaps` and the
current THP policies. No allocation-policy or hugepage intervention is made.
The mapping reader runs before JSON sample serialization and outside every
timed phase. Its allocations can affect the observed heap VMA extent, so VMA
totals must not be attributed to an individual coefficient allocation. The
mapping auditor requires writable, contiguous coverage of every live backing
and nonempty caller buffer. This observation distinguishes actual VMA regimes
from pointer-shape guesses; it remains unofficial and cannot erase failures.

The mapping observation completes in 182.412 s with all 37 running quiet
samples passing, 0.7440% maximum drift and zero child failures. Both the
existing crossover auditor and mapping-span auditor pass. All 31 live service
masks are verified restored; one temporary thread exited. Its executable
SHA256 is `e0279fd0280555258861bf931a74b77bbce1feb2996bae56cc6284dfc494d0e8`;
all 131 evidence/source files are archived.

All Measure-first Estimate backings reside in `[heap]`; the other backings
reside in anonymous mappings at page offset 64. Every covering VMA reports
4 KiB KernelPageSize/MMUPageSize, zero AnonHugePages and THPeligible=0.
Three heap owners at page offset 960 reproduce and reversibly transfer
their advantage (original/exchanged mean-p1 ratios 1.080557/0.945955,
1.038154/0.966963 and 1.056876/0.947517). The fourth heap owner at page
offset 1088 has no meaningful advantage: 1.000340/1.001563. This negative
case weakens a heap-versus-anonymous-regime-only explanation; within-page
geometry remains a leading hypothesis. It does not yet establish a fix.

The mapping run's original N96 samples also reproduce a primary p1 miss:
1.022617 (best 1.017258, median 0.999608). This differs from the preceding
coefficient-only diagnostic, which did not reproduce that miss. N96 does
not show a clean ownership-cost reversal: for example, process four's
original assignment averages 34.2932/35.0041 ns (E/M), while exchange gives
35.0093/35.0664 ns. This may involve a storage/context interaction, but
does not isolate a coefficient-only cause. The result remains retained.

A separate small-kernel candidate gives the existing local intermediate
matrix explicit 64-byte alignment in generic rectangular::tiled and packed
rect_f32. Earlier same-object caller-route tests established a ranking
reversal. Frozen production assembly for N96 8x12 inverse and both N80
forward recipes shows no stack realignment and unaligned vector stack
accesses. The source change preserves arithmetic and interfaces. Generated
code must demonstrate an actual alignment change before claiming the
intended effect; all compiler spill slots are not necessarily aligned by
aligning the matrix. These edits occurred after the mapping executable was
frozen and launched and are not part of its results.

The next production candidate additionally uses a 4096-byte-aligned owning
Vec of initialized pages when the canonical Stockham byte span is at least
4096. Shorter backings retain the existing 64-byte blocks. The observed host
page size motivates the fixed large-backing boundary; offset zero is not
claimed optimal, and this requests no huge pages or global allocator change.
Compact relative offsets, logical coefficient counts and cache gating stay
unchanged. Large-plan trailing allocation padding stays below 4096 bytes.
The enum representation/accessor cost and clone independence require checks.

Before timing, verify storage boundaries and coefficient bits, existing
optimized correctness contracts, Clippy, and generated N80/N96 matrix
alignment. Both existing promotion controls then run under their own quiet
gate. The fixed focus remains the previous 34 cells/eight processes, keeping
every primary and raw changed-plan failure. Also compare absolute N1000000
times against the retained prior focus: a matching ratio does not by itself
establish an improvement. Only a passing candidate may start a separate
710-cell/six-suite run with the same frozen production executable.

The page-storage/stack candidate passes 21 scalar storage/Stockham checks,
75 optimized library correctness tests and both workspace and diagnostic
Clippy checks. Its default-SIMD test executable SHA256 is
`eea8683a2307df8f8044e89f609f89712924a49409f8ee5caba8d7b236fe6f9d`;
the frozen production arena SHA256 is
`a326a415ac4aee0991b84b5041a9e81e150cecf48f183bd962a2864106568c06`.
All 85 frozen source files match. Timing remains pending generated-code
review and a fresh quiet gate.

Generated-code review rejects the candidate before any timed stage. Packed
N80 16x5 now realigns RSP to 64 bytes and uses aligned matrix vector accesses.
Generic N80 8x10 and N96 8x12 instead retain their previous stack instruction
sequences: LLVM eliminates the unobserved source-level matrix alignment.
The failed verification, exact DWARF identities, old/new disassemblies,
source and passing correctness checks are archived in 139 files. Neither
positive controls, focus nor full acceptance ran with this executable.

The correction will make the generic aligned owner's address observable
through a compiler barrier before matrix use, while continuing through the
original pointer rather than an opaque returned pointer. Packed rect_f32
already preserves alignment and needs no barrier. Generated code must again
verify the intended property; the barrier's execution and optimization costs
remain subject to the unchanged performance gates.

The revised observable-matrix candidate passes 75 optimized correctness
tests and both Clippy configurations; the 21 storage checks carry forward
with an identical storage-source hash. Its test executable SHA256 is
`83791fb539faf41e924fa57792325ede6f4bd6bf52b8ef049be10909dcaf069f` and
production arena SHA256 is
`a6f30559801af1f4f92d194453e6d5fc104eaeec27e8271596ee314d0e587faf`.

All three exact generated kernels now pass alignment verification. Generic
N96 8x12 and N80 8x10 realign RSP to 64 bytes and place their matrices at
aligned offsets 0x140 and 0x80. Their explicit frames grow from 424 to 2432
bytes and 264 to 2240 bytes, with additional intermediate memory traffic.
Observed YMM slots are 32-byte aligned and avoid cache-line crossings;
individual slots are not all 64-byte aligned. Packed 16x5 retains its prior
verified alignment. This is generated-code evidence, not a performance win.

Both promotion controls and all 13 Measure tests pass after a fresh sustained
quiet gate. The large candidate qualifies at 759.106 ms with score 0.775164
and remains selected after a later candidate reaches the unchanged deadline.
The running monitor passes and all 31 live service masks are independently
verified restored. The fixed 34-cell/eight-process focus enters its own fresh
quiet gate; the full 710-cell attempt has not started.

The observable-matrix focus completed in 647.637 seconds: all 34 cells, 272
ordinary and 24 control trials, correctness and all 130 running quiet samples
pass; maximum drift is 1.4367%. All 31 live service masks were independently
verified restored. The strict audit finds no protocol errors or slower raw
changed-plan promotions, but two same-plan primary failures remain: f32
inverse OOP N75600 at 1.02353494x and f64 inverse OOP N165375 at 1.02539407x.
Original N524288 cases, N4096, N32768 and N1000000 pass. Absolute N1000000
Measure best improves 1.40%, while Estimate best worsens 2.32%; this is not a
claim that both improve. Material small Estimate p1 regressions of 10.10%
(N80 forward IP), 16.88% (N96 inverse IP) and 16.62% (N96 inverse OOP) reject
the matrix barrier as a production remedy. All evidence is archived in 163
files (3,871,559 bytes). No full acceptance run has started.

The next source candidate replaces only the generic whole-matrix address
barrier with a small initialized 64-byte-aligned address-observable anchor.
Packed alignment and page-backed Stockham storage remain. Optimized layout,
correctness and absolute performance are still unverified for this anchor.

A separate fixed causal diagnostic will replay the two large inverse OOP
failures: f32 N75600 and f64 N165375, eight rotating processes each. Each
retains the actual original Estimate/Measure objects, runner boxes and
shared caller buffers. Four assignment phases [0,1,1,0] are XORed with
process bit 1; construction alternates at bit 0 and first timed member at
bit 2, then phase and round. Both cells use one public call per sample,
seven 100 ms turns, 200 ms warmup per member/phase, preallocated 32768-sample
vectors and 64-region snapshots. The original selector is untraced; original
chronological samples and clock endpoints precede replay. Validation scans
are identical for sham and exchange. Stockham exchanges its complete backing;
FourStep exchanges both radix vectors, both outer table vectors including
inner owners, cross and fine tables. Every shape, capacity and initialized
coefficient bit is checked before mutation. Final restoration is mandatory.
Post-timing smaps and source-derived effective workspace branches/bases are
recorded; advertised Stockham scratch is not assumed active for aligned I/O.
The experiment tests storage location, order and fixed object/workspace
explanations; it cannot waive acceptance failures. A fresh 60-second quiet
gate, continuous monitor and independent affinity restoration are required.

The fixed large-storage diagnostic completed in 166.810 seconds. Executable
SHA256 is 99c32d116272e48941a837af95054b7294a06b4c4ff1c2f2bf1ac220fa5cfd69.
It passes the independent 16-trial/four-phase integrity audit, original
correctness, post-timing mapping coverage, all 34 running quiet samples and
all 31 independently checked live affinity restorations; maximum drift is
0.6617%. Both original merged diagnostic rows pass, but cannot waive the
failed production focus. N75600's prior 2.35% loss does not reproduce; its
assignment-averaged p1 ratios stay within about 0.7% of parity.

For FourStep N165375, every one of the eight processes reverses its relative
mean p1 and median ranking when the complete existing table graph exchanges
owners, and returns with ownership. In processes 0/1/2/4/5/6, Measure owns
the faster storage originally; in 3/7 Estimate does. Original-assignment
mean p1 ratios range 0.9710–1.0127; swapped ratios range 0.9858–1.0274.
This supports a storage-location contribution with fixed objects and caller
buffers. Cross tables, panels, radices and outer descriptors were exchanged
together, so attribution to an individual table still needs justification.
No physical cache-color or THP cause is established.

Astra's retained-assembly review of this diagnostic executable confirms that
the small stack anchor restores exactly the canonical generic vector
instruction sequences after normalizing relocation, move alignment and
fixed stack-slot shifts. Generic N96/N80 have 52/30 vector stack accesses
again; all reviewed local vector accesses avoid cache-line crossings. The
anchor adds eight non-vector instructions per transform, with explicit
frames 704/576 bytes versus canonical 424/264 (which also used the red zone).
Packed N80 remains unchanged from the prior aligned candidate. These are
three single-transform diagnostic kernels, not final default-production or
batch validation; absolute performance remains unverified.

The next production candidate is fourstep-storage-anchor. It gives FourStep
one checked backing containing column/row pass descriptors, panel coefficient
sections, cross twiddles and fine twiddles. All coefficient starts are aligned
64 bytes; backing spans of at least 4096 bytes use the same ordinary page-aligned
Vec owner already used by Stockham. Values are populated directly; no full
temporary coefficient vectors are copied. Panel views borrow their owner and
carry offsets/base pointers, with views formed outside outer execution loops.
Scratch choreography, coefficient formulas and grouping/streaming policy stay
unchanged. A shared private owner extraction preserves Stockham geometry.

The constructor-only default-feature probe confirms FourStepPlan240→160 bytes
and FftImpl272→192 bytes; StockhamPlan remains112 bytes. This affects allocation
behavior beyond FourStep and is a validation risk, not itself a claimed speedup.
At f64 N165375, the cross table starts13312 bytes into a660-page backing
(2,703,360 bytes); scratch remains172436 complex values. The layout is derived
from descriptor/table lengths and fixed alignment, not a tuned case-specific
offset. The expected effect is reduced allocator-dependent table geometry;
physical-page placement remains uncontrolled.

Before timing, a fixed51-cell focus was declared: the previous34 plus17
FourStep neighbors covering both precisions, all N165375 directions/placements,
f32 N262144 and f64 N524288 blocked paths, N4725 in both precisions and f64
N210 forward neighbors. These are all members of the unchanged710-cell
acceptance manifest. It must pass every primary and raw changed-plan2% gate,
with independent source/code/correctness checks, quiet promotion controls,
continuous monitoring and verified restoration. Absolute Small and large-cell
timings must be reviewed; merely slowing Estimate to improve a ratio is not
a remedy. Only then may the same frozen default production executable enter
the separate710-cell/six-suite/eight-process acceptance attempt.


The fixed fourstep-storage-anchor focus passes: 51 cells, 408 ordinary trials,
32 raw control trials, zero correctness/audit/primary/promotion failures,
967.3909 seconds, maximum drift 1.7098%, and 193 clean running monitor samples.
The independent post-run check verifies all 31 surviving reserved threads
restored; one recorded descendant exited. All 13 Measure tests, including
both positive controls, passed in their own quiet-gated run. Before timing,
78 optimized correctness tests, both describe_plan integration tests and
Clippy passed. Astra's scoped assembly review confirms all six inspected Small
kernels match the diagnostic anchor code; the N96 batch spill caveat remains.

The absolute review holds full710 despite the passing focus. Across eight
processes, f64 inverse N210 Estimate mean p1 rises 7.49% IP and 3.19% OOP
against canonical-storage, while Measure mostly uses a different Small
kernel. Both members of f32 N4096 OOP rise about 3.6–4.1% in mean p1; their
IP neighbors remain approximately flat. The N4096 shift already appears in
page-storage-observable-stack, whereas the N210 shift is new. These separated
runs do not prove causation. The N96 IP official p1 +2.84% mostly reflects an
exceptionally fast prior process; typical process p1 changes only +0.21%,
and the all-process mean of sample medians is unchanged. No process is dropped
and no alternate summary replaces the agreed acceptance statistic. All source,
raw trials and review data are retained in the 222-file candidate archive.

A follow-up diagnostic will move coefficient slabs in place while preserving
allocation, descriptor addresses, actual plan/runner objects, I/O and scratch.
Fixed displacements of 0, 64 and 1024 bytes fit existing initialized tail space
for N210 and N4096, so no allocation growth or address hunting is required.
The ranked hypotheses are coefficient address/cache interactions (predict a
reversible change with displacement), object/caller geometry (predict no
consistent change from coefficients alone), and compiled execution overhead
(also predicts no displacement response and requires a later code control).
A negative shift result cannot distinguish the latter two. No production
remedy, selector waiver or new hard acceptance threshold follows from the
absolute review alone. Every timed diagnostic requires a new sustained quiet
gate and continuous monitoring.

The first coefficient-position replay completes all 40 process trials and
passes coefficient/output/geometry restoration, but one of 105 running load
samples is dirty. Its 525.847-second capture is retained as exploratory only.
The apparent 1 KiB whole-slab benefit for N4096 OOP accompanies an IP loss,
and N210 does not recover. No production displacement follows from it.

The next fixed component diagnostic keeps the same five cells/eight processes
and six-phase order. Conditions are canonical, PhaseB-only +1024 bytes, and
all coefficients +1024 bytes, balanced as [0,1,2,2,1,0] or [0,2,1,1,2,0].
N210 is an unshifted code control. Its generic FourStep completion loop uses
indices 1..pass_count in place of enumerate().skip(1); generated code confirms
the empty remaining-pass path no longer computes pointer distance divided by
24. Stack frames also change, so the instruction observation alone is not a
performance result. Plans, allocations, descriptors, buffers and sample policy
remain fixed within each process, with exact output/coefficient restoration.

The component capture passes all 40 trial audits, 16 bracketing controls,
all 105 running quiet samples and independent restoration of 35 live threads.
Elapsed time is 525.503 seconds; maximum drift is 0.8323%. In this executable,
neither displacement is a useful remedy: PhaseB-only is usually about 1%
slower, while whole-slab movement raises mean process p1 about 2.3–2.7% OOP
and 5.4–5.5% IP. N4096 inverse OOP process1 is substantially slower in both
members at every condition; it remains included. Its unshifted endpoints,
like the other N4096 endpoints, are stable to within 0.35%.

N210 Estimate original mean process p1 improves versus the preceding clean
production candidate, especially IP. This is not a matched-build causal
comparison: diagnostic features, compiled placement and caller addresses
differ, and OOP retains substantial process variation. Measure now often
selects FourStep; one IP process still selects a slower Small recipe. These
risks require the unchanged primary and raw-promotion production audits.

The next candidate, fourstep-indexed-completion, changes only the generic
completion loop in production relative to fourstep-storage-anchor. It retains
the original coefficient positions. The unchanged 51-cell focus, both positive
controls, default-feature correctness and generated-code checks precede an
all-process absolute review. Only a passing result may launch the separate
710-cell/six-suite/eight-process gate on the same frozen executable.

The indexed candidate passes 78 optimized default-feature correctness tests,
both describe_plan integration tests, workspace/diagnostic Clippy and all
13 Measure tests in a clean quiet-gated run. All 35 live reserved affinities
are independently restored. Its production arena SHA256 is
`a2bbb31ba6912363132f0cabfcc1798f369ccc217d2a9f5d548214314541596f`.
Astra verifies all six Small kernels remain instruction-identical to the
prior production build after relocation normalization. The three FourStep
variants match the indexed diagnostic and remove all 14 old iterator
patterns per variant; their frame growth remains a timing risk.

The fixed focus is interrupted at 30/51 completed cells by its existing
three-consecutive-busy stop rule. Eight of 119 running monitor samples are
dirty; peak background activity is 4.98 cores and the arena reports a 5.1%
clock warning. Every completed merged ratio passes and the retained 242
ordinary raw trials expose no slower changed-plan promotion. Sixteen initial
controls are present; final controls, N210/N1M coverage and meta.json are
absent. This is invalid and incomplete evidence, not a passing focus.
All 35 surviving reserved threads are independently verified restored; one
recorded thread exited. Raw rows from the unfinished cell remain retained.
Prelaunch and arena environment checks passed; the auditor's missing official
status follows from absent final meta.json after interruption.

No source remedy or full acceptance launch follows from this partial result.
Astra is examining the Stockham kernel and outer caller contexts across
default and diagnostic executables before the next fixed quiet validation.

The subsequent complete indexed capture uses the identical frozen default
executable after 300 seconds of sustained quiet. The independent dwell proof
records 60 consecutive clean samples over 301.379 seconds. All 51 cells,
408 ordinary trials and 32 control trials complete in 967.881 seconds with
correctness passing and drift 2.0935%. Two of 193 running samples exceed the
background activity limit, so this is invalid for quiet acceptance even though
the monitor does not reach its three-consecutive-busy abort rule.

The strict audit also fails f64 forward OOP N165375 at best ratio 1.021137,
and retains slower raw N210 inverse IP promotions: f32 trial4 at p1 ratio
1.025254 and f64 trial5 at 1.070003. The large cell has the same FourStep
recipe in every trial; all eight within-process best ratios are below 1.02,
but the official lowest-p1 process merge selects different trials for each
member. This explains the reported statistic without replacing it or waiving
the failure. Both original f32 N524288 cases pass. All 35 surviving reserved
affinities are independently verified restored; one recorded thread exited.
All 192 evidence files, including failed ratios, all raw records, quiet logs,
absolute comparisons and Astra's follow-up review, are retained.

Astra finds a specific gap in the previous alignment checks: fused f32 N210
14x15/15x14 bypasses the tiled Small anchor. Its generated kernels have
280/272 direct 64-byte vector stack sites without canonical stack alignment.
F64x8 FourStep also lacks canonical alignment and has 449 sites with mixed
offset residues. These counts describe static exposure, not measured costs
or a demonstrated cause of the timing failures. The next bounded candidate
adds the tiny initialized address-observable anchor to fused Small and generic
FourStep execution, retaining original pointers and register-eligible arrays.
It changes no selector margin, budget, sampling, coefficients or acceptance
rule. Generated-code review must verify actual spill slots and derived bases;
AND64 alone cannot pass the gate. Fresh correctness and quiet positive controls
precede the unchanged 51-cell focus. Full710 remains a separate required gate.

The unconditional anchor candidate passes 78 optimized correctness tests,
both descriptions and Clippy, but Astra rejects its generated-code scope
before any timing. Fused N210 preserves all vector instructions and traffic,
with 280/272 aligned stack sites and 312-byte frame growth. Narrow FourStep
paths add work without a line-split mechanism benefit, while previously
frameless N6 rectangles acquire 192-byte frames. All 677 static evidence files
are retained; this build supplies no benchmark acceptance.

The exhaustive compiled inventory classifies all 1,228 rectangles and all
368 fused specializations. It finds 128 fused exposure cases in two families:
F32x16 and AVX2 F32x8. All 36 cases fitting one complex vector panel are
spill-free. Astra supports a bounded hardware-family guard: anchor only when
the nominal two-row capacity reaches the ISA's SIMD register count and the
transform exceeds one panel. The ISA provides 16 registers for SSE2/AVX2
entries and 32 for AVX512 entries including VL. This selects all 128 observed
exposure cases and excludes 180 cases with no observed spills; it also selects
60 previously spill-free cases whose added costs require explicit review.
Nominal capacity is not a proof of actual liveness or a future compiler
guarantee. FourStep's refined anchor applies only above 16 vector bytes;
the remaining AVX2 frame cost is disclosed even where existing 32-byte
alignment already prevents splitting.

The refined vector-stack-scope candidate keeps every selector and benchmark
rule fixed. Its code gates must prove local and derived spill alignment,
preserve the six tiled controls and all deliberately exempted fused streams,
and review costs on unaffected default Estimate recipes. Fresh correctness,
quiet positive controls and the unchanged fixed focus precede full710.

The refined vector-stack-scope candidate passes all pre-timing gates: 78
optimized correctness tests, both description tests, Clippy, formatting and
scalar-only compilation. Astra's bounded CFG/alias proof covers 194 selected
functions and 19,809 local vector-memory sites, with nine checker controls.
All identified accesses in that scope align to their vector width and fit a
cache line. All 180 exempted fused streams, 36 one-panel streams and six
previous tiled controls retain normalized instruction identity. The review
retains the added scalar/frame work and wider FourStep allocation changes;
it does not claim universal machine-code equivalence or future alignment.

Fresh quiet positive controls and the unchanged fixed 51-cell/eight-process
focus pass. All 408 ordinary and 32 control trials are retained; all 193
running samples are quiet, maximum clock drift is 1.0104%, and independent
host verification confirms all 37 surviving affinities restored (one thread
exited). No primary cell or raw changed-plan promotion exceeds 2%. Both
original f32 N524288 ratios pass, at 0.998323/0.998458 for IP/OOP.

Astra's all-eight absolute review supports the full710 capture. N210 Estimate
mean p1 improves versus the preceding clean anchor in every captured cell;
N18/N160 costs remain small and N80/N96 controls are flat. The review retains
the older N4096 shared OOP gap, mixed N1M results (merged Estimate best +2.60%
and Measure best -3.19% versus canonical), and common slow N75600 processes.
No trial is excluded or paired by process index across builds. Complete focus,
source, code proofs and absolute evidence are archived before full710. The
same frozen default executable now proceeds to its own sustained quiet gate,
CPU/SMT reservation and continuous monitor under the unchanged full protocol.
Full710 remains required for acceptance; ticket 19 stays open.

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

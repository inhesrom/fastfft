# Ticket 18 tuning method

The base is ticket 17, `0801f9b`; work is on
`ticket-18-tune-cost-tables`. The machine is a Ryzen 7 7840HS
(AuthenticAMD, family 25, model 116). All timing processes use core 2,
after compilation and correctness tests finish.

This tuning series uses the arena profile with empty `RUSTFLAGS` and the
default target CPU. The preserved ticket 17 `before` arena executable used
`-C llvm-args=-align-all-functions=6`; it is historical context, not a
controlled before/after execution comparison with these builds. Candidate
comparisons occur within each tuning executable. Full release-gate reporting
and the documented aligned small-N gate protocol remain separate checks.

On 2026-10-03 the maintainer accepted the sustained idle baseline: about
97% total CPU idle, roughly 1% activity on core 2, and a passing
`bench-env.sh check --core 2`. A persistent `herdr` process accounts for
most of the remaining service activity. Arena drift flags still apply;
passing the environment check does not clear a flagged run.

## Calibration

`cargo xtask tune` builds an arena-profile example with the developer-only
`tuning` feature. It calls production Stockham pass entries and constructs
whole-transform candidates through the same builders as Estimate/Measure.
The candidate catalog includes old dispatch choices, rectangular and packed
leaves, fixed Stockham schedules, FourStep, both AVX-512 widths, AVX2, and
alternate radix orders. It is a bounded catalog, not an exhaustive search of
every possible FFT decomposition.

`passes.jsonl.gz` contains 308 production-pass costs. The three
`calibrated-*.jsonl.gz` files contain 6,226 candidate configurations each,
with all three placements, both precisions and 61 lengths (powers of two
through 2^20 and the complete smooth suite). Each candidate is checked
against RustFFT before its forward-transform timing. The separate release
accuracy suite uses the double-double reference and both directions.

These training runs used an intermediate build. The source snapshot and
executable hashes describe the subsequent validation build; they must not
be used to claim exact source provenance for the training executable.
`candidates-initial.jsonl.gz` retains the earlier exploratory run, and
`planning-direct.jsonl.gz` retains the intermediate planning diagnostic.

The maintainer selected **in-place** as the 3% objective on 2026-10-03,
matching Measure. All placements are still retained for regression review.
For each candidate and placement, the process with the smallest p1 supplies
both p1 and median. A recipe minimizes its worst in-place slowdown against
the best measured candidate on each statistic. The initial selection produces 610
recipes (61 lengths × two precisions × five caps), not 610 independently
validated wins. The maximum default training slowdown is 1.025725×.

The tables apply only to the calibrated CPU model and respect runtime caps
and compiled features. Untabulated sizes retain existing dispatch choices
where applicable; other Stockham choices use dynamic programming over
measured pass costs. On other CPU models that search uses portable
arithmetic/memory costs. This initial calibration stops at 2^20; the upper
power-of-two extension below brings the final table to 650 recipes.

The merged Stockham measurements also supply 180 per-width footprint ratios.
For transforms occupying at least L2/4, the model interpolates the ratio of
whole-transform cost to the isolated-pass sum between power-of-two sizes.
Only extra cost is transferred (the multiplier is at least one). Applying
power-of-two discounts to unmeasured odd-radix schedules caused a rejected
N=17 regression; `rough-cache-scaled` retains that experiment. The narrower
correction addresses underestimated memory costs without transferring those
specialization discounts.

## Reproduction

```sh
cargo build --profile arena -p fastfft --example tune --features tuning
taskset -c 2 target/arena/examples/tune --passes-only --ms 5 --raw target/passes.jsonl
for trial in 1 2 3; do
  taskset -c 2 target/arena/examples/tune --plans-only --ms 5 --raw "target/plans-$trial.jsonl"
done
python3 scripts/analyze-tuning.py target/passes.jsonl target/plans-1.jsonl target/plans-2.jsonl target/plans-3.jsonl \
  --out crates/fastfft/src/plan/tables/zen4.rs --report target/training-summary.json
```

Rebuild after generating the table and repeat into separate audit files.
Analyze those files with `--check` to audit the frozen Estimate choices.
Never count a selected training winner as independent validation.

The tuner times individual candidate engines before batch wrapping. The
arena checks the real planner and public execution path, with `--procs 3`.
Its historical `plan_ns` includes adapter initialization, description and
scratch preparation. `--planning-only --check-g8` times fresh planners and
plan construction only, with destruction outside the measured interval.
It uses no global plan cache. Sampling the suite lengths cannot establish
G8's requirement for every integer length through 2^20.

## Planning changes

Estimate directly looks up measured recipes. Bluestein prices its four
convolution-length alternatives from execution-cost lookups where possible,
preserves the M ≥ 2N−2 boundary and reuses the planner's inner-plan cache.
The fallback radix search stores a next-radix decision per divisor and
reconstructs the schedule once. Plan descriptions are formatted only when
requested. The pointwise-product price remains an analytical estimate;
chirp and kernel preparation still occur for each fresh Bluestein plan.
The legacy radix chooser remains the FourStep panel policy and a tuning
candidate seed; the main Stockham Estimate search uses measured pass costs.

## Coefficient preparation and scope

The root-table revision amortizes accurate coefficient preparation within one
plan: small powers share immutable constants, medium lengths reuse a
denominator, and large lengths factor root indices into two short high/low
seed tables. It does not cache whole plans globally. FMA dispatch lives in
`isa/roots/`; portable direct evaluation remains available. Exact cardinal
roots are preserved. Both direct and factored paths are checked against the
double-double reference; FFT accuracy checks remain independent.

On 2026-10-03 the maintainer chose separate engine follow-ups for the residual
G8 failures. Tickets 37–39 retain the unchanged ≤2× every-length requirement.
This tuning branch records planning improvements and outstanding failures;
it does not claim G8 passed.

## Upper powers and focused repeats

`large-calibration-1.jsonl.gz` covers all candidates for 2^21 through 2^24,
both precisions and all three placements, using the preserved
`roots-refined-tune` executable (`roots-refined-*` source/hash snapshot). It
uses `--min-batches 5` because individual large scalar transforms greatly
exceed the nominal 5 ms budget. All eight default Estimate choices are the
measured minimax winners in this first process.

The `shortlist-*` snapshot adds a focused-repeat option and moves the
hardware-specific roots implementation under `isa/`; its production recipes
are still the same 610 entries. `large-contenders.jsonl` is generated from
the full sweep with the analyzer's 15% margin on both in-place statistics,
for all five caps, retaining each Estimate as well. The repeats use the
normal 20-batch minimum. The original full sweep remains part of calibration;
a shortlist alone is never treated as a full-catalog audit. Final validation
uses its own frozen-build measurements.

`rebuild-tables.py --out <path>` reproduces the initial 610 recipes and 180
footprint ratios from the three retained training files, the pass samples,
and `recipe-refinements.json`. Its optional `--large <raw-files...>` adds
the 40 large-size recipes and corresponding footprint ratios, and rejects
incomplete coverage. It writes only the requested output path.

## Final validation protocol

The `validation-*` snapshots freeze the final 650 recipes and 220 footprint
ratios, with all correctness checks completed before timing. The independent
full-catalog scans cover 130 default cases: 24 powers of two and 41 smooth
lengths, each in both precisions. The smaller scan uses at least 20 batches;
the upper-power scan uses three batches to screen expensive candidates.
Two independent upper-power repeats use at least 20 batches and retain
contenders within 15% on both in-place statistics for every cap, plus each
actual Estimate. The full-catalog scan remains part of the merged audit.

The six smaller first-process misses receive two full-catalog repeats at
10 ms per placement, with the normal 20-batch minimum. Every process starts
after a passing idle check. Commands, environment checks, raw timings and
per-candidate accuracy results are retained. The analyzer's `--check` verifies
the observed default choices; the report separately checks that all 130
expected precision/length pairs and complete catalogs are present.

### Million-point percentile refinement

The three final f32 N=1,000,000 screens retain a 6.50% Estimate miss, but no
candidate meets both 3% limits: the best minimax candidate is still 3.74%
over the independent statistic minima. The large transforms use only 20
batches, so their p1 is the minimum. This motivates longer sampling before
another recipe change.

Before measuring, freeze all 23 candidates within 15% on both in-place
statistics of the three-process screen. The tuner also retains every capped
Estimate. Run three fresh processes of the unchanged `validation-tune`, with
`--ms 1000 --min-batches 200`, all three placements and verification. The
longer samples supersede all screening timings for the selected candidates;
the original samples stay archived. Other candidates retain their full-scan
measurements. This is a predeclared percentile-resolution change, not a
selection of favorable individual readings. The acceptance limit remains
3% on both in-place statistics.

The analyzer's `--refine` option implements this group replacement and
records the refinement files in its report. `refinement-analysis-*` captures
the analyzer change; the production Rust sources and both validation
executables are unchanged. The regression fixture checks replacement even
when refined samples are slower, paired-statistic merging, unchanged cases,
and rejection of shortlist-only catalog claims.

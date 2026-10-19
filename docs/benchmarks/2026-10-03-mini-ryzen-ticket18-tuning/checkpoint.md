# Ticket 18: measured Estimate tuning

Ticket 18 is resolved on `ticket-18-tune-cost-tables`, based on `0801f9b`.
The merged independent audit passes all 130 default Estimate choices within
3% on both in-place timing statistics; the worst ratio is 1.027153×. The
final quick arena completes 164 verified cases with zero failures and 1.23%
drift. G2/G3/G7 pass; G1 and G8 remain release work. See
[validation.md](validation.md) for the sampling refinement, exact commands,
correctness results and remaining limits.

## Implementation

- `cargo xtask tune` measures production Stockham passes and whole-transform
  candidates, verifies all three placements, emits JSONL, and diagnoses fresh
  Estimate planning time against RustFFT.
- The Ryzen 7 7840HS table contains 308 pass costs, 650 recipes, and 220
  Stockham footprint samples. Recipes cover 65 lengths, both precisions and
  five ISA caps. Tables require AMD family 25, model 116 and respect
  compiled/runtime ISA availability.
- Estimate looks up recipes directly, formats descriptions on request, and
  uses measured pass costs for untabulated Stockham schedules and Bluestein
  inner lengths. The memory-cost correction begins at L2/4 and is bounded
  below by one.
- Coefficient preparation reuses small immutable roots and short high/low
  seed tables within a plan. There is no process-wide plan cache.
- The maintainer selected in-place execution as the 3% candidate objective,
  matching Measure. Other placements remain regression evidence.

## Correctness and planning

All 78 release tests pass, as does the five-cap matrix. Both precisions pass
large reference/roundtrip checks through 2^24 in both directions. Workspace
and restricted-feature Clippy, formatting and code-generation checks pass.
The final table reproduces byte-for-byte from retained calibration inputs.

Fresh planning has 46 failures in 312 suite cases and 657 failures in the
1,020-case N=2..256 expansion. The maintainer moved additional engines and
complete G8 coverage to tickets 37–39. G8 has not passed; its every-length
≤2× requirement is unchanged.

## Retained development evidence

The [method](method.md) identifies the calibration, refinement and frozen
validation stages. `recipe-refinements.json` and `final-refinements.json`
record the training changes. Intermediate audits that motivated those
changes remain training evidence, not independent acceptance results.

Earlier arena runs used intermediate production sources:

| Run | Completed cells | Drift | Diagnostic result |
| --- | ---: | ---: | --- |
| `arena-after-idle` | 156 | 1.19% | G2/G3/G7 pass; G8 fails; large rough regressions motivate memory-cost correction |
| `arena-rough-cache-scaled` | 34 | 1.27% | Rejected: large rough recovery, but N=17 regresses and G3 fails |
| `arena-rough-cache-penalty` | 34 | 6.56%, flagged | G3/G7 pass; G8 fails |
| `arena-after-cache-penalty` | 156 | 24.39%, flagged | G3/G7 pass; G1/G2/G8 fail |

Flagged and interrupted attempts are retained with their metadata. They are
not clean gate evidence. Historical ticket 17 arena executables also used
different function-alignment flags; they are not a controlled before/after
execution baseline for this branch. Full release-gate evaluation belongs to
ticket 23.

# Reduce plan preparation for mixed rough lengths

Type: task
Status: open
Blocked by: 18, 37
Roadmap: FFT-061 (G8)

## Question

Can a composite engine reuse cheap prime leaves instead of applying
Bluestein to an entire length containing a small prime factor?

## Context

The maintainer moved additional G8 engine work out of ticket 18 on
2026-10-03. Its expanded fresh-planner diagnostic finds large overhead at
N=34, 38, 46, 51, 57, 58, 62, 69 and 93, among others. Forward N=34 is
about 7.9× RustFFT for f32 and 15.4× for f64 in the intermediate root-table
revision. Adding isolated prime leaves alone will not change the current
whole-transform Bluestein dispatch for these composites.

Evidence: `planning-roots-small.jsonl.gz` and `planning-roots.jsonl.gz` in
`docs/benchmarks/2026-10-03-mini-ryzen-ticket18-tuning/`. Larger residuals
include N=2018 and 3063. Remeasure the final ticket 18 baseline first.

## Work

- Evaluate a bounded composite decomposition using available leaves and
  existing Stockham/panel machinery; measure total preparation and execution.
- Compare with whole-transform Bluestein, retaining it when faster.
- Include factor order, inverse transforms, all placements, scratch contracts,
  ISA caps and non-x86 fallbacks. Rader and Good–Thomas remain outside v1.

## Done when

- Publish the decomposition policy and independent before/after data for
  the affected small and medium rough lengths.
- Pass accuracy and buffer-contract tests on every supported tier.
- Meet G8 on covered cases, assigning residuals to ticket 39, without
  regressing the rough execution gate.

## Ticket 18 validation baseline

The `validation-*` source and executable snapshots accompany the latest
fresh-planner measurements: `planning-validation.jsonl.gz` has 46 failures
in 312 suite cases (worst 35.49× at f64 N=31), and
`planning-validation-small.jsonl.gz` has 657 failures in 1020 N=2..256
cases (worst 39.73× at f64 N=23). Both are in the ticket 18 report directory.
Use this baseline rather than the intermediate root-revision numbers above.

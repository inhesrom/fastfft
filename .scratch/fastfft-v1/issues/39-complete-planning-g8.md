# Complete the G8 cold-planning requirement

Type: task
Status: open
Blocked by: 18, 37, 38
Roadmap: FFT-061 (G8)

## Question

What remains before fresh Estimate planning is at most 2× RustFFT for
every N ≤ 2^20?

## Context

The maintainer authorized separate follow-up tickets for remaining G8 work
on 2026-10-03. Ticket 18 provides direct measured dispatch, cheaper radix
selection and coefficient preparation, but neither its suite samples nor
the N=2..256 expansion establish this every-length requirement. The latter
still has 659 failures in 1020 intermediate-build cases. Tickets 37 and 38
address missing engine families; this ticket owns the remaining gate.

## Work

- Establish final ticket 18 and post-engine baselines using fresh planners,
  with equal timing boundaries for fastfft and RustFFT. Distinguish this
  diagnostic from arena adapter/description/scratch preparation timings.
- Diagnose residual small-size bookkeeping, untabulated candidate selection
  and coefficient/kernel preparation. No global cache may disguise fresh
  construction costs. Record any amortization policy explicitly.
- Provide a reproducible sweep of every positive length through 2^20,
  both precisions and directions. Design manageable shards and resume data
  rather than treating a few suite lengths as proof of universal coverage.
- Remeasure failures in independent idle processes; retain all raw readings
  and distinguish timing noise from persistent failures.

## Done when

G8 passes under its unchanged threshold and coverage, with reproducible
evidence. Publish residual failures if blocked; do not mark this ticket
resolved from a sampled suite alone. Ticket 23's release report must cite
this evidence before declaring G8 passed.

## Ticket 18 validation baseline

The `validation-*` source and executable snapshots accompany the latest
fresh-planner measurements: `planning-validation.jsonl.gz` has 46 failures
in 312 suite cases (worst 35.49× at f64 N=31), and
`planning-validation-small.jsonl.gz` has 657 failures in 1020 N=2..256
cases (worst 39.73× at f64 N=23). Both are in the ticket 18 report directory.
Use this baseline rather than the intermediate root-revision numbers above.

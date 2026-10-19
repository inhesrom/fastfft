# Measure scratch-only Stockham passes on aligned in-place calls

Type: task
Status: open
Blocked by: 12

## Question

Can the scratch-only intermediate-pass choreography from ticket 12 improve
aligned in-place Stockham calls too, without regressions at cache boundaries?

## Context

Ticket 12 finding 5 measured misaligned scratch-only calls faster than aligned
legacy calls at some sizes in the *same binary*: f32 N=4096 and 64K–256K,
f64 N=2048 and 64K–128K (roughly 0.93–0.97 time ratios in the best cases).
This is evidence worth investigating, not a direct measurement of scratch-only
execution on aligned input. The ticket 12 mitigation leaves aligned execution
unchanged. Allocation placement can distort cross-binary comparisons by ±15%
(ticket 31).

## Done when

- Compare both choreographies on aligned in-place buffers in the same binary,
  controlling allocation and function placement.
- Use the arena on an idle machine, with `--procs 3`, both precisions and
  directions; cover in-cache sizes and both sides of cache boundaries.
- Record scratch growth, correctness/tier validation, and p1/median results.
- Record whether any aligned plans should switch; do not broaden the ticket 12
  policy solely from its misaligned-vs-aligned timings.

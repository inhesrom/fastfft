# Add cheap plans for small primes and missing small composites

Type: task
Status: open
Blocked by: 18
Roadmap: FFT-061 (G8)

## Question

Which fixed leaves remove cold-planning overhead for small lengths that
currently require Bluestein or a prepared Stockham schedule?

## Context

On 2026-10-03 the maintainer explicitly separated additional engine work
from ticket 18. G8 remains a release requirement; it has not been relaxed.
The diagnostic in
`docs/benchmarks/2026-10-03-mini-ryzen-ticket18-tuning/planning-roots-small.jsonl.gz`
checks every N=2..256, both precisions and directions, with fresh planners.
659 of 1020 cases exceed 2× RustFFT. It measures an intermediate coefficient
optimization, so rerun against the landed ticket 18 revision before changes.

RustFFT has fixed leaves for 17, 19, 23, 29 and 31, and additional composite
leaves. Fastfft uses Bluestein for those primes. Representative forward
ratios are about 32× (f32 N=31), 35× (f64 N=31), and 6.7–7.5× at N=27.
This suggests fixed leaves; it does not establish that generating every
missing size is the best execution or code-size tradeoff.

## Work

- Compare generated scalar/SIMD leaves with existing candidates for the
  small-prime and composite failures. Use the code generator, not edits to
  generated code.
- Include cold plan construction, code size, scratch, all placements and
  execution latency in the decision; avoid a process-global plan cache.
- Preserve runtime ISA caps and portable fallbacks. Publish before/after
  results against the final ticket 18 baseline.

## Done when

- The selected small leaves pass both-direction reference and tier tests.
- Fresh planning meets G8 for the covered sizes, or remaining failing cases
  are explicitly assigned to ticket 39.
- Independent in-place execution measurements validate the selected plans;
  no regression is hidden by cheaper construction.

## Ticket 18 validation baseline

The `validation-*` source and executable snapshots accompany the latest
fresh-planner measurements: `planning-validation.jsonl.gz` has 46 failures
in 312 suite cases (worst 35.49× at f64 N=31), and
`planning-validation-small.jsonl.gz` has 657 failures in 1020 N=2..256
cases (worst 39.73× at f64 N=23). Both are in the ticket 18 report directory.
Use this baseline rather than the intermediate root-revision numbers above.

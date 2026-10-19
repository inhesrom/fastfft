# Revisit the release gate thresholds

Type: grilling
Status: resolved
Blocked by: 23
Roadmap: ROADMAP gates

## Question

Given the gate table, should G1–G9 keep their thresholds or be revised? ROADMAP.md allows revision before M6, and the M2 data suggests rustfft is a strong baseline at mid sizes on Zen 4.

**HITL:** the maintainer decides.

## Done when

ROADMAP.md reflects the decision.

## Ticket 23 evidence input — 2026-10-11

The [published evaluation](../../../docs/benchmarks/2026-10-11-mini-ryzen-ticket23-gates/README.md)
is complete: **G3 PASS; G1/G2/G4/G5/G6/G9 FAIL; G7 INCOMPLETE; G8 OPEN**.
The machine summary and manifest beside the report preserve exact ratios,
coverage, exclusions and local evidence checksums. No thresholds changed.

- G1 pow2 geomeans are 1.3551× best / 1.3482× median versus 1.5×;
  its minimum is 0.5911× / 0.5914× versus the 0.95× floor.
- G2 geomeans meet 1.3× (1.3244× / 1.3216×), but its minimum
  0.5220× / 0.5282× fails the 0.95× floor. G3 meets both requirements.
- G4 fails the TFHE floor fraction (75% versus 90%); oxifft is incomplete
  at 616/656 supported comparisons because failed rows are not exclusions.
- G5 AVX2 pow2 is 1.1425× / 1.1377× versus 1.2×, while smooth passes.
- G6 batch is 1.2844× / 1.2861× versus 1.5×; all six scenarios miss 1.3×.
- G9 normal-release clean builds give a printed 13.10× versus ≤2.0×.

Keep performance misses separate from evidence gaps: the entire completed
sweep is rejected for 8.2630% drift; datacheck has observed >2% differences
and one missing supported pair. G7 has no observed admissible strict DD
violation but incomplete method/scenario/batch/sweep coverage. G8's universal
fresh-planning requirement remains tickets 37–39. No ticket 19 exception
was applied to this evaluation.

The maintainer should decide which thresholds and coverage policies to keep
before using follow-ups 41–46 as release acceptance work. Those tickets
record measured targets and diagnosis, not chosen fixes or approved scope
reductions. This HITL ticket remains open; only an explicit maintainer
decision can revise ROADMAP or gate scope.

## Answer — maintainer decision, 2026-10-13

The maintainer approved keeping every G1–G9 threshold and coverage requirement
unchanged and implementing the qualification work. Performance misses and
evidence gaps must be fixed; no exception from earlier tickets is inherited.
A verified comparator version update or minimal correctness patch is allowed,
with provenance and fresh affected comparisons. Rust 1.89 compatibility is
no longer required: prefer stable Rust and raise the minimum version when
needed for a measured improvement, preserving the public FFT API.

The [qualification tracker](../qualification.md) records work and evidence.
Ticket 21 remains separate. This decision resolves the threshold review,
not any release gate.

# Gated scratch: independent safety review

Read-only review of the uncommitted gated implementation, before stage-3
benchmarking. This is advisory, not a substitute for tests or timing.

## Findings

1. **P2 — Scalar-aligned scratch can bypass alignment.** In the existing
   `fft.rs` and `bluestein.rs`, `Complex<T>::align_offset(64)` cannot reach a
   64-byte boundary from a base one real past a complex-aligned boundary.
   `min(align_slack)` advances 64 bytes but leaves that base misaligned. Not an
   out-of-bounds issue; the new scratch-placement regions already realign.
2. **P3 — Batch test coverage did not vary page offsets.** The new test used
   `n = lanes * 128`, so all SIMD chunks had whole-page strides. Add forced-on
   `[3,3,3]` plans with exact scratch and guards, including a narrow shape to
   cover nontrivial second-buffer padding.

No additional pointer-bounds or mode/scratch-sizing defect was reported.

## Response implemented and correctness-validated

- Add a shared scratch-alignment boundary that calculates offsets in scalar
  units, preserves allocation provenance and truncates the tail to whole
  `Complex<T>` values. Wire it into generic Stockham, fixed Stockham and
  Bluestein; retain the existing advertised alignment slack.
- Assert actual SIMD alignment, not just correct FFT output, for both
  precisions, aligned bases and bases shifted by one scalar, with guards.
- Extend public batch contracts with `[3,3,3]` and SSE2 shapes, gate forced on
  and off, both directions and all placements.

The first library check had passed 27 active tests before these findings. Full
validation was stopped intentionally before benchmarking to address them. The
new alignment assertion failed before implementation (nonzero address modulo
64). The shared helper and wider batch cases then passed workspace release
checks, all five ISA caps, and the no-default-features scalar build, including
accuracy/conformance/property tests. Fmt, warning-denied Clippy, generated-code
consistency and warning-denied rustdoc also passed. See
`target/ticket12/validate-gated-reviewed.log` (to be archived with stage 3).

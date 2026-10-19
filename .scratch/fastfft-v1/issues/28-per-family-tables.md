# Add per-family cost tables and default tiers

Type: task
Status: open
Blocked by: 18, 27
Roadmap: FFT-081

## Question

What tier and cost tables should each CPU family default to? Add `intel_avx512.rs`, `zen5.rs` and `generic_avx2.rs`.

Cloud gates:
- on each AVX-512 machine: pow2 ≥ 1.3×, smooth ≥ 1.15×, no cell < 0.9×;
- the AVX2-only machine passes G5.

Failures block the release unless the maintainer approves documented exceptions.

## Context

- Key the tables on the FP datapath width, not only the CPU family (ADR-0001 §8).
  - Zen 5 desktop and server (Ryzen 9000, EPYC 9005) have 512-bit datapaths.
  - Zen 5 mobile (Strix Point) keeps 256-bit ones, like every Zen 4.
  - So a single `zen5.rs` would fit only one of them.
- The Zen 4 width defaults (256-bit for f32, 512-bit for f64) come from Zen 4 running 512-bit instructions on 256-bit units. They probably do not carry over to CPUs with 512-bit datapaths.
- [Validate on cloud machines](27-cloud-validation.md) includes no Zen 5 machine with 256-bit datapaths.

## Done when

Tables are committed and the cloud gates are evaluated.

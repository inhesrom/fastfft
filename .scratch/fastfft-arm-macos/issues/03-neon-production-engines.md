# Add AArch64 NEON through the production FFT engines

Type: task
Labels: wayfinder:task
Status: claimed
Assignee: Codex (for Ian Hersom)
Blocked by: 02
Mode: AFK
Roadmap: FUT-01

## Question

Can stable NEON run the existing production algorithms correctly through the
public API, eliminating ARM's scalar-only ceiling while preserving scalar
fallback, x86 behavior and Rust 1.89?

## Work

- Add an AArch64 NEON feature/tier, enabled by default on supported targets,
  native availability detection, `neon` cap parsing/reporting, and
  `f32x4`/`f64x2` implementations of `SimdReal` and `Vector`: ordinary FMA,
  bounded loads/stores, interleave/deinterleave and zip/transposes. Use the
  established target-feature safety boundary and generated codelets.
- Audit every ordinal comparison, enum-indexed array and five-tier list.
  `available`, `effective_isa`, engine shapes, `small_dispatch`, tuning and
  `plan::COSTS` must not interpret NEON as an x86 tier or index past the cost
  array. Preserve x86 cap behavior and handle cross-architecture caps safely.
- Wire the generic Small/fixed leaves, Stockham, FourStep, Bluestein products
  and batching/fallback routes. Expose NEON candidates to Estimate and Measure;
  ensure default Estimate actually selects NEON on representative N≥32.
  Preserve scalar small winners. NEON FMA and 128-bit shuffles should support
  the existing architecture; avoid a new planner or FFT algorithm here.
- Remove x86-only barriers where they guard reusable generic logic. AVX-only
  interleaved/rectangular/batch specializations may retain a documented generic
  NEON fallback; they need not be mechanically translated in this ticket.
  Identify remaining losses for the tuning ticket, especially N=32–256.

## Done when

Native AArch64 tests exercise NEON arithmetic, transpose/tail boundaries and
all three public placements, both precisions/directions, smooth/prime inputs,
misalignment, scratch and batch remainder contracts. Assert selected ISA so
scalar fallback cannot make the NEON tests pass accidentally. Verify forced
scalar and `--no-default-features`; run release accuracy, fmt/clippy, generated
code checks and Rust 1.89 builds. Retain x86 tier correctness coverage on
available x86 hardware/CI. Mac default/scalar before-after measurements and
plan descriptions demonstrate real vector execution; final RustFFT win gates
belong to [Tune ARM plans and demonstrate RustFFT wins](04-tune-and-verify-wins.md).

## Implementation checkpoint — 2026-10-10

Native NEON/macOS foundation is implemented. See the [retained evidence](../../../docs/benchmarks/2026-10-10-mac-neon/README.md) for native correctness,
scalar/no-default coverage, source snapshots, Mac diagnostics and Astra review.
The preceding baseline ticket remains open: these 48 unpinned diagnostic
cells do not establish the accepted full-profile baseline or ARM win gates.
Native x86 before/after timing also remains pending the maintainer’s manual
run of `check-x86.sh`. This checkpoint does not resolve the ticket.

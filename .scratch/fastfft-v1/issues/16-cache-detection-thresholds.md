# Detect cache sizes and set engine thresholds

Type: task
Status: resolved
Blocked by: 14
Roadmap: FFT-042

## Question

What should drive engine switching and panel sizes? Read L1D and L2 via CPUID leaves 4 / 0x8000001D, defaulting to 32 KB / 1 MB. Which Stockham→four-step threshold and panel sizes are best on Zen 4?

## Existing foundation

Ticket 12 adds a private last-level data/unified cache detector in
`crates/fastfft/src/isa/cache.rs` for its misalignment working-set gate, using
CPUID leaves 4 / 0x8000001D with a conservative fallback. Reuse/extend that
boundary rather than add a second CPUID implementation. L1D/L2-specific panel
sizing and Stockham→four-step switching remain this ticket's work.

## Done when

- The planner uses the detected sizes.
- Thresholds are justified by arena data recorded in the answer.

## Progress

Claimed on 2026-10-02. Extend the existing cache detector, preserve the
measured Zen 4 choices from ticket 14, and validate cache-driven engine and
panel thresholds against the arena before resolving.

The detector now reports per-level capacities with independent fallbacks.
The planner explores FourStep from a quarter-L2 transform and selects it
for large AVX-512 powers of two at eight L2 capacities. Panel grouping uses
L1 workspace occupancy and a budget of `min(2*L2, LLC/8)`. Zen 4's measured
Estimate choices remain unchanged. Nineteen focused cache/planner/contract
tests passed before the complete release suite, tier matrix and arena check.

## Answer

Resolved on 2026-10-02 on `ticket-16-cache-detection-thresholds`, based on
ticket 15 (`299c8ef`). The existing CPUID detector now exposes L1D, L2 and
last-level data/unified capacities, with independent 32 KiB / 1 MiB
L1D/L2 fallbacks. It retains bounded enumeration, checked arithmetic and
instruction-cache exclusion; partial extended topology can use basic
descriptors for missing levels.

The planner offers FourStep once a transform occupies L2/4 and selects it
for AVX-512 powers of two at 8*L2. On Zen 4 this preserves ticket 14's
measured 8 MiB crossover (N=1048576 f32 / 524288 f64). Grouping begins when
two panel work buffers fill L1D, with group storage bounded by
`min(2*L2, LLC/8)` plus padding, at most 16 panels. Zen 4 retains its 2 MiB
group budget, radix-aware splits, width choices and LLC-based streaming
threshold. Lower ISA Estimate dispatch remains unchanged. Scaling beyond
Zen 4 is a heuristic pending the planned CPU-family measurements.

Ticket 14's full-profile 80-cell arena result (1.5785× best / 1.5773× median
versus RustFFT, 1.32% drift) supplies the crossover and grouping evidence.
The fresh [ticket 16 checkpoint](../../../docs/benchmarks/2026-10-02-mini-ryzen-ticket16-cache/checkpoint.md)
confirms unchanged plans and performance in 12 before/after cells around
the candidate and Estimate boundaries: 1.0013× best / 1.0004× median versus
the ticket 15 executable, every cell within ±3%, and 0.96%/0.95% drift.
All 12 cells verify. Six shared-engine smooth cells also verify, with a
minimum 1.0229× best/median ratio versus RustFFT and 1.30% drift.

The full release suite (73 passing tests), five-cap matrix, restricted
feature builds, workspace Clippy, fmt, codegen and whitespace checks pass.
Synthetic topology tests cover missing/partial/malformed data; policy
tests vary L1/L2/LLC, check both precisions and ISA caps, and verify all
three public execution placements. The report retains raw data, source
and executable hashes, source patch, validation logs and reproduction
commands. Cost tables, cloud tuning and complete release-gate evaluation
remain their existing tickets.

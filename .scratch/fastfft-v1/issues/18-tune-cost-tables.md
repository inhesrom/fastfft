# Tune cost tables and the Estimate model

Type: task
Status: resolved
Blocked by: 11, 13, 14, 15
Roadmap: FFT-051

## Question

What should replace the hand-set cost model (`pass_cost`, `predict`, `prefer` in `planner.rs`)?

## Progress

Claimed on 2026-10-02 and resolved on 2026-10-03 on
`ticket-18-tune-cost-tables`, based on ticket 17 (`0801f9b`).

The maintainer selected in-place execution for the 3% objective, matching
Measure, and accepted the stable service-load idle baseline. Each timing
process still starts after an environment check; drift flags remain active.
The maintainer separately moved additional G8 engines and complete coverage
to tickets [37](37-small-prime-planning.md), [38](38-mixed-rough-planning.md)
and [39](39-complete-planning-g8.md). The G8 release threshold is unchanged.

## Work

- Implement `cargo xtask tune`. xtask refers to an example `tune` in `crates/fastfft` that does not exist yet.
- Measure per-pass costs by radix, pass type and tier.
- Commit the Zen 4 tables (`plan/tables/zen4.rs`) and choose tier, width and radices from them.
- Choose the vector width per size as well (ADR-0001 §8, item 3).
  - On Zen 4, f64 defaults to 512-bit, but 256-bit measured faster at N = 256 (+7%) and 1024 (+2%).
  - Today the planner always picks 512-bit for f64.
- Cover the odd and composite radices, up to 15 (up to 30 split data registers). M2 did not measure them (§8, item 4).
- Choose AVX2 radices per size using production-kernel costs. [Ticket 10's radix measurements](../../../docs/benchmarks/2026-09-25-mini-ryzen-m3-quick/checkpoint.md#avx2-radix-4-versus-8) retain maximum radix 8 globally: radix 4 is modestly faster over M3 (2.9% f32 / 3.8% f64 best-time geomean), but slower over the complete supported range. Prototype schedules are not interchangeable with the library's schedules.
- Recheck Estimate planning overhead: ticket 10's main quick run reaches 60.99× rustfft at rough f64 N=31, far above G8.
- Ticket 17 adds a Bluestein length heuristic over four inner candidates
  and prepacked pointwise factors. Its quick rough run passes G3, but the
  worst planning ratio rises from 76.01× to 310.59× at f64 N=31. Replace
  repeated candidate enumeration with the measured cost tables and account
  for chirp/kernel preparation and reusable inner plans. Include its
  `2N-2` convolution boundary and tiny-f32 pointwise width choice when tuning.
- Ticket 13 adds measured smooth-size overrides in `smooth_dispatch.rs`
  alongside `small_dispatch.rs`. These include rectangular/packed leaves,
  alternate fixed Stockham schedules and FourStep panels; include all these
  candidates when replacing the cost model. Its final quick smooth run
  passes G2 but still fails G8 (32.84× at f32 N=24).

## Done when

- Estimate picks within 3% of the best candidate on the pow2 and smooth suites.
- Publish the fresh-planning comparison and residual failures. The maintainer
  moved completing G8 (≤ 2× RustFFT for every N ≤ 2^20) to tickets 37–39
  on 2026-10-03; the release requirement is unchanged.

## Answer

Implemented `cargo xtask tune`, production-pass measurements and a guarded
Zen 4 cost model with 308 pass costs, 650 recipes and 220 footprint samples.
The table selects engine, ISA width and radix order for 65 lengths, both
precisions and all five caps. Untabulated Stockham schedules use measured
pass costs and a memory-cost correction; other CPUs use a portable fallback.
Estimate takes a direct lookup path, descriptions are lazy, and coefficient
preparation reuses immutable small roots and factored high/low seed tables.

The independent default audit passes all 130 pow2/smooth precision/length
pairs through 2^24, within 3% on both in-place p1 and median. The worst is
1.027153× at f64 N=504. The million-point short screen needed a predeclared
200-batch, three-process refinement; all readings and the replacement rule
are retained. Its existing recipe passes at 1.004879× in the merged result.
All eight upper-power choices are measured winners. The table reproduces
byte-for-byte from archived training inputs.

All 78 release tests, the five-cap matrix, large reference/roundtrip checks
through 2^24, Clippy including restricted features, formatting and codegen
checks pass. The final quick arena completes 164 verified cells with no
failures and 1.23% drift: G2/G3/G7 pass, G1/G8 fail. Full release evaluation
remains ticket 23. Fresh planning has 46/312 suite failures and 657/1020
expanded small-size failures; completing G8 belongs to tickets 37–39.

The [checkpoint](../../../docs/benchmarks/2026-10-03-mini-ryzen-ticket18-tuning/checkpoint.md),
[method](../../../docs/benchmarks/2026-10-03-mini-ryzen-ticket18-tuning/method.md)
and [validation](../../../docs/benchmarks/2026-10-03-mini-ryzen-ticket18-tuning/validation.md)
retain source/executable snapshots, raw results, reproducible commands and
all rejected or drift-flagged attempts. No acceptance threshold changed.

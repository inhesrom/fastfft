# Accept the M2 go/no-go and ADR-0001

Type: grilling
Status: resolved
Blocked by: 07
Roadmap: FFT-021

## Question

With the final M2 table, does the architecture pass the go/no-go? The threshold is ≥ 1.25× rustfft geomean, f32 forward in place on the AVX-512 machine, N = 256…65536.

And does the maintainer accept ADR-0001's decisions?
- Split layout on every tier.
- 256-bit vectors with 32 registers as the Zen 4 default for f32; 512-bit where it wins for f64.
- Radix 8 on SIMD tiers.
- DIT Stockham plus a transposing final pass.
- A four-step engine for large N.

**HITL:** the maintainer answers; the agent presents data and must not answer for them. Per the original plan, M3+ performance work waits on this.

## Answer

**Go, and ADR-0001 is accepted with revisions.** These are the maintainer's answers of 2026-09-24, recorded in [ADR-0001 §8](../../../docs/decisions/0001-internal-layout-and-engine.md). Each question was put separately with its data and the agent's recommendation, and the maintainer chose the recommended option each time.

1. **Go/no-go: go.**
   - `lab/dit-ymm-r8` measures 1.29× (median 1.28×) against the 1.25× threshold.
   - The library's gap (`fastfft`, 0.97×) belongs to [Measure the library in the arena and check the M3 checkpoint](10-measure-library-m3-checkpoint.md), whose checkpoint requires ≥ 1.3×.
2. **Layout: split on every tier for now.**
   - Whether to add an interleaved AVX2 engine is decided with G5 data from [Evaluate release gates G1–G9 on Zen 4](23-gate-evaluation.md) (AVX2 forced) and [Validate on cloud machines](27-cloud-validation.md) (AVX2-only machine).
   - Taken literally, the rule gave both layouts on AVX2.
3. **Vector width on Zen 4.**
   - f32 uses 256-bit with 32 registers by default. f64 uses 512-bit by default.
   - The planner may choose 256-bit per size where it measures faster, for example f64 at N = 256 (+7%). That choice is part of [Tune cost tables and the Estimate model](18-tune-cost-tables.md).
4. **Radix.**
   - Powers of two use at most radix 8 on SIMD tiers, chosen per tier by the cost model.
   - Radix 4 vs 8 on AVX2 is settled by measurement in ticket 10 or 18.
   - Odd and composite radices go to ticket 18.
5. **Engine structure.**
   - DIT Stockham plus the transposing final pass for in-cache sizes, and a four-step engine for large N.
   - The 2^15 switch point is provisional. [Build the four-step engine for large N](14-fourstep-large-n.md) and [Detect cache sizes and set engine thresholds](16-cache-detection-thresholds.md) set it by measurement.

**Raised in the review: this is a laptop Zen 4 (7840HS).**
- It has the same core and AVX-512 as desktop and server Zen 4. But no Zen 4 has a 512-bit datapath: 512-bit instructions run on 256-bit units, so the width result applies to Zen 4.
- CPUs with 512-bit datapaths (Zen 5 desktop/server, Intel Xeon) get their own tables, keyed on datapath width ([Add per-family cost tables and default tiers](28-per-family-tables.md)).
- Details and sources are in ADR-0001 §8.

**Follow-ups.** Notes were added to existing tickets; no new tickets were needed.
- Ticket 10 adds `lab/dit-avx2-r4` and `lab/dit-avx2-r8` rows.
- Ticket 14 marks 2^15 as provisional.
- Ticket 18 takes the per-size width choice and the odd and composite radices.
- Ticket 28 keys its tables on datapath width.

## Done when

The ADR-0001 status reads accepted (or revised) and the decision is recorded here.

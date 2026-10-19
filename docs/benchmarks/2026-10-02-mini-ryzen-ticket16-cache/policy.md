# Cache-driven planning and panel workspace

Ticket 16 extends the existing private cache detector to expose L1D, L2
and last-level data/unified capacity. Detection runs once per process.
Missing L1D and L2 levels fall back independently to 32 KiB and 1 MiB;
the last-level fallback remains 1 MiB. An observed last-level capacity is
never inflated by one of those defaults.

The deterministic cache descriptors use the existing CPUID boundary:
basic leaf 4 or extended leaf `0x8000001D` when both the extended-leaf
limit and TopologyExtensions flag permit it. Instruction caches are
excluded. Cache bytes are `(line+1)*(partitions+1)*(ways+1)*(sets+1)`, with
checked arithmetic. A null descriptor ends enumeration, and a 32-entry
limit bounds malformed topology. Partial extended data takes precedence
per level, with missing levels filled from basic descriptors. These
fields follow the [AMD CPUID specification, pp. 33–34](https://www.amd.com/content/dam/amd/en/documents/archived-tech-docs/design-guides/25481.pdf)
and [Intel's deterministic-cache description](https://www.intel.com/content/dam/develop/external/us/en/documents/d9156103-705230.pdf).

## Policy

Here, `B = N * sizeof(Complex<T>)`. Cache capacities describe one cache,
including its full shared capacity, rather than a sum over CPU cores.

| Decision | Rule | Ryzen 7 7840HS result |
|---|---|---|
| Offer FourStep to Measure | `B >= L2/4`; odd SIMD dimensions remain eligible below this | N ≥ 32768 f32 / 16384 f64 |
| Select FourStep in Estimate | Power of two, AVX-512 tier, `B >= 8*L2` | N ≥ 1048576 f32 / 524288 f64 |
| Start grouping complete panels | Two panel work buffers occupy at least L1D | 32 KiB workspace boundary |
| Bound group storage | `min(2*L2, LLC/8)`, plus existing padding, at most 16 panels | 2 MiB |
| Stream complete output lines | Existing `B >= LLC/2` rule and alignment/width checks | 8 MiB transform |

The L2/4 exploration threshold comes from the original plan: two transform
buffers occupy half of L2. It does not force Estimate to switch engines.
That distinction matters: the [ticket 14 checkpoint](../2026-10-01-mini-ryzen-ticket14-fourstep/checkpoint.md)
found Stockham competitive well beyond L2 and retained it below an 8 MiB
transform. Its 80-cell full-profile arena result was 1.5785× best /
1.5773× median versus RustFFT, with 1.32% maximum drift. The
[crossover and grouping experiments](../2026-10-01-mini-ryzen-ticket14-fourstep/diagnostics/README.md)
support that later switch and a 2 MiB group budget. This ticket expresses
those measured sizes in terms of the detected 1 MiB L2 and 16 MiB LLC.

Register width and radix-aware matrix factorization retain ticket 14's
measured choices. Panel grouping amortizes strided input visits and widens
contiguous output writes; panels already fitting in L1D can run separately.
The panel transform itself remains iterative: ticket 14 measured and
rejected recursive panel passes. Cache policy affects workspace choices,
while dimension and scratch checks still govern memory safety.

This is a cache-scaled policy calibrated on Zen 4, not a measured optimum
on other processors. AVX2/SSE2/scalar Estimate choices retain their existing
dispatch. CPU-family cost tables and measurements remain tickets 18/27/28.
Batch streaming and Stockham alignment continue to use the same LLC
capacity and existing working-set rules.

## Deterministic checks

Synthetic CPUID tests cover Intel-style and AMD-style descriptors,
instruction caches, partitions, unsupported leaves, a missing topology
flag, partial/masked topology, independent fallbacks, duplicate levels,
null termination and overflow. Planner tests move both boundaries across
512 KiB, 1 MiB and 2 MiB L2 configurations in both precisions, retain the
Stockham alternative in Measure, preserve odd SIMD plans and honor ISA
caps. FourStep tests vary L1D/L2/LLC and verify all three public execution
placements in both directions and precisions against the double-double
reference. Release-suite and tier-matrix logs are retained under `checks/`.

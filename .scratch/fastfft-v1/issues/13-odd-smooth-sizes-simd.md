# Give odd and weakly-even smooth sizes a SIMD path

Type: task
Status: resolved
Blocked by: 10
Roadmap: FFT-040 (part)

## Question

The Stockham engine needs lanes L | N. So odd N (9, 15, 3^k, 11³, 4725, 165375) and N with few factors of two run on narrow vectors or the scalar tier. Which engine vectorizes them, and does it reach G2 (smooth geomean ≥ 1.3×, no cell < 0.95×)?

## Context

A generalized four-step:
- column pass over panels of L columns, masked tail, fused twiddles;
- row pass over blocks of L rows with in-register transposes.

The plan's FourStep description covers this. Coordinate with [Build the four-step engine for large N](14-fourstep-large-n.md) so both share the panel machinery.

## Done when

- The smooth suite (quick) has no cell below 0.95× rustfft.
- Tests pass on all tiers, including masked tails.

## Progress

- 2026-09-30: started on `ticket-13-odd-smooth-simd`, based on the resolved
  ticket 12 tip (`861f1bf`). Investigating reusable SIMD panels for smooth
  lengths that cannot use the current Stockham lane decomposition.
- Initial implementation: arbitrary smooth `A × B` dimensions, one transform
  per lane in bounded panels, Stockham codelets for panel passes, fused cross
  twiddles/register transpose, and natural-order final stores. Partial panels
  use zero-filled local buffers and bounded copies; no padded user buffers.
- The first planner integration adds panel candidates to `Measure` for
  weakly-even lengths above 16. `Estimate` retains its existing choices until
  the arena establishes a dispatch policy. This is not yet the ticket's gate.
- Focused public `Fft` checks pass against the double-double reference in both
  precisions/directions, including rectangular decompositions, N=4725/165375,
  batches, exact scratch, immutable input, and scalar-offset buffers. Full
  workspace release tests, the five-tier quick matrix, scalar-only build,
  Clippy, fmt and `codegen --check` pass.
- Published the [initial panel checkpoint](../../../docs/benchmarks/2026-09-30-mini-ryzen-odd-panels/checkpoint.md):
  12 focused arena cells, core 2, `--procs 3`, 0.81% control drift, all verified.
  At N=4725, Measure gains 3.948× f32 / 2.045× f64 over Estimate (median
  3.934× / 2.028×); at N=165375, 4.995× / 2.576× (median 4.978× / 2.567×).
  Both sizes reach ≥0.95× RustFFT on best and median. Small cells still fail,
  including N=210 where f32 panels help but reach only 0.500× / 0.490×.
- Continued from checkpoint commit `8a36159`: added fixed rectangular small
  leaves, packed complex leaves (f64 N=9/18 and both precisions N=24/36/48),
  fixed Stockham transition schedules and a separate measured smooth dispatch
  table. The new public-contract coverage includes all candidate shapes,
  directions, placements, scalar offsets and batches. Measure's eight-candidate
  window continues to preserve the default, interleaved leaves and incumbent.
- The [first complete dispatch run](../../../docs/benchmarks/2026-09-30-mini-ryzen-ticket13-smooth-dispatch/checkpoint.md)
  improves the full smooth geomean from 1.024× to 1.282× RustFFT, with all 82
  cells verified and 1.62% control drift. Eight cells remain below 0.95× on
  best or median. Further Measure checks support a 1000×1000 FourStep default
  for f64 N=1000000 and identify a cost for tall fused small rectangles in
  the arena build. The follow-up uses local tiling when either dimension
  exceeds vector width.
- [Final checkpoint for this pass](../../../docs/benchmarks/2026-09-30-mini-ryzen-ticket13-smooth-checkpoint/checkpoint.md):
  full smooth geomean 1.292× best / 1.292× median versus RustFFT, up from
  1.024× / 1.023×; 26 failing cells reduced to 7. All 82 cells verified,
  0.68% control drift, core 2 and three processes per cell. Workspace release
  tests, all five capped tiers, scalar-only compilation, Clippy, formatting
  and `codegen --check` pass. Exact sources, executable hashes, raw arena data,
  provisional diagnostics and successful validation logs are archived.
- Still claimed: G2 is not met. Remaining misses are f32 N=80,108,120 and
  f64 N=6,18,36,210 (counting either best or median below 0.95×). Prioritize
  f64 N=210 and the remaining small-kernel latency, inspect code generation
  and static candidate compilation cost, then repeat the full quick gate.
- Continued tuning: fixed constant tail-copy lengths, removed redundant
  intermediate clearing, added coprime f64 N=6/18 leaves, packed 6x6 f64
  N=36 and packed 16x5/12x9 f32 kernels. The
  [first full follow-up](../../../docs/benchmarks/2026-09-30-mini-ryzen-ticket13-tail-kernels/diagnostics/arena-one-miss/report.md)
  verifies all 82 cells, fixes all seven previous misses and reaches 1.319x
  best / 1.318x median. A new f32 N=96 miss remains (0.917x / 0.934x).
  The packed path is extended to 16x6; full validation and the repeated gate
  are in progress. Rejected arithmetic and placement experiments are archived.
- The 16x6 extension passes the workspace and all five capped tiers, builds,
  Clippy, formatting and codegen checks. Two full arena runs pass N=96 but
  miss f64 N=4725; the first has 11.52% control drift, while the repeat has
  clean 0.62% drift and reaches 1.324x best / 1.324x median overall. N=4725
  measures 0.911x / 0.907x. Both runs are retained. Factor diagnostics suggest
  a modest benefit from 105x45 ymm panels; native bounded AVX-512 tail
  operations are being tested before choosing the final geometry.
- Native AVX-512 masked prefix operations remove the remaining panel-tail
  copies; the existing 63x75 geometry now wins the diagnostics. Every prefix
  length passes direct memory-boundary checks and the FourStep numerical/API
  tests pass. The first full run passes all performance cells but is flagged
  for 13.49% control drift. Its unchanged-executable repeat passes G2 with
  0.89% drift: 1.335x best / 1.332x median, all 82 verified, minimum 0.985x.
  The [final benchmark report](../../../docs/benchmarks/2026-09-30-mini-ryzen-ticket13-tail-kernels/checkpoint.md)
  is saved. Complete workspace/tier/build validation passes on the final source.

## Answer

Use the generalized FourStep panel engine for larger odd/weakly-even smooth
lengths, and rectangular or packed complex leaves for the small cases.
AVX-512 panels use bounded masked tails; other tiers use bounded local
buffers. Fixed Stockham transition schedules and a separate measured smooth
dispatch table select the successful kernels without changing the public API.
The panel machinery is shared with the upcoming large-N work in ticket 14.

The [final quick smooth run](../../../docs/benchmarks/2026-09-30-mini-ryzen-ticket13-tail-kernels/checkpoint.md)
passes G2: **1.335× best / 1.332× median** versus RustFFT, **82/82 cells
verified**, no cell below **0.985×** on either statistic, and **0.89%** maximum
control drift. Measurements use core 2, boost on and three processes per cell
on the idle machine. Both precisions separately exceed 1.3×. The initial
pre-dispatch checkpoint was 1.024× best with 26 cells below the floor.

Workspace release tests (including both full accuracy sweeps), the five-tier
cap matrix, scalar-only and AVX-512-only builds, Clippy, formatting and
`codegen --check` pass. Coverage includes every bounded prefix length,
both directions, public placements, scalar offsets, guards, exact scratch,
batches and numerical references. The report retains the final source patch,
hashes, raw data, validation logs and rejected experiments.

G8 planning time still fails and G9 build time remains separate release work.
The focused dispatch measurements feed ticket 18; this result establishes
ticket 13's quick smooth gate on the Zen 4 host.

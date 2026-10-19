# Build the batch engine

Type: task
Status: resolved
Blocked by: 10
Roadmap: FFT-041

## Question

For many small transforms in one buffer (arena batch suite: N = 8…1024, 2^20 elements in total), does vectorizing across transforms beat per-chunk Stockham? That means one transform per lane, with transposes in and out.

Targets:
- batch geomean ≥ 1.3× (M4 checkpoint);
- batch geomean ≥ 1.5× (G6).

## Done when

- The batch suite meets the checkpoint.
- Tests cover batch counts {1, 3, lanes+1} and all modes.

## Progress

- 2026-10-02: claimed for `ticket-15-batch-engine` from ticket 14 (`a4d8aae`). Establish the batch baseline, add SIMD across transforms behind the existing public `Fft` placements, and verify remainder batches and exact scratch contracts.

- The saved full-profile baseline in `target/ticket15/baseline/run` verifies all 32 cells with 1.65% drift: combined 1.083× best / 1.061× median vs RustFFT. The first implementation preserves single-transform scratch contracts and uses a bounded tile for register transposes, mixed-radix codelets across independent transforms, and the original plan for remainder batches. Public-contract tests cover both precisions, directions, all ISA caps, all placements, counts {1, 3, lanes+1, 2*lanes}, offset buffers, guards, immutable input and short-scratch rejection.

- Two split-register prototypes verify correctly but are slower than the existing Small/Stockham plans. Their exact engine/planner sources, executable hashes and 1-process diagnostic runs are retained under `target/ticket15/prototype/` and `target/ticket15/specialized/`. The revised engine uses four interleaved complex lanes and shared Small radix kernels; its public batch tests and Clippy pass. Official timing is pending.

## Answer

The combined M4 batch checkpoint passes on `ticket-15-batch-engine`:
**1.3242× best / 1.3147× median** versus RustFFT over all 32 full-profile
cells, with successful verification and 1.67% drift. The baseline was
1.0828× / 1.0605×. The exact executable, sources, raw data and both matched
runs are recorded in the [checkpoint report](../../../docs/benchmarks/2026-10-02-mini-ryzen-ticket15-batch/checkpoint.md).

General across-transform vectorization loses to the existing Small leaves.
Keep it at size 8: four independent transforms per group, f32 in-place and
both precisions for streaming separate-output calls. For larger aligned
separate-output batches, use existing leaves plus sequential streaming
stores through N=256 and bounded four-result Stockham tiles at N=512/1024.
Software read-ahead helps f64 N=128/256. Other in-place calls, short batches,
misaligned output, scalar/SSE2 and remainder transforms keep their original
plans. Public scratch requirements remain unchanged.

Both precisions/directions, all modes/caps and counts {1,3,lanes+1,2*lanes}
pass the independent-reference contract tests, including forced streaming,
guards, exact/oversized scratch and short-scratch rejection. The release
suite and five-cap matrix, feature builds, Clippy, fmt and codegen checks
pass; final kernel changes also pass targeted checks. A matching-build
single-transform guard measures +0.99% best / +0.82% median average overhead.

The first matched-build run narrowly missed the median target (1.2995×);
one unchanged full repeat passes. Earlier builds omitted the established
function-alignment flag and remain diagnostics. No timings are combined.
The checkpoint's combined scope and modest margin are explicit in the report.
f32 alone is below 1.3×; the f64 N=32 in-place median remains 0.9222×
(ticket 35). G6's 1.5× batch target and G8 planning costs remain release work
in tickets 18/23. The next frontier is ticket 16.

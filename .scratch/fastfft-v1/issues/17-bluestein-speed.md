# Speed up Bluestein

Type: task
Status: resolved
Blocked by: 10
Roadmap: FFT-050

## Question

Bluestein is correct, but its chirp and kernel products are scalar complex loops, and its inner length is simply the smallest 2^a·{1,3,5,9}. Do SIMD pointwise products plus a cost-based inner length reach G3?

G3: rough suite geomean ≥ 0.75× rustfft, no cell < 0.5×. rustfft uses Rader for primes; Rader is FUT-06, out of scope.

## Done when

The rough suite in the arena meets G3 at the quick profile.

## Progress

Claimed on 2026-10-02 on `ticket-17-bluestein-speed`, based on ticket 16
(`b908bc6`). Measure the existing rough-suite gate, add SIMD pointwise
products and cost-based convolution lengths, and validate through the
public FFT execution/scratch contracts and the arena's rough-suite gate.

The final quick rough run passes G3 over all 34 verified cells:
1.1575x best / 1.1512x median versus RustFFT, minimum 0.5458x / 0.5461x,
with 1.14% drift. Every fastfft cell improves over the ticket 16 executable.
SIMD products, packed factors, fused conjugation/padding, shared workspace
and cost-based inner lengths are implemented. Final release/tier validation
passes. G8 planning overhead remains ticket 18 and its worst ratio
increases from 76.01x to 310.59x; the checkpoint records this limitation.

## Answer

Resolved on 2026-10-02 on `ticket-17-bluestein-speed`, based on ticket 16
(`b908bc6`). SIMD pointwise products use packed chirp/kernel tables on all
five tiers. Conjugation and partial-vector padding are fused into the
products, and in-place execution consumes input before writing output,
eliminating its N-element copy. All placements now share one workspace.

The planner prices two inner FFTs and pointwise work over the bounded
`2^a * {1,3,5,9}` candidates. The even kernel permits M=2N-2: only its
equal endpoints coincide, and the shared value is stored once. N=17,
257 and 65537 now use power-of-two inner lengths. Tiny f32 pointwise
products use at most 256-bit vectors, based on the width comparison.

The [quick rough checkpoint](../../../docs/benchmarks/2026-10-02-mini-ryzen-ticket17-bluestein/checkpoint.md)
passes G3: combined 1.1575x best / 1.1512x median versus RustFFT, minimum
0.5458x / 0.5461x, all 34 cells verified, 1.14% drift and no child
failures. Against the ticket 16 executable, fastfft improves 1.2474x /
1.2482x, with every cell more than 8% faster. N=17 falls from 76.1 to
47.0 ns for f32 and 83.1 to 56.3 ns for f64.

All 75 release tests pass, including the complete accuracy sweep. The
five-cap matrix passes, as do workspace Clippy, fmt, codegen and
scalar-only/AVX-512-only builds. New public-interface tests cover both
directions/precisions and Estimate/Measure, all placements, batches,
scalar-offset buffers, canaries and exact/short scratch. The report keeps
raw results, source/executable hashes, reproduction commands and failed
experiments, including a closure that broke SIMD inlining.

G8 still fails and its worst planning ratio increases from 76.01x to
310.59x at f64 N=31. Repeated candidate evaluation and table preparation
remain ticket 18's work. This resolves the ticket's quick-profile G3
acceptance, not the full-profile release gates or Measure's speed target.

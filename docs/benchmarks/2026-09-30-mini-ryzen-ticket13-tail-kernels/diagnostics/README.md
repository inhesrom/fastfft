# Ticket 13 tuning evidence

The test-harness measurements are exploratory, not release-gate results.
Each retained diagnostic uses three processes pinned to core 2 after the
environment check passed. Every candidate is verified against the numerical
reference before timing. The release-profile harness lacks the arena's fat
LTO and function-alignment configuration; its rankings do not establish the
final dispatch policy.

Each diagnostic directory contains the exact library patch relative to
`8a36159`, source hashes, executable hash and compressed timing logs.
CSV rows record precision, size, kernel, ISA, lanes, decomposition, direction,
placement, timing surface, minimum and median nanoseconds.

- `rectangles-constant-tail`: fixed tail-copy lengths in both the experimental
  packed candidate and the existing rectangular kernels. The existing f64
  N=210 rectangle wins, so the additional packed engine was removed.
- `coprime-leaves`: reordered f64 N=6/18 leaves. N=18 improves; N=6 still
  pays an AVX entry-call cost.
- `small-schedule`: an SSE2-only N=6 leaf, a coprime N=36 permutation and
  twiddles before the transpose in wide f32 rectangles. Only N=6 was retained.
- `tiled-matrix`: constant tile-copy lengths and an intermediate initialized
  by first-pass stores instead of an initial clear.
- `nine-pairs`: a paired-output 9-point butterfly; rejected after timing.
- `square36`: packed 6x6 f64 panels, with coprime 2x3 butterflies. This passes
  the public-contract tests and improves N=36 substantially.
- `arena-before-placement`: official focused runs on the first selected
  kernel set, using three processes and core 2. Five of the seven previous
  misses pass. f32 N=80 still misses and f32 N=108 regresses under LTO.
  The source patch and executable hash apply to both contained arena runs.
- `arena-placement`: official focused follow-up that also times Measure.
  Avoiding 4 KiB conflicts in the temporary matrix does not fix N=108 and
  regresses N=80. The placement experiment was removed.
- `packed-f32`: packed 16x5 and 12x9 kernels for N=80/108. Both pass the
  public-contract tests and improve the diagnostic timings; the arena still
  determines whether their LTO code generation meets the gate.
- `arena-one-miss`: the first complete run after the packed f32 additions.
  All seven previous misses pass and the geomean reaches 1.319x best /
  1.318x median, but f32 N=96 regresses to 0.917x / 0.934x. This failed run
  is retained in full. The subsequent change extends the packed path to 16x6.
- `arena-drift-flag`: the full run with the 16x6 extension fixes N=96, but
  flags 11.52% control drift and misses f64 N=4725.
- `arena-4725-miss`: the unchanged executable repeated with clean 0.62%
  drift still misses f64 N=4725 (0.911x best / 0.907x median). All other
  cells pass and the geomean reaches 1.324x on both statistics.
- `arena-4725-measure`: focused Estimate/Measure comparison on the same
  executable. Measure selects 63x75 ymm panels but is slower than Estimate;
  the default also varies from the complete run, so no success is inferred
  from this focused retiming.
- `4725-factors`: explicit FourStep geometries from 25x189 through 189x25
  in both AVX-512 widths. The best diagnostic is 105x45 ymm (~10.09 us),
  followed by 75x63 zmm (~10.23 us); RustFFT is ~10.30 us. These small
  margins motivate improving bounded panel tails before changing dispatch.
- `masked-panels`: the same factor sweep after replacing temporary tail
  copies with native masked loads/stores on the AVX-512 tiers. The existing
  63x75 zmm geometry now wins at ~8.40 us versus ~10.38 us before this
  change. Dispatch stays unchanged; the complete arena suite is the gate.
- `arena-masked-drift`: the first complete run of the final masked-tail
  executable passes all 82 performance cells (1.336x best / 1.333x median),
  but is rejected for 13.49% control drift. The unchanged executable's repeat
  has 0.89% drift and is published in the enclosing report.

The diagnostic command is the ignored `tests::small_candidate_timings` test,
with `--exact --ignored --nocapture --test-threads=1` and
`FASTFFT_TIMING_SURFACE=public`. `FASTFFT_TIMING_N`, `PRECISION` and
`CANDIDATE` select the cases recorded in each log. The enclosing benchmark
report records the authoritative full-suite result.

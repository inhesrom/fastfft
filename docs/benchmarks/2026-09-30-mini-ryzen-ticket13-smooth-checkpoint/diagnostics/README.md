# Exploratory candidate timings

These are test-harness diagnostics, not official arena results. Each uses
three separate processes pinned to core 2 on the idle Zen 4 host, without the
arena's function-alignment flag. The public timing loop is shared across
candidates and RustFFT, so tiny cross-library comparisons are provisional.
The arena reports establish the published performance claims.

All invocations use the ignored `tests::small_candidate_timings` test with
`--exact --ignored --nocapture --test-threads=1` and
`FASTFFT_TIMING_SURFACE=public`. CSV rows record process, precision, length,
kernel, ISA, lane count, decomposition, direction, placement, surface,
minimum and median nanoseconds. Every candidate is verified before timing.

- `rectangular-v1`: register fusion only when both dimensions fit the vector;
  sizes 6,9,18,24,36,48,80,96,108,120,160,210,240,504,720.
- `rectangular-v2`: extended fusion to tall rectangles; added fixed Stockham
  orders for transition sizes; the same size list.
- `fourstep-factors`: N=210, kernels `fourstep,rustfft`, additional first
  factors 3,5,6,7,9,10,14,15,21,30,35,42,70. Uses the rectangular-v2 source
  and executable. No tested panel decomposition reaches the target here.
- `packed-v1`: N=9,24,36,48, kernels `interleaved,rustfft`; the first packed
  leaves, before the N=18 addition and default dispatch. Numerical and buffer
  checks passed; a candidate-window test failed and was fixed afterward.

Where present, `source.patch.gz` is relative to commit `8a36159` and includes
new library files; hashes record exact source and test executable versions.
The subsequent arena build exposed a cost for tall fused f32 rectangles that
was not apparent in these diagnostic timings. The final checkpoint uses
local tiling whenever either dimension exceeds SIMD width.

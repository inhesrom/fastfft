# Ticket 13: rectangular leaves and measured smooth dispatch

The implementation continues from checkpoint commit `8a36159` on
`ticket-13-odd-smooth-simd`. `source.patch.gz` records library changes from
that commit, including new files. `source.sha256` and `executable.sha256`
identify the measured sources and arena executable.

## Implementation

- Fixed rectangular small leaves allow both codelet dimensions to differ
  from SIMD width. When the second dimension fits in one vector, inputs stay
  in registers across the first codelet and the transpose. Wider rectangles
  use a bounded local intermediate matrix. All caller input is consumed before
  writing caller output, and tails use bounded copies with no caller padding.
- Packed complex leaves cover f64 N=9/18 and both precisions at N=24/36/48.
  Radix-3 combinations keep real/imaginary pairs together through arithmetic,
  twiddles and the final radix-2 or radix-4 stage. These leaves require no
  caller scratch.
- Fixed Stockham schedules and alternative radix orders cover N=108, 120,
  240, 504 and 720. This removes runtime pass dispatch at transition sizes.
- A separate smooth dispatch table chooses measured kernels and dimensions,
  including FourStep for N=4725/165375. The existing small dispatch baseline
  remains intact. ISA caps and compiled-feature availability still gate choices.
- Measure retains its eight-candidate limit, including the default plan,
  the opposite engine where available, interleaved leaves and the old small
  incumbent. FourStep candidates also cover large even lengths for investigation.

## Coverage

The expanded small-kernel public-contract tests exercise both precisions and
both directions, every compiled supported candidate (including explicit AVX2),
in-place/out-of-place/immutable/process entry points, single transforms and
three-transform batches, scalar offsets and guards, exact scratch behavior,
roundtrips, rejected lengths, cached plan identity and ISA caps. Numerical
checks use the independent double-double reference. Separate tests check all
new Stockham radix orders. Existing panel tests cover partial panels,
rectangular orientations, multi-pass dimensions and large odd transforms.

Miri and non-x86 execution were not run locally. Scalar-only compilation and
capped-tier checks are recorded with the completed validation results.

# Ticket 13: rectangular leaves and measured smooth dispatch

The implementation continues from checkpoint commit `8a36159` on
`ticket-13-odd-smooth-simd`. `source.patch.gz` records library changes from
that commit, including new files. `source.sha256` and `executable.sha256`
identify the measured sources and arena executable.

## Implementation

- Fixed rectangular small leaves allow both codelet dimensions to differ
  from SIMD width. When both dimensions fit in one vector, inputs stay
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
  including FourStep for N=4725/165375 and f64 N=1000000. The existing small dispatch baseline
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
new Stockham radix orders. Panel references include a 1000-point dimension
in both orientations, covering the new million-point decomposition. Existing panel tests cover partial panels,
rectangular orientations, multi-pass dimensions and large odd transforms.

Miri and non-x86 execution were not run locally. Scalar-only compilation and
capped-tier checks are recorded with the completed validation results.

## Validation commands

```sh
cargo test --workspace --release -j 1
for tier in scalar sse2 avx2 avx512-ymm avx512; do
  FASTFFT_ISA_CAP="$tier" FASTFFT_REQUIRE_ISA="$tier" FASTFFT_TEST_QUICK=1 \
    cargo test -p fastfft --release -j 1
done
cargo check -p fastfft --no-default-features
cargo clippy --workspace --all-targets -- -D warnings
cargo xtask codegen --check
cargo fmt --all --check
git diff --check
```

The full workspace run includes the exhaustive accuracy sweep. The explicitly
ignored timing/M3 tests are not part of that run. Concurrent workspace and
arena compilation were killed with SIGKILL under memory pressure; the checks
were rerun with one build at a time and `-j 1`. The successful workspace rebuild
took 9m03s. G9's dedicated build-time measurement was not run; the added static
candidate set has a compilation cost that should be revisited before release.

All commands above passed on the final source. Compressed successful logs
are in [checks/](checks/); formatting and `git diff --check` produced no output.

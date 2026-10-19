# Validation and implementation notes

This work continues checkpoint `8a36159` on `ticket-13-odd-smooth-simd`.
The enclosing report's source patch includes the earlier rectangular leaves,
fixed Stockham schedules and smooth dispatch table, as well as this tuning.

## Retained changes

- Rectangular panel tails use compile-time remainder lengths. This prevents
  repeated dynamic `memcpy`/`memset` calls observed in the generated assembly.
  Tile copies likewise distinguish full panels from a constant-size tail.
- The tiled intermediate uses `MaybeUninit`; the first pass initializes all
  `M*B` complex cells before any second-pass load. Bounded loads read only
  these cells. Every caller input is consumed before output stores, preserving
  in-place operation. No caller padding or scratch is required.
- f64 N=6 uses a baseline-SSE2 leaf that can inline into the public wrapper.
  f64 N=18 uses two packed 9-point transforms with coprime input/output
  coordinates. The 6-point row butterfly uses the same 2x3 factor ordering.
- f64 N=36 uses packed 6x6 panels. Each panel holds two complex values in a
  ymm register; both dimensions divide exactly into three panels.
- f32 N=80/96/108 use packed 16x5, 16x6 and 12x9 rectangles. The first
  dimension is divisible by four, so only input-column tails need bounded
  copies. The 16-point stage reuses the existing radix-16 implementation.
- Direction-specific packed twiddle tables are constructed alongside the
  existing split tables. Shared predicates select the matching builder and
  execution path. ISA availability, compile-time features and precision still
  gate each specialization.

The discarded packed-codelet engine, paired-output butterfly, coprime 4x9
permutation, alternate twiddle schedule and temporary-buffer placement
experiments are absent from the final implementation. Their relevant timing
evidence remains in [diagnostics/](diagnostics/README.md).

## Coverage

Public-contract tests cover all candidate shapes in both precisions and
directions, in-place/out-of-place/immutable calls, `process`, one- and
three-transform batches, scalar-offset buffers and guards, exact scratch,
roundtrips, rejected lengths, cached plans and ISA caps. Numerical results
are checked against the independent double-double reference. The new N=96
path is covered by the existing candidate tests.

FourStep coverage includes partial panels, both orientations of rectangular
decompositions, multi-pass dimensions, larger odd transforms and a 1000-point
dimension for the million-point default. Fixed Stockham transition orders
are also checked explicitly. The workspace run includes both exhaustive
accuracy sweeps; the intentionally ignored M3 and timing tests are separate.

## Commands

```sh
cargo test --workspace --release -j 2
for tier in scalar sse2 avx2 avx512-ymm avx512; do
  FASTFFT_ISA_CAP="$tier" FASTFFT_REQUIRE_ISA="$tier" FASTFFT_TEST_QUICK=1 \
    cargo test -p fastfft --release -j 2
done
cargo check -p fastfft --no-default-features
cargo check -p fastfft --no-default-features --features avx512
cargo clippy --workspace --all-targets -- -D warnings
cargo xtask codegen --check
cargo fmt --all --check
git diff --check
```

All commands above passed. Successful logs are retained in `checks/`;
formatting and `git diff --check` produced no output. Builds run one at a time;
benchmarking runs only after compilation and tests stop and the environment
check passes. Miri and non-x86 execution were not run locally. The dedicated
G9 build-time gate remains separate from this ticket.

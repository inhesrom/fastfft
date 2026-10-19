# Ticket 11 validation

The implementation adds a scratch-free Small engine, direct latency codelets,
fused SIMD transforms, and fixed-schedule Stockham execution for the transition
through N=256. Public FFT signatures, normalization and ISA caps are unchanged.

## Commands and results

All commands below passed on the Zen 4 host:

```sh
cargo fmt --all --check
cargo clippy --workspace --all-targets -- -D warnings
cargo xtask codegen --check
cargo check -p fastfft --no-default-features
cargo test -p fastfft --release
cargo test -p fastfft-codegen --release
cargo test -p fastfft --release --lib m3_smooth_every_shape -- --ignored --nocapture
for isa in scalar sse2 avx2 avx512-ymm avx512; do
  FASTFFT_ISA_CAP=$isa FASTFFT_TEST_QUICK=1 cargo test -p fastfft --release
  FASTFFT_ISA_CAP=$isa cargo test -p fastfft --release --test accuracy m3_smooth -- --ignored --nocapture
done
cargo build --profile arena -p fastfft-arena --features fftw
```

The exhaustive M3 checks ran before the final single-transform shortcut and
three dispatch-table refinements. Arithmetic kernels and Stockham schedules did
not change after those checks. The complete release suite, all five quick tier
runs, formatting, Clippy, scalar-only compilation and code generation passed
again after the final changes. The final Small tests cover both the single and
batch entry paths, including every kernel and precision, both directions,
all placements, offsets 0 through 8, guard values and unused scratch. Fixed
Stockham kernels also have exact-length offset-scratch and three-transform
buffer tests on every eligible vector shape.

A final safety audit found that a valid scratch slice can be aligned to the
real scalar without its address being a multiple of the complex element size.
For that slice, stepping by whole complex elements cannot reach a 64-byte
boundary: `align_offset(64)` returns `usize::MAX`. Fixed Stockham now bounds the
offset by the reserved slack, matching generic Stockham and using its unaligned
SIMD operations. This is a bounds-safety fix, not performance alignment tuning.
The dedicated regression covers both precisions, every fixed shape and direction,
in-place and immutable calls, exact scratch lengths and guards. That test, the
complete release suite and workspace Clippy passed after the fix. The final
arena was rebuilt and its full acceptance run repeated on this source.
Formatting, scalar-only compilation and `codegen --check` also passed on the
final source; these checks made no source changes.

Coverage includes:

- Every eligible Small kernel against the independent double-double reference;
  finite errors and the fast-path error bound are asserted explicitly.
- Zero scratch for Small in all placements, immutable input preservation,
  unnormalized inverse transforms, natural output order, and convenience calls.
- Planner cache identity and descriptions, Estimate and Measure, malformed
  buffers, identity lengths, Small/Stockham transitions and Bluestein (including
  length 19, whose default inner length 40 uses Small on the full Zen 4 tier).
- The release accuracy sweep: 4,111 lengths per precision, both directions.
- Exhaustive public M3 tests: 1,202 13-smooth lengths through 32768, both
  precisions/directions under each of five ISA caps, satisfying the independent
  error bound and `1.5 * rustfft error + 1 epsilon`.
- Exhaustive internal M3 test: all 1,201 non-identity smooth lengths through
  32768, every eligible vector shape, both precisions/directions and all three
  placements.

The existing balanced Stockham codelets were compared to commit `40d6503`:
all original generated arithmetic is unchanged; latency variants are appended.
The generator checks both balanced and unbalanced graphs before emitting them.

Timing diagnostics are ignored tests and are not part of correctness runs.
Hosted CI, SDE, Miri and non-x86 execution were not run in this session.

# Validation and implementation

The work starts at `a4d8aae88738db827a9a259f23077b72b591481c`.

## Batch dispatch

Power-of-two plans for N=8…1024 gain a private batch wrapper when AVX2 is
compiled and available. Planning and public APIs remain unchanged. At N=8,
f32 in-place and non-streaming separate-output calls transpose four
independent transforms into complex SIMD lanes, run the shared radix-8
kernel, and transpose back. Aligned streaming N=8 calls use that kernel
for both precisions and store complete output rows non-temporally.

Other in-place calls go directly to the original plan. Separate-output
calls stream only if output is 64-byte aligned and one buffer occupies at
least three eighths of detected last-level cache. Thus the combined input
and output footprint reaches three quarters of cache. Smaller or offset
calls retain the existing execution. SSE2/scalar and builds without AVX2
retain their original plans.

At N=16…256, existing register-resident leaves write to a bounded stack
buffer, which is copied sequentially with streaming SIMD stores. This
keeps cache-line completion contiguous despite the leaves' strided output
order. f64 N=128/256 prefetch the transform after next in line order,
within the validated batch bounds. At N=512/1024, a 64-byte-aligned stack
tile holds four results from the original Stockham plan, followed by a
streamed copy. A second bounded tile supplies immutable scratch only when
the public mode's advertised scratch is insufficient. Each tile contains
4096 complex elements at most. Streaming stores are fenced before tail
processing and before return.

Full groups contain four transforms; the remainder uses the original plan.
All scratch queries return the underlying single-transform requirement.
Wrappers validate lengths and scratch before the first write, and use
only the advertised scratch prefix even if the caller supplies more.
Immutable input is never modified. No heap allocation occurs in execution
when the caller provides scratch; `process` retains automatic scratch.

## Checks

The complete release suite passed, including the normal accuracy sweep
through 2^22, conformance, properties and the new public batch tests. It
also passed with all five ISA caps. Restricted-feature builds, workspace
Clippy, formatting and code generation checks passed:

```sh
cargo test -p fastfft --release
for cap in scalar sse2 avx2 avx512-ymm avx512; do
  FASTFFT_ISA_CAP="$cap" FASTFFT_REQUIRE_ISA="$cap" FASTFFT_TEST_QUICK=1 \
    cargo test -p fastfft --release
done
cargo clippy --workspace --all-targets -- -D warnings
cargo check -p fastfft --no-default-features
cargo check -p fastfft --no-default-features --features avx512
cargo check -p fastfft --no-default-features --features avx2
cargo fmt --all --check
cargo xtask codegen --check
```

Those broad checks preceded the final read-ahead, in-place forwarding and
size-8 streaming changes. The relevant contract tests and Clippy passed
after those changes:

```sh
cargo clippy -p fastfft --all-targets -- -D warnings
cargo test -p fastfft --test batch
cargo test -p fastfft --lib streaming_batches
cargo fmt --all --check
git diff --check
```

Public tests cover both precisions/directions, every ISA cap, all three
placements and automatic `process`, N=8…1024, batch counts {1,3,5,8}, exact
scratch, offset buffers, surrounding guards, immutable input and rejection
of short scratch before mutation. Private forced-streaming tests repeat
the separate-output cases with aligned and offset output, exercising both
full-group and remainder execution. They also verify that oversized
scratch beyond the advertised prefix remains untouched. Each FFT is
compared against an independent RustFFT f64 reference within the testkit's
fast-path accuracy bound.

Logs are retained under `checks/`. No compile or test runs concurrently
with benchmark timing. Sanitizers, Miri and execution on other CPU families
remain separate follow-up work.

## Single-transform timing guard

Matched aligned-build, three-process quick runs cover the 16 forward/in-place
cells from N=8 through 1024. Both verify, with 0.64% baseline / 0.58% candidate
drift. Fastfft's own geometric-mean time changes by +0.99% best / +0.82%
median. The maximum best difference is +3.56% at f64 N=1024; the maximum
median difference is +3.53% at f32 N=64. f64 N=256 measures −0.39% best /
+0.05% median, so the earlier +18% diagnostic difference does not reproduce
under matching function-alignment settings. These focused quick runs establish
an overhead check, not the complete small-size or power-of-two release gates.

The raw runs are saved as
[single baseline](diagnostics/single-baseline-final/report.md) and
[single candidate](diagnostics/single-final/report.md). The baseline uses its
saved executable; the candidate uses the exact final batch executable.

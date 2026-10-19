# Validation and implementation notes

The source starts at the ticket 13 merge,
`d775eac828891a0dd37189e6906ff39175777d1f`.

## Implementation

Power-of-two FourStep plans reuse the smooth panel engine's SIMD codelets
and register transpose. Their intermediate is laid out as
`[A/L][B][re × L, im × L]`, in the second stage's consumption order. Cross
twiddles are factored into coarse and fine tables; at 2^24 the tables use
one thirty-second of the original space. The second-stage loads also avoid
deinterleaving this intermediate.

Adjacent panels share a group buffer bounded by one eighth of detected
last-level cache, capped at 2 MiB plus padding. The first pass reads adjacent
columns at each strided input visit; final output stores likewise traverse
adjacent panel vectors. Panel completion leaves results in the initial
group buffer. Its last Stockham pass can alias safely because each butterfly
reads and writes the same indices, disjoint from other butterflies.

The main matrix and work panels have 1 KiB spacing to avoid identical page
offsets. Each group panel has a cache-line pad. All input is consumed before
caller output is written: execution has two passes over the main arrays,
with additional passes confined to panel workspace, for both in-place and
separate-output calls. The reported scratch includes the matrix, two work
panels, group storage and alignment allowance, reused across a batch.

Measured defaults enable non-temporal stores when the transform occupies
at least half of last-level cache and each complex vector pair fills a
cache line. Scratch is aligned internally; caller output uses these stores
only when it is 64-byte aligned. Store fences precede all intermediate
reads and the return to the caller. Misaligned output uses ordinary stores.

The measured Zen 4 Estimate dispatch retains Stockham below an 8 MiB
transform. It uses AVX-512-ymm for f32 2^20, full AVX-512 for larger f32
and f64 from 2^19, subject to compiled features and the caller's ISA cap.
AVX2/SSE2/scalar Estimate choices remain unchanged. At 2^20 and 2^21,
512×2048 and 512×4096 decompositions save a radix-8 panel pass relative to
balanced factors. Measure still compares the original Stockham choice and
alternative panel shapes. The general cost model and portable thresholds
remain tickets 16/18/27.

Software prefetching and recursive panel passes were measured and removed.
Test-only switches retain reproducible comparisons of streamed stores,
panel grouping and workspace padding. None changes production dispatch.

## Coverage and commands

The normal double-double accuracy sweep now covers every length 1–4096
and powers of two through 2^22, in both precisions and directions. Large
plans are released between sizes to bound test memory. Separate M4 tests
compare against RustFFT in f64 and check both roundtrip directions at
2^20, 2^22 and 2^24.

Public-contract coverage includes aligned and deliberately offset buffers,
three transforms sharing scratch, both directions, all three placements,
`process`, exactly advertised scratch, surrounding guards, immutable input,
and undersized-scratch rejection before mutation. Direct panel tests cover
both rectangular orientations and final-pass aliasing on every available
vector shape. Existing odd/partial-panel tests remain in the same suite.

```sh
cargo test --workspace --release -j 2
for tier in scalar sse2 avx2 avx512-ymm avx512; do
  FASTFFT_ISA_CAP="$tier" FASTFFT_REQUIRE_ISA="$tier" FASTFFT_TEST_QUICK=1 \
    cargo test --workspace --release -j 2
done
cargo test -p fastfft --release --test accuracy m4_large_roundtrip -- \
  --ignored --nocapture --test-threads=1
cargo check -p fastfft --no-default-features
cargo check -p fastfft --no-default-features --features avx512
cargo clippy --workspace --all-targets -- -D warnings
cargo xtask codegen --check
cargo fmt --all --check
git diff --check
```

All commands above passed. At 2^24 the f32 reference/roundtrip errors are
1.54/2.29 epsilon; f64 errors are 2.82/2.57 epsilon, in both directions.
The successful logs are retained under `checks/`.
Compilation and tests finish before any official timing begins. Miri,
sanitizers and execution on other CPU families were not run for this ticket.

## Arena calibration correction

The first full gate run stopped advancing after 73 completed cells. Its
f64 2^23 forward/out-of-place child remained CPU-bound for several minutes.
A standalone replay of the existing calibration function reproduced the
cause in 110 ms: calls lasting 40 ms and 70 ms cross both the half-way and
end boundaries of a 100 ms warm-up. The tail window then contains no calls,
but the old code divides a few nanoseconds of timer overhead by one and
selects a batch of 1,613 calls for a 50 microsecond minimum.

The corrected batch-size calculation falls back to the complete warm-up
whenever the tail contains no completed calls. A deterministic regression
test first failed with 1,613 versus the expected one, then passed. Another
test retains the tail-rate preference when actual samples exist. The real
warm-up replay also now selects one call. `cargo test -p fastfft-arena
--release -j 2`, Clippy and formatting pass after this correction.

This changes only the invalid calibration fallback. Timed loops, warm-up
duration, round count, process selection and reported statistics retain
their established protocol. The interrupted run and both regression-test
outcomes are kept in the diagnostic archive. Final measurements use a fresh
complete run of the corrected arena.

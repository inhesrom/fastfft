# Ticket 10 validation

The main checks below ran against the retained implementation before the published measurements. The final test-only audit is recorded separately at the end.

## Commands

```sh
cargo fmt --all --check
cargo clippy --workspace --all-targets -- -D warnings
cargo xtask codegen --check
cargo test -p fastfft --release -- --nocapture
cargo test -p fastfft --release --lib m3_smooth_every_shape -- --ignored --nocapture
for isa in scalar sse2 avx2 avx512-ymm avx512; do
  FASTFFT_ISA_CAP=$isa FASTFFT_TEST_QUICK=1 cargo test -p fastfft --release -- --nocapture
  FASTFFT_ISA_CAP=$isa cargo test -p fastfft --release --test accuracy m3_smooth -- --ignored --nocapture
done
cargo check -p fastfft --no-default-features
cargo bench -p fastfft
cargo build --profile arena -p fastfft-arena --features fftw
```

The scalar-only check passed with the existing unused `entry` macro warning. Criterion completed all 12 benchmarks.

## Coverage

- Public-planner M3 checks: every one of the 1,202 13-smooth lengths from 1 through 32768, f32 and f64, forward and inverse, under each of five ISA caps. Each result satisfies the fast-path error bound and `1.5 × rustfft error + 1 epsilon`.
- Internal M3 check: every eligible non-identity smooth length through 32768 on every supported vector shape, both precisions and directions, in-place/out-of-place/immutable. This explicitly includes AVX2 on the AVX-512 host.
- The unfiltered release accuracy sweep checks 4,111 lengths per precision, including rough lengths and selected larger lengths. Conformance, properties, and doc tests also pass.

## Captured results

### validation

```text
Running fmt
Passed fmt
Running clippy
Passed clippy
Running codegen
Passed codegen
Running release-tests
Passed release-tests
Running m3-shapes
Passed m3-shapes
Running tier-scalar
Passed tier-scalar
Running m3-scalar
Passed m3-scalar
Running tier-sse2
Passed tier-sse2
Running m3-sse2
Passed m3-sse2
Running tier-avx2
Passed tier-avx2
Running m3-avx2
Passed m3-avx2
Running tier-avx512-ymm
Passed tier-avx512-ymm
Running m3-avx512-ymm
Passed m3-avx512-ymm
Running tier-avx512
Passed tier-avx512
Running m3-avx512
Passed m3-avx512
Running arena-build
Passed arena-build
All validation checks passed
```

### release-tests

```text
test result: ok. 5 passed; 0 failed; 1 ignored; 0 measured; 0 filtered out; finished in 1.39s
checked 4111 lengths on avx512; worst error 2.42 eps at n=131071
checked 4111 lengths on avx512; worst error 2.86 eps at n=131071
test result: ok. 2 passed; 0 failed; 2 ignored; 0 measured; 0 filtered out; finished in 79.06s
test result: ok. 11 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.01s
test result: ok. 4 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.02s
test result: ok. 1 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 0.00s
```

### m3-shapes

```text
checked all 1201 non-identity smooth lengths through 32768, all supported shapes, both precisions/directions, three placements
test result: ok. 1 passed; 0 failed; 0 ignored; 0 measured; 5 filtered out; finished in 130.69s
```

### m3-scalar

```text
checked 1202 lengths on scalar; worst error 1.56 eps at n=19683
checked 1202 lengths on scalar; worst error 1.44 eps at n=19683
test result: ok. 2 passed; 0 failed; 0 ignored; 0 measured; 2 filtered out; finished in 21.35s
```

### m3-sse2

```text
checked 1202 lengths on sse2; worst error 1.44 eps at n=19683
checked 1202 lengths on sse2; worst error 1.56 eps at n=19683
test result: ok. 2 passed; 0 failed; 0 ignored; 0 measured; 2 filtered out; finished in 21.32s
```

### m3-avx2

```text
checked 1202 lengths on avx2; worst error 1.56 eps at n=19683
checked 1202 lengths on avx2; worst error 1.44 eps at n=19683
test result: ok. 2 passed; 0 failed; 0 ignored; 0 measured; 2 filtered out; finished in 21.16s
```

### m3-avx512-ymm

```text
checked 1202 lengths on avx512-ymm; worst error 1.56 eps at n=19683
checked 1202 lengths on avx512-ymm; worst error 1.44 eps at n=19683
test result: ok. 2 passed; 0 failed; 0 ignored; 0 measured; 2 filtered out; finished in 21.17s
```

### m3-avx512

```text
checked 1202 lengths on avx512; worst error 1.56 eps at n=19683
checked 1202 lengths on avx512; worst error 1.44 eps at n=19683
test result: ok. 2 passed; 0 failed; 0 ignored; 0 measured; 2 filtered out; finished in 21.17s
```

## Final test-only audit

After measurements, the placement helper gained explicit finite-error assertions: `f64::max` can otherwise hide NaN errors. This delta is preserved in [validation.patch](validation.patch), applied after the measured [source.patch](source.patch). The engine and benchmark executable did not change.

Formatting and workspace Clippy passed again. The complete internal suite, including the exhaustive all-shape M3 test, was rerun:

```sh
cargo fmt --all --check
cargo clippy --workspace --all-targets -- -D warnings
cargo test -p fastfft --release --lib -- --include-ignored --nocapture
```

```text
checked all 1201 non-identity smooth lengths through 32768, all supported shapes, both precisions/directions, three placements
test result: ok. 6 passed; 0 failed; 0 ignored; 0 measured; 0 filtered out; finished in 126.51s
```

The [artifact audit](audit.json) also passed: the published raw data matches the original runs byte for byte after decompression; every expected cell is present with three processes and passing verification; measured source/executable hashes match; and the source plus validation patches reconstruct the final implementation and tests. Local report/tracker link targets were checked.

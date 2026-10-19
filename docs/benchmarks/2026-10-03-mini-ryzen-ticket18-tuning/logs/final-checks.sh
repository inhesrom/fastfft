#!/usr/bin/env bash
set -eu
export CARGO_BUILD_JOBS=1
cargo fmt --all -- --check > target/ticket18/final-fmt.log 2>&1
cargo clippy --workspace --all-targets --all-features -- -D warnings > target/ticket18/final-clippy.log 2>&1
cargo clippy -p fastfft --all-targets --no-default-features --features tuning -- -D warnings > target/ticket18/final-clippy-scalar.log 2>&1
cargo clippy -p fastfft --all-targets --no-default-features --features avx512,tuning -- -D warnings > target/ticket18/final-clippy-avx512.log 2>&1
cargo xtask codegen --check > target/ticket18/final-codegen.log 2>&1
cargo test -p fastfft --release > target/ticket18/final-test-release.log 2>&1
for cap in scalar sse2 avx2 avx512-ymm avx512; do
  FASTFFT_ISA_CAP="$cap" FASTFFT_TEST_QUICK=1 cargo test -p fastfft --release > "target/ticket18/final-test-$cap.log" 2>&1
done
cargo test -p fastfft --release --test accuracy m4_large_roundtrip -- --ignored --test-threads=1 > target/ticket18/final-test-large.log 2>&1
cargo build --profile arena -p fastfft --example tune --features tuning > target/ticket18/final-build-tune.log 2>&1
cargo build --profile arena -p fastfft-arena --features fftw > target/ticket18/final-build-arena.log 2>&1

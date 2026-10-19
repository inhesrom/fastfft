#!/usr/bin/env bash
# Run from the repository root, on the final source; no concurrent benchmarks.
set -euxo pipefail
cargo fmt --all --check
cargo clippy --workspace --all-targets -- -D warnings
cargo xtask codegen --check
python3 scripts/test_small_latency.py
cargo check -p fastfft --no-default-features
for features in sse2 avx2 avx512; do
  cargo check -p fastfft --no-default-features --features "$features"
  FASTFFT_TEST_QUICK=1 cargo test -p fastfft --release --no-default-features --features "$features" --lib
done
FASTFFT_TEST_QUICK=1 cargo test -p fastfft --release --no-default-features --lib
cargo test -p fastfft --release
cargo test -p fastfft-codegen --release
for isa in scalar sse2 avx2 avx512-ymm avx512; do
  FASTFFT_ISA_CAP=$isa FASTFFT_TEST_QUICK=1 cargo test -p fastfft --release
  FASTFFT_ISA_CAP=$isa cargo test -p fastfft --release --test accuracy m3_smooth -- --ignored --nocapture
done
cargo test -p fastfft --release --lib m3_smooth_every_shape -- --ignored --nocapture
# Build the final arena only after all source validation has passed. Every
# function starts on a 64-byte line, so N <= 8 cells do not depend on layout.
RUSTFLAGS="-C llvm-args=-align-all-functions=6" CARGO_TARGET_DIR=target/aligned \
  cargo build --profile arena -p fastfft-arena --features fftw

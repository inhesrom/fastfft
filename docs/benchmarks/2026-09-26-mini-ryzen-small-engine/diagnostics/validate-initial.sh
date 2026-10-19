#!/usr/bin/env bash
set -euo pipefail
run_check() {
  local name=$1
  shift
  echo "Running $name"
  "$@" > "target/small-validation/$name.log" 2>&1
  echo "Passed $name"
}
run_check fmt cargo fmt --all --check
run_check clippy cargo clippy --workspace --all-targets -- -D warnings
run_check codegen cargo xtask codegen --check
run_check scalar-build cargo check -p fastfft --no-default-features
run_check release-tests cargo test -p fastfft --release
run_check generator-tests cargo test -p fastfft-codegen --release
run_check m3-shapes cargo test -p fastfft --release --lib m3_smooth_every_shape -- --ignored --nocapture
for isa in scalar sse2 avx2 avx512-ymm avx512; do
  run_check tier-$isa env FASTFFT_ISA_CAP=$isa FASTFFT_TEST_QUICK=1 cargo test -p fastfft --release
  run_check m3-$isa env FASTFFT_ISA_CAP=$isa cargo test -p fastfft --release --test accuracy m3_smooth -- --ignored --nocapture
done
run_check arena-build cargo build --profile arena -p fastfft-arena --features fftw

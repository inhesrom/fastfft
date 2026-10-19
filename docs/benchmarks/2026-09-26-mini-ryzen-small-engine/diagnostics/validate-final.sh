#!/usr/bin/env bash
set -euo pipefail
run_check() {
  local name=$1
  shift
  echo "Running $name"
  "$@" > "target/small-validation/final-$name.log" 2>&1
  echo "Passed $name"
}
run_check fmt cargo fmt --all --check
run_check scalar-build cargo check -p fastfft --no-default-features
run_check codegen cargo xtask codegen --check
run_check release-tests cargo test -p fastfft --release
for isa in scalar sse2 avx2 avx512-ymm avx512; do
  run_check tier-$isa env FASTFFT_ISA_CAP=$isa FASTFFT_TEST_QUICK=1 cargo test -p fastfft --release
done

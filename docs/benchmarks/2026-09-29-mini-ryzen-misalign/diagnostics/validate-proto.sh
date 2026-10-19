#!/usr/bin/env bash
# Ticket 12: validate the mitigation prototype, then build its arena.
# Run only while no benchmark is running (it compiles on every core).
set -euxo pipefail
cd /home/ianhersom/repo/fastfft
if pgrep -x fastfft-arena; then
  echo "a benchmark is running; not compiling" >&2
  exit 1
fi
cargo fmt --all --check
cargo clippy --workspace --all-targets -- -D warnings
cargo xtask codegen --check
cargo test --workspace --release
for isa in scalar sse2 avx2 avx512-ymm avx512; do
  FASTFFT_ISA_CAP=$isa FASTFFT_TEST_QUICK=1 cargo test -p fastfft --release
done
RUSTFLAGS="-C llvm-args=-align-all-functions=6" CARGO_TARGET_DIR=target/aligned-proto \
  cargo build --profile arena -p fastfft-arena --features fftw
cp target/aligned-proto/arena/fastfft-arena target/ticket12/arena-proto
sha256sum target/ticket12/arena-proto > target/ticket12/arena-proto.sha256
git diff > target/ticket12/proto.patch
echo VALIDATE-DONE

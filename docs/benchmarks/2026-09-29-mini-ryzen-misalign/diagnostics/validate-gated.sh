#!/usr/bin/env bash
# Ticket 12: correctness/tier checks, then an isolated function-aligned arena.
# Run from the repository root, never concurrently with benchmarks.
set -euxo pipefail
variant=${GATED_VARIANT:-gated-v2}
if pgrep -x fastfft-arena; then
  echo 'a benchmark is running; not compiling' >&2
  exit 1
fi
cargo fmt --all --check
cargo clippy --workspace --all-targets -- -D warnings
cargo xtask codegen --check
cargo test --workspace --release
for isa in scalar sse2 avx2 avx512-ymm avx512; do
  FASTFFT_ISA_CAP=$isa FASTFFT_TEST_QUICK=1 cargo test -p fastfft --release
done
cargo test -p fastfft --release --no-default-features
RUSTDOCFLAGS='-D warnings' cargo doc -p fastfft --no-deps
RUSTFLAGS='-C llvm-args=-align-all-functions=6' CARGO_TARGET_DIR=target/aligned-gated \
  cargo build --profile arena -p fastfft-arena --features fftw
mkdir -p target/ticket12
cp target/aligned-gated/arena/fastfft-arena "target/ticket12/arena-$variant"
sha256sum "target/ticket12/arena-$variant" > "target/ticket12/arena-$variant.sha256"
# Include new files in the build-source closure, but not prior benchmark
# artifacts (which would recursively embed earlier patches in later ones).
source_paths=(Cargo.toml Cargo.lock rust-toolchain.toml .cargo crates/fastfft bench/arena)
git rev-parse HEAD > "target/ticket12/$variant-base.txt"
git diff HEAD --binary -- "${source_paths[@]}" > "target/ticket12/$variant.patch"
while IFS= read -r -d '' path; do
  git diff --no-index --binary /dev/null "$path" >> "target/ticket12/$variant.patch" || [ "$?" = 1 ]
done < <(git ls-files --others --exclude-standard -z -- "${source_paths[@]}")
git ls-files --cached --others --exclude-standard -- "${source_paths[@]}" \
  | sort -u | xargs sha256sum > "target/ticket12/$variant-source.sha256"
sha256sum "target/ticket12/$variant.patch" > "target/ticket12/$variant-patch.sha256"
echo VALIDATE-GATED-DONE

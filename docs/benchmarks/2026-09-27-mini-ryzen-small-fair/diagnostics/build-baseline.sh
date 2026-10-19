#!/usr/bin/env bash
# The previous checkpoint's source (small-interleaved final3) with this
# checkpoint's arena harness, built the same way as the tested arena.
set -euxo pipefail
src=target/small-fair/baseline-src
rm -rf "$src"; mkdir -p "$src"
tar -xzf target/small-interleaved/final3-source/source.tar.gz -C "$src"
# The snapshot omits experiments/ (unchanged since HEAD); the arena links kernel-lab.
git diff --quiet HEAD -- experiments
cp -r experiments "$src/"
for f in adapters.rs cell.rs driver.rs timing.rs; do
  cp "bench/arena/src/$f" "$src/bench/arena/src/$f"
done
fftw=$PWD/target/fftw/install
(cd "$src" && FASTFFT_FFTW_DIR="$fftw" RUSTFLAGS="-C llvm-args=-align-all-functions=6" \
  CARGO_TARGET_DIR="$PWD/../../aligned-baseline" \
  cargo build --profile arena -p fastfft-arena --features fftw)

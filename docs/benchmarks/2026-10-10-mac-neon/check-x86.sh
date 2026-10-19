#!/usr/bin/env bash
# Run on the idle Zen 4 host. Builds and tests both snapshots before any timing.
set -euo pipefail
unset CARGO_ENCODED_RUSTFLAGS FASTFFT_ISA_CAP FASTFFT_REQUIRE_ISA FASTFFT_TEST_QUICK
export RUSTFLAGS="-C llvm-args=-align-all-functions=6"
profile="${FASTFFT_X86_PROFILE:-quick}"
case "$profile" in quick|full) ;; *) echo 'FASTFFT_X86_PROFILE must be quick or full.' >&2; exit 1;; esac
artifact_dir="$(cd -- "$(dirname -- "$0")" && pwd)"
output="${1:-$(mktemp -d "${TMPDIR:-/tmp}/fastfft-x86-neon.XXXXXX")}"
mkdir -p "$output"
output="$(cd -- "$output" && pwd)"
case "$(uname -m)" in x86_64) ;; *) echo 'Run this on the native x86_64 Ryzen host.' >&2; exit 1;; esac
for version in before after; do
    mkdir -p "$output/$version"
    tar -xzf "$artifact_dir/source-$version.tar.gz" -C "$output/$version"
    (
        cd "$output/$version"
        CARGO_TARGET_DIR="$output/build" cargo build --profile arena -p fastfft-arena
    ) > "$output/build-$version.log" 2>&1
    cp "$output/build/arena/fastfft-arena" "$output/arena-$version"
done
(
    cd "$output/after"
    export CARGO_TARGET_DIR="$output/build"
    cargo test -p fastfft --release
    for cap in scalar sse2 avx2 avx512-ymm avx512; do
        FASTFFT_ISA_CAP="$cap" FASTFFT_REQUIRE_ISA="$cap" FASTFFT_TEST_QUICK=1 cargo test -p fastfft --release
    done
    cargo xtask codegen --check
    bash scripts/bench-env.sh check
) > "$output/validation.log" 2>&1
# ABBA order gives each build an early and a late run. No compilation below.
for run in before-1 after-1 after-2 before-2; do
    version="${run%-*}"
    (
        cd "$output/$version"
        "$output/arena-$version" run --suite pow2,smooth,rough,batch,realworld \
            --profile "$profile" --libs fastfft,fastfft/scalar,fastfft/sse2,fastfft/avx2,fastfft/avx512-ymm,fastfft/avx512,rustfft \
            --core 2 --procs 3 --out "$output/$run" --label "$run"
    ) > "$output/$run.log" 2>&1
    python3 - "$output/$run/meta.json" <<'PY'
import json,sys
r=json.load(open(sys.argv[1]))
if r.get('aborted') or r.get('child_failures',0) or r.get('drift_flag'):
    raise SystemExit('Capture failed or drift-flagged; inspect '+sys.argv[1])
PY
done
printf 'Native x86 captures and validation: %s\n' "$output"
printf 'Compare both best and median timings per cell; investigate every >3%% loss.\n'
printf 'Return all four capture directories plus validation.log for the final audit.\n'

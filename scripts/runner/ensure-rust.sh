#!/usr/bin/env bash
# Run after checkout, before cache restore or any Rust command. This also repairs
# persistent runners damaged by rust-cache's default cargo/bin post-job cleanup.
set -euo pipefail
export CARGO_HOME=${CARGO_HOME:-"$HOME/.cargo"}
bin=$CARGO_HOME/bin

if [[ ! -x $bin/rustup || ! -x $bin/cargo || ! -x $bin/rustc ]]; then
    echo 'Repairing missing Rustup command shims in the runner account.'
    staging=$(mktemp -d)
    trap 'rm -rf -- "$staging"' EXIT
    curl --proto '=https' --tlsv1.2 --fail --show-error --location --retry 3 \
        https://sh.rustup.rs --output "$staging/rustup-init.sh"
    # Existing toolchains stay in RUSTUP_HOME; rust-toolchain.toml and the
    # job's RUSTUP_TOOLCHAIN still select versions. No sudo or profile changes.
    sh "$staging/rustup-init.sh" -y --profile minimal --default-toolchain none --no-modify-path
fi

for tool in rustup cargo rustc; do
    [[ -x $bin/$tool ]] || { printf 'Missing Rust command after setup: %s\n' "$tool" >&2; exit 1; }
done
if [[ -n ${GITHUB_PATH:-} ]]; then
    printf '%s\n' "$bin" >> "$GITHUB_PATH"
fi

# Deferred native NEON validation

The maintainer explicitly deferred Mac access on 2026-10-14. Native validation
remains pending for new shared-engine changes. Earlier NEON results belong to
their recorded revision and cannot validate a later candidate. Cross-compiling
on Linux establishes compilation only.

On the Mac, check out the final candidate and use its pinned toolchain. Record
the revision, clean-tree status, `rustc -vV`, `cargo -V`, and hardware identity
with the logs. Run from the repository root:

```sh
unset RUSTFLAGS CARGO_ENCODED_RUSTFLAGS FASTFFT_TEST_QUICK FASTFFT_ISA_CAP FASTFFT_REQUIRE_ISA
export CARGO_BUILD_JOBS=1 RUST_TEST_THREADS=1
cargo test --locked -p fastfft --profile test-release --features tuning
FASTFFT_ISA_CAP=neon FASTFFT_REQUIRE_ISA=neon cargo test --locked -p fastfft --profile test-release --features tuning
FASTFFT_ISA_CAP=scalar FASTFFT_REQUIRE_ISA=scalar cargo test --locked -p fastfft --profile test-release --features tuning
cargo test --locked -p fastfft --profile test-release --no-default-features
cargo clippy --locked -p fastfft --all-targets --all-features -- -D warnings
cargo fmt --all --check
cargo xtask codegen --check
```

The commands intentionally leave the full accuracy sweep enabled. A failed
command remains a failure; retain its log and stop before declaring success.
These checks cover native correctness and compilation, not Mac performance
qualification or the complete G7/G8 coverage required by the release plan.

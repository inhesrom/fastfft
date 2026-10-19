# Validation

The implementation starts at `299c8ef` (ticket 15) on
`ticket-16-cache-detection-thresholds`. The change extends cache detection
and planning policy; the FFT arithmetic kernels are unchanged.

## Correctness and build checks

The full release suite passes: 73 tests including doctests, with six
existing opt-in diagnostic/exhaustive tests ignored. The normal accuracy
sweep covers every N from 1 through 4096, powers of two through 2^22,
and selected larger smooth/rough sizes, in both precisions and directions.
The new cache tests cover synthesized topology and simulated planner/panel
cache capacities. The focused 19-test cache run also passed before the
full suite.

All five ISA caps pass with the quick accuracy profile. Scalar-only and
AVX-512-only feature configurations compile. Workspace Clippy, formatting,
generated-code verification and whitespace checks pass. Compressed logs
are retained in `checks/`.

```sh
cargo test -p fastfft --release -j 1
for tier in scalar sse2 avx2 avx512-ymm avx512; do
  FASTFFT_ISA_CAP="$tier" FASTFFT_REQUIRE_ISA="$tier" FASTFFT_TEST_QUICK=1 \
    cargo test -p fastfft --release -j 1
done
cargo check -p fastfft --no-default-features
cargo check -p fastfft --no-default-features --features avx512
cargo clippy --workspace --all-targets -j 1 -- -D warnings
cargo fmt --all --check
cargo xtask codegen --check
git diff --check
```

Synthetic tests exercise fallback logic independently of the host. Native
execution here is on the Ryzen 7 7840HS; other CPU families and non-x86
execution remain later validation work.

## Benchmark reproduction

The preserved before executable matches the hash in the
[ticket 15 checkpoint](../2026-10-02-mini-ryzen-ticket15-batch/executable.sha256):
`b69ea7aa55f6048f4c7aa8c4a1232338e5bbdf18c98e980d36023af6dd6d81cf`.
The after executable uses the same arena profile, feature set and function
alignment. `base.txt`, `source.patch.gz`, `source.sha256` and the executable
hash files identify both builds. The before run's environment is captured
at measurement time, when the working tree already contains ticket 16;
the preserved executable hash identifies its ticket 15 implementation.

```sh
RUSTFLAGS='-C llvm-args=-align-all-functions=6' \
  cargo build --profile arena -p fastfft-arena --features fftw -j 1
scripts/bench-env.sh check --core 2
RUSTFLAGS='-C llvm-args=-align-all-functions=6' \
  target/arena/fastfft-arena run --suite pow2 --profile quick \
  --libs fastfft,rustfft \
  --filter 'n=16384|32768|262144|524288|1048576|2097152' \
  --core 2 --procs 3 --out target/ticket16/after
scripts/bench-env.sh check --core 2
RUSTFLAGS='-C llvm-args=-align-all-functions=6' \
  target/arena/fastfft-arena run --suite smooth --profile quick \
  --libs fastfft,rustfft --filter 'n=4725|165375|1000000' \
  --core 2 --procs 3 --out target/ticket16/smooth
```

Use the preserved ticket 15 executable with the same pow2 arguments and a
separate output directory for the before run. These are focused checks,
all forward/in-place, with both precisions and three processes per cell.
The full M4 performance gate is established by ticket 14's separate
80-cell report. Compilation and tests finish before timing begins.

# Validation and reproduction

The work starts at `b908bc6` on `ticket-17-bluestein-speed`. The benchmark
executable is built with the arena profile, FFTW feature and 64-byte
function alignment used by the baseline. Source and executable hashes
identify the measured build; `source.patch.gz` contains the crate changes
relative to that base. The dirty-tree flag includes the uncommitted ticket
work and pre-existing unrelated report files, which are not in the patch.

## Correctness and build checks

The final full release suite passes: 75 tests including doctests, with
six existing opt-in tests ignored. All five ISA caps pass all five
compiled test executables (74 tests per cap, with quick accuracy
coverage). The focused new public-interface tests also pass on each cap.
Workspace Clippy, fmt, generated-code verification, scalar-only and
AVX-512-only feature builds, source-hash and whitespace checks pass.
Compressed logs are retained in `checks/`.

The new tests exercise f32/f64, forward/inverse, Estimate/Measure,
three-transform batches, all three placements, scalar-offset alignment,
canary boundaries and exact/short scratch. They compare rounded user
inputs against independent double-double transforms and verify that
immutable input is untouched. One shared workspace serves every
placement. The fixture includes extra storage for Measure candidates
whose advertised workspace exceeds the default plan's.

The normal accuracy suite checks every N from 1 through 4096, powers of
two through 2^22 and selected larger smooth/rough sizes, in both
precisions and directions. Existing ignored M3/M4 exhaustive and latency
diagnostics are outside this change's validation scope.

```sh
cargo test -p fastfft --release -j 1
cargo test -p fastfft --release -j 1 --no-run --message-format=json
# Run each resulting lib/test executable under each cap, without recompiling:
FASTFFT_ISA_CAP=<tier> FASTFFT_REQUIRE_ISA=<tier> FASTFFT_TEST_QUICK=1 \
  <test-executable> --test-threads=2
# Tiers: scalar, sse2, avx2, avx512-ymm, avx512.
cargo clippy --workspace --all-targets -j 1 -- -D warnings
cargo fmt --all --check
cargo xtask codegen --check
cargo check -p fastfft --no-default-features
cargo check -p fastfft --no-default-features --features avx512
git diff --check
```

This is native execution on the Ryzen 7 7840HS. Cross-architecture,
other-CPU and CI validation remain the existing follow-up tickets.

## Benchmark reproduction

```sh
RUSTFLAGS='-C llvm-args=-align-all-functions=6' \
  cargo build --profile arena -p fastfft-arena --features fftw -j 1
scripts/bench-env.sh check --core 2
RUSTFLAGS='-C llvm-args=-align-all-functions=6' \
  target/arena/fastfft-arena run --suite rough --profile quick \
  --libs fastfft,rustfft --core 2 --procs 3 --out target/ticket17/after
python3 docs/benchmarks/2026-10-02-mini-ryzen-ticket17-bluestein/check-g3.py \
  target/ticket17/after
```

The same checker accepts the published `after/` directory's compressed
results. It rejects the baseline's N=17 minimum, and accepts all 34 cells
in the final run on both best and median times. Use the preserved ticket
16 executable for a before run with the same arguments and a different
output directory. Its hash matches the ticket 16 report.

Compilation and test execution were stopped before every timing run.
One development arena build was killed while another build was active;
the successful benchmark builds were then run serially. That interrupted
build log is archived in `diagnostics/`.

## Diagnostic progression

1. Baseline: G3 geomean passes, N=17 fails its minimum.
2. Closure implementation: numerical correctness passes, but the SIMD
   loads become baseline-ISA helper calls with stack spills. The full
   failed run, small reproduction, source patch and disassembly are kept.
3. Direct loads: remove those calls; N=17 recovers to about 55/64 ns
   (f32/f64) but misses G3.
4. Packed factors: remove factor shuffles; N=17 still narrowly misses.
5. Width comparison: 256-bit products help tiny f32. Fusing partial-vector
   padding and clearing the remaining suffix directly passes the focused
   minimum, with a narrow f32 margin.
6. Final: retain fused padding, choose at most 256-bit products for f32
   N<32, and rerun all 34 cells. G3 and arena accuracy pass with 1.14% drift.

The earlier full accuracy sweeps and initial release suite passed during
development. The final verification is recorded separately in `checks/`;
development measurements do not substitute for the final gate run.

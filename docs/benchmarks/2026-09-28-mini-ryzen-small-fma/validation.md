# Validation

[diagnostics/validate.sh](diagnostics/validate.sh) is the small-fair
checkpoint's validation script, unchanged. It exited 0 on the tested source;
the full log is [validate.log.gz](diagnostics/validate.log.gz). It covers:

- `cargo fmt --all --check` and `cargo clippy --workspace --all-targets -- -D warnings`;
- `cargo xtask codegen --check` and the gate-analysis tests
  (`scripts/test_small_latency.py`);
- `cargo check` with no features and with each of `sse2`, `avx2` and
  `avx512` alone, plus quick library tests for each;
- the full `fastfft` and `fastfft-codegen` release suites;
- quick release suites and the ignored M3 smooth accuracy test under each
  `FASTFFT_ISA_CAP` (scalar, sse2, avx2, avx512-ymm, avx512);
- the exhaustive `m3_smooth_every_shape` sweep;
- the aligned arena build that became the tested arena.

The leaf tests (`specialized_tests.rs`) build every interleaved shape the CPU
supports: every size, row type and tier. They cover one and three transforms,
all eight real-element offsets and all four placements. Each run is checked
against a double-double reference (relative L2 at most `2·log2(N) + 2` ulp)
and a round trip. Guard elements must survive, the input must stay intact
out of place, and wrong lengths must panic. `add_rot` rounds exactly as
the old xor-and-add did, because its multiplier is ±1. Radix-16's folded ω8
terms (`add_w8`) round twice where the old sequence rounded three times.
Every shape stays within the bound. The planner contract test covers
N=2–256 at every cap, in both Estimate and Measure mode.

Assembly: the tested arena
([provenance.json](provenance.json), `executable-0`) holds 108 interleaved
`Entry::one`/`run` functions, 16 of them on zmm rows, and none contains a
call instruction. There are more than small-fair's 100 because `one` now also
takes the `LATENCY` flag. The snapshot's `executable-1` is not the test
binary that ran the leaf tests: the pipeline takes the newest
`target/release/deps/fastfft-*` file, and this time that was the
`--features avx2` library test build (46 entries, no zmm, no calls). The
full-feature library test binary that ran them, `fastfft-efd9d1ef8dc3e29f`
(SHA-256 `a83c2384...b6e3`; see the `Running unittests` lines in
validate.log.gz), holds the same 108 entries, also call-free. The leaf
counts of the f64 zmm N=64 entry match
[fma-rotations.md](diagnostics/fma-rotations.md#the-op-mix): 72 add/sub, 68
mul/FMA, 68 shuffles, no xor.

The experiment builds behind [fma-rotations.md](diagnostics/fma-rotations.md)
selected their variants with temporary `option_env!` switches, and the arena
had a temporary per-batch dump and TSC trace hook
(`fma-rotations-data.tar.gz`, `scripts-and-perf/diag-hook.diff`). Neither is
in the tested source.

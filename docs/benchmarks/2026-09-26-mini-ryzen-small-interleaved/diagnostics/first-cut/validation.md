# Validation

[validate.sh](validate.sh) is the previous checkpoint's
validation script, unchanged. It ran on the final source and exited 0; the full
log is [validate.log.gz](validate.log.gz). It covers:

- `cargo fmt --all --check` and `cargo clippy --workspace --all-targets -- -D warnings`;
- `cargo xtask codegen --check` and the latency analysis fixtures;
- `cargo check` with no features and with each of `sse2`, `avx2` and `avx512`
  alone, plus quick library tests for each (the interleaved module compiles only
  with `avx2`; without it, dispatch falls back to the incumbent table);
- the full `fastfft` and `fastfft-codegen` release suites;
- quick release suites and the ignored M3 smooth accuracy test under each
  `FASTFFT_ISA_CAP` (scalar, sse2, avx2, avx512-ymm, avx512);
- the exhaustive `m3_smooth_every_shape` sweep.

The leaf tests (`specialized_tests.rs`) now build every interleaved shape the
CPU supports (both entries, N=2-128 f32 and N=2-32 f64) as well as the retained
specialized leaves. They cover one and three transforms, all eight real-element
offsets and all four placements. Each run is checked against a double-double
reference (relative L2 at most `2·log2(N) + 2` ulp) and a round trip. Guard
elements must survive and the input must stay intact out of place. Wrong
lengths must panic. The planner contract test covers N=2-128 at every cap in
Estimate and Measure mode and accepts `kernel=interleaved` only on AVX2 or
AVX-512-ymm tiers the cap allows.

Assembly: each final executable
([provenance.json](provenance.json)) holds 76 interleaved `Entry::one`/`run`
functions. None contains a call instruction. Stack references appear in three
places:

- the N=128 stack buffer, in both entries;
- register spills in the AVX2 f32 N=64 and f64 N=32 leaves, which is why those
  sizes prefer the AVX-512VL entry;
- one spilled register (a store and its reload) in the AVX-512VL f64 N=32 leaf.

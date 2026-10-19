# Validation

[diagnostics/validate.sh](diagnostics/validate.sh) is the previous checkpoint's
validation script, unchanged. `pipeline.sh` ran it on the final source; it
exited 0, and the full log is
[validate.log.gz](diagnostics/validate.log.gz). It covers:

- `cargo fmt --all --check` and `cargo clippy --workspace --all-targets -- -D warnings`;
- `cargo xtask codegen --check` and the latency analysis fixtures;
- `cargo check` with no features and with each of `sse2`, `avx2` and `avx512`
  alone, plus quick library tests for each (the interleaved module compiles only
  with `avx2`, zmm rows only with `avx512` as well; otherwise dispatch falls back
  to the incumbent table);
- the full `fastfft` and `fastfft-codegen` release suites;
- quick release suites and the ignored M3 smooth accuracy test under each
  `FASTFFT_ISA_CAP` (scalar, sse2, avx2, avx512-ymm, avx512);
- the exhaustive `m3_smooth_every_shape` sweep.

The leaf tests (`specialized_tests.rs`) build every interleaved shape the CPU
supports, as well as the retained split-layout leaves:

- N=2–256 f32 on both ymm entries;
- N=2–32 f64 on both ymm entries;
- N=64–256 f64 on zmm rows.

They cover one and three transforms, all eight real-element offsets and all
four placements. Each run is checked against a double-double reference
(relative L2 at most `2·log2(N) + 2` ulp) and a round trip. Guard elements must
survive and the input must stay intact out of place. Wrong lengths must panic.
The planner contract test covers N=2–256 at every cap in Estimate and Measure
mode. It accepts `kernel=interleaved` only on tiers the cap allows.

Assembly: each final executable ([provenance.json](provenance.json)) holds 96
interleaved `Entry::one`/`run` functions. None contains a call instruction.
Stack references appear in these places:

- the N=128/256 two-pass intermediates (frames of about 4 KiB);
- register spills in the AVX2 f32 N=64 and f64 N=32 leaves, which is why
  those sizes prefer the AVX-512VL entry above the AVX2 cap;
- a few red-zone spills (4–6 references) in the AVX2 f32 N=32 and AVX-512VL
  f64 N=32 leaves.

The f64 N=64 zmm leaf is register-resident.

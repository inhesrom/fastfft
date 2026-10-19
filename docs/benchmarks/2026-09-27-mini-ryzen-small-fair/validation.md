# Validation

[diagnostics/validate.sh](diagnostics/validate.sh) is the previous
checkpoint's validation script. Its one change is the final step: the arena is
built with `RUSTFLAGS="-C llvm-args=-align-all-functions=6"` into
`target/aligned`. It exited 0 on the tested source; the full log is
[validate.log.gz](diagnostics/validate.log.gz). It covers:

- `cargo fmt --all --check` and `cargo clippy --workspace --all-targets -- -D warnings`;
- `cargo xtask codegen --check` and the gate-analysis tests
  (`scripts/test_small_latency.py`), which now include two p1 cases: p1
  judged instead of the minimum, and results without p1 rejected;
- `cargo check` with no features and with each of `sse2`, `avx2` and
  `avx512` alone, plus quick library tests for each;
- the full `fastfft` and `fastfft-codegen` release suites;
- quick release suites and the ignored M3 smooth accuracy test under each
  `FASTFFT_ISA_CAP` (scalar, sse2, avx2, avx512-ymm, avx512);
- the exhaustive `m3_smooth_every_shape` sweep.

The leaf tests (`specialized_tests.rs`) build every interleaved shape the CPU
supports, now including f32 N=128 on zmm rows. They cover one and three
transforms, all eight real-element offsets and all four placements. Each run
is checked against a double-double reference (relative L2 at most
`2·log2(N) + 2` ulp) and a round trip. Guard elements must survive, the input
must stay intact out of place, and wrong lengths must panic. The planner
contract test covers N=2–256 at every cap, in both Estimate and Measure mode.

Assembly: the tested arena and the test binary
([provenance.json](provenance.json)) each hold 100 interleaved
`Entry::one`/`run` functions. The previous checkpoint's 96 are joined by the
f32 N=128 zmm entries, and none contains a call instruction. The f32 N=128
zmm leaf is register-resident: 16 zmm rows, two 8x8 transposes and no stack
intermediate.

The arena changes (per-library timing loops, the `p1` statistic, merging
processes by p1) pass the workspace Clippy and build. The fixed loops were
checked with hardware counters: N=2 out-of-place pairs made zero dynamic
indirect predictions in either library order
([diagnostics/order-bias.md](diagnostics/order-bias.md)).

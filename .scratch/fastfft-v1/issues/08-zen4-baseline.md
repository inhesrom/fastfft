# Run and publish the Zen 4 baseline

Type: task
Status: resolved
Roadmap: FFT-017

## Question

What is the published Zen 4 reference of the other libraries (before fastfft), measured under the corrected protocol?

## Answer

The baseline is `20260924T233214Z-mini-ryzen-zen4-baseline`, published in [`docs/benchmarks/2026-09-25-mini-ryzen-zen4-baseline/`](../../../docs/benchmarks/2026-09-25-mini-ryzen-zen4-baseline/report.md). The maintainer accepted it with three decisions, one per criterion that was not met cleanly (drift, verification, datacheck). They are recorded below.

**The reference.** Geomean speedup vs rustfft, from best times:

| suite | prec | phastft/split | phastft/interleaved | tfhe-fft | oxifft | fftw |
|---|---|---|---|---|---|---|
| pow2 | f32 | 0.55× | 0.34× | – | 0.13× | 0.77× |
| pow2 | f64 | 0.60× | 0.36× | 0.86× | 0.41× | 1.00× |
| smooth | f32 | – | – | – | 0.08× | 0.93× |
| smooth | f64 | – | – | – | 0.16× | 1.16× |
| rough | f32 | – | – | – | 0.11× | 0.71× |
| rough | f64 | – | – | – | 0.27× | 0.76× |
| batch | f32 | 0.24× | 0.16× | – | 0.11× | 0.87× |
| batch | f64 | 0.38× | 0.25× | 0.97× | 0.49× | 0.94× |
| realworld | f32 | 0.87× | 0.66× | – | 0.14× | 1.00× |
| realworld | f64 | 0.95× | 0.72× | – | 0.58× | 1.04× |

- rustfft is faster than every other Rust library on every suite.
- FFTW (our AVX-512 build) beats rustfft only on smooth f64 (1.16×). It ties on pow2 f64 and realworld, and is slower elsewhere.
- So the other-Rust-library gate (G4) is the easy part. Beating rustfft (G1–G3) is the hard part.

**Setup.**
- The arena binary was built at 21daa19, which switches the datacheck suite to immutable placement as step 3 requires. The runs record commit 0ed874b, whose later commits are markdown only. The tree was clean and `bench-env: OK` passed.
- This was attempt 4:
  - Attempts 1 and 2 (2026-09-23) aborted under the old control-drift rule.
  - Attempt 3 (2026-09-24 00:48 UTC) ran as a Pi background task and was killed by a Pi session reload at cell 83. It was discarded.
- Attempt 4 ran detached from Pi. It was started by an idle gate: 15 quiet minutes with no compilers, no other agent's tools, ≤ 5% CPU and a clean tree.
- A per-minute monitor logged any other activity during the run.

**Criteria.**
1. **Main run (3 h 38 min, 694 cells): official, not aborted, 0 child failures.**
2. **Clock drift: flagged at 3.95%. Accepted by the maintainer.**
   - The flag comes from two single low readings at the start of one process each: smooth f32 N = 36 (−3.69%) and N = 75600 (−3.95%). The end-of-process readings were normal.
   - All 28 control re-runs stayed within 0.66%, and the monitor shows nothing else running at those times.
   - Re-timing the two cells (`20260925T045845Z-mini-ryzen-zen4-drift-cells`) matched the main run within ±1.1% for every library.
3. **Verification: met for every library except oxifft. Its failures are documented as oxifft 0.4.2 defects (maintainer's decision).**
   - rustfft and FFTW verify on all 694 cells.
   - phastft (both APIs) verifies on 118 cells; the rest are unsupported (in-place powers of two only).
   - tfhe-fft verifies on 28 cells; the rest are unsupported (f64 powers of two ≤ 1024, in place).
   - oxifft verifies on 654 cells and fails on 40:
     - **32 crashes:** f64 powers of two from 2^17 to 2^24 crash in its planner ("index out of bounds: the len is 16 but the index is 16" in `oxifft-0.4.2/src/dft/solvers/stockham/x86_64.rs`).
     - **8 inaccurate results:** f32 at 2^23 and 2^24 give 6,130 ε and 21,900 ε, against tolerances of 4,800 and 5,000 ε. At 2^22 oxifft is at 2,420 ε, still under tolerance, while the other libraries are at 1.4–4 ε.
   - The arena excludes failed cells from timing, and the report lists them.
4. **Sweep: 0 failed verifications. Met.**
   - Run `20260925T031047Z-mini-ryzen-zen4-sweep` (47 min) verifies all 8,190 cells for rustfft, oxifft and FFTW.
   - It is drift-flagged: 30 single readings are above 3%, the worst at 14.1%, while the controls stay within 2.74%. The worst readings coincide with another agent's activity around 03:24–03:38.
   - The sweep feeds coverage plots only.
5. **Quick runs: met.**
   - `20260925T040101Z-mini-ryzen-zen4-quick-a` and `20260925T042735Z-mini-ryzen-zen4-quick-b` agree within 0.6% on every library's per-suite geomean. On best times the range is 0.998–1.004×.
   - quick-a is drift-flagged: one −60.7% start reading when another agent launched sub-agents around 04:15. quick-b's drift is 1.8%.
6. **Datacheck: missed twice. Accepted with a placement-noise caveat (maintainer's decision).** Values are random ÷ zero best time.
   - `20260925T035750Z-mini-ryzen-zen4-datacheck` misses on FFTW f32 N = 65536 (0.972) and FFTW f64 N = 4096 (1.026).
   - The rerun, `20260925T045402Z-mini-ryzen-zen4-datacheck-rerun`, misses on rustfft f32 N = 4096 (0.973) and FFTW f64 N = 4096 (1.033).
   - Pooling both runs (best of 6 processes), every pair agrees within 2% except FFTW f64 N = 4096 (1.026). All other pairs agree within 1.6%.
   - The misses move between runs and go both ways. rustfft f32 N = 4096 is the known placement-sensitive cell (ADR-0001 §7).
   - FFTW f64 N = 4096 is the one consistent outlier: random input is slower in both runs. If that effect is real, FFTW's zero-input time there is about 3% optimistic.
   - oxifft's f64 2^20 cells crash, so they can't be compared.
7. **Published and committed. Met.**
   - All 28 published files are byte-identical to the run: report, `env.json`, `meta.json`, 24 plots, and the decompressed `results.jsonl.gz`.
   - `ROADMAP.md` marks FFT-017 done.

Only `zen4-baseline` is published. The other runs live under `target/arena/runs/`, which is gitignored and local only.

## Work

This needs an **idle** machine for about 3 hours; do no compiling meanwhile.

1. `cargo xtask arena run --suite pow2,smooth,rough,batch,realworld --profile full --procs 3 --libs rustfft,phastft/split,phastft/interleaved,tfhe-fft,oxifft,fftw --label zen4-baseline`
2. `cargo xtask arena run --suite sweep --profile sweep --libs rustfft,oxifft,fftw --label zen4-sweep`
3. `cargo xtask arena run --suite datacheck --profile full --procs 3 --libs rustfft,oxifft,fftw --label zen4-datacheck`. The immutable placement means input never changes; zero and random data must agree within 2%.
4. Two back-to-back `--profile quick --suite pow2,smooth` runs, then `cargo xtask arena compare <a> <b>`: per-library geomean within 3%.
5. `cargo xtask arena publish <run> --label zen4-baseline` and commit.

## Done when

- Every library is verified on its supported cells.
- Clock drift < 3%.
- The quick runs agree within 3%.
- The datacheck passes.
- The published directory is committed and `ROADMAP.md` is updated.

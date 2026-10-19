# Build the library core

Type: task
Status: resolved
Roadmap: FFT-030, 031, 033, 035, 036 (partial), 050 (partial), 052 (partial), 053

## Question

Build the first working library on the prototype design, correct on every tier, so performance work can proceed on the real code rather than the lab.

## Answer

Commit 6d59f1e. `cargo test -p fastfft --release` passes. The tier matrix (`FASTFFT_ISA_CAP` = scalar, sse2, avx2, avx512-ymm, avx512) passes. Worst accuracy is 2.9 ε (Bluestein, N = 131071).

- `api.rs`: RustFFT-compatible `Fft`, `FftNum` (sealed f32/f64), `FftDirection`, `Length`, `Direction`. `process()` uses a grow-only per-thread scratch buffer (`scratch.rs`).
- `isa/`:
  - Detection with `OnceLock`; caps via `PlannerOptions::isa_cap` or `FASTFFT_ISA_CAP` (can only lower).
  - Vector types: `F32x16`/`F64x8` (zmm), `F32x8v`/`F64x4v` (ymm with AVX-512VL permutes), `F32x8`/`F64x4` (AVX2), `F32x4`/`F64x2` (SSE2), `S32`/`S64` (scalar).
- `engine/stockham.rs`:
  - Split layout, DIT Stockham over vectors with broadcast twiddles, then a transposing final pass (Phase B) with per-lane twiddles.
  - Modes: in place with one scratch (the last pass runs in place to fix parity), out-of-place with zero scratch, immutable.
  - The inverse swaps re and im (free). GPR-spill fix applied.
- `engine/bluestein.rs`: chirp-z with exact `k² mod 2N` angles; inner length is the smallest of 2^a·{1,3,5,9}.
- `planner.rs`: Stockham candidates per vector shape, DP radix choice (radix-8 cap for powers of two on SIMD tiers), hand-set cost model, plan cache, `describe_plan`. `measure.rs` implements Measure mode.
- Tests: `src/tests.rs` (every shape × mode × direction), `tests/accuracy.rs` (N = 1..4096 plus large and prime sizes, ≤ bound and ≤ 1.5× rustfft + 1 ε), `tests/conformance.rs`, `tests/properties.rs`.

Known gaps, each ticketed:
- Performance not yet measured in the arena.
- Small N is slow.
- Odd N falls back to the scalar tier (Stockham needs lanes | N).
- No four-step and no batch engine.
- Bluestein products are scalar.
- Cost model is untuned.

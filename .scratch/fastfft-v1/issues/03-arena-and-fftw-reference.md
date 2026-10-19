# Build the benchmark arena and FFTW reference

Type: task
Status: resolved
Roadmap: FFT-011..FFT-016

## Question

Build the measurement system before any engine code: arena driver and per-cell child, library adapters, FFTW reference build, suites, reports and environment control.

## Answer

Commit e83fd99 (protocol refinements in [Decide how the arena measures drift and placement noise](05-arena-drift-and-placement-noise.md)).

- `bench/arena` (`fastfft-arena`): `run`, `run-cell`, `report`, `compare`, `publish`, `env`. Every library is verified against the testkit before timing. Output goes to `target/arena/runs/<UTC>-<host>[-label]/` with `results.jsonl`, `env.json`, `meta.json`, `report.md` and SVG plots.
- Adapters:
  - `rustfft`
  - `phastft/split` and `phastft/interleaved` (in place, powers of two; inverse normalized)
  - `tfhe-fft` (f64, ordered plans only up to N = 1024: they panic above 2^10)
  - `oxifft` 0.4.2 (not 0.3.x; its `avx512` feature is never executed upstream, so it is off)
  - `fftw` (feature)
  - `lab/*` rows for the kernel-lab experiments
  - `fastfft[/isa|/measure]` rows
- `cargo xtask fftw-build`: FFTW 3.3.11, sha256 `5630c24c…`, static, SSE2/AVX/AVX2/AVX-512/FMA, about 2.5 minutes. Installs to `target/fftw/install`.
- Suites: pow2, smooth, rough, sweep, batch, realworld (spectrogram, overlap-save), datacheck. Profiles: full, quick, sweep.
- `scripts/bench-env.sh setup|check|restore`. There is no sudo on the dev machine; the governor and EPP are already `performance`.

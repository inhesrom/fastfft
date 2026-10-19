# Odd smooth SIMD panels: initial checkpoint

The new four-step panels substantially improve large odd transforms when
selected by `Measure`. The small-size deficits remain, so ticket 13 is still
claimed and the default `Estimate` dispatch has not changed.

This is a focused 12-cell run: forward, in-place, f32/f64, N ∈
{18, 36, 108, 210, 4725, 165375}. It is not the full quick smooth suite.
Every measured library/cell verified. Environment checks passed, control
drift was 0.81%, and there were no child failures. The working tree was dirty;
the exact implementation is archived in `source.patch` and `source.sha256`.

## Results

Ratios below are best / median. Higher is better. Both columns compare
`Measure` with the indicated reference in the same arena run.

| Precision | N | Speedup over Estimate | Speedup over RustFFT | Selected panel shape |
|---|---:|---:|---:|---|
| f32 | 4725 | 3.948× / 3.934× | 0.963× / 0.959× | AVX-512/256, L=8, 63×75 |
| f64 | 4725 | 2.045× / 2.028× | 0.967× / 0.964× | AVX-512, L=8, 63×75 |
| f32 | 165375 | 4.995× / 4.978× | 1.291× / 1.302× | AVX-512/256, L=8, 375×441 |
| f64 | 165375 | 2.576× / 2.567× | 1.357× / 1.362× | AVX-512, L=8, 375×441 |

At f32 N=210, `Measure` selected SSE2 panels (14×15) and gained
1.284× / 1.259× over Estimate, but reached only 0.500× / 0.490× RustFFT.
The other small cells selected Stockham. Their best/median ratios against
RustFFT remain below 0.95×. N=4725 only narrowly clears that threshold in
this focused run; it needs confirmation before changing the default.

The large-size results support continuing with panels. For smaller transforms,
measure fused rectangular leaves that keep both dimensions in registers,
avoiding the panel workspace and per-pass call overhead. Also compare
decompositions and full/tail transpose code generation before introducing
an Estimate dispatch policy. These are follow-up experiments, not conclusions
established by this run.

See [the arena report](report.md), [validation and implementation scope](validation.md),
and the archived JSONL, metadata and plots beside this file.

## Reproduction

Base commit: `861f1bf`. Apply `source.patch`, then:

```sh
RUSTFLAGS='-C llvm-args=-align-all-functions=6' \
  cargo build --profile arena -p fastfft-arena --features fftw
scripts/bench-env.sh check --core 2
target/arena/fastfft-arena run \
  --suite smooth --profile quick --libs fastfft,fastfft/measure,rustfft \
  --core 2 --procs 3 --filter 'n=18|36|108|210|4725|165375' \
  --label odd-panels-initial --out target/arena/runs/ticket13-odd-panels-initial
```

Run only after compilation/tests finish and the environment check passes.
Use a fresh output directory for repeats. `Measure` times candidates at plan
creation, so its chosen shape may vary between processes; the JSONL records
the plan belonging to each retained measurement.

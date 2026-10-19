# fastfft arena report: `public-focus`

| | |
|---|---|
| Host | mini-ryzen |
| CPU | AMD Ryzen 7 7840HS w/ Radeon 780M Graphics (family 25, model 116, stepping 1, microcode 0xa704108) |
| Pinned CPU | 2 (SMT siblings 2,10) |
| Governor / EPP / boost | performance / performance / 1 |
| Kernel | Linux version 7.0.0-28-generic |
| Virtualization | container-other |
| rustc | rustc 1.95.0 (59807616e 2026-04-14); binary: rustc; commit-hash: 59807616e1fa2540724bfbac14d7976d7e4a3860; commit-date: 2026-04-14; host: x86_64-unknown-linux-gnu; release: 1.95.0; LLVM version: 22.1.2 |
| Build profile / RUSTFLAGS | arena / `-C llvm-args=-align-all-functions=6` |
| Libraries | {"fearless_simd":"0.5.0","num-complex":"0.4.6","oxifft":"0.4.2","phastft":"0.4.1","pulp":"0.22.3","rustfft":"6.4.1","tfhe-fft":"0.10.1"} |
| FFTW | ? `?` |
| Git | 932ed59d5d8c23b239436940a1ac8b622a7cbb7f (dirty: true) |
| Profile | full |
| Official | true  |
| Control drift | max 1.43% over 2 control runs |
| Cells | 8 |

Times are per transform. *best* = minimum batch mean, *median* = median batch mean. Speedup = rustfft time ÷ library time (> 1 means faster than rustfft); *geomean* over the cells both libraries ran. mflops = 5·N·log2(N)/t(µs).

## Release gates (fastfft)

| Gate | Criterion | Status | Detail |
|---|---|---|---|
| G1 | pow2 vs rustfft: geomean ≥ 1.5×, no cell < 0.95× | – n/a | no data |
| G2 | smooth vs rustfft: geomean ≥ 1.3×, no cell < 0.95× | – n/a | no data |
| G3 | rough vs rustfft: geomean ≥ 0.75×, no cell < 0.5× | – n/a | no data |
| G4 | vs each other Rust library: geomean ≥ 1.1×, ≥ 0.97× on ≥ 90% of cells | – n/a |  |
| G5 | AVX2 forced: pow2 ≥ 1.2×, smooth ≥ 1.1× vs rustfft | – n/a | pow2 NaN×/NaN×, smooth NaN×/NaN× |
| G6 | scenarios ≥ 1.3× each; batch geomean ≥ 1.5× | – n/a | scenarios min inf×, batch NaN×/NaN× |
| G7 | accuracy within §6 thresholds and ≤ 1.5× rustfft + 1ε | – n/a | 0 cells checked |
| G8 | Estimate planning time ≤ 2× rustfft for every N ≤ 2^20 | – n/a | worst ratio 0.00× (), 0 cells |

G9 (build time) is measured by `cargo xtask build-time`, not by the arena.

## Speedup vs rustfft (geomean of best-time ratios; median-time ratio in parentheses)

| suite | prec | fastfft | fastfft/measure |
|---|---|---|---|
| batch | f32 | – | – |
| batch | f64 | – | – |

w/t/l = cells faster / within ±3% / slower than rustfft (best times).

## Suite `batch`

### batch f32

| cell | fastfft | fastfft/measure |
|---|---|---|
| N=64 ×16384 fwd ip | 15.4ns | 15.3ns |
| N=64 ×16384 fwd oop | 15.1ns | 15.5ns |
| N=256 ×4096 fwd ip | 80.4ns | 80.5ns |
| N=256 ×4096 fwd oop | 106.7ns | 107.0ns |

![mflops](plots/batch-f32-mflops.svg)
![speedup](plots/batch-f32-speedup.svg)
![accuracy](plots/batch-f32-accuracy.svg)

### batch f64

| cell | fastfft | fastfft/measure |
|---|---|---|
| N=64 ×16384 fwd ip | 34.2ns | 31.8ns |
| N=64 ×16384 fwd oop | 54.4ns | 46.6ns |
| N=256 ×4096 fwd ip | 269.2ns | 255.1ns |
| N=256 ×4096 fwd oop | 319.6ns | 317.1ns |

![mflops](plots/batch-f64-mflops.svg)
![speedup](plots/batch-f64-speedup.svg)
![accuracy](plots/batch-f64-accuracy.svg)

## Accuracy and planning time (medians over cells)

| lib | cells verified | failed | median error (ε) | worst error (ε) | median plan time |
|---|---|---|---|---|---|
| fastfft | 8 | 0 | 0.81 | 0.83 | 2.81us |
| fastfft/measure | 8 | 0 | 0.81 | 0.83 | 18.93ms |

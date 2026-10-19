# fastfft arena report: `focus`

| | |
|---|---|
| Host | mini-ryzen |
| CPU | AMD Ryzen 7 7840HS w/ Radeon 780M Graphics (family 25, model 116, stepping 1, microcode 0xa704108) |
| Pinned CPU | 4 (SMT siblings 4,12) |
| Governor / EPP / boost | performance / performance / 1 |
| Kernel | Linux version 7.0.0-28-generic |
| Virtualization | none |
| rustc | rustc 1.95.0 (59807616e 2026-04-14); binary: rustc; commit-hash: 59807616e1fa2540724bfbac14d7976d7e4a3860; commit-date: 2026-04-14; host: x86_64-unknown-linux-gnu; release: 1.95.0; LLVM version: 22.1.2 |
| Build profile / RUSTFLAGS | arena / `-C llvm-args=-align-all-functions=6` |
| Libraries | {"fearless_simd":"0.5.0","num-complex":"0.4.6","oxifft":"0.4.2","phastft":"0.4.1","pulp":"0.22.3","rustfft":"6.4.1","tfhe-fft":"0.10.1"} |
| FFTW | ? `?` |
| Git | 932ed59d5d8c23b239436940a1ac8b622a7cbb7f (dirty: true) |
| Profile | full |
| Official | true  |
| Control drift | max 1.01% over 4 control runs |
| Cells | 51 |

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
| pow2 | f32 | – | – |
| pow2 | f64 | – | – |
| smooth | f32 | – | – |
| smooth | f64 | – | – |
| batch | f64 | – | – |

w/t/l = cells faster / within ±3% / slower than rustfft (best times).

## Suite `pow2`

### pow2 f32

| cell | fastfft | fastfft/measure |
|---|---|---|
| N=4096 fwd ip | 2.58us | 2.58us |
| N=4096 fwd oop | 2.48us | 2.48us |
| N=4096 inv ip | 2.60us | 2.57us |
| N=4096 inv oop | 2.47us | 2.48us |
| N=32768 fwd ip | 25.38us | 25.51us |
| N=32768 fwd oop | 28.15us | 28.07us |
| N=32768 inv ip | 25.31us | 25.39us |
| N=32768 inv oop | 27.83us | 27.84us |
| N=262144 fwd ip | 302.20us | 301.98us |
| N=262144 inv oop | 306.78us | 305.98us |
| N=524288 fwd ip | 656.58us | 655.48us |
| N=524288 fwd oop | 714.51us | 713.41us |
| N=16777216 fwd ip | 49.83ms | 49.70ms |

![mflops](plots/pow2-f32-mflops.svg)
![speedup](plots/pow2-f32-speedup.svg)
![accuracy](plots/pow2-f32-accuracy.svg)

### pow2 f64

| cell | fastfft | fastfft/measure |
|---|---|---|
| N=524288 fwd ip | 1.74ms | 1.73ms |
| N=524288 inv oop | 1.66ms | 1.66ms |

![mflops](plots/pow2-f64-mflops.svg)
![speedup](plots/pow2-f64-speedup.svg)
![accuracy](plots/pow2-f64-accuracy.svg)

## Suite `smooth`

### smooth f32

| cell | fastfft | fastfft/measure |
|---|---|---|
| N=15 inv ip | 21.9ns | 14.4ns |
| N=15 inv oop | 15.9ns | 11.3ns |
| N=18 inv oop | 10.7ns | 10.7ns |
| N=80 fwd ip | 35.6ns | 35.6ns |
| N=96 inv ip | 34.8ns | 34.6ns |
| N=96 inv oop | 32.9ns | 32.9ns |
| N=120 fwd ip | 58.3ns | 58.1ns |
| N=160 fwd ip | 76.5ns | 77.6ns |
| N=160 inv ip | 75.2ns | 77.2ns |
| N=210 inv ip | 115.4ns | 115.5ns |
| N=4725 fwd ip | 4.62us | 4.62us |
| N=4725 inv oop | 4.72us | 4.72us |
| N=75600 fwd ip | 65.68us | 65.02us |
| N=75600 fwd oop | 69.23us | 68.93us |
| N=75600 inv ip | 66.29us | 65.78us |
| N=75600 inv oop | 68.18us | 67.30us |
| N=165375 fwd ip | 236.25us | 236.15us |
| N=165375 fwd oop | 237.37us | 237.92us |
| N=165375 inv ip | 238.08us | 237.48us |
| N=165375 inv oop | 237.78us | 238.11us |
| N=1000000 inv ip | 2.84ms | 2.83ms |

![mflops](plots/smooth-f32-mflops.svg)
![speedup](plots/smooth-f32-speedup.svg)
![accuracy](plots/smooth-f32-accuracy.svg)

### smooth f64

| cell | fastfft | fastfft/measure |
|---|---|---|
| N=48 fwd ip | 22.2ns | 21.7ns |
| N=48 fwd oop | 19.9ns | 19.4ns |
| N=48 inv ip | 22.2ns | 21.0ns |
| N=48 inv oop | 20.1ns | 19.4ns |
| N=210 fwd ip | 267.7ns | 268.4ns |
| N=210 fwd oop | 270.1ns | 268.6ns |
| N=210 inv ip | 278.0ns | 280.5ns |
| N=210 inv oop | 281.3ns | 280.7ns |
| N=4725 fwd ip | 8.24us | 8.23us |
| N=4725 inv oop | 8.30us | 8.34us |
| N=165375 fwd ip | 400.21us | 400.63us |
| N=165375 fwd oop | 442.44us | 432.77us |
| N=165375 inv ip | 409.34us | 408.53us |
| N=165375 inv oop | 455.96us | 437.80us |

![mflops](plots/smooth-f64-mflops.svg)
![speedup](plots/smooth-f64-speedup.svg)
![accuracy](plots/smooth-f64-accuracy.svg)

## Suite `batch`

### batch f64

| cell | fastfft | fastfft/measure |
|---|---|---|
| N=32 ×32768 fwd oop | 20.2ns | 20.5ns |

![mflops](plots/batch-f64-mflops.svg)
![speedup](plots/batch-f64-speedup.svg)
![accuracy](plots/batch-f64-accuracy.svg)

## Accuracy and planning time (medians over cells)

| lib | cells verified | failed | median error (ε) | worst error (ε) | median plan time |
|---|---|---|---|---|---|
| fastfft | 51 | 0 | 1.15 | 1.54 | 73.79us |
| fastfft/measure | 51 | 0 | 1.15 | 1.54 | 51.11ms |

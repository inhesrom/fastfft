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
| Control drift | max 1.71% over 4 control runs |
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
| N=4096 fwd ip | 2.57us | 2.55us |
| N=4096 fwd oop | 2.45us | 2.46us |
| N=4096 inv ip | 2.60us | 2.60us |
| N=4096 inv oop | 2.48us | 2.48us |
| N=32768 fwd ip | 25.48us | 25.41us |
| N=32768 fwd oop | 27.94us | 28.00us |
| N=32768 inv ip | 25.22us | 25.51us |
| N=32768 inv oop | 27.67us | 27.84us |
| N=262144 fwd ip | 299.87us | 301.85us |
| N=262144 inv oop | 305.55us | 306.15us |
| N=524288 fwd ip | 660.37us | 657.00us |
| N=524288 fwd oop | 707.52us | 705.18us |
| N=16777216 fwd ip | 51.11ms | 50.91ms |

![mflops](plots/pow2-f32-mflops.svg)
![speedup](plots/pow2-f32-speedup.svg)
![accuracy](plots/pow2-f32-accuracy.svg)

### pow2 f64

| cell | fastfft | fastfft/measure |
|---|---|---|
| N=524288 fwd ip | 1.72ms | 1.74ms |
| N=524288 inv oop | 1.65ms | 1.64ms |

![mflops](plots/pow2-f64-mflops.svg)
![speedup](plots/pow2-f64-speedup.svg)
![accuracy](plots/pow2-f64-accuracy.svg)

## Suite `smooth`

### smooth f32

| cell | fastfft | fastfft/measure |
|---|---|---|
| N=15 inv ip | 21.9ns | 14.4ns |
| N=15 inv oop | 15.8ns | 11.0ns |
| N=18 inv oop | 10.6ns | 10.6ns |
| N=80 fwd ip | 35.3ns | 35.4ns |
| N=96 inv ip | 35.0ns | 34.8ns |
| N=96 inv oop | 32.9ns | 32.9ns |
| N=120 fwd ip | 58.2ns | 57.6ns |
| N=160 fwd ip | 75.7ns | 75.6ns |
| N=160 inv ip | 75.5ns | 76.1ns |
| N=210 inv ip | 114.4ns | 114.4ns |
| N=4725 fwd ip | 4.66us | 4.65us |
| N=4725 inv oop | 4.62us | 4.63us |
| N=75600 fwd ip | 65.41us | 65.43us |
| N=75600 fwd oop | 68.50us | 67.93us |
| N=75600 inv ip | 64.54us | 63.59us |
| N=75600 inv oop | 68.44us | 67.91us |
| N=165375 fwd ip | 237.27us | 237.76us |
| N=165375 fwd oop | 237.87us | 238.32us |
| N=165375 inv ip | 237.80us | 238.36us |
| N=165375 inv oop | 239.20us | 239.75us |
| N=1000000 inv ip | 2.80ms | 2.72ms |

![mflops](plots/smooth-f32-mflops.svg)
![speedup](plots/smooth-f32-speedup.svg)
![accuracy](plots/smooth-f32-accuracy.svg)

### smooth f64

| cell | fastfft | fastfft/measure |
|---|---|---|
| N=48 fwd ip | 22.2ns | 21.5ns |
| N=48 fwd oop | 20.0ns | 19.4ns |
| N=48 inv ip | 22.2ns | 21.5ns |
| N=48 inv oop | 20.1ns | 19.4ns |
| N=210 fwd ip | 272.2ns | 272.4ns |
| N=210 fwd oop | 277.4ns | 279.9ns |
| N=210 inv ip | 311.3ns | 291.8ns |
| N=210 inv oop | 310.6ns | 284.1ns |
| N=4725 fwd ip | 8.47us | 8.44us |
| N=4725 inv oop | 8.75us | 8.72us |
| N=165375 fwd ip | 408.70us | 407.56us |
| N=165375 fwd oop | 455.68us | 452.44us |
| N=165375 inv ip | 413.32us | 414.79us |
| N=165375 inv oop | 459.61us | 460.74us |

![mflops](plots/smooth-f64-mflops.svg)
![speedup](plots/smooth-f64-speedup.svg)
![accuracy](plots/smooth-f64-accuracy.svg)

## Suite `batch`

### batch f64

| cell | fastfft | fastfft/measure |
|---|---|---|
| N=32 ×32768 fwd oop | 20.2ns | 20.2ns |

![mflops](plots/batch-f64-mflops.svg)
![speedup](plots/batch-f64-speedup.svg)
![accuracy](plots/batch-f64-accuracy.svg)

## Accuracy and planning time (medians over cells)

| lib | cells verified | failed | median error (ε) | worst error (ε) | median plan time |
|---|---|---|---|---|---|
| fastfft | 51 | 0 | 1.15 | 1.54 | 73.92us |
| fastfft/measure | 51 | 0 | 1.15 | 1.54 | 51.60ms |

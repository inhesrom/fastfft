# fastfft arena report: `baseline-quick`

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
| Profile | quick |
| Official | true  |
| Control drift | max 15.79% over 8 control runs — **FLAGGED** |
| Cells | 175 |

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
| rough | f32 | – | – |
| rough | f64 | – | – |
| batch | f32 | – | – |
| batch | f64 | – | – |

w/t/l = cells faster / within ±3% / slower than rustfft (best times).

## Suite `pow2`

### pow2 f32

| cell | fastfft | fastfft/measure |
|---|---|---|
| N=2 fwd ip | 2.6ns | 2.6ns |
| N=4 fwd ip | 3.6ns | 3.6ns |
| N=8 fwd ip | 7.1ns | 7.1ns |
| N=16 fwd ip | 8.3ns | 8.3ns |
| N=32 fwd ip | 11.4ns | 11.4ns |
| N=64 fwd ip | 17.5ns | 17.4ns |
| N=128 fwd ip | 36.5ns | 37.1ns |
| N=256 fwd ip | 74.9ns | 74.9ns |
| N=512 fwd ip | 226.1ns | 225.4ns |
| N=1024 fwd ip | 500.6ns | 501.5ns |
| N=2048 fwd ip | 1.10us | 1.12us |
| N=4096 fwd ip | 2.69us | 2.55us |
| N=8192 fwd ip | 5.20us | 5.29us |
| N=16384 fwd ip | 11.45us | 11.02us |
| N=32768 fwd ip | 26.70us | 32.00us |
| N=65536 fwd ip | 64.78us | 59.75us |
| N=131072 fwd ip | 147.03us | 128.64us |
| N=262144 fwd ip | 320.35us | 263.28us |
| N=524288 fwd ip | 644.25us | 726.01us |
| N=1048576 fwd ip | 1.93ms | 1.89ms |
| N=2097152 fwd ip | 4.58ms | 4.52ms |
| N=4194304 fwd ip | 10.75ms | 10.67ms |
| N=8388608 fwd ip | 22.72ms | 22.83ms |
| N=16777216 fwd ip | 51.78ms | 52.18ms |

![mflops](plots/pow2-f32-mflops.svg)
![speedup](plots/pow2-f32-speedup.svg)
![accuracy](plots/pow2-f32-accuracy.svg)

### pow2 f64

| cell | fastfft | fastfft/measure |
|---|---|---|
| N=2 fwd ip | 2.6ns | 2.6ns |
| N=4 fwd ip | 3.6ns | 3.6ns |
| N=8 fwd ip | 6.4ns | 6.4ns |
| N=16 fwd ip | 8.9ns | 8.9ns |
| N=32 fwd ip | 14.1ns | 14.2ns |
| N=64 fwd ip | 29.5ns | 29.8ns |
| N=128 fwd ip | 61.7ns | 62.0ns |
| N=256 fwd ip | 144.0ns | 143.3ns |
| N=512 fwd ip | 436.7ns | 432.1ns |
| N=1024 fwd ip | 983.7ns | 1.03us |
| N=2048 fwd ip | 2.27us | 2.53us |
| N=4096 fwd ip | 4.56us | 5.15us |
| N=8192 fwd ip | 10.50us | 10.11us |
| N=16384 fwd ip | 22.52us | 23.06us |
| N=32768 fwd ip | 52.36us | 50.81us |
| N=65536 fwd ip | 128.13us | 121.06us |
| N=131072 fwd ip | 278.80us | 241.49us |
| N=262144 fwd ip | 622.04us | 599.53us |
| N=524288 fwd ip | 1.77ms | 1.75ms |
| N=1048576 fwd ip | 4.12ms | 4.12ms |
| N=2097152 fwd ip | 9.24ms | 9.60ms |
| N=4194304 fwd ip | 21.05ms | 21.03ms |
| N=8388608 fwd ip | 44.48ms | 45.13ms |
| N=16777216 fwd ip | 97.36ms | 97.80ms |

![mflops](plots/pow2-f64-mflops.svg)
![speedup](plots/pow2-f64-speedup.svg)
![accuracy](plots/pow2-f64-accuracy.svg)

## Suite `smooth`

### smooth f32

| cell | fastfft | fastfft/measure |
|---|---|---|
| N=6 fwd ip | 7.4ns | 7.4ns |
| N=9 fwd ip | 10.8ns | 10.8ns |
| N=12 fwd ip | 9.8ns | 9.8ns |
| N=15 fwd ip | 13.6ns | 13.6ns |
| N=18 fwd ip | 15.9ns | 15.9ns |
| N=24 fwd ip | 13.4ns | 13.8ns |
| N=36 fwd ip | 19.2ns | 19.2ns |
| N=48 fwd ip | 15.7ns | 15.7ns |
| N=80 fwd ip | 35.6ns | 35.4ns |
| N=96 fwd ip | 34.7ns | 34.6ns |
| N=108 fwd ip | 52.4ns | 52.3ns |
| N=120 fwd ip | 66.4ns | 64.7ns |
| N=160 fwd ip | 79.6ns | 78.6ns |
| N=210 fwd ip | 171.2ns | 155.0ns |
| N=240 fwd ip | 101.0ns | 100.9ns |
| N=320 fwd ip | 141.5ns | 142.9ns |
| N=384 fwd ip | 167.3ns | 168.3ns |
| N=480 fwd ip | 247.3ns | 247.8ns |
| N=504 fwd ip | 239.3ns | 239.9ns |
| N=640 fwd ip | 286.4ns | 287.3ns |
| N=720 fwd ip | 456.7ns | 334.6ns |
| N=768 fwd ip | 345.0ns | 345.4ns |
| N=960 fwd ip | 477.7ns | 457.7ns |
| N=1000 fwd ip | 619.5ns | 605.2ns |
| N=1200 fwd ip | 684.2ns | 681.6ns |
| N=1536 fwd ip | 777.4ns | 781.3ns |
| N=1920 fwd ip | 1.09us | 1.06us |
| N=1960 fwd ip | 1.24us | 1.24us |
| N=2400 fwd ip | 1.48us | 1.52us |
| N=3072 fwd ip | 1.72us | 1.72us |
| N=4725 fwd ip | 4.67us | 4.73us |
| N=4800 fwd ip | 2.88us | 2.86us |
| N=6144 fwd ip | 3.74us | 3.97us |
| N=10368 fwd ip | 6.58us | 6.65us |
| N=12288 fwd ip | 7.93us | 8.04us |
| N=27000 fwd ip | 21.11us | 21.09us |
| N=48000 fwd ip | 36.01us | 35.49us |
| N=75600 fwd ip | 86.40us | 85.94us |
| N=96000 fwd ip | 78.86us | 79.63us |
| N=165375 fwd ip | 241.64us | 237.35us |
| N=1000000 fwd ip | 2.82ms | 3.01ms |

![mflops](plots/smooth-f32-mflops.svg)
![speedup](plots/smooth-f32-speedup.svg)
![accuracy](plots/smooth-f32-accuracy.svg)

### smooth f64

| cell | fastfft | fastfft/measure |
|---|---|---|
| N=6 fwd ip | 5.5ns | 5.4ns |
| N=9 fwd ip | 8.5ns | 8.5ns |
| N=12 fwd ip | 8.7ns | 8.7ns |
| N=15 fwd ip | 14.6ns | 14.6ns |
| N=18 fwd ip | 11.2ns | 11.0ns |
| N=24 fwd ip | 12.2ns | 12.4ns |
| N=36 fwd ip | 17.9ns | 17.6ns |
| N=48 fwd ip | 22.0ns | 22.0ns |
| N=80 fwd ip | 58.5ns | 58.2ns |
| N=96 fwd ip | 66.6ns | 70.7ns |
| N=108 fwd ip | 81.4ns | 81.3ns |
| N=120 fwd ip | 80.6ns | 80.9ns |
| N=160 fwd ip | 120.6ns | 121.4ns |
| N=210 fwd ip | 301.4ns | 301.3ns |
| N=240 fwd ip | 185.2ns | 188.9ns |
| N=320 fwd ip | 246.3ns | 247.8ns |
| N=384 fwd ip | 296.7ns | 297.7ns |
| N=480 fwd ip | 394.7ns | 392.3ns |
| N=504 fwd ip | 469.5ns | 444.1ns |
| N=640 fwd ip | 563.8ns | 568.5ns |
| N=720 fwd ip | 639.3ns | 641.5ns |
| N=768 fwd ip | 681.2ns | 727.4ns |
| N=960 fwd ip | 893.0ns | 868.5ns |
| N=1000 fwd ip | 1.08us | 1.09us |
| N=1200 fwd ip | 1.22us | 1.31us |
| N=1536 fwd ip | 1.57us | 1.60us |
| N=1920 fwd ip | 2.02us | 2.04us |
| N=1960 fwd ip | 2.22us | 2.22us |
| N=2400 fwd ip | 2.62us | 2.59us |
| N=3072 fwd ip | 3.60us | 3.80us |
| N=4725 fwd ip | 8.61us | 8.68us |
| N=4800 fwd ip | 5.62us | 6.12us |
| N=6144 fwd ip | 7.31us | 7.62us |
| N=10368 fwd ip | 14.25us | 14.41us |
| N=12288 fwd ip | 15.98us | 16.41us |
| N=27000 fwd ip | 43.85us | 44.83us |
| N=48000 fwd ip | 72.24us | 71.90us |
| N=75600 fwd ip | 134.59us | 137.21us |
| N=96000 fwd ip | 145.14us | 145.04us |
| N=165375 fwd ip | 416.92us | 405.98us |
| N=1000000 fwd ip | 7.81ms | 7.81ms |

![mflops](plots/smooth-f64-mflops.svg)
![speedup](plots/smooth-f64-speedup.svg)
![accuracy](plots/smooth-f64-accuracy.svg)

## Suite `rough`

### rough f32

| cell | fastfft | fastfft/measure |
|---|---|---|
| N=17 fwd ip | 46.6ns | 47.1ns |
| N=31 fwd ip | 63.3ns | 63.5ns |
| N=61 fwd ip | 122.8ns | 119.6ns |
| N=127 fwd ip | 217.5ns | 221.2ns |
| N=257 fwd ip | 572.4ns | 585.6ns |
| N=509 fwd ip | 1.26us | 1.28us |
| N=1021 fwd ip | 2.68us | 2.69us |
| N=2018 fwd ip | 6.65us | 6.74us |
| N=2053 fwd ip | 7.95us | 7.99us |
| N=3063 fwd ip | 9.33us | 10.16us |
| N=4099 fwd ip | 14.75us | 14.51us |
| N=8191 fwd ip | 27.92us | 27.34us |
| N=9797 fwd ip | 35.08us | 34.64us |
| N=16381 fwd ip | 65.24us | 77.96us |
| N=65524 fwd ip | 340.08us | 350.07us |
| N=65537 fwd ip | 341.28us | 345.26us |
| N=131071 fwd ip | 727.52us | 737.71us |

![mflops](plots/rough-f32-mflops.svg)
![speedup](plots/rough-f32-speedup.svg)
![accuracy](plots/rough-f32-accuracy.svg)

### rough f64

| cell | fastfft | fastfft/measure |
|---|---|---|
| N=17 fwd ip | 57.4ns | 55.3ns |
| N=31 fwd ip | 100.2ns | 100.8ns |
| N=61 fwd ip | 191.2ns | 191.6ns |
| N=127 fwd ip | 388.4ns | 381.4ns |
| N=257 fwd ip | 1.13us | 1.12us |
| N=509 fwd ip | 2.50us | 2.52us |
| N=1021 fwd ip | 5.73us | 5.97us |
| N=2018 fwd ip | 12.87us | 12.79us |
| N=2053 fwd ip | 13.80us | 14.15us |
| N=3063 fwd ip | 18.32us | 18.44us |
| N=4099 fwd ip | 29.02us | 29.78us |
| N=8191 fwd ip | 57.52us | 59.07us |
| N=9797 fwd ip | 82.75us | 80.06us |
| N=16381 fwd ip | 133.62us | 129.54us |
| N=65524 fwd ip | 666.34us | 650.52us |
| N=65537 fwd ip | 660.17us | 649.30us |
| N=131071 fwd ip | 1.87ms | 1.76ms |

![mflops](plots/rough-f64-mflops.svg)
![speedup](plots/rough-f64-speedup.svg)
![accuracy](plots/rough-f64-accuracy.svg)

## Suite `batch`

### batch f32

| cell | fastfft | fastfft/measure |
|---|---|---|
| N=8 ×131072 fwd ip | 1.3ns | 1.4ns |
| N=16 ×65536 fwd ip | 2.8ns | 2.8ns |
| N=32 ×32768 fwd ip | 7.2ns | 7.2ns |
| N=64 ×16384 fwd ip | 15.4ns | 15.5ns |
| N=128 ×8192 fwd ip | 37.4ns | 37.3ns |
| N=256 ×4096 fwd ip | 81.2ns | 80.4ns |

![mflops](plots/batch-f32-mflops.svg)
![speedup](plots/batch-f32-speedup.svg)
![accuracy](plots/batch-f32-accuracy.svg)

### batch f64

| cell | fastfft | fastfft/measure |
|---|---|---|
| N=8 ×131072 fwd ip | 3.9ns | 3.9ns |
| N=16 ×65536 fwd ip | 5.2ns | 5.3ns |
| N=32 ×32768 fwd ip | 14.6ns | 15.5ns |
| N=64 ×16384 fwd ip | 35.2ns | 47.1ns |
| N=128 ×8192 fwd ip | 100.1ns | 98.8ns |

![mflops](plots/batch-f64-mflops.svg)
![speedup](plots/batch-f64-speedup.svg)
![accuracy](plots/batch-f64-accuracy.svg)

## Accuracy and planning time (medians over cells)

| lib | cells verified | failed | median error (ε) | worst error (ε) | median plan time |
|---|---|---|---|---|---|
| fastfft | 175 | 0 | 0.98 | 2.81 | 14.59us |
| fastfft/measure | 175 | 0 | 0.98 | 2.87 | 1.00s |

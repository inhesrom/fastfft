# fastfft arena report: `guarded-quick`

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
| Control drift | max 1.59% over 10 control runs |
| Cells | 202 |

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
| realworld | f32 | – | – |
| realworld | f64 | – | – |
| datacheck | f32 | – | – |
| datacheck | f64 | – | – |

w/t/l = cells faster / within ±3% / slower than rustfft (best times).

## Suite `pow2`

### pow2 f32

| cell | fastfft | fastfft/measure |
|---|---|---|
| N=2 fwd ip | 2.6ns | 2.6ns |
| N=4 fwd ip | 3.6ns | 3.6ns |
| N=8 fwd ip | 6.9ns | 7.0ns |
| N=16 fwd ip | 8.2ns | 8.2ns |
| N=32 fwd ip | 11.4ns | 11.4ns |
| N=64 fwd ip | 17.5ns | 17.5ns |
| N=128 fwd ip | 36.9ns | 37.2ns |
| N=256 fwd ip | 74.0ns | 75.4ns |
| N=512 fwd ip | 227.1ns | 227.7ns |
| N=1024 fwd ip | 502.0ns | 503.8ns |
| N=2048 fwd ip | 1.09us | 1.12us |
| N=4096 fwd ip | 2.67us | 3.77us |
| N=8192 fwd ip | 5.26us | 5.25us |
| N=16384 fwd ip | 11.46us | 11.00us |
| N=32768 fwd ip | 26.27us | 23.71us |
| N=65536 fwd ip | 65.17us | 59.90us |
| N=131072 fwd ip | 145.87us | 125.46us |
| N=262144 fwd ip | 316.63us | 314.99us |
| N=524288 fwd ip | 669.09us | 617.52us |
| N=1048576 fwd ip | 1.97ms | 1.95ms |
| N=2097152 fwd ip | 4.55ms | 4.57ms |
| N=4194304 fwd ip | 11.13ms | 10.84ms |
| N=8388608 fwd ip | 22.95ms | 22.85ms |
| N=16777216 fwd ip | 50.90ms | 51.41ms |

![mflops](plots/pow2-f32-mflops.svg)
![speedup](plots/pow2-f32-speedup.svg)
![accuracy](plots/pow2-f32-accuracy.svg)

### pow2 f64

| cell | fastfft | fastfft/measure |
|---|---|---|
| N=2 fwd ip | 2.6ns | 2.6ns |
| N=4 fwd ip | 3.7ns | 3.6ns |
| N=8 fwd ip | 6.4ns | 6.4ns |
| N=16 fwd ip | 9.0ns | 8.9ns |
| N=32 fwd ip | 14.2ns | 14.1ns |
| N=64 fwd ip | 29.7ns | 29.7ns |
| N=128 fwd ip | 61.4ns | 61.7ns |
| N=256 fwd ip | 129.9ns | 130.2ns |
| N=512 fwd ip | 427.8ns | 431.9ns |
| N=1024 fwd ip | 988.9ns | 1.02us |
| N=2048 fwd ip | 2.34us | 2.34us |
| N=4096 fwd ip | 4.60us | 4.60us |
| N=8192 fwd ip | 10.50us | 10.19us |
| N=16384 fwd ip | 22.65us | 22.44us |
| N=32768 fwd ip | 51.91us | 50.55us |
| N=65536 fwd ip | 128.18us | 123.92us |
| N=131072 fwd ip | 278.08us | 242.68us |
| N=262144 fwd ip | 622.61us | 520.43us |
| N=524288 fwd ip | 1.78ms | 1.78ms |
| N=1048576 fwd ip | 4.11ms | 4.11ms |
| N=2097152 fwd ip | 8.98ms | 9.36ms |
| N=4194304 fwd ip | 20.91ms | 21.06ms |
| N=8388608 fwd ip | 43.74ms | 44.07ms |
| N=16777216 fwd ip | 97.17ms | 96.90ms |

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
| N=18 fwd ip | 15.9ns | 15.7ns |
| N=24 fwd ip | 13.5ns | 13.5ns |
| N=36 fwd ip | 19.2ns | 19.2ns |
| N=48 fwd ip | 15.6ns | 15.7ns |
| N=80 fwd ip | 35.6ns | 35.4ns |
| N=96 fwd ip | 35.1ns | 35.1ns |
| N=108 fwd ip | 50.5ns | 50.3ns |
| N=120 fwd ip | 58.9ns | 59.2ns |
| N=160 fwd ip | 80.3ns | 77.6ns |
| N=210 fwd ip | 113.5ns | 117.4ns |
| N=240 fwd ip | 101.0ns | 100.4ns |
| N=320 fwd ip | 144.6ns | 142.6ns |
| N=384 fwd ip | 185.5ns | 168.9ns |
| N=480 fwd ip | 260.7ns | 254.9ns |
| N=504 fwd ip | 239.7ns | 249.2ns |
| N=640 fwd ip | 287.8ns | 286.3ns |
| N=720 fwd ip | 340.5ns | 336.4ns |
| N=768 fwd ip | 348.3ns | 355.5ns |
| N=960 fwd ip | 458.3ns | 459.7ns |
| N=1000 fwd ip | 612.8ns | 609.7ns |
| N=1200 fwd ip | 674.4ns | 678.0ns |
| N=1536 fwd ip | 782.8ns | 804.8ns |
| N=1920 fwd ip | 1.11us | 1.07us |
| N=1960 fwd ip | 1.24us | 1.24us |
| N=2400 fwd ip | 1.48us | 1.48us |
| N=3072 fwd ip | 1.72us | 1.74us |
| N=4725 fwd ip | 4.74us | 4.61us |
| N=4800 fwd ip | 2.90us | 2.89us |
| N=6144 fwd ip | 3.75us | 3.75us |
| N=10368 fwd ip | 6.60us | 6.59us |
| N=12288 fwd ip | 8.05us | 8.13us |
| N=27000 fwd ip | 20.48us | 20.48us |
| N=48000 fwd ip | 35.52us | 36.43us |
| N=75600 fwd ip | 66.48us | 67.95us |
| N=96000 fwd ip | 79.67us | 79.83us |
| N=165375 fwd ip | 243.90us | 243.52us |
| N=1000000 fwd ip | 2.92ms | 2.91ms |

![mflops](plots/smooth-f32-mflops.svg)
![speedup](plots/smooth-f32-speedup.svg)
![accuracy](plots/smooth-f32-accuracy.svg)

### smooth f64

| cell | fastfft | fastfft/measure |
|---|---|---|
| N=6 fwd ip | 5.4ns | 5.5ns |
| N=9 fwd ip | 8.6ns | 8.6ns |
| N=12 fwd ip | 8.7ns | 8.7ns |
| N=15 fwd ip | 14.6ns | 14.6ns |
| N=18 fwd ip | 11.2ns | 11.2ns |
| N=24 fwd ip | 12.3ns | 12.4ns |
| N=36 fwd ip | 17.9ns | 17.7ns |
| N=48 fwd ip | 21.7ns | 21.9ns |
| N=80 fwd ip | 66.1ns | 65.1ns |
| N=96 fwd ip | 64.9ns | 72.4ns |
| N=108 fwd ip | 80.7ns | 79.8ns |
| N=120 fwd ip | 88.0ns | 82.4ns |
| N=160 fwd ip | 123.2ns | 122.5ns |
| N=210 fwd ip | 300.9ns | 298.2ns |
| N=240 fwd ip | 183.4ns | 186.7ns |
| N=320 fwd ip | 247.5ns | 247.5ns |
| N=384 fwd ip | 301.7ns | 299.1ns |
| N=480 fwd ip | 399.0ns | 401.8ns |
| N=504 fwd ip | 456.0ns | 440.9ns |
| N=640 fwd ip | 550.1ns | 553.5ns |
| N=720 fwd ip | 636.1ns | 640.9ns |
| N=768 fwd ip | 681.6ns | 711.5ns |
| N=960 fwd ip | 870.4ns | 914.6ns |
| N=1000 fwd ip | 1.08us | 1.10us |
| N=1200 fwd ip | 1.21us | 1.22us |
| N=1536 fwd ip | 1.59us | 1.60us |
| N=1920 fwd ip | 2.00us | 1.99us |
| N=1960 fwd ip | 2.24us | 2.25us |
| N=2400 fwd ip | 2.64us | 2.59us |
| N=3072 fwd ip | 3.45us | 3.48us |
| N=4725 fwd ip | 8.59us | 8.66us |
| N=4800 fwd ip | 5.42us | 5.34us |
| N=6144 fwd ip | 7.46us | 7.40us |
| N=10368 fwd ip | 12.45us | 12.40us |
| N=12288 fwd ip | 15.84us | 15.86us |
| N=27000 fwd ip | 43.81us | 43.56us |
| N=48000 fwd ip | 69.35us | 68.47us |
| N=75600 fwd ip | 131.07us | 132.21us |
| N=96000 fwd ip | 143.44us | 143.19us |
| N=165375 fwd ip | 413.15us | 419.86us |
| N=1000000 fwd ip | 7.94ms | 7.87ms |

![mflops](plots/smooth-f64-mflops.svg)
![speedup](plots/smooth-f64-speedup.svg)
![accuracy](plots/smooth-f64-accuracy.svg)

## Suite `rough`

### rough f32

| cell | fastfft | fastfft/measure |
|---|---|---|
| N=17 fwd ip | 47.1ns | 47.4ns |
| N=31 fwd ip | 63.6ns | 62.8ns |
| N=61 fwd ip | 119.6ns | 119.6ns |
| N=127 fwd ip | 222.8ns | 222.7ns |
| N=257 fwd ip | 583.1ns | 577.4ns |
| N=509 fwd ip | 1.27us | 1.31us |
| N=1021 fwd ip | 2.71us | 2.70us |
| N=2018 fwd ip | 6.78us | 6.68us |
| N=2053 fwd ip | 7.81us | 7.36us |
| N=3063 fwd ip | 9.39us | 9.60us |
| N=4099 fwd ip | 14.83us | 14.51us |
| N=8191 fwd ip | 27.71us | 27.84us |
| N=9797 fwd ip | 36.15us | 34.38us |
| N=16381 fwd ip | 67.47us | 63.75us |
| N=65524 fwd ip | 342.16us | 341.11us |
| N=65537 fwd ip | 341.19us | 333.08us |
| N=131071 fwd ip | 735.36us | 713.88us |

![mflops](plots/rough-f32-mflops.svg)
![speedup](plots/rough-f32-speedup.svg)
![accuracy](plots/rough-f32-accuracy.svg)

### rough f64

| cell | fastfft | fastfft/measure |
|---|---|---|
| N=17 fwd ip | 56.7ns | 55.7ns |
| N=31 fwd ip | 100.4ns | 98.0ns |
| N=61 fwd ip | 193.1ns | 190.1ns |
| N=127 fwd ip | 385.8ns | 385.9ns |
| N=257 fwd ip | 1.29us | 1.12us |
| N=509 fwd ip | 2.51us | 2.53us |
| N=1021 fwd ip | 5.80us | 5.88us |
| N=2018 fwd ip | 12.97us | 12.98us |
| N=2053 fwd ip | 13.82us | 13.93us |
| N=3063 fwd ip | 18.55us | 18.76us |
| N=4099 fwd ip | 29.27us | 27.94us |
| N=8191 fwd ip | 57.90us | 55.09us |
| N=9797 fwd ip | 81.94us | 80.47us |
| N=16381 fwd ip | 133.23us | 127.65us |
| N=65524 fwd ip | 662.49us | 666.48us |
| N=65537 fwd ip | 661.18us | 660.09us |
| N=131071 fwd ip | 1.82ms | 1.87ms |

![mflops](plots/rough-f64-mflops.svg)
![speedup](plots/rough-f64-speedup.svg)
![accuracy](plots/rough-f64-accuracy.svg)

## Suite `batch`

### batch f32

| cell | fastfft | fastfft/measure |
|---|---|---|
| N=8 ×131072 fwd ip | 1.4ns | 1.4ns |
| N=16 ×65536 fwd ip | 2.8ns | 2.8ns |
| N=32 ×32768 fwd ip | 7.3ns | 7.3ns |
| N=64 ×16384 fwd ip | 15.4ns | 15.3ns |
| N=128 ×8192 fwd ip | 37.4ns | 37.5ns |
| N=256 ×4096 fwd ip | 81.9ns | 82.3ns |
| N=512 ×2048 fwd ip | 255.8ns | 258.7ns |
| N=1024 ×1024 fwd ip | 568.9ns | 586.8ns |

![mflops](plots/batch-f32-mflops.svg)
![speedup](plots/batch-f32-speedup.svg)
![accuracy](plots/batch-f32-accuracy.svg)

### batch f64

| cell | fastfft | fastfft/measure |
|---|---|---|
| N=8 ×131072 fwd ip | 3.9ns | 3.9ns |
| N=16 ×65536 fwd ip | 5.1ns | 5.1ns |
| N=32 ×32768 fwd ip | 14.2ns | 14.3ns |
| N=64 ×16384 fwd ip | 35.5ns | 33.6ns |
| N=128 ×8192 fwd ip | 107.1ns | 103.8ns |
| N=256 ×4096 fwd ip | 286.6ns | 286.4ns |
| N=512 ×2048 fwd ip | 779.2ns | 768.0ns |
| N=1024 ×1024 fwd ip | 1.58us | 1.48us |

![mflops](plots/batch-f64-mflops.svg)
![speedup](plots/batch-f64-speedup.svg)
![accuracy](plots/batch-f64-accuracy.svg)

## Suite `realworld`

### realworld f32

| cell | fastfft | fastfft/measure |
|---|---|---|
| Spectrogram N=1024 | 753 MS/s | 744 MS/s |
| Spectrogram N=4096 | 658 MS/s | 659 MS/s |
| Spectrogram N=16384 | 567 MS/s | 607 MS/s |
| Spectrogram N=65536 | 549 MS/s | 568 MS/s |
| OverlapSave N=4096 | 319 MS/s | 282 MS/s |

### realworld f64

| cell | fastfft | fastfft/measure |
|---|---|---|
| Spectrogram N=4096 | 333 MS/s | 328 MS/s |

## Suite `datacheck`

### datacheck f32

| cell | fastfft | fastfft/measure |
|---|---|---|
| N=64 fwd imm | 16.2ns | 16.2ns |
| N=64 fwd imm | 16.3ns | 16.2ns |
| N=4096 fwd imm | 2.89us | 2.71us |
| N=4096 fwd imm | 2.92us | 2.69us |
| N=65536 fwd imm | 65.37us | 61.38us |
| N=65536 fwd imm | 65.62us | 61.88us |
| N=1048576 fwd imm | 1.87ms | 1.82ms |
| N=1048576 fwd imm | 1.85ms | 1.86ms |

![mflops](plots/datacheck-f32-mflops.svg)
![speedup](plots/datacheck-f32-speedup.svg)
![accuracy](plots/datacheck-f32-accuracy.svg)

### datacheck f64

| cell | fastfft | fastfft/measure |
|---|---|---|
| N=64 fwd imm | 27.5ns | 27.5ns |
| N=64 fwd imm | 27.1ns | 27.6ns |
| N=4096 fwd imm | 4.74us | 4.70us |
| N=4096 fwd imm | 4.63us | 4.73us |
| N=65536 fwd imm | 128.52us | 118.10us |
| N=65536 fwd imm | 128.93us | 119.24us |
| N=1048576 fwd imm | 4.21ms | 4.25ms |
| N=1048576 fwd imm | 4.24ms | 4.28ms |

![mflops](plots/datacheck-f64-mflops.svg)
![speedup](plots/datacheck-f64-speedup.svg)
![accuracy](plots/datacheck-f64-accuracy.svg)

## Accuracy and planning time (medians over cells)

| lib | cells verified | failed | median error (ε) | worst error (ε) | median plan time |
|---|---|---|---|---|---|
| fastfft | 202 | 0 | 1.00 | 2.81 | 18.36us |
| fastfft/measure | 202 | 0 | 1.00 | 2.81 | 11.41ms |

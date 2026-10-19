# fastfft arena report: `layouts-full`

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
| Control drift | max 22.10% over 30 control runs — **FLAGGED** |
| Cells | 710 |

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
| N=2 fwd oop | 1.2ns | 1.4ns |
| N=2 inv ip | 2.6ns | 2.6ns |
| N=2 inv oop | 1.2ns | 1.4ns |
| N=4 fwd ip | 3.6ns | 3.6ns |
| N=4 fwd oop | 1.2ns | 1.4ns |
| N=4 inv ip | 3.6ns | 3.6ns |
| N=4 inv oop | 1.2ns | 1.4ns |
| N=8 fwd ip | 6.9ns | 7.0ns |
| N=8 fwd oop | 3.0ns | 3.0ns |
| N=8 inv ip | 6.9ns | 6.9ns |
| N=8 inv oop | 3.0ns | 3.0ns |
| N=16 fwd ip | 8.3ns | 8.3ns |
| N=16 fwd oop | 3.8ns | 3.8ns |
| N=16 inv ip | 8.3ns | 8.2ns |
| N=16 inv oop | 3.8ns | 3.8ns |
| N=32 fwd ip | 11.4ns | 11.4ns |
| N=32 fwd oop | 7.8ns | 7.7ns |
| N=32 inv ip | 11.6ns | 11.6ns |
| N=32 inv oop | 7.8ns | 7.8ns |
| N=64 fwd ip | 17.4ns | 17.4ns |
| N=64 fwd oop | 16.2ns | 16.0ns |
| N=64 inv ip | 17.4ns | 17.4ns |
| N=64 inv oop | 16.0ns | 16.0ns |
| N=128 fwd ip | 36.3ns | 36.3ns |
| N=128 fwd oop | 36.1ns | 36.7ns |
| N=128 inv ip | 36.3ns | 36.9ns |
| N=128 inv oop | 36.5ns | 36.7ns |
| N=256 fwd ip | 73.8ns | 74.7ns |
| N=256 fwd oop | 74.4ns | 73.9ns |
| N=256 inv ip | 73.8ns | 75.0ns |
| N=256 inv oop | 73.8ns | 74.3ns |
| N=512 fwd ip | 222.7ns | 222.6ns |
| N=512 fwd oop | 222.2ns | 223.2ns |
| N=512 inv ip | 224.4ns | 223.2ns |
| N=512 inv oop | 223.2ns | 223.7ns |
| N=1024 fwd ip | 500.2ns | 500.1ns |
| N=1024 fwd oop | 499.0ns | 500.8ns |
| N=1024 inv ip | 500.5ns | 500.4ns |
| N=1024 inv oop | 501.4ns | 501.4ns |
| N=2048 fwd ip | 1.10us | 1.11us |
| N=2048 fwd oop | 1.07us | 1.07us |
| N=2048 inv ip | 1.08us | 1.11us |
| N=2048 inv oop | 1.07us | 1.08us |
| N=4096 fwd ip | 2.63us | 2.47us |
| N=4096 fwd oop | 2.43us | 2.38us |
| N=4096 inv ip | 2.64us | 2.48us |
| N=4096 inv oop | 2.45us | 2.38us |
| N=8192 fwd ip | 5.26us | 5.25us |
| N=8192 fwd oop | 5.60us | 5.58us |
| N=8192 inv ip | 5.28us | 5.28us |
| N=8192 inv oop | 5.64us | 5.62us |
| N=16384 fwd ip | 11.47us | 11.04us |
| N=16384 fwd oop | 12.77us | 12.66us |
| N=16384 inv ip | 11.45us | 10.96us |
| N=16384 inv oop | 12.84us | 12.63us |
| N=32768 fwd ip | 25.68us | 23.05us |
| N=32768 fwd oop | 28.33us | 29.03us |
| N=32768 inv ip | 25.90us | 22.98us |
| N=32768 inv oop | 28.22us | 29.05us |
| N=65536 fwd ip | 63.71us | 59.88us |
| N=65536 fwd oop | 60.58us | 60.69us |
| N=65536 inv ip | 63.80us | 59.89us |
| N=65536 inv oop | 60.53us | 60.27us |
| N=131072 fwd ip | 145.16us | 129.72us |
| N=131072 fwd oop | 137.25us | 135.82us |
| N=131072 inv ip | 145.19us | 127.24us |
| N=131072 inv oop | 136.62us | 135.91us |
| N=262144 fwd ip | 317.32us | 302.69us |
| N=262144 fwd oop | 318.91us | 308.93us |
| N=262144 inv ip | 314.33us | 301.29us |
| N=262144 inv oop | 316.94us | 304.70us |
| N=524288 fwd ip | 636.32us | 601.01us |
| N=524288 fwd oop | 700.80us | 700.22us |
| N=524288 inv ip | 648.41us | 610.75us |
| N=524288 inv oop | 697.59us | 698.19us |
| N=1048576 fwd ip | 1.92ms | 1.88ms |
| N=1048576 fwd oop | 1.81ms | 1.79ms |
| N=1048576 inv ip | 1.91ms | 1.88ms |
| N=1048576 inv oop | 1.82ms | 1.80ms |
| N=2097152 fwd ip | 4.51ms | 4.41ms |
| N=2097152 fwd oop | 4.61ms | 4.65ms |
| N=2097152 inv ip | 4.41ms | 4.39ms |
| N=2097152 inv oop | 4.54ms | 4.51ms |
| N=4194304 fwd ip | 10.67ms | 10.57ms |
| N=4194304 fwd oop | 10.68ms | 10.69ms |
| N=4194304 inv ip | 10.64ms | 10.57ms |
| N=4194304 inv oop | 10.65ms | 10.69ms |
| N=8388608 fwd ip | 22.35ms | 22.45ms |
| N=8388608 fwd oop | 22.76ms | 22.31ms |
| N=8388608 inv ip | 22.48ms | 22.43ms |
| N=8388608 inv oop | 22.71ms | 22.50ms |
| N=16777216 fwd ip | 49.71ms | 49.79ms |
| N=16777216 fwd oop | 49.70ms | 50.64ms |
| N=16777216 inv ip | 50.33ms | 50.20ms |
| N=16777216 inv oop | 50.49ms | 50.52ms |

![mflops](plots/pow2-f32-mflops.svg)
![speedup](plots/pow2-f32-speedup.svg)
![accuracy](plots/pow2-f32-accuracy.svg)

### pow2 f64

| cell | fastfft | fastfft/measure |
|---|---|---|
| N=2 fwd ip | 2.6ns | 2.6ns |
| N=2 fwd oop | 1.2ns | 1.2ns |
| N=2 inv ip | 2.6ns | 2.6ns |
| N=2 inv oop | 1.2ns | 1.2ns |
| N=4 fwd ip | 3.6ns | 3.6ns |
| N=4 fwd oop | 1.6ns | 1.6ns |
| N=4 inv ip | 3.6ns | 3.6ns |
| N=4 inv oop | 1.6ns | 1.6ns |
| N=8 fwd ip | 6.4ns | 6.4ns |
| N=8 fwd oop | 4.4ns | 4.4ns |
| N=8 inv ip | 6.3ns | 6.3ns |
| N=8 inv oop | 4.2ns | 4.2ns |
| N=16 fwd ip | 9.0ns | 8.9ns |
| N=16 fwd oop | 5.3ns | 5.4ns |
| N=16 inv ip | 9.0ns | 8.9ns |
| N=16 inv oop | 5.3ns | 5.3ns |
| N=32 fwd ip | 14.1ns | 14.1ns |
| N=32 fwd oop | 11.9ns | 12.0ns |
| N=32 inv ip | 14.1ns | 14.0ns |
| N=32 inv oop | 11.9ns | 12.0ns |
| N=64 fwd ip | 28.7ns | 29.7ns |
| N=64 fwd oop | 26.9ns | 27.2ns |
| N=64 inv ip | 29.3ns | 29.2ns |
| N=64 inv oop | 27.3ns | 27.2ns |
| N=128 fwd ip | 60.4ns | 61.1ns |
| N=128 fwd oop | 60.8ns | 60.5ns |
| N=128 inv ip | 61.3ns | 61.4ns |
| N=128 inv oop | 60.6ns | 61.0ns |
| N=256 fwd ip | 128.7ns | 129.8ns |
| N=256 fwd oop | 129.5ns | 129.8ns |
| N=256 inv ip | 128.7ns | 130.4ns |
| N=256 inv oop | 129.0ns | 130.7ns |
| N=512 fwd ip | 420.9ns | 422.3ns |
| N=512 fwd oop | 419.8ns | 420.7ns |
| N=512 inv ip | 427.7ns | 424.3ns |
| N=512 inv oop | 426.6ns | 426.6ns |
| N=1024 fwd ip | 1.00us | 1.01us |
| N=1024 fwd oop | 970.2ns | 984.1ns |
| N=1024 inv ip | 1.00us | 1.01us |
| N=1024 inv oop | 970.4ns | 980.4ns |
| N=2048 fwd ip | 2.26us | 2.26us |
| N=2048 fwd oop | 2.14us | 2.14us |
| N=2048 inv ip | 2.27us | 2.26us |
| N=2048 inv oop | 2.17us | 2.17us |
| N=4096 fwd ip | 4.58us | 4.61us |
| N=4096 fwd oop | 4.53us | 4.54us |
| N=4096 inv ip | 4.52us | 4.64us |
| N=4096 inv oop | 4.51us | 4.49us |
| N=8192 fwd ip | 10.58us | 10.30us |
| N=8192 fwd oop | 11.86us | 11.86us |
| N=8192 inv ip | 10.51us | 10.33us |
| N=8192 inv oop | 11.83us | 11.86us |
| N=16384 fwd ip | 22.19us | 22.93us |
| N=16384 fwd oop | 24.47us | 24.38us |
| N=16384 inv ip | 22.16us | 23.36us |
| N=16384 inv oop | 24.69us | 24.22us |
| N=32768 fwd ip | 51.65us | 49.78us |
| N=32768 fwd oop | 56.54us | 57.17us |
| N=32768 inv ip | 51.17us | 49.58us |
| N=32768 inv oop | 56.47us | 56.90us |
| N=65536 fwd ip | 127.39us | 123.06us |
| N=65536 fwd oop | 120.07us | 119.71us |
| N=65536 inv ip | 127.83us | 123.75us |
| N=65536 inv oop | 120.31us | 120.27us |
| N=131072 fwd ip | 277.21us | 241.37us |
| N=131072 fwd oop | 264.00us | 263.43us |
| N=131072 inv ip | 276.87us | 239.99us |
| N=131072 inv oop | 263.11us | 263.08us |
| N=262144 fwd ip | 599.54us | 517.40us |
| N=262144 fwd oop | 558.04us | 559.22us |
| N=262144 inv ip | 617.13us | 513.80us |
| N=262144 inv oop | 561.57us | 556.72us |
| N=524288 fwd ip | 1.78ms | 1.75ms |
| N=524288 fwd oop | 1.69ms | 1.70ms |
| N=524288 inv ip | 1.79ms | 1.75ms |
| N=524288 inv oop | 1.73ms | 1.70ms |
| N=1048576 fwd ip | 4.08ms | 3.98ms |
| N=1048576 fwd oop | 4.18ms | 4.24ms |
| N=1048576 inv ip | 3.96ms | 3.95ms |
| N=1048576 inv oop | 4.19ms | 4.20ms |
| N=2097152 fwd ip | 9.11ms | 9.19ms |
| N=2097152 fwd oop | 9.41ms | 9.44ms |
| N=2097152 inv ip | 8.81ms | 8.74ms |
| N=2097152 inv oop | 9.44ms | 9.43ms |
| N=4194304 fwd ip | 20.66ms | 20.71ms |
| N=4194304 fwd oop | 20.62ms | 20.74ms |
| N=4194304 inv ip | 20.40ms | 20.61ms |
| N=4194304 inv oop | 20.69ms | 20.59ms |
| N=8388608 fwd ip | 42.66ms | 42.83ms |
| N=8388608 fwd oop | 43.26ms | 43.47ms |
| N=8388608 inv ip | 43.02ms | 42.97ms |
| N=8388608 inv oop | 43.53ms | 42.94ms |
| N=16777216 fwd ip | 96.51ms | 96.42ms |
| N=16777216 fwd oop | 95.93ms | 96.13ms |
| N=16777216 inv ip | 97.06ms | 96.79ms |
| N=16777216 inv oop | 97.12ms | 97.53ms |

![mflops](plots/pow2-f64-mflops.svg)
![speedup](plots/pow2-f64-speedup.svg)
![accuracy](plots/pow2-f64-accuracy.svg)

## Suite `smooth`

### smooth f32

| cell | fastfft | fastfft/measure |
|---|---|---|
| N=6 fwd ip | 7.4ns | 7.4ns |
| N=6 fwd oop | 2.9ns | 2.9ns |
| N=6 inv ip | 7.4ns | 7.4ns |
| N=6 inv oop | 2.9ns | 2.9ns |
| N=9 fwd ip | 10.8ns | 10.8ns |
| N=9 fwd oop | 6.0ns | 6.0ns |
| N=9 inv ip | 10.7ns | 10.7ns |
| N=9 inv oop | 6.0ns | 6.0ns |
| N=12 fwd ip | 9.8ns | 9.8ns |
| N=12 fwd oop | 6.2ns | 6.2ns |
| N=12 inv ip | 9.4ns | 9.4ns |
| N=12 inv oop | 6.2ns | 6.2ns |
| N=15 fwd ip | 13.6ns | 13.6ns |
| N=15 fwd oop | 11.1ns | 11.1ns |
| N=15 inv ip | 21.9ns | 14.5ns |
| N=15 inv oop | 15.9ns | 11.3ns |
| N=18 fwd ip | 15.9ns | 15.7ns |
| N=18 fwd oop | 10.6ns | 10.6ns |
| N=18 inv ip | 15.9ns | 15.9ns |
| N=18 inv oop | 10.6ns | 10.7ns |
| N=24 fwd ip | 13.4ns | 13.3ns |
| N=24 fwd oop | 10.4ns | 10.4ns |
| N=24 inv ip | 12.9ns | 12.9ns |
| N=24 inv oop | 10.4ns | 10.4ns |
| N=36 fwd ip | 19.1ns | 19.2ns |
| N=36 fwd oop | 17.0ns | 17.1ns |
| N=36 inv ip | 18.7ns | 18.9ns |
| N=36 inv oop | 17.1ns | 17.0ns |
| N=48 fwd ip | 15.7ns | 15.7ns |
| N=48 fwd oop | 12.3ns | 12.3ns |
| N=48 inv ip | 15.7ns | 15.7ns |
| N=48 inv oop | 12.3ns | 12.3ns |
| N=80 fwd ip | 35.4ns | 34.7ns |
| N=80 fwd oop | 30.1ns | 30.2ns |
| N=80 inv ip | 35.4ns | 34.9ns |
| N=80 inv oop | 29.8ns | 29.7ns |
| N=96 fwd ip | 35.2ns | 35.1ns |
| N=96 fwd oop | 32.1ns | 32.1ns |
| N=96 inv ip | 34.9ns | 35.0ns |
| N=96 inv oop | 32.7ns | 33.0ns |
| N=108 fwd ip | 47.3ns | 46.6ns |
| N=108 fwd oop | 41.5ns | 41.1ns |
| N=108 inv ip | 47.1ns | 46.7ns |
| N=108 inv oop | 41.6ns | 41.1ns |
| N=120 fwd ip | 59.2ns | 59.0ns |
| N=120 fwd oop | 55.2ns | 55.1ns |
| N=120 inv ip | 58.9ns | 59.2ns |
| N=120 inv oop | 54.8ns | 54.8ns |
| N=160 fwd ip | 77.7ns | 79.2ns |
| N=160 fwd oop | 74.9ns | 75.3ns |
| N=160 inv ip | 76.2ns | 76.4ns |
| N=160 inv oop | 73.8ns | 73.5ns |
| N=210 fwd ip | 113.5ns | 115.2ns |
| N=210 fwd oop | 112.7ns | 113.6ns |
| N=210 inv ip | 114.7ns | 113.5ns |
| N=210 inv oop | 112.4ns | 112.4ns |
| N=240 fwd ip | 99.2ns | 99.5ns |
| N=240 fwd oop | 98.9ns | 98.8ns |
| N=240 inv ip | 99.2ns | 99.7ns |
| N=240 inv oop | 98.7ns | 98.1ns |
| N=320 fwd ip | 140.0ns | 139.6ns |
| N=320 fwd oop | 140.6ns | 141.0ns |
| N=320 inv ip | 140.2ns | 140.2ns |
| N=320 inv oop | 140.4ns | 140.6ns |
| N=384 fwd ip | 165.9ns | 167.0ns |
| N=384 fwd oop | 166.9ns | 166.5ns |
| N=384 inv ip | 167.5ns | 166.3ns |
| N=384 inv oop | 167.4ns | 165.7ns |
| N=480 fwd ip | 247.2ns | 244.8ns |
| N=480 fwd oop | 246.2ns | 246.0ns |
| N=480 inv ip | 245.4ns | 244.5ns |
| N=480 inv oop | 245.0ns | 245.9ns |
| N=504 fwd ip | 237.8ns | 237.0ns |
| N=504 fwd oop | 246.4ns | 246.9ns |
| N=504 inv ip | 239.1ns | 238.3ns |
| N=504 inv oop | 245.5ns | 246.7ns |
| N=640 fwd ip | 284.8ns | 284.3ns |
| N=640 fwd oop | 286.2ns | 286.0ns |
| N=640 inv ip | 295.3ns | 295.7ns |
| N=640 inv oop | 284.8ns | 286.5ns |
| N=720 fwd ip | 334.0ns | 332.2ns |
| N=720 fwd oop | 333.3ns | 334.0ns |
| N=720 inv ip | 332.7ns | 333.1ns |
| N=720 inv oop | 335.3ns | 335.1ns |
| N=768 fwd ip | 344.5ns | 344.7ns |
| N=768 fwd oop | 345.6ns | 346.1ns |
| N=768 inv ip | 344.4ns | 344.9ns |
| N=768 inv oop | 343.6ns | 345.0ns |
| N=960 fwd ip | 455.6ns | 452.1ns |
| N=960 fwd oop | 455.8ns | 457.0ns |
| N=960 inv ip | 452.4ns | 451.1ns |
| N=960 inv oop | 455.0ns | 453.4ns |
| N=1000 fwd ip | 614.0ns | 607.6ns |
| N=1000 fwd oop | 604.3ns | 604.1ns |
| N=1000 inv ip | 618.5ns | 608.7ns |
| N=1000 inv oop | 607.6ns | 606.0ns |
| N=1200 fwd ip | 684.3ns | 686.1ns |
| N=1200 fwd oop | 675.6ns | 678.5ns |
| N=1200 inv ip | 694.2ns | 696.2ns |
| N=1200 inv oop | 675.7ns | 678.9ns |
| N=1536 fwd ip | 770.5ns | 782.8ns |
| N=1536 fwd oop | 765.6ns | 775.3ns |
| N=1536 inv ip | 770.3ns | 782.3ns |
| N=1536 inv oop | 769.1ns | 776.6ns |
| N=1920 fwd ip | 1.08us | 1.07us |
| N=1920 fwd oop | 1.06us | 1.07us |
| N=1920 inv ip | 1.09us | 1.08us |
| N=1920 inv oop | 1.06us | 1.07us |
| N=1960 fwd ip | 1.23us | 1.23us |
| N=1960 fwd oop | 1.21us | 1.22us |
| N=1960 inv ip | 1.24us | 1.24us |
| N=1960 inv oop | 1.21us | 1.22us |
| N=2400 fwd ip | 1.48us | 1.48us |
| N=2400 fwd oop | 1.42us | 1.44us |
| N=2400 inv ip | 1.48us | 1.47us |
| N=2400 inv oop | 1.41us | 1.43us |
| N=3072 fwd ip | 1.71us | 1.72us |
| N=3072 fwd oop | 1.69us | 1.70us |
| N=3072 inv ip | 1.71us | 1.72us |
| N=3072 inv oop | 1.70us | 1.70us |
| N=4725 fwd ip | 4.64us | 4.62us |
| N=4725 fwd oop | 4.64us | 4.59us |
| N=4725 inv ip | 4.72us | 4.73us |
| N=4725 inv oop | 4.70us | 4.71us |
| N=4800 fwd ip | 2.86us | 2.89us |
| N=4800 fwd oop | 2.83us | 2.83us |
| N=4800 inv ip | 2.88us | 2.86us |
| N=4800 inv oop | 2.85us | 2.86us |
| N=6144 fwd ip | 3.73us | 3.89us |
| N=6144 fwd oop | 3.68us | 3.70us |
| N=6144 inv ip | 3.75us | 3.93us |
| N=6144 inv oop | 3.68us | 3.70us |
| N=10368 fwd ip | 6.54us | 6.61us |
| N=10368 fwd oop | 6.56us | 6.61us |
| N=10368 inv ip | 6.56us | 6.63us |
| N=10368 inv oop | 6.57us | 6.62us |
| N=12288 fwd ip | 7.94us | 8.03us |
| N=12288 fwd oop | 8.35us | 8.36us |
| N=12288 inv ip | 7.93us | 8.02us |
| N=12288 inv oop | 8.34us | 8.35us |
| N=27000 fwd ip | 20.85us | 20.65us |
| N=27000 fwd oop | 20.23us | 20.23us |
| N=27000 inv ip | 20.35us | 20.20us |
| N=27000 inv oop | 20.07us | 20.03us |
| N=48000 fwd ip | 35.45us | 35.92us |
| N=48000 fwd oop | 35.97us | 35.97us |
| N=48000 inv ip | 36.14us | 35.80us |
| N=48000 inv oop | 36.10us | 36.03us |
| N=75600 fwd ip | 66.50us | 66.46us |
| N=75600 fwd oop | 69.28us | 69.29us |
| N=75600 inv ip | 66.52us | 67.00us |
| N=75600 inv oop | 69.51us | 69.63us |
| N=96000 fwd ip | 79.03us | 78.71us |
| N=96000 fwd oop | 81.23us | 78.05us |
| N=96000 inv ip | 77.14us | 78.80us |
| N=96000 inv oop | 80.89us | 80.07us |
| N=165375 fwd ip | 238.90us | 238.15us |
| N=165375 fwd oop | 238.83us | 238.51us |
| N=165375 inv ip | 239.92us | 240.41us |
| N=165375 inv oop | 240.84us | 240.40us |
| N=1000000 fwd ip | 2.79ms | 2.89ms |
| N=1000000 fwd oop | 2.82ms | 3.09ms |
| N=1000000 inv ip | 2.82ms | 2.91ms |
| N=1000000 inv oop | 3.07ms | 3.01ms |

![mflops](plots/smooth-f32-mflops.svg)
![speedup](plots/smooth-f32-speedup.svg)
![accuracy](plots/smooth-f32-accuracy.svg)

### smooth f64

| cell | fastfft | fastfft/measure |
|---|---|---|
| N=6 fwd ip | 5.4ns | 5.4ns |
| N=6 fwd oop | 2.4ns | 2.4ns |
| N=6 inv ip | 5.4ns | 5.5ns |
| N=6 inv oop | 2.4ns | 2.4ns |
| N=9 fwd ip | 8.4ns | 8.5ns |
| N=9 fwd oop | 4.4ns | 4.4ns |
| N=9 inv ip | 8.6ns | 8.4ns |
| N=9 inv oop | 4.3ns | 4.4ns |
| N=12 fwd ip | 8.7ns | 8.7ns |
| N=12 fwd oop | 5.7ns | 5.7ns |
| N=12 inv ip | 8.7ns | 8.7ns |
| N=12 inv oop | 5.7ns | 5.7ns |
| N=15 fwd ip | 14.6ns | 14.6ns |
| N=15 fwd oop | 13.8ns | 13.8ns |
| N=15 inv ip | 14.0ns | 14.0ns |
| N=15 inv oop | 13.1ns | 13.1ns |
| N=18 fwd ip | 11.2ns | 11.0ns |
| N=18 fwd oop | 8.5ns | 8.6ns |
| N=18 inv ip | 11.2ns | 11.2ns |
| N=18 inv oop | 8.6ns | 8.6ns |
| N=24 fwd ip | 12.1ns | 12.1ns |
| N=24 fwd oop | 8.4ns | 8.4ns |
| N=24 inv ip | 12.3ns | 12.2ns |
| N=24 inv oop | 8.4ns | 8.4ns |
| N=36 fwd ip | 17.9ns | 17.5ns |
| N=36 fwd oop | 15.2ns | 15.2ns |
| N=36 inv ip | 17.9ns | 17.3ns |
| N=36 inv oop | 15.2ns | 15.2ns |
| N=48 fwd ip | 21.6ns | 21.6ns |
| N=48 fwd oop | 19.6ns | 19.4ns |
| N=48 inv ip | 21.5ns | 21.5ns |
| N=48 inv oop | 19.4ns | 19.7ns |
| N=80 fwd ip | 55.7ns | 56.1ns |
| N=80 fwd oop | 53.5ns | 53.4ns |
| N=80 inv ip | 56.1ns | 55.1ns |
| N=80 inv oop | 53.0ns | 53.5ns |
| N=96 fwd ip | 65.3ns | 66.3ns |
| N=96 fwd oop | 62.4ns | 62.3ns |
| N=96 inv ip | 63.4ns | 63.2ns |
| N=96 inv oop | 62.0ns | 62.1ns |
| N=108 fwd ip | 80.3ns | 79.7ns |
| N=108 fwd oop | 81.0ns | 80.6ns |
| N=108 inv ip | 79.6ns | 79.5ns |
| N=108 inv oop | 80.8ns | 81.0ns |
| N=120 fwd ip | 81.8ns | 79.7ns |
| N=120 fwd oop | 80.0ns | 80.3ns |
| N=120 inv ip | 81.3ns | 80.9ns |
| N=120 inv oop | 80.3ns | 79.9ns |
| N=160 fwd ip | 120.8ns | 119.4ns |
| N=160 fwd oop | 120.1ns | 120.7ns |
| N=160 inv ip | 120.7ns | 119.8ns |
| N=160 inv oop | 119.3ns | 120.8ns |
| N=210 fwd ip | 277.8ns | 276.3ns |
| N=210 fwd oop | 275.2ns | 278.7ns |
| N=210 inv ip | 289.9ns | 286.3ns |
| N=210 inv oop | 286.6ns | 293.9ns |
| N=240 fwd ip | 184.9ns | 183.3ns |
| N=240 fwd oop | 180.9ns | 182.5ns |
| N=240 inv ip | 184.0ns | 179.8ns |
| N=240 inv oop | 180.3ns | 180.4ns |
| N=320 fwd ip | 244.3ns | 243.8ns |
| N=320 fwd oop | 245.3ns | 245.7ns |
| N=320 inv ip | 246.0ns | 244.9ns |
| N=320 inv oop | 244.9ns | 245.7ns |
| N=384 fwd ip | 298.6ns | 300.2ns |
| N=384 fwd oop | 297.3ns | 297.1ns |
| N=384 inv ip | 298.9ns | 296.3ns |
| N=384 inv oop | 296.2ns | 298.6ns |
| N=480 fwd ip | 392.5ns | 391.6ns |
| N=480 fwd oop | 395.4ns | 395.4ns |
| N=480 inv ip | 388.4ns | 386.8ns |
| N=480 inv oop | 388.7ns | 388.6ns |
| N=504 fwd ip | 457.9ns | 440.7ns |
| N=504 fwd oop | 445.4ns | 442.9ns |
| N=504 inv ip | 460.5ns | 445.4ns |
| N=504 inv oop | 445.7ns | 441.6ns |
| N=640 fwd ip | 549.1ns | 548.9ns |
| N=640 fwd oop | 554.4ns | 561.1ns |
| N=640 inv ip | 558.6ns | 562.5ns |
| N=640 inv oop | 557.2ns | 559.5ns |
| N=720 fwd ip | 636.5ns | 636.8ns |
| N=720 fwd oop | 635.3ns | 635.6ns |
| N=720 inv ip | 640.0ns | 639.9ns |
| N=720 inv oop | 639.5ns | 639.9ns |
| N=768 fwd ip | 678.7ns | 702.6ns |
| N=768 fwd oop | 673.4ns | 688.6ns |
| N=768 inv ip | 673.4ns | 696.5ns |
| N=768 inv oop | 668.3ns | 684.6ns |
| N=960 fwd ip | 881.9ns | 878.4ns |
| N=960 fwd oop | 876.8ns | 879.1ns |
| N=960 inv ip | 895.1ns | 900.0ns |
| N=960 inv oop | 901.5ns | 902.1ns |
| N=1000 fwd ip | 1.08us | 1.08us |
| N=1000 fwd oop | 1.05us | 1.08us |
| N=1000 inv ip | 1.08us | 1.08us |
| N=1000 inv oop | 1.06us | 1.07us |
| N=1200 fwd ip | 1.22us | 1.21us |
| N=1200 fwd oop | 1.23us | 1.24us |
| N=1200 inv ip | 1.25us | 1.25us |
| N=1200 inv oop | 1.26us | 1.27us |
| N=1536 fwd ip | 1.58us | 1.59us |
| N=1536 fwd oop | 1.55us | 1.57us |
| N=1536 inv ip | 1.57us | 1.58us |
| N=1536 inv oop | 1.53us | 1.55us |
| N=1920 fwd ip | 2.00us | 1.99us |
| N=1920 fwd oop | 1.96us | 1.97us |
| N=1920 inv ip | 2.00us | 2.00us |
| N=1920 inv oop | 1.96us | 1.97us |
| N=1960 fwd ip | 2.22us | 2.24us |
| N=1960 fwd oop | 2.21us | 2.23us |
| N=1960 inv ip | 2.23us | 2.23us |
| N=1960 inv oop | 2.20us | 2.22us |
| N=2400 fwd ip | 2.62us | 2.66us |
| N=2400 fwd oop | 2.55us | 2.57us |
| N=2400 inv ip | 2.60us | 2.60us |
| N=2400 inv oop | 2.57us | 2.59us |
| N=3072 fwd ip | 3.44us | 3.45us |
| N=3072 fwd oop | 3.40us | 3.41us |
| N=3072 inv ip | 3.47us | 3.48us |
| N=3072 inv oop | 3.40us | 3.42us |
| N=4725 fwd ip | 8.38us | 8.75us |
| N=4725 fwd oop | 8.44us | 9.02us |
| N=4725 inv ip | 8.63us | 8.51us |
| N=4725 inv oop | 8.40us | 8.50us |
| N=4800 fwd ip | 5.64us | 5.62us |
| N=4800 fwd oop | 5.28us | 5.28us |
| N=4800 inv ip | 5.30us | 5.29us |
| N=4800 inv oop | 5.19us | 5.18us |
| N=6144 fwd ip | 7.36us | 7.41us |
| N=6144 fwd oop | 7.85us | 7.85us |
| N=6144 inv ip | 7.34us | 7.43us |
| N=6144 inv oop | 7.84us | 7.86us |
| N=10368 fwd ip | 12.42us | 12.23us |
| N=10368 fwd oop | 12.37us | 12.27us |
| N=10368 inv ip | 12.28us | 12.44us |
| N=10368 inv oop | 12.25us | 12.14us |
| N=12288 fwd ip | 15.94us | 15.66us |
| N=12288 fwd oop | 17.84us | 17.76us |
| N=12288 inv ip | 15.83us | 15.67us |
| N=12288 inv oop | 17.85us | 17.72us |
| N=27000 fwd ip | 43.07us | 42.46us |
| N=27000 fwd oop | 42.77us | 42.15us |
| N=27000 inv ip | 42.79us | 42.45us |
| N=27000 inv oop | 42.33us | 41.93us |
| N=48000 fwd ip | 68.62us | 68.53us |
| N=48000 fwd oop | 72.03us | 72.13us |
| N=48000 inv ip | 68.90us | 68.96us |
| N=48000 inv oop | 72.38us | 71.86us |
| N=75600 fwd ip | 129.51us | 131.12us |
| N=75600 fwd oop | 129.77us | 129.56us |
| N=75600 inv ip | 130.47us | 132.22us |
| N=75600 inv oop | 128.43us | 129.12us |
| N=96000 fwd ip | 142.51us | 143.66us |
| N=96000 fwd oop | 150.00us | 151.15us |
| N=96000 inv ip | 142.37us | 142.17us |
| N=96000 inv oop | 150.59us | 150.39us |
| N=165375 fwd ip | 412.04us | 410.37us |
| N=165375 fwd oop | 462.18us | 460.18us |
| N=165375 inv ip | 422.03us | 416.11us |
| N=165375 inv oop | 477.00us | 462.95us |
| N=1000000 fwd ip | 7.72ms | 7.72ms |
| N=1000000 fwd oop | 7.82ms | 7.81ms |
| N=1000000 inv ip | 7.80ms | 7.73ms |
| N=1000000 inv oop | 7.93ms | 7.79ms |

![mflops](plots/smooth-f64-mflops.svg)
![speedup](plots/smooth-f64-speedup.svg)
![accuracy](plots/smooth-f64-accuracy.svg)

## Suite `rough`

### rough f32

| cell | fastfft | fastfft/measure |
|---|---|---|
| N=17 fwd ip | 46.8ns | 46.9ns |
| N=17 fwd oop | 45.5ns | 45.8ns |
| N=17 inv ip | 47.3ns | 47.5ns |
| N=17 inv oop | 45.5ns | 45.9ns |
| N=31 fwd ip | 62.6ns | 62.6ns |
| N=31 fwd oop | 63.3ns | 63.5ns |
| N=31 inv ip | 63.1ns | 63.4ns |
| N=31 inv oop | 63.2ns | 63.8ns |
| N=61 fwd ip | 120.3ns | 118.7ns |
| N=61 fwd oop | 121.3ns | 121.4ns |
| N=61 inv ip | 120.5ns | 120.8ns |
| N=61 inv oop | 122.5ns | 121.8ns |
| N=127 fwd ip | 220.2ns | 221.8ns |
| N=127 fwd oop | 221.3ns | 220.8ns |
| N=127 inv ip | 222.7ns | 223.2ns |
| N=127 inv oop | 222.2ns | 222.5ns |
| N=257 fwd ip | 571.9ns | 572.7ns |
| N=257 fwd oop | 577.8ns | 575.9ns |
| N=257 inv ip | 574.8ns | 575.5ns |
| N=257 inv oop | 579.0ns | 578.2ns |
| N=509 fwd ip | 1.27us | 1.28us |
| N=509 fwd oop | 1.28us | 1.28us |
| N=509 inv ip | 1.27us | 1.28us |
| N=509 inv oop | 1.28us | 1.29us |
| N=1021 fwd ip | 2.69us | 2.69us |
| N=1021 fwd oop | 2.68us | 2.70us |
| N=1021 inv ip | 2.70us | 2.71us |
| N=1021 inv oop | 2.69us | 2.70us |
| N=2018 fwd ip | 6.64us | 6.78us |
| N=2018 fwd oop | 6.78us | 6.84us |
| N=2018 inv ip | 6.73us | 6.82us |
| N=2018 inv oop | 6.70us | 6.84us |
| N=2053 fwd ip | 7.64us | 7.24us |
| N=2053 fwd oop | 8.02us | 7.26us |
| N=2053 inv ip | 7.89us | 7.26us |
| N=2053 inv oop | 7.52us | 7.26us |
| N=3063 fwd ip | 9.56us | 9.48us |
| N=3063 fwd oop | 9.64us | 9.45us |
| N=3063 inv ip | 9.36us | 9.38us |
| N=3063 inv oop | 9.42us | 9.46us |
| N=4099 fwd ip | 14.59us | 14.51us |
| N=4099 fwd oop | 14.47us | 14.44us |
| N=4099 inv ip | 14.58us | 14.52us |
| N=4099 inv oop | 14.73us | 14.53us |
| N=8191 fwd ip | 27.62us | 27.72us |
| N=8191 fwd oop | 28.02us | 28.06us |
| N=8191 inv ip | 27.92us | 28.09us |
| N=8191 inv oop | 28.00us | 27.97us |
| N=9797 fwd ip | 35.29us | 34.57us |
| N=9797 fwd oop | 35.43us | 34.59us |
| N=9797 inv ip | 35.03us | 34.42us |
| N=9797 inv oop | 35.02us | 34.85us |
| N=16381 fwd ip | 66.05us | 63.37us |
| N=16381 fwd oop | 66.73us | 63.99us |
| N=16381 inv ip | 64.90us | 63.17us |
| N=16381 inv oop | 66.03us | 64.32us |
| N=65524 fwd ip | 335.71us | 336.20us |
| N=65524 fwd oop | 338.35us | 336.72us |
| N=65524 inv ip | 335.95us | 334.45us |
| N=65524 inv oop | 339.39us | 335.39us |
| N=65537 fwd ip | 337.40us | 330.38us |
| N=65537 fwd oop | 340.53us | 331.35us |
| N=65537 inv ip | 339.85us | 329.76us |
| N=65537 inv oop | 337.19us | 332.26us |
| N=131071 fwd ip | 733.35us | 718.19us |
| N=131071 fwd oop | 728.02us | 721.99us |
| N=131071 inv ip | 721.23us | 711.83us |
| N=131071 inv oop | 726.89us | 716.71us |

![mflops](plots/rough-f32-mflops.svg)
![speedup](plots/rough-f32-speedup.svg)
![accuracy](plots/rough-f32-accuracy.svg)

### rough f64

| cell | fastfft | fastfft/measure |
|---|---|---|
| N=17 fwd ip | 56.3ns | 55.8ns |
| N=17 fwd oop | 57.2ns | 56.8ns |
| N=17 inv ip | 57.5ns | 57.2ns |
| N=17 inv oop | 58.1ns | 57.7ns |
| N=31 fwd ip | 98.6ns | 96.6ns |
| N=31 fwd oop | 99.6ns | 98.2ns |
| N=31 inv ip | 98.9ns | 98.1ns |
| N=31 inv oop | 99.2ns | 99.8ns |
| N=61 fwd ip | 188.1ns | 187.2ns |
| N=61 fwd oop | 186.4ns | 187.9ns |
| N=61 inv ip | 187.9ns | 188.3ns |
| N=61 inv oop | 189.6ns | 187.8ns |
| N=127 fwd ip | 379.8ns | 380.4ns |
| N=127 fwd oop | 388.1ns | 384.8ns |
| N=127 inv ip | 379.6ns | 378.1ns |
| N=127 inv oop | 383.4ns | 385.8ns |
| N=257 fwd ip | 1.13us | 1.13us |
| N=257 fwd oop | 1.13us | 1.15us |
| N=257 inv ip | 1.12us | 1.12us |
| N=257 inv oop | 1.13us | 1.13us |
| N=509 fwd ip | 2.50us | 2.52us |
| N=509 fwd oop | 2.50us | 2.55us |
| N=509 inv ip | 2.52us | 2.53us |
| N=509 inv oop | 2.50us | 2.54us |
| N=1021 fwd ip | 5.77us | 5.79us |
| N=1021 fwd oop | 5.79us | 5.88us |
| N=1021 inv ip | 5.78us | 5.78us |
| N=1021 inv oop | 5.73us | 5.68us |
| N=2018 fwd ip | 12.76us | 12.61us |
| N=2018 fwd oop | 12.67us | 12.73us |
| N=2018 inv ip | 12.75us | 12.58us |
| N=2018 inv oop | 12.80us | 12.70us |
| N=2053 fwd ip | 13.65us | 13.75us |
| N=2053 fwd oop | 13.77us | 13.70us |
| N=2053 inv ip | 13.64us | 13.73us |
| N=2053 inv oop | 13.68us | 13.74us |
| N=3063 fwd ip | 18.34us | 18.52us |
| N=3063 fwd oop | 18.41us | 18.59us |
| N=3063 inv ip | 18.39us | 18.45us |
| N=3063 inv oop | 18.47us | 18.49us |
| N=4099 fwd ip | 28.47us | 28.03us |
| N=4099 fwd oop | 28.50us | 28.04us |
| N=4099 inv ip | 28.07us | 27.94us |
| N=4099 inv oop | 28.55us | 27.96us |
| N=8191 fwd ip | 56.95us | 54.97us |
| N=8191 fwd oop | 57.31us | 55.38us |
| N=8191 inv ip | 56.59us | 54.61us |
| N=8191 inv oop | 57.67us | 55.60us |
| N=9797 fwd ip | 81.91us | 80.60us |
| N=9797 fwd oop | 81.84us | 82.22us |
| N=9797 inv ip | 81.53us | 80.78us |
| N=9797 inv oop | 84.10us | 81.13us |
| N=16381 fwd ip | 131.07us | 124.46us |
| N=16381 fwd oop | 131.61us | 127.66us |
| N=16381 inv ip | 130.55us | 127.49us |
| N=16381 inv oop | 131.28us | 127.40us |
| N=65524 fwd ip | 657.35us | 656.73us |
| N=65524 fwd oop | 661.79us | 659.12us |
| N=65524 inv ip | 661.26us | 655.23us |
| N=65524 inv oop | 663.34us | 655.05us |
| N=65537 fwd ip | 656.30us | 649.17us |
| N=65537 fwd oop | 663.58us | 654.99us |
| N=65537 inv ip | 657.21us | 646.46us |
| N=65537 inv oop | 660.74us | 651.81us |
| N=131071 fwd ip | 1.80ms | 1.80ms |
| N=131071 fwd oop | 1.85ms | 1.86ms |
| N=131071 inv ip | 1.81ms | 1.83ms |
| N=131071 inv oop | 1.86ms | 1.87ms |

![mflops](plots/rough-f64-mflops.svg)
![speedup](plots/rough-f64-speedup.svg)
![accuracy](plots/rough-f64-accuracy.svg)

## Suite `batch`

### batch f32

| cell | fastfft | fastfft/measure |
|---|---|---|
| N=8 ×131072 fwd ip | 1.4ns | 1.4ns |
| N=8 ×131072 fwd oop | 1.6ns | 1.6ns |
| N=16 ×65536 fwd ip | 2.8ns | 2.8ns |
| N=16 ×65536 fwd oop | 3.2ns | 3.2ns |
| N=32 ×32768 fwd ip | 7.2ns | 7.2ns |
| N=32 ×32768 fwd oop | 7.0ns | 7.0ns |
| N=64 ×16384 fwd ip | 15.4ns | 15.3ns |
| N=64 ×16384 fwd oop | 15.2ns | 15.6ns |
| N=128 ×8192 fwd ip | 37.4ns | 37.5ns |
| N=128 ×8192 fwd oop | 42.5ns | 42.4ns |
| N=256 ×4096 fwd ip | 81.2ns | 80.1ns |
| N=256 ×4096 fwd oop | 106.4ns | 106.9ns |
| N=512 ×2048 fwd ip | 253.8ns | 254.5ns |
| N=512 ×2048 fwd oop | 292.3ns | 293.5ns |
| N=1024 ×1024 fwd ip | 567.4ns | 570.0ns |
| N=1024 ×1024 fwd oop | 676.6ns | 683.0ns |

![mflops](plots/batch-f32-mflops.svg)
![speedup](plots/batch-f32-speedup.svg)
![accuracy](plots/batch-f32-accuracy.svg)

### batch f64

| cell | fastfft | fastfft/measure |
|---|---|---|
| N=8 ×131072 fwd ip | 3.9ns | 3.9ns |
| N=8 ×131072 fwd oop | 4.9ns | 4.9ns |
| N=16 ×65536 fwd ip | 5.1ns | 5.1ns |
| N=16 ×65536 fwd oop | 10.0ns | 9.8ns |
| N=32 ×32768 fwd ip | 14.0ns | 14.0ns |
| N=32 ×32768 fwd oop | 20.8ns | 20.4ns |
| N=64 ×16384 fwd ip | 34.0ns | 34.3ns |
| N=64 ×16384 fwd oop | 52.0ns | 42.3ns |
| N=128 ×8192 fwd ip | 99.2ns | 97.5ns |
| N=128 ×8192 fwd oop | 110.9ns | 112.3ns |
| N=256 ×4096 fwd ip | 277.0ns | 269.8ns |
| N=256 ×4096 fwd oop | 318.3ns | 338.9ns |
| N=512 ×2048 fwd ip | 705.8ns | 697.2ns |
| N=512 ×2048 fwd oop | 922.6ns | 930.4ns |
| N=1024 ×1024 fwd ip | 1.53us | 1.45us |
| N=1024 ×1024 fwd oop | 1.89us | 1.90us |

![mflops](plots/batch-f64-mflops.svg)
![speedup](plots/batch-f64-speedup.svg)
![accuracy](plots/batch-f64-accuracy.svg)

## Suite `realworld`

### realworld f32

| cell | fastfft | fastfft/measure |
|---|---|---|
| Spectrogram N=1024 | 769 MS/s | 749 MS/s |
| Spectrogram N=4096 | 662 MS/s | 622 MS/s |
| Spectrogram N=16384 | 616 MS/s | 614 MS/s |
| Spectrogram N=65536 | 565 MS/s | 562 MS/s |
| OverlapSave N=4096 | 332 MS/s | 329 MS/s |

### realworld f64

| cell | fastfft | fastfft/measure |
|---|---|---|
| Spectrogram N=4096 | 326 MS/s | 332 MS/s |

## Suite `datacheck`

### datacheck f32

| cell | fastfft | fastfft/measure |
|---|---|---|
| N=64 fwd imm | 16.2ns | 16.0ns |
| N=64 fwd imm | 15.9ns | 16.1ns |
| N=4096 fwd imm | 2.84us | 2.46us |
| N=4096 fwd imm | 2.89us | 2.54us |
| N=65536 fwd imm | 64.65us | 60.59us |
| N=65536 fwd imm | 65.72us | 61.62us |
| N=1048576 fwd imm | 1.83ms | 1.78ms |
| N=1048576 fwd imm | 1.80ms | 1.80ms |

![mflops](plots/datacheck-f32-mflops.svg)
![speedup](plots/datacheck-f32-speedup.svg)
![accuracy](plots/datacheck-f32-accuracy.svg)

### datacheck f64

| cell | fastfft | fastfft/measure |
|---|---|---|
| N=64 fwd imm | 27.2ns | 27.1ns |
| N=64 fwd imm | 27.1ns | 27.1ns |
| N=4096 fwd imm | 4.58us | 4.91us |
| N=4096 fwd imm | 4.55us | 5.03us |
| N=65536 fwd imm | 128.34us | 118.50us |
| N=65536 fwd imm | 129.09us | 119.22us |
| N=1048576 fwd imm | 4.18ms | 4.23ms |
| N=1048576 fwd imm | 4.20ms | 4.22ms |

![mflops](plots/datacheck-f64-mflops.svg)
![speedup](plots/datacheck-f64-speedup.svg)
![accuracy](plots/datacheck-f64-accuracy.svg)

## Accuracy and planning time (medians over cells)

| lib | cells verified | failed | median error (ε) | worst error (ε) | median plan time |
|---|---|---|---|---|---|
| fastfft | 710 | 0 | 1.01 | 2.81 | 16.87us |
| fastfft/measure | 710 | 0 | 1.01 | 2.81 | 10.27ms |

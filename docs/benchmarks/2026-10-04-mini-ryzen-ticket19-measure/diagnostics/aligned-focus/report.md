# fastfft arena report: `aligned-focus`

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
| Control drift | max 1.17% over 4 control runs |
| Cells | 56 |

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
| batch | f32 | – | – |
| batch | f64 | – | – |

w/t/l = cells faster / within ±3% / slower than rustfft (best times).

## Suite `pow2`

### pow2 f32

| cell | fastfft | fastfft/measure |
|---|---|---|
| N=64 fwd ip | 17.4ns | 17.4ns |
| N=64 fwd oop | 16.2ns | 16.0ns |
| N=64 inv ip | 17.5ns | 17.5ns |
| N=64 inv oop | 16.1ns | 16.0ns |
| N=1024 fwd ip | 501.2ns | 522.1ns |
| N=1024 fwd oop | 500.6ns | 503.5ns |
| N=1024 inv ip | 499.4ns | 499.9ns |
| N=1024 inv oop | 499.5ns | 503.5ns |
| N=2048 fwd ip | 1.11us | 1.12us |
| N=2048 fwd oop | 1.08us | 1.09us |
| N=2048 inv ip | 1.09us | 1.11us |
| N=2048 inv oop | 1.07us | 1.08us |
| N=4096 fwd ip | 2.62us | 3.49us |
| N=4096 fwd oop | 2.42us | 2.43us |
| N=4096 inv ip | 2.67us | 3.63us |
| N=4096 inv oop | 2.45us | 2.42us |
| N=32768 fwd ip | 25.92us | 24.41us |
| N=32768 fwd oop | 28.64us | 28.32us |
| N=32768 inv ip | 26.20us | 24.35us |
| N=32768 inv oop | 29.02us | 29.00us |
| N=524288 fwd ip | 645.54us | 716.75us |
| N=524288 fwd oop | 703.36us | 698.17us |
| N=524288 inv ip | 657.43us | 604.26us |
| N=524288 inv oop | 703.42us | 706.57us |

![mflops](plots/pow2-f32-mflops.svg)
![speedup](plots/pow2-f32-speedup.svg)
![accuracy](plots/pow2-f32-accuracy.svg)

### pow2 f64

| cell | fastfft | fastfft/measure |
|---|---|---|
| N=64 fwd ip | 29.3ns | 29.4ns |
| N=64 fwd oop | 27.3ns | 27.5ns |
| N=64 inv ip | 28.6ns | 29.3ns |
| N=64 inv oop | 27.0ns | 27.4ns |
| N=1024 fwd ip | 1.03us | 1.01us |
| N=1024 fwd oop | 975.6ns | 988.2ns |
| N=1024 inv ip | 1.01us | 1.02us |
| N=1024 inv oop | 974.0ns | 993.9ns |
| N=2048 fwd ip | 2.29us | 2.29us |
| N=2048 fwd oop | 2.16us | 2.18us |
| N=2048 inv ip | 2.30us | 2.25us |
| N=2048 inv oop | 2.19us | 2.19us |
| N=4096 fwd ip | 4.73us | 5.10us |
| N=4096 fwd oop | 4.49us | 5.40us |
| N=4096 inv ip | 4.73us | 5.10us |
| N=4096 inv oop | 4.51us | 5.41us |
| N=32768 fwd ip | 51.81us | 50.51us |
| N=32768 fwd oop | 58.24us | 57.66us |
| N=32768 inv ip | 52.20us | 50.72us |
| N=32768 inv oop | 56.96us | 56.25us |
| N=524288 fwd ip | 1.78ms | 1.76ms |
| N=524288 fwd oop | 1.73ms | 1.70ms |
| N=524288 inv ip | 1.79ms | 1.75ms |
| N=524288 inv oop | 1.76ms | 1.75ms |

![mflops](plots/pow2-f64-mflops.svg)
![speedup](plots/pow2-f64-speedup.svg)
![accuracy](plots/pow2-f64-accuracy.svg)

## Suite `batch`

### batch f32

| cell | fastfft | fastfft/measure |
|---|---|---|
| N=64 ×16384 fwd ip | 15.5ns | 15.4ns |
| N=64 ×16384 fwd oop | 15.2ns | 15.7ns |
| N=1024 ×1024 fwd ip | 571.6ns | 569.0ns |
| N=1024 ×1024 fwd oop | 684.3ns | 686.2ns |

![mflops](plots/batch-f32-mflops.svg)
![speedup](plots/batch-f32-speedup.svg)
![accuracy](plots/batch-f32-accuracy.svg)

### batch f64

| cell | fastfft | fastfft/measure |
|---|---|---|
| N=64 ×16384 fwd ip | 33.6ns | 32.7ns |
| N=64 ×16384 fwd oop | 53.6ns | 42.5ns |
| N=1024 ×1024 fwd ip | 1.55us | 1.42us |
| N=1024 ×1024 fwd oop | 1.93us | 1.93us |

![mflops](plots/batch-f64-mflops.svg)
![speedup](plots/batch-f64-speedup.svg)
![accuracy](plots/batch-f64-accuracy.svg)

## Accuracy and planning time (medians over cells)

| lib | cells verified | failed | median error (ε) | worst error (ε) | median plan time |
|---|---|---|---|---|---|
| fastfft | 56 | 0 | 0.99 | 1.44 | 24.27us |
| fastfft/measure | 56 | 0 | 0.99 | 1.44 | 1.00s |

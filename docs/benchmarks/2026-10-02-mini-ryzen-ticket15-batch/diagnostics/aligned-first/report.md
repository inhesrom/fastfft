# fastfft arena report: `aligned-run`

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
| FFTW | fftw-3.3.11-sse2-avx-avx2-avx2_128-avx512 `double: CFLAGS='-O3 -fPIC -std=gnu17' ./configure --enable-static --disable-shared --disable-fortran --disable-doc --enable-sse2 --enable-avx --enable-avx2 --enable-avx512 --enable-fma
single: CFLAGS='-O3 -fPIC -std=gnu17' ./configure --enable-static --disable-shared --disable-fortran --disable-doc --enable-sse2 --enable-avx --enable-avx2 --enable-avx512 --enable-fma --enable-float` |
| Git | a4d8aae88738db827a9a259f23077b72b591481c (dirty: true) |
| Profile | full |
| Official | true  |
| Control drift | max 0.86% over 3 control runs |
| Cells | 32 |

Times are per transform. *best* = minimum batch mean, *median* = median batch mean. Speedup = rustfft time ÷ library time (> 1 means faster than rustfft); *geomean* over the cells both libraries ran. mflops = 5·N·log2(N)/t(µs).

## Release gates (fastfft)

| Gate | Criterion | Status | Detail |
|---|---|---|---|
| G1 | pow2 vs rustfft: geomean ≥ 1.5×, no cell < 0.95× | – n/a | no data |
| G2 | smooth vs rustfft: geomean ≥ 1.3×, no cell < 0.95× | – n/a | no data |
| G3 | rough vs rustfft: geomean ≥ 0.75×, no cell < 0.5× | – n/a | no data |
| G4 | vs each other Rust library: geomean ≥ 1.1×, ≥ 0.97× on ≥ 90% of cells | – n/a |  |
| G5 | AVX2 forced: pow2 ≥ 1.2×, smooth ≥ 1.1× vs rustfft | – n/a | pow2 NaN×/NaN×, smooth NaN×/NaN× |
| G6 | scenarios ≥ 1.3× each; batch geomean ≥ 1.5× | ❌ fail | scenarios min inf×, batch 1.320×/1.299× |
| G7 | accuracy within §6 thresholds and ≤ 1.5× rustfft + 1ε | ✅ pass | 32 cells checked |
| G8 | Estimate planning time ≤ 2× rustfft for every N ≤ 2^20 | ❌ fail | worst ratio 22.60× (batch:f64:fwd:oop:n16:b65536), 32 cells |

G9 (build time) is measured by `cargo xtask build-time`, not by the arena.

## Speedup vs rustfft (geomean of best-time ratios; median-time ratio in parentheses)

| suite | prec | fastfft | rustfft |
|---|---|---|---|
| batch | f32 | 1.26× (1.27×) 16/0/0 | 1.00× (1.00×) 0/16/0 |
| batch | f64 | 1.39× (1.33×) 15/1/0 | 1.00× (1.00×) 0/16/0 |

w/t/l = cells faster / within ±3% / slower than rustfft (best times).

## Suite `batch`

### batch f32

| cell | fastfft | rustfft |
|---|---|---|
| N=8 ×131072 fwd ip | 1.3ns (1.20×) | 1.6ns |
| N=8 ×131072 fwd oop | 1.6ns (1.28×) | 2.0ns |
| N=16 ×65536 fwd ip | 2.8ns (1.19×) | 3.3ns |
| N=16 ×65536 fwd oop | 3.2ns (1.27×) | 4.1ns |
| N=32 ×32768 fwd ip | 7.2ns (1.25×) | 9.0ns |
| N=32 ×32768 fwd oop | 7.2ns (1.36×) | 9.8ns |
| N=64 ×16384 fwd ip | 15.2ns (1.32×) | 20.0ns |
| N=64 ×16384 fwd oop | 15.8ns (1.39×) | 21.9ns |
| N=128 ×8192 fwd ip | 34.5ns (1.42×) | 48.8ns |
| N=128 ×8192 fwd oop | 41.7ns (1.21×) | 50.6ns |
| N=256 ×4096 fwd ip | 85.7ns (1.24×) | 106.3ns |
| N=256 ×4096 fwd oop | 107.2ns (1.07×) | 114.1ns |
| N=512 ×2048 fwd ip | 253.3ns (1.07×) | 270.7ns |
| N=512 ×2048 fwd oop | 297.0ns (1.45×) | 430.8ns |
| N=1024 ×1024 fwd ip | 568.6ns (1.14×) | 648.3ns |
| N=1024 ×1024 fwd oop | 675.7ns (1.35×) | 913.5ns |

![mflops](plots/batch-f32-mflops.svg)
![speedup](plots/batch-f32-speedup.svg)
![accuracy](plots/batch-f32-accuracy.svg)

### batch f64

| cell | fastfft | rustfft |
|---|---|---|
| N=8 ×131072 fwd ip | 2.4ns (1.01×) | 2.4ns |
| N=8 ×131072 fwd oop | 4.9ns (1.61×) | 7.9ns |
| N=16 ×65536 fwd ip | 5.1ns (1.20×) | 6.1ns |
| N=16 ×65536 fwd oop | 9.8ns (1.64×) | 16.1ns |
| N=32 ×32768 fwd ip | 13.9ns (1.08×) | 15.0ns |
| N=32 ×32768 fwd oop | 20.6ns (1.58×) | 32.6ns |
| N=64 ×16384 fwd ip | 32.5ns (1.25×) | 40.7ns |
| N=64 ×16384 fwd oop | 45.1ns (1.57×) | 70.9ns |
| N=128 ×8192 fwd ip | 84.4ns (1.15×) | 96.7ns |
| N=128 ×8192 fwd oop | 109.7ns (1.65×) | 181.4ns |
| N=256 ×4096 fwd ip | 273.3ns (1.38×) | 376.0ns |
| N=256 ×4096 fwd oop | 324.3ns (1.81×) | 587.8ns |
| N=512 ×2048 fwd ip | 684.0ns (1.31×) | 895.4ns |
| N=512 ×2048 fwd oop | 901.4ns (1.71×) | 1.54us |
| N=1024 ×1024 fwd ip | 1.43us (1.12×) | 1.60us |
| N=1024 ×1024 fwd oop | 1.87us (1.44×) | 2.69us |

![mflops](plots/batch-f64-mflops.svg)
![speedup](plots/batch-f64-speedup.svg)
![accuracy](plots/batch-f64-accuracy.svg)

## Accuracy and planning time (medians over cells)

| lib | cells verified | failed | median error (ε) | worst error (ε) | median plan time |
|---|---|---|---|---|---|
| fastfft | 32 | 0 | 0.74 | 0.98 | 7.18us |
| rustfft | 32 | 0 | 0.89 | 1.29 | 982.0ns |

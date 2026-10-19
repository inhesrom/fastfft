# fastfft arena report: `run`

| | |
|---|---|
| Host | mini-ryzen |
| CPU | AMD Ryzen 7 7840HS w/ Radeon 780M Graphics (family 25, model 116, stepping 1, microcode 0xa704108) |
| Pinned CPU | 2 (SMT siblings 2,10) |
| Governor / EPP / boost | performance / performance / 1 |
| Kernel | Linux version 7.0.0-28-generic |
| Virtualization | container-other |
| rustc | rustc 1.95.0 (59807616e 2026-04-14); binary: rustc; commit-hash: 59807616e1fa2540724bfbac14d7976d7e4a3860; commit-date: 2026-04-14; host: x86_64-unknown-linux-gnu; release: 1.95.0; LLVM version: 22.1.2 |
| Build profile / RUSTFLAGS | arena / `` |
| Libraries | {"fearless_simd":"0.5.0","num-complex":"0.4.6","oxifft":"0.4.2","phastft":"0.4.1","pulp":"0.22.3","rustfft":"6.4.1","tfhe-fft":"0.10.1"} |
| FFTW | fftw-3.3.11-sse2-avx-avx2-avx2_128-avx512 `double: CFLAGS='-O3 -fPIC -std=gnu17' ./configure --enable-static --disable-shared --disable-fortran --disable-doc --enable-sse2 --enable-avx --enable-avx2 --enable-avx512 --enable-fma
single: CFLAGS='-O3 -fPIC -std=gnu17' ./configure --enable-static --disable-shared --disable-fortran --disable-doc --enable-sse2 --enable-avx --enable-avx2 --enable-avx512 --enable-fma --enable-float` |
| Git | a4d8aae88738db827a9a259f23077b72b591481c (dirty: true) |
| Profile | full |
| Official | true  |
| Control drift | max 1.45% over 3 control runs |
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
| G6 | scenarios ≥ 1.3× each; batch geomean ≥ 1.5× | ❌ fail | scenarios min inf×, batch 0.528×/0.539× |
| G7 | accuracy within §6 thresholds and ≤ 1.5× rustfft + 1ε | ✅ pass | 32 cells checked |
| G8 | Estimate planning time ≤ 2× rustfft for every N ≤ 2^20 | ❌ fail | worst ratio 25.27× (batch:f64:fwd:ip:n16:b65536), 32 cells |

G9 (build time) is measured by `cargo xtask build-time`, not by the arena.

## Speedup vs rustfft (geomean of best-time ratios; median-time ratio in parentheses)

| suite | prec | fastfft | rustfft |
|---|---|---|---|
| batch | f32 | 0.47× (0.48×) 0/0/16 | 1.00× (1.00×) 0/16/0 |
| batch | f64 | 0.59× (0.61×) 1/1/14 | 1.00× (1.00×) 0/16/0 |

w/t/l = cells faster / within ±3% / slower than rustfft (best times).

## Suite `batch`

### batch f32

| cell | fastfft | rustfft |
|---|---|---|
| N=8 ×131072 fwd ip | 2.9ns (0.56×) | 1.6ns |
| N=8 ×131072 fwd oop | 3.2ns (0.62×) | 2.0ns |
| N=16 ×65536 fwd ip | 8.1ns (0.41×) | 3.3ns |
| N=16 ×65536 fwd oop | 8.2ns (0.49×) | 4.0ns |
| N=32 ×32768 fwd ip | 16.5ns (0.54×) | 9.0ns |
| N=32 ×32768 fwd oop | 24.6ns (0.40×) | 9.9ns |
| N=64 ×16384 fwd ip | 38.1ns (0.53×) | 20.0ns |
| N=64 ×16384 fwd oop | 64.1ns (0.34×) | 22.0ns |
| N=128 ×8192 fwd ip | 83.9ns (0.57×) | 48.0ns |
| N=128 ×8192 fwd oop | 140.3ns (0.36×) | 51.0ns |
| N=256 ×4096 fwd ip | 206.5ns (0.51×) | 106.2ns |
| N=256 ×4096 fwd oop | 284.5ns (0.44×) | 124.0ns |
| N=512 ×2048 fwd ip | 665.9ns (0.41×) | 273.9ns |
| N=512 ×2048 fwd oop | 677.2ns (0.65×) | 441.0ns |
| N=1024 ×1024 fwd ip | 1.76us (0.38×) | 664.0ns |
| N=1024 ×1024 fwd oop | 1.92us (0.49×) | 947.9ns |

![mflops](plots/batch-f32-mflops.svg)
![speedup](plots/batch-f32-speedup.svg)
![accuracy](plots/batch-f32-accuracy.svg)

### batch f64

| cell | fastfft | rustfft |
|---|---|---|
| N=8 ×131072 fwd ip | 6.1ns (0.40×) | 2.4ns |
| N=8 ×131072 fwd oop | 10.7ns (0.75×) | 8.0ns |
| N=16 ×65536 fwd ip | 13.5ns (0.45×) | 6.1ns |
| N=16 ×65536 fwd oop | 23.2ns (0.69×) | 16.0ns |
| N=32 ×32768 fwd ip | 38.3ns (0.40×) | 15.2ns |
| N=32 ×32768 fwd oop | 81.0ns (0.41×) | 33.0ns |
| N=64 ×16384 fwd ip | 87.6ns (0.47×) | 40.9ns |
| N=64 ×16384 fwd oop | 172.2ns (0.42×) | 72.3ns |
| N=128 ×8192 fwd ip | 186.4ns (0.58×) | 108.7ns |
| N=128 ×8192 fwd oop | 318.8ns (0.49×) | 156.2ns |
| N=256 ×4096 fwd ip | 391.0ns (1.00×) | 389.5ns |
| N=256 ×4096 fwd oop | 625.6ns (1.06×) | 662.9ns |
| N=512 ×2048 fwd ip | 1.08us (0.85×) | 919.8ns |
| N=512 ×2048 fwd oop | 1.63us (0.95×) | 1.55us |
| N=1024 ×1024 fwd ip | 3.27us (0.50×) | 1.62us |
| N=1024 ×1024 fwd oop | 4.53us (0.60×) | 2.74us |

![mflops](plots/batch-f64-mflops.svg)
![speedup](plots/batch-f64-speedup.svg)
![accuracy](plots/batch-f64-accuracy.svg)

## Accuracy and planning time (medians over cells)

| lib | cells verified | failed | median error (ε) | worst error (ε) | median plan time |
|---|---|---|---|---|---|
| fastfft | 32 | 0 | 0.81 | 0.95 | 9.01us |
| rustfft | 32 | 0 | 0.89 | 1.29 | 982.0ns |

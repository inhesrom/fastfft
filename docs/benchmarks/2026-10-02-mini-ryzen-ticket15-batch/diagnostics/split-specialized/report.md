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
| Control drift | max 1.48% over 3 control runs |
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
| G6 | scenarios ≥ 1.3× each; batch geomean ≥ 1.5× | ❌ fail | scenarios min inf×, batch 0.595×/0.605× |
| G7 | accuracy within §6 thresholds and ≤ 1.5× rustfft + 1ε | ✅ pass | 32 cells checked |
| G8 | Estimate planning time ≤ 2× rustfft for every N ≤ 2^20 | ❌ fail | worst ratio 22.54× (batch:f32:fwd:ip:n16:b65536), 32 cells |

G9 (build time) is measured by `cargo xtask build-time`, not by the arena.

## Speedup vs rustfft (geomean of best-time ratios; median-time ratio in parentheses)

| suite | prec | fastfft | fastfft/avx512-ymm | fastfft/avx2 | rustfft |
|---|---|---|---|---|---|
| batch | f32 | 0.55× (0.55×) 0/0/16 | 0.71× (0.70×) 1/0/15 | 0.57× (0.57×) 0/0/16 | 1.00× (1.00×) 0/16/0 |
| batch | f64 | 0.64× (0.66×) 2/1/13 | 0.74× (0.78×) 4/1/11 | 0.68× (0.72×) 4/1/11 | 1.00× (1.00×) 0/16/0 |

w/t/l = cells faster / within ±3% / slower than rustfft (best times).

## Suite `batch`

### batch f32

| cell | fastfft | fastfft/avx512-ymm | fastfft/avx2 | rustfft |
|---|---|---|---|---|
| N=8 ×131072 fwd ip | 2.1ns (0.78×) | 2.1ns (0.78×) | 5.0ns (0.33×) | 1.6ns |
| N=8 ×131072 fwd oop | 2.3ns (0.86×) | 2.4ns (0.86×) | 2.8ns (0.71×) | 2.0ns |
| N=16 ×65536 fwd ip | 7.1ns (0.47×) | 6.1ns (0.55×) | 6.8ns (0.50×) | 3.3ns |
| N=16 ×65536 fwd oop | 7.7ns (0.53×) | 5.6ns (0.73×) | 7.1ns (0.58×) | 4.1ns |
| N=32 ×32768 fwd ip | 15.0ns (0.60×) | 11.4ns (0.79×) | 13.2ns (0.68×) | 9.0ns |
| N=32 ×32768 fwd oop | 22.3ns (0.44×) | 13.1ns (0.75×) | 22.9ns (0.43×) | 9.9ns |
| N=64 ×16384 fwd ip | 33.7ns (0.59×) | 27.9ns (0.72×) | 32.2ns (0.62×) | 20.0ns |
| N=64 ×16384 fwd oop | 67.2ns (0.40×) | 67.5ns (0.40×) | 66.9ns (0.40×) | 26.7ns |
| N=128 ×8192 fwd ip | 76.2ns (0.64×) | 61.5ns (0.80×) | 73.4ns (0.67×) | 48.9ns |
| N=128 ×8192 fwd oop | 130.7ns (0.39×) | 112.0ns (0.46×) | 117.9ns (0.43×) | 51.1ns |
| N=256 ×4096 fwd ip | 192.0ns (0.55×) | 123.0ns (0.86×) | 152.0ns (0.69×) | 105.4ns |
| N=256 ×4096 fwd oop | 253.0ns (0.45×) | 206.0ns (0.56×) | 221.5ns (0.52×) | 114.8ns |
| N=512 ×2048 fwd ip | 566.7ns (0.49×) | 309.1ns (0.90×) | 406.0ns (0.69×) | 279.2ns |
| N=512 ×2048 fwd oop | 575.5ns (0.79×) | 392.6ns (1.16×) | 474.4ns (0.96×) | 454.1ns |
| N=1024 ×1024 fwd ip | 1.50us (0.44×) | 1.12us (0.59×) | 1.31us (0.50×) | 656.0ns |
| N=1024 ×1024 fwd oop | 1.65us (0.66×) | 1.30us (0.83×) | 1.53us (0.71×) | 1.09us |

![mflops](plots/batch-f32-mflops.svg)
![speedup](plots/batch-f32-speedup.svg)
![accuracy](plots/batch-f32-accuracy.svg)

### batch f64

| cell | fastfft | fastfft/avx512-ymm | fastfft/avx2 | rustfft |
|---|---|---|---|---|
| N=8 ×131072 fwd ip | 4.3ns (0.57×) | 3.2ns (0.76×) | 4.0ns (0.61×) | 2.4ns |
| N=8 ×131072 fwd oop | 11.9ns (0.67×) | 8.0ns (0.99×) | 8.1ns (0.98×) | 7.9ns |
| N=16 ×65536 fwd ip | 15.7ns (0.39×) | 10.7ns (0.58×) | 13.6ns (0.45×) | 6.2ns |
| N=16 ×65536 fwd oop | 23.0ns (0.70×) | 19.5ns (0.82×) | 17.5ns (0.91×) | 16.0ns |
| N=32 ×32768 fwd ip | 35.8ns (0.43×) | 34.5ns (0.44×) | 37.2ns (0.41×) | 15.2ns |
| N=32 ×32768 fwd oop | 79.3ns (0.41×) | 85.6ns (0.38×) | 86.1ns (0.38×) | 32.8ns |
| N=64 ×16384 fwd ip | 91.6ns (0.47×) | 87.8ns (0.49×) | 96.7ns (0.44×) | 43.0ns |
| N=64 ×16384 fwd oop | 185.0ns (0.47×) | 182.7ns (0.47×) | 191.7ns (0.45×) | 86.3ns |
| N=128 ×8192 fwd ip | 169.7ns (0.67×) | 144.4ns (0.79×) | 166.0ns (0.69×) | 113.9ns |
| N=128 ×8192 fwd oop | 301.3ns (0.51×) | 306.3ns (0.50×) | 327.6ns (0.47×) | 154.4ns |
| N=256 ×4096 fwd ip | 347.2ns (1.11×) | 289.6ns (1.33×) | 321.3ns (1.20×) | 386.6ns |
| N=256 ×4096 fwd oop | 608.2ns (0.99×) | 502.3ns (1.20×) | 529.1ns (1.14×) | 602.5ns |
| N=512 ×2048 fwd ip | 948.8ns (0.95×) | 737.2ns (1.23×) | 828.0ns (1.09×) | 903.4ns |
| N=512 ×2048 fwd oop | 1.40us (1.13×) | 1.11us (1.41×) | 1.20us (1.31×) | 1.57us |
| N=1024 ×1024 fwd ip | 2.79us (0.66×) | 2.74us (0.67×) | 3.11us (0.59×) | 1.84us |
| N=1024 ×1024 fwd oop | 3.74us (0.77×) | 3.40us (0.85×) | 3.82us (0.75×) | 2.88us |

![mflops](plots/batch-f64-mflops.svg)
![speedup](plots/batch-f64-speedup.svg)
![accuracy](plots/batch-f64-accuracy.svg)

## Accuracy and planning time (medians over cells)

| lib | cells verified | failed | median error (ε) | worst error (ε) | median plan time |
|---|---|---|---|---|---|
| fastfft | 32 | 0 | 0.81 | 0.95 | 8.77us |
| fastfft/avx512-ymm | 32 | 0 | 0.81 | 0.95 | 7.03us |
| fastfft/avx2 | 32 | 0 | 0.81 | 0.95 | 6.36us |
| rustfft | 32 | 0 | 0.89 | 1.29 | 992.0ns |

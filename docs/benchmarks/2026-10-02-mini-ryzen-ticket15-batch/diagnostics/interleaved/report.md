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
| Control drift | max 0.95% over 3 control runs |
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
| G6 | scenarios ≥ 1.3× each; batch geomean ≥ 1.5× | ❌ fail | scenarios min inf×, batch 0.817×/0.818× |
| G7 | accuracy within §6 thresholds and ≤ 1.5× rustfft + 1ε | ✅ pass | 32 cells checked |
| G8 | Estimate planning time ≤ 2× rustfft for every N ≤ 2^20 | ❌ fail | worst ratio 26.17× (batch:f32:fwd:ip:n16:b65536), 32 cells |

G9 (build time) is measured by `cargo xtask build-time`, not by the arena.

## Speedup vs rustfft (geomean of best-time ratios; median-time ratio in parentheses)

| suite | prec | fastfft | fastfft/avx512-ymm | fastfft/avx2 | rustfft |
|---|---|---|---|---|---|
| batch | f32 | 0.83× (0.82×) 3/1/12 | 0.83× (0.82×) 3/1/12 | 0.79× (0.78×) 3/0/13 | 1.00× (1.00×) 0/16/0 |
| batch | f64 | 0.81× (0.82×) 4/1/11 | 0.73× (0.73×) 4/2/10 | 0.71× (0.71×) 4/1/11 | 1.00× (1.00×) 0/16/0 |

w/t/l = cells faster / within ±3% / slower than rustfft (best times).

## Suite `batch`

### batch f32

| cell | fastfft | fastfft/avx512-ymm | fastfft/avx2 | rustfft |
|---|---|---|---|---|
| N=8 ×131072 fwd ip | 1.3ns (1.21×) | 1.3ns (1.22×) | 1.3ns (1.22×) | 1.6ns |
| N=8 ×131072 fwd oop | 1.8ns (1.09×) | 1.9ns (1.08×) | 1.9ns (1.08×) | 2.0ns |
| N=16 ×65536 fwd ip | 3.6ns (0.92×) | 3.6ns (0.92×) | 6.0ns (0.56×) | 3.3ns |
| N=16 ×65536 fwd oop | 4.3ns (0.93×) | 4.3ns (0.93×) | 4.9ns (0.82×) | 4.0ns |
| N=32 ×32768 fwd ip | 9.4ns (0.97×) | 9.4ns (0.97×) | 9.5ns (0.95×) | 9.0ns |
| N=32 ×32768 fwd oop | 13.4ns (0.74×) | 13.7ns (0.72×) | 11.4ns (0.87×) | 9.9ns |
| N=64 ×16384 fwd ip | 25.1ns (0.80×) | 25.1ns (0.80×) | 25.4ns (0.79×) | 20.1ns |
| N=64 ×16384 fwd oop | 47.7ns (0.46×) | 47.8ns (0.46×) | 47.8ns (0.46×) | 21.9ns |
| N=128 ×8192 fwd ip | 55.2ns (0.88×) | 55.3ns (0.88×) | 58.4ns (0.83×) | 48.5ns |
| N=128 ×8192 fwd oop | 108.4ns (0.47×) | 108.1ns (0.47×) | 111.8ns (0.46×) | 51.2ns |
| N=256 ×4096 fwd ip | 121.2ns (0.89×) | 118.7ns (0.91×) | 123.4ns (0.87×) | 107.5ns |
| N=256 ×4096 fwd oop | 206.9ns (0.59×) | 206.5ns (0.59×) | 209.2ns (0.59×) | 122.7ns |
| N=512 ×2048 fwd ip | 289.8ns (0.97×) | 290.7ns (0.97×) | 301.5ns (0.94×) | 282.4ns |
| N=512 ×2048 fwd oop | 400.7ns (1.08×) | 401.6ns (1.08×) | 409.7ns (1.06×) | 434.4ns |
| N=1024 ×1024 fwd ip | 853.1ns (0.76×) | 854.5ns (0.76×) | 906.0ns (0.72×) | 651.2ns |
| N=1024 ×1024 fwd oop | 1.01us (0.92×) | 1.01us (0.91×) | 1.09us (0.85×) | 926.8ns |

![mflops](plots/batch-f32-mflops.svg)
![speedup](plots/batch-f32-speedup.svg)
![accuracy](plots/batch-f32-accuracy.svg)

### batch f64

| cell | fastfft | fastfft/avx512-ymm | fastfft/avx2 | rustfft |
|---|---|---|---|---|
| N=8 ×131072 fwd ip | 2.9ns (0.86×) | 2.5ns (1.01×) | 2.7ns (0.94×) | 2.5ns |
| N=8 ×131072 fwd oop | 8.1ns (0.98×) | 8.0ns (0.99×) | 8.0ns (0.99×) | 7.9ns |
| N=16 ×65536 fwd ip | 7.7ns (0.80×) | 13.2ns (0.47×) | 17.0ns (0.36×) | 6.1ns |
| N=16 ×65536 fwd oop | 19.4ns (0.82×) | 36.2ns (0.44×) | 21.7ns (0.74×) | 16.0ns |
| N=32 ×32768 fwd ip | 34.0ns (0.44×) | 34.3ns (0.44×) | 34.5ns (0.43×) | 15.0ns |
| N=32 ×32768 fwd oop | 75.0ns (0.44×) | 83.2ns (0.40×) | 84.4ns (0.39×) | 32.9ns |
| N=64 ×16384 fwd ip | 71.0ns (0.58×) | 71.0ns (0.58×) | 74.0ns (0.55×) | 40.9ns |
| N=64 ×16384 fwd oop | 162.7ns (0.45×) | 169.0ns (0.43×) | 174.2ns (0.42×) | 72.7ns |
| N=128 ×8192 fwd ip | 147.6ns (0.78×) | 157.0ns (0.73×) | 165.9ns (0.69×) | 115.1ns |
| N=128 ×8192 fwd oop | 307.7ns (0.89×) | 320.6ns (0.86×) | 329.0ns (0.83×) | 274.4ns |
| N=256 ×4096 fwd ip | 360.4ns (1.08×) | 327.2ns (1.19×) | 349.3ns (1.11×) | 388.7ns |
| N=256 ×4096 fwd oop | 528.8ns (1.19×) | 536.1ns (1.17×) | 559.9ns (1.12×) | 626.7ns |
| N=512 ×2048 fwd ip | 700.1ns (1.27×) | 755.3ns (1.18×) | 836.5ns (1.07×) | 892.6ns |
| N=512 ×2048 fwd oop | 1.08us (1.43×) | 1.15us (1.34×) | 1.24us (1.25×) | 1.55us |
| N=1024 ×1024 fwd ip | 2.05us (0.78×) | 2.71us (0.59×) | 3.04us (0.53×) | 1.60us |
| N=1024 ×1024 fwd oop | 2.94us (0.93×) | 3.11us (0.88×) | 3.31us (0.82×) | 2.73us |

![mflops](plots/batch-f64-mflops.svg)
![speedup](plots/batch-f64-speedup.svg)
![accuracy](plots/batch-f64-accuracy.svg)

## Accuracy and planning time (medians over cells)

| lib | cells verified | failed | median error (ε) | worst error (ε) | median plan time |
|---|---|---|---|---|---|
| fastfft | 32 | 0 | 0.78 | 0.97 | 8.73us |
| fastfft/avx512-ymm | 32 | 0 | 0.78 | 0.97 | 6.86us |
| fastfft/avx2 | 32 | 0 | 0.78 | 0.97 | 6.23us |
| rustfft | 32 | 0 | 0.89 | 1.29 | 982.0ns |

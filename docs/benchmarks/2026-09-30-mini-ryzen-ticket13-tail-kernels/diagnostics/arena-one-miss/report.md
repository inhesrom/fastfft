# fastfft arena report: `ticket13-tail-kernels`

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
| Git | 8a36159f41d3d1858cecacb70a546789b20ccbef (dirty: true) |
| Profile | quick |
| Official | true  |
| Control drift | max 0.83% over 5 control runs |
| Cells | 82 |

Times are per transform. *best* = minimum batch mean, *median* = median batch mean. Speedup = rustfft time ÷ library time (> 1 means faster than rustfft); *geomean* over the cells both libraries ran. mflops = 5·N·log2(N)/t(µs).

## Release gates (fastfft)

| Gate | Criterion | Status | Detail |
|---|---|---|---|
| G1 | pow2 vs rustfft: geomean ≥ 1.5×, no cell < 0.95× | – n/a | no data |
| G2 | smooth vs rustfft: geomean ≥ 1.3×, no cell < 0.95× | ❌ fail | geomean best 1.319×, median 1.318×, worst cell 0.917× (smooth:f32:fwd:ip:n96), 82 cells |
| G3 | rough vs rustfft: geomean ≥ 0.75×, no cell < 0.5× | – n/a | no data |
| G4 | vs each other Rust library: geomean ≥ 1.1×, ≥ 0.97× on ≥ 90% of cells | – n/a |  |
| G5 | AVX2 forced: pow2 ≥ 1.2×, smooth ≥ 1.1× vs rustfft | – n/a | pow2 NaN×/NaN×, smooth NaN×/NaN× |
| G6 | scenarios ≥ 1.3× each; batch geomean ≥ 1.5× | – n/a | scenarios min inf×, batch NaN×/NaN× |
| G7 | accuracy within §6 thresholds and ≤ 1.5× rustfft + 1ε | ✅ pass | 82 cells checked |
| G8 | Estimate planning time ≤ 2× rustfft for every N ≤ 2^20 | ❌ fail | worst ratio 32.29× (smooth:f32:fwd:ip:n24), 82 cells |

G9 (build time) is measured by `cargo xtask build-time`, not by the arena.

## Speedup vs rustfft (geomean of best-time ratios; median-time ratio in parentheses)

| suite | prec | fastfft | rustfft |
|---|---|---|---|
| smooth | f32 | 1.31× (1.30×) 36/3/2 | 1.00× (1.00×) 0/41/0 |
| smooth | f64 | 1.33× (1.33×) 37/4/0 | 1.00× (1.00×) 0/41/0 |

w/t/l = cells faster / within ±3% / slower than rustfft (best times).

## Suite `smooth`

### smooth f32

| cell | fastfft | rustfft |
|---|---|---|
| N=6 fwd ip | 7.4ns (1.27×) | 9.4ns |
| N=9 fwd ip | 11.7ns (1.14×) | 13.2ns |
| N=12 fwd ip | 9.8ns (1.12×) | 11.0ns |
| N=15 fwd ip | 14.1ns (1.84×) | 25.9ns |
| N=18 fwd ip | 15.7ns (1.49×) | 23.4ns |
| N=24 fwd ip | 13.3ns (1.08×) | 14.3ns |
| N=36 fwd ip | 19.2ns (1.03×) | 19.7ns |
| N=48 fwd ip | 15.7ns (1.09×) | 17.1ns |
| N=80 fwd ip | 36.4ns (1.04×) | 37.7ns |
| N=96 fwd ip | 53.3ns (0.92×) | 48.9ns |
| N=108 fwd ip | 47.2ns (1.30×) | 61.4ns |
| N=120 fwd ip | 59.5ns (1.03×) | 61.2ns |
| N=160 fwd ip | 78.2ns (1.03×) | 80.4ns |
| N=210 fwd ip | 129.0ns (1.95×) | 250.9ns |
| N=240 fwd ip | 100.6ns (1.17×) | 117.9ns |
| N=320 fwd ip | 144.3ns (1.17×) | 168.6ns |
| N=384 fwd ip | 169.1ns (1.17×) | 197.9ns |
| N=480 fwd ip | 247.8ns (1.38×) | 342.1ns |
| N=504 fwd ip | 238.6ns (1.18×) | 281.0ns |
| N=640 fwd ip | 286.0ns (1.28×) | 366.7ns |
| N=720 fwd ip | 335.4ns (1.64×) | 551.2ns |
| N=768 fwd ip | 352.3ns (1.22×) | 430.5ns |
| N=960 fwd ip | 450.4ns (1.43×) | 644.4ns |
| N=1000 fwd ip | 610.6ns (1.55×) | 946.6ns |
| N=1200 fwd ip | 664.2ns (1.28×) | 849.2ns |
| N=1536 fwd ip | 811.2ns (1.32×) | 1.07us |
| N=1920 fwd ip | 1.05us (1.35×) | 1.42us |
| N=1960 fwd ip | 1.24us (1.62×) | 2.01us |
| N=2400 fwd ip | 1.47us (1.56×) | 2.30us |
| N=3072 fwd ip | 1.75us (1.38×) | 2.42us |
| N=4725 fwd ip | 6.23us (0.97×) | 6.05us |
| N=4800 fwd ip | 2.86us (1.60×) | 4.57us |
| N=6144 fwd ip | 3.79us (1.36×) | 5.15us |
| N=10368 fwd ip | 6.57us (1.32×) | 8.66us |
| N=12288 fwd ip | 8.94us (1.38×) | 12.37us |
| N=27000 fwd ip | 20.45us (1.65×) | 33.78us |
| N=48000 fwd ip | 35.44us (1.69×) | 59.86us |
| N=75600 fwd ip | 68.70us (1.53×) | 105.36us |
| N=96000 fwd ip | 78.15us (1.70×) | 132.63us |
| N=165375 fwd ip | 245.96us (1.29×) | 317.56us |
| N=1000000 fwd ip | 2.84ms (1.03×) | 2.93ms |

![mflops](plots/smooth-f32-mflops.svg)
![speedup](plots/smooth-f32-speedup.svg)
![accuracy](plots/smooth-f32-accuracy.svg)

### smooth f64

| cell | fastfft | rustfft |
|---|---|---|
| N=6 fwd ip | 5.5ns (1.02×) | 5.6ns |
| N=9 fwd ip | 8.6ns (1.11×) | 9.5ns |
| N=12 fwd ip | 8.6ns (1.34×) | 11.6ns |
| N=15 fwd ip | 17.1ns (1.68×) | 28.7ns |
| N=18 fwd ip | 11.2ns (1.26×) | 14.1ns |
| N=24 fwd ip | 12.1ns (1.12×) | 13.6ns |
| N=36 fwd ip | 17.6ns (1.28×) | 22.5ns |
| N=48 fwd ip | 37.8ns (1.05×) | 39.6ns |
| N=80 fwd ip | 65.3ns (1.03×) | 67.5ns |
| N=96 fwd ip | 76.5ns (1.06×) | 81.0ns |
| N=108 fwd ip | 80.2ns (1.21×) | 96.9ns |
| N=120 fwd ip | 80.1ns (1.37×) | 109.9ns |
| N=160 fwd ip | 122.8ns (1.18×) | 144.6ns |
| N=210 fwd ip | 287.5ns (1.00×) | 287.6ns |
| N=240 fwd ip | 203.0ns (1.37×) | 278.1ns |
| N=320 fwd ip | 260.6ns (1.23×) | 320.0ns |
| N=384 fwd ip | 316.1ns (1.17×) | 369.8ns |
| N=480 fwd ip | 458.1ns (1.28×) | 586.2ns |
| N=504 fwd ip | 462.4ns (1.42×) | 658.3ns |
| N=640 fwd ip | 549.6ns (1.30×) | 714.3ns |
| N=720 fwd ip | 672.1ns (1.36×) | 911.5ns |
| N=768 fwd ip | 682.8ns (1.45×) | 989.5ns |
| N=960 fwd ip | 926.0ns (1.42×) | 1.31us |
| N=1000 fwd ip | 1.12us (1.50×) | 1.67us |
| N=1200 fwd ip | 1.21us (1.67×) | 2.02us |
| N=1536 fwd ip | 1.67us (1.34×) | 2.23us |
| N=1920 fwd ip | 2.11us (1.36×) | 2.86us |
| N=1960 fwd ip | 2.21us (1.65×) | 3.64us |
| N=2400 fwd ip | 2.89us (1.51×) | 4.35us |
| N=3072 fwd ip | 3.48us (1.30×) | 4.52us |
| N=4725 fwd ip | 10.39us (0.98×) | 10.17us |
| N=4800 fwd ip | 5.25us (1.66×) | 8.72us |
| N=6144 fwd ip | 7.21us (1.55×) | 11.15us |
| N=10368 fwd ip | 12.43us (1.61×) | 20.00us |
| N=12288 fwd ip | 17.15us (1.48×) | 25.46us |
| N=27000 fwd ip | 44.06us (1.50×) | 65.88us |
| N=48000 fwd ip | 68.52us (1.83×) | 125.20us |
| N=75600 fwd ip | 139.10us (1.46×) | 202.64us |
| N=96000 fwd ip | 144.60us (1.95×) | 282.34us |
| N=165375 fwd ip | 419.54us (1.35×) | 567.14us |
| N=1000000 fwd ip | 7.89ms (1.01×) | 7.96ms |

![mflops](plots/smooth-f64-mflops.svg)
![speedup](plots/smooth-f64-speedup.svg)
![accuracy](plots/smooth-f64-accuracy.svg)

## Accuracy and planning time (medians over cells)

| lib | cells verified | failed | median error (ε) | worst error (ε) | median plan time |
|---|---|---|---|---|---|
| fastfft | 82 | 0 | 0.90 | 1.41 | 24.35us |
| rustfft | 82 | 0 | 1.10 | 4.09 | 6.13us |

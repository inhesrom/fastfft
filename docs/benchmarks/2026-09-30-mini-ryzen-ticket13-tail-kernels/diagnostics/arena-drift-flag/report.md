# fastfft arena report: `ticket13-smooth-gate`

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
| Control drift | max 11.52% over 5 control runs — **FLAGGED** |
| Cells | 82 |

Times are per transform. *best* = minimum batch mean, *median* = median batch mean. Speedup = rustfft time ÷ library time (> 1 means faster than rustfft); *geomean* over the cells both libraries ran. mflops = 5·N·log2(N)/t(µs).

## Release gates (fastfft)

| Gate | Criterion | Status | Detail |
|---|---|---|---|
| G1 | pow2 vs rustfft: geomean ≥ 1.5×, no cell < 0.95× | – n/a | no data |
| G2 | smooth vs rustfft: geomean ≥ 1.3×, no cell < 0.95× | ❌ fail | geomean best 1.325×, median 1.322×, worst cell 0.913× (smooth:f64:fwd:ip:n4725), 82 cells |
| G3 | rough vs rustfft: geomean ≥ 0.75×, no cell < 0.5× | – n/a | no data |
| G4 | vs each other Rust library: geomean ≥ 1.1×, ≥ 0.97× on ≥ 90% of cells | – n/a |  |
| G5 | AVX2 forced: pow2 ≥ 1.2×, smooth ≥ 1.1× vs rustfft | – n/a | pow2 NaN×/NaN×, smooth NaN×/NaN× |
| G6 | scenarios ≥ 1.3× each; batch geomean ≥ 1.5× | – n/a | scenarios min inf×, batch NaN×/NaN× |
| G7 | accuracy within §6 thresholds and ≤ 1.5× rustfft + 1ε | ✅ pass | 82 cells checked |
| G8 | Estimate planning time ≤ 2× rustfft for every N ≤ 2^20 | ❌ fail | worst ratio 31.84× (smooth:f32:fwd:ip:n24), 82 cells |

G9 (build time) is measured by `cargo xtask build-time`, not by the arena.

## Speedup vs rustfft (geomean of best-time ratios; median-time ratio in parentheses)

| suite | prec | fastfft | rustfft |
|---|---|---|---|
| smooth | f32 | 1.32× (1.31×) 37/3/1 | 1.00× (1.00×) 0/41/0 |
| smooth | f64 | 1.33× (1.33×) 36/4/1 | 1.00× (1.00×) 0/41/0 |

w/t/l = cells faster / within ±3% / slower than rustfft (best times).

## Suite `smooth`

### smooth f32

| cell | fastfft | rustfft |
|---|---|---|
| N=6 fwd ip | 7.4ns (1.28×) | 9.4ns |
| N=9 fwd ip | 11.7ns (1.14×) | 13.2ns |
| N=12 fwd ip | 9.8ns (1.12×) | 11.0ns |
| N=15 fwd ip | 14.1ns (1.82×) | 25.6ns |
| N=18 fwd ip | 15.9ns (1.48×) | 23.4ns |
| N=24 fwd ip | 13.5ns (1.07×) | 14.4ns |
| N=36 fwd ip | 19.2ns (1.03×) | 19.8ns |
| N=48 fwd ip | 15.7ns (1.08×) | 16.9ns |
| N=80 fwd ip | 35.8ns (1.06×) | 37.9ns |
| N=96 fwd ip | 35.8ns (1.37×) | 48.9ns |
| N=108 fwd ip | 47.4ns (1.29×) | 60.9ns |
| N=120 fwd ip | 57.9ns (1.06×) | 61.2ns |
| N=160 fwd ip | 78.0ns (1.02×) | 79.8ns |
| N=210 fwd ip | 128.8ns (1.94×) | 249.7ns |
| N=240 fwd ip | 99.7ns (1.17×) | 117.1ns |
| N=320 fwd ip | 144.4ns (1.17×) | 168.4ns |
| N=384 fwd ip | 169.0ns (1.17×) | 198.0ns |
| N=480 fwd ip | 250.2ns (1.37×) | 341.7ns |
| N=504 fwd ip | 237.9ns (1.17×) | 279.0ns |
| N=640 fwd ip | 287.0ns (1.28×) | 367.2ns |
| N=720 fwd ip | 335.6ns (1.57×) | 525.8ns |
| N=768 fwd ip | 356.4ns (1.20×) | 429.4ns |
| N=960 fwd ip | 455.7ns (1.41×) | 642.0ns |
| N=1000 fwd ip | 608.3ns (1.56×) | 949.3ns |
| N=1200 fwd ip | 693.3ns (1.22×) | 845.7ns |
| N=1536 fwd ip | 810.7ns (1.31×) | 1.06us |
| N=1920 fwd ip | 1.06us (1.34×) | 1.41us |
| N=1960 fwd ip | 1.25us (1.63×) | 2.04us |
| N=2400 fwd ip | 1.46us (1.58×) | 2.31us |
| N=3072 fwd ip | 1.74us (1.38×) | 2.41us |
| N=4725 fwd ip | 6.30us (0.96×) | 6.08us |
| N=4800 fwd ip | 2.86us (1.60×) | 4.57us |
| N=6144 fwd ip | 3.75us (1.37×) | 5.15us |
| N=10368 fwd ip | 6.55us (1.29×) | 8.47us |
| N=12288 fwd ip | 8.87us (1.38×) | 12.27us |
| N=27000 fwd ip | 20.67us (1.62×) | 33.58us |
| N=48000 fwd ip | 35.30us (1.72×) | 60.72us |
| N=75600 fwd ip | 67.22us (1.56×) | 104.79us |
| N=96000 fwd ip | 78.70us (1.68×) | 132.51us |
| N=165375 fwd ip | 247.01us (1.29×) | 317.72us |
| N=1000000 fwd ip | 2.83ms (1.02×) | 2.90ms |

![mflops](plots/smooth-f32-mflops.svg)
![speedup](plots/smooth-f32-speedup.svg)
![accuracy](plots/smooth-f32-accuracy.svg)

### smooth f64

| cell | fastfft | rustfft |
|---|---|---|
| N=6 fwd ip | 5.4ns (1.04×) | 5.6ns |
| N=9 fwd ip | 8.6ns (1.11×) | 9.5ns |
| N=12 fwd ip | 8.6ns (1.34×) | 11.6ns |
| N=15 fwd ip | 17.1ns (1.69×) | 28.8ns |
| N=18 fwd ip | 11.2ns (1.26×) | 14.1ns |
| N=24 fwd ip | 12.1ns (1.12×) | 13.6ns |
| N=36 fwd ip | 17.7ns (1.50×) | 26.5ns |
| N=48 fwd ip | 37.9ns (1.00×) | 37.9ns |
| N=80 fwd ip | 65.7ns (1.02×) | 67.0ns |
| N=96 fwd ip | 76.2ns (1.06×) | 80.6ns |
| N=108 fwd ip | 80.2ns (1.20×) | 96.6ns |
| N=120 fwd ip | 79.7ns (1.41×) | 112.1ns |
| N=160 fwd ip | 122.4ns (1.17×) | 142.8ns |
| N=210 fwd ip | 293.5ns (1.00×) | 292.2ns |
| N=240 fwd ip | 204.7ns (1.36×) | 279.1ns |
| N=320 fwd ip | 257.5ns (1.32×) | 338.9ns |
| N=384 fwd ip | 313.7ns (1.13×) | 354.1ns |
| N=480 fwd ip | 457.4ns (1.28×) | 586.8ns |
| N=504 fwd ip | 462.8ns (1.42×) | 657.6ns |
| N=640 fwd ip | 549.3ns (1.29×) | 709.6ns |
| N=720 fwd ip | 664.8ns (1.36×) | 905.2ns |
| N=768 fwd ip | 713.7ns (1.37×) | 979.2ns |
| N=960 fwd ip | 902.5ns (1.46×) | 1.32us |
| N=1000 fwd ip | 1.12us (1.49×) | 1.67us |
| N=1200 fwd ip | 1.21us (1.67×) | 2.02us |
| N=1536 fwd ip | 1.70us (1.32×) | 2.24us |
| N=1920 fwd ip | 2.10us (1.36×) | 2.85us |
| N=1960 fwd ip | 2.19us (1.67×) | 3.67us |
| N=2400 fwd ip | 2.88us (1.51×) | 4.34us |
| N=3072 fwd ip | 3.49us (1.33×) | 4.66us |
| N=4725 fwd ip | 11.07us (0.92×) | 10.15us |
| N=4800 fwd ip | 5.33us (1.64×) | 8.75us |
| N=6144 fwd ip | 7.27us (1.54×) | 11.20us |
| N=10368 fwd ip | 12.34us (1.62×) | 19.99us |
| N=12288 fwd ip | 17.27us (1.49×) | 25.78us |
| N=27000 fwd ip | 44.14us (1.49×) | 65.87us |
| N=48000 fwd ip | 68.43us (1.81×) | 124.14us |
| N=75600 fwd ip | 141.61us (1.43×) | 201.95us |
| N=96000 fwd ip | 144.15us (1.96×) | 283.09us |
| N=165375 fwd ip | 426.02us (1.33×) | 567.87us |
| N=1000000 fwd ip | 7.75ms (1.02×) | 7.93ms |

![mflops](plots/smooth-f64-mflops.svg)
![speedup](plots/smooth-f64-speedup.svg)
![accuracy](plots/smooth-f64-accuracy.svg)

## Accuracy and planning time (medians over cells)

| lib | cells verified | failed | median error (ε) | worst error (ε) | median plan time |
|---|---|---|---|---|---|
| fastfft | 82 | 0 | 0.90 | 1.41 | 25.20us |
| rustfft | 82 | 0 | 1.10 | 4.09 | 6.20us |

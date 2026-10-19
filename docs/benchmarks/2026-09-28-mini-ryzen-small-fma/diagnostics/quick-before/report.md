# fastfft arena report: `quick-before`

> The plots are not committed. To regenerate them, decompress `results.jsonl.gz` to
> `results.jsonl` and run `fastfft-arena report` on this directory.

| | |
|---|---|
| Host | mini-ryzen |
| CPU | AMD Ryzen 7 7840HS w/ Radeon 780M Graphics (family 25, model 116, stepping 1, microcode 0xa704108) |
| Pinned CPU | 2 (SMT siblings 2,10) |
| Governor / EPP / boost | performance / performance / 1 |
| Kernel | Linux version 7.0.0-28-generic |
| Virtualization | none |
| rustc | rustc 1.95.0 (59807616e 2026-04-14); binary: rustc; commit-hash: 59807616e1fa2540724bfbac14d7976d7e4a3860; commit-date: 2026-04-14; host: x86_64-unknown-linux-gnu; release: 1.95.0; LLVM version: 22.1.2 |
| Build profile / RUSTFLAGS | arena / `-C llvm-args=-align-all-functions=6` |
| Libraries | {"fearless_simd":"0.5.0","num-complex":"0.4.6","oxifft":"0.4.2","phastft":"0.4.1","pulp":"0.22.3","rustfft":"6.4.1","tfhe-fft":"0.10.1"} |
| FFTW | fftw-3.3.11-sse2-avx-avx2-avx2_128-avx512 `double: CFLAGS='-O3 -fPIC -std=gnu17' ./configure --enable-static --disable-shared --disable-fortran --disable-doc --enable-sse2 --enable-avx --enable-avx2 --enable-avx512 --enable-fma
single: CFLAGS='-O3 -fPIC -std=gnu17' ./configure --enable-static --disable-shared --disable-fortran --disable-doc --enable-sse2 --enable-avx --enable-avx2 --enable-avx512 --enable-fma --enable-float` |
| Git | bf19dd6b36fd6297bf3d856f315000034f458389 (dirty: true) |
| Profile | quick |
| Official | true  |
| Control drift | max 2.04% over 9 control runs |
| Cells | 180 |

Times are per transform. *best* = minimum batch mean, *median* = median batch mean. Speedup = rustfft time ÷ library time (> 1 means faster than rustfft); *geomean* over the cells both libraries ran. mflops = 5·N·log2(N)/t(µs).

## Release gates (fastfft)

| Gate | Criterion | Status | Detail |
|---|---|---|---|
| G1 | pow2 vs rustfft: geomean ≥ 1.5×, no cell < 0.95× | ❌ fail | geomean best 1.069×, median 1.066×, worst cell 0.559× (pow2:f64:fwd:ip:n4194304), 48 cells |
| G2 | smooth vs rustfft: geomean ≥ 1.3×, no cell < 0.95× | ❌ fail | geomean best 1.036×, median 1.035×, worst cell 0.254× (smooth:f32:fwd:ip:n4725), 82 cells |
| G3 | rough vs rustfft: geomean ≥ 0.75×, no cell < 0.5× | ❌ fail | geomean best 0.790×, median 0.786×, worst cell 0.211× (rough:f64:fwd:ip:n17), 34 cells |
| G4 | vs each other Rust library: geomean ≥ 1.1×, ≥ 0.97× on ≥ 90% of cells | – n/a |  |
| G5 | AVX2 forced: pow2 ≥ 1.2×, smooth ≥ 1.1× vs rustfft | – n/a | pow2 NaN×/NaN×, smooth NaN×/NaN× |
| G6 | scenarios ≥ 1.3× each; batch geomean ≥ 1.5× | ❌ fail | scenarios min inf×, batch 1.139×/1.140× |
| G7 | accuracy within §6 thresholds and ≤ 1.5× rustfft + 1ε | ✅ pass | 172 cells checked |
| G8 | Estimate planning time ≤ 2× rustfft for every N ≤ 2^20 | ❌ fail | worst ratio 58.36× (rough:f64:fwd:ip:n31), 172 cells |

G9 (build time) is measured by `cargo xtask build-time`, not by the arena.

## Speedup vs rustfft (geomean of best-time ratios; median-time ratio in parentheses)

| suite | prec | fastfft | rustfft |
|---|---|---|---|
| pow2 | f32 | 1.09× (1.09×) 19/0/5 | 1.00× (1.00×) 0/24/0 |
| pow2 | f64 | 1.05× (1.05×) 16/3/5 | 1.00× (1.00×) 0/24/0 |
| smooth | f32 | 0.97× (0.96×) 26/0/15 | 1.00× (1.00×) 0/41/0 |
| smooth | f64 | 1.11× (1.11×) 28/1/12 | 1.00× (1.00×) 0/41/0 |
| rough | f32 | 0.84× (0.83×) 7/2/8 | 1.00× (1.00×) 0/17/0 |
| rough | f64 | 0.75× (0.74×) 4/1/12 | 1.00× (1.00×) 0/17/0 |
| batch | f32 | 1.13× (1.12×) 6/2/0 | 1.00× (1.00×) 0/8/0 |
| batch | f64 | 1.15× (1.16×) 7/1/0 | 1.00× (1.00×) 0/8/0 |

w/t/l = cells faster / within ±3% / slower than rustfft (best times).

## Suite `pow2`

### pow2 f32

| cell | fastfft | rustfft |
|---|---|---|
| N=2 fwd ip | 2.6ns (1.05×) | 2.8ns |
| N=4 fwd ip | 3.6ns (1.18×) | 4.2ns |
| N=8 fwd ip | 7.0ns (1.11×) | 7.8ns |
| N=16 fwd ip | 8.3ns (1.06×) | 8.8ns |
| N=32 fwd ip | 11.8ns (1.06×) | 12.6ns |
| N=64 fwd ip | 18.1ns (1.19×) | 21.6ns |
| N=128 fwd ip | 38.8ns (1.24×) | 47.9ns |
| N=256 fwd ip | 83.9ns (1.28×) | 107.3ns |
| N=512 fwd ip | 222.1ns (1.14×) | 254.2ns |
| N=1024 fwd ip | 499.3ns (1.21×) | 606.5ns |
| N=2048 fwd ip | 1.10us (1.27×) | 1.40us |
| N=4096 fwd ip | 2.88us (1.13×) | 3.25us |
| N=8192 fwd ip | 5.64us (1.30×) | 7.35us |
| N=16384 fwd ip | 11.21us (1.44×) | 16.19us |
| N=32768 fwd ip | 25.46us (1.49×) | 37.90us |
| N=65536 fwd ip | 67.45us (1.22×) | 82.44us |
| N=131072 fwd ip | 144.01us (1.27×) | 182.51us |
| N=262144 fwd ip | 311.41us (1.32×) | 410.47us |
| N=524288 fwd ip | 678.96us (1.32×) | 893.82us |
| N=1048576 fwd ip | 3.11ms (0.93×) | 2.89ms |
| N=2097152 fwd ip | 11.57ms (0.71×) | 8.28ms |
| N=4194304 fwd ip | 30.54ms (0.60×) | 18.18ms |
| N=8388608 fwd ip | 61.56ms (0.65×) | 39.93ms |
| N=16777216 fwd ip | 131.34ms (0.67×) | 88.55ms |

### pow2 f64

| cell | fastfft | rustfft |
|---|---|---|
| N=2 fwd ip | 2.6ns (0.98×) | 2.5ns |
| N=4 fwd ip | 3.6ns (1.05×) | 3.8ns |
| N=8 fwd ip | 6.5ns (1.05×) | 6.9ns |
| N=16 fwd ip | 9.3ns (1.09×) | 10.1ns |
| N=32 fwd ip | 14.2ns (1.23×) | 17.4ns |
| N=64 fwd ip | 32.5ns (1.22×) | 39.7ns |
| N=128 fwd ip | 69.3ns (1.23×) | 84.9ns |
| N=256 fwd ip | 149.3ns (1.31×) | 195.3ns |
| N=512 fwd ip | 421.3ns (1.15×) | 486.2ns |
| N=1024 fwd ip | 1.04us (1.17×) | 1.22us |
| N=2048 fwd ip | 2.75us (1.02×) | 2.79us |
| N=4096 fwd ip | 5.42us (1.23×) | 6.64us |
| N=8192 fwd ip | 10.91us (1.39×) | 15.19us |
| N=16384 fwd ip | 24.23us (1.39×) | 33.77us |
| N=32768 fwd ip | 51.01us (1.52×) | 77.49us |
| N=65536 fwd ip | 135.09us (1.25×) | 169.50us |
| N=131072 fwd ip | 286.84us (1.33×) | 380.60us |
| N=262144 fwd ip | 621.57us (1.40×) | 872.66us |
| N=524288 fwd ip | 2.93ms (0.97×) | 2.85ms |
| N=1048576 fwd ip | 12.04ms (0.67×) | 8.08ms |
| N=2097152 fwd ip | 27.92ms (0.64×) | 17.76ms |
| N=4194304 fwd ip | 70.06ms (0.56×) | 39.15ms |
| N=8388608 fwd ip | 141.24ms (0.61×) | 86.37ms |
| N=16777216 fwd ip | 277.47ms (0.68×) | 189.87ms |

## Suite `smooth`

### smooth f32

| cell | fastfft | rustfft |
|---|---|---|
| N=6 fwd ip | 7.4ns (1.27×) | 9.4ns |
| N=9 fwd ip | 11.7ns (1.14×) | 13.2ns |
| N=12 fwd ip | 9.8ns (1.12×) | 11.0ns |
| N=15 fwd ip | 13.6ns (1.91×) | 26.0ns |
| N=18 fwd ip | 54.3ns (0.43×) | 23.5ns |
| N=24 fwd ip | 23.1ns (0.62×) | 14.4ns |
| N=36 fwd ip | 46.9ns (0.42×) | 19.8ns |
| N=48 fwd ip | 23.6ns (0.71×) | 16.9ns |
| N=80 fwd ip | 73.3ns (0.57×) | 41.7ns |
| N=96 fwd ip | 84.0ns (0.57×) | 47.7ns |
| N=108 fwd ip | 123.8ns (0.49×) | 61.2ns |
| N=120 fwd ip | 104.7ns (0.59×) | 61.3ns |
| N=160 fwd ip | 153.6ns (0.54×) | 82.7ns |
| N=210 fwd ip | 578.0ns (0.43×) | 251.1ns |
| N=240 fwd ip | 166.4ns (0.71×) | 117.8ns |
| N=320 fwd ip | 141.6ns (1.18×) | 167.4ns |
| N=384 fwd ip | 166.4ns (1.22×) | 202.3ns |
| N=480 fwd ip | 250.6ns (1.32×) | 331.1ns |
| N=504 fwd ip | 312.2ns (0.89×) | 278.6ns |
| N=640 fwd ip | 285.5ns (1.32×) | 376.8ns |
| N=720 fwd ip | 868.6ns (0.62×) | 535.6ns |
| N=768 fwd ip | 345.0ns (1.24×) | 428.7ns |
| N=960 fwd ip | 445.5ns (1.45×) | 645.7ns |
| N=1000 fwd ip | 609.1ns (1.57×) | 953.8ns |
| N=1200 fwd ip | 667.2ns (1.27×) | 847.0ns |
| N=1536 fwd ip | 811.0ns (1.27×) | 1.03us |
| N=1920 fwd ip | 1.05us (1.34×) | 1.41us |
| N=1960 fwd ip | 1.25us (1.61×) | 2.02us |
| N=2400 fwd ip | 1.46us (1.59×) | 2.33us |
| N=3072 fwd ip | 1.74us (1.39×) | 2.41us |
| N=4725 fwd ip | 24.03us (0.25×) | 6.10us |
| N=4800 fwd ip | 2.85us (1.61×) | 4.58us |
| N=6144 fwd ip | 3.70us (1.39×) | 5.12us |
| N=10368 fwd ip | 6.55us (1.32×) | 8.67us |
| N=12288 fwd ip | 8.99us (1.34×) | 12.03us |
| N=27000 fwd ip | 20.66us (1.61×) | 33.19us |
| N=48000 fwd ip | 35.54us (1.71×) | 60.62us |
| N=75600 fwd ip | 67.69us (1.55×) | 104.81us |
| N=96000 fwd ip | 77.43us (1.71×) | 132.43us |
| N=165375 fwd ip | 1.19ms (0.26×) | 315.03us |
| N=1000000 fwd ip | 2.69ms (1.07×) | 2.89ms |

### smooth f64

| cell | fastfft | rustfft |
|---|---|---|
| N=6 fwd ip | 5.8ns (0.97×) | 5.6ns |
| N=9 fwd ip | 10.4ns (0.91×) | 9.5ns |
| N=12 fwd ip | 8.6ns (1.34×) | 11.6ns |
| N=15 fwd ip | 17.1ns (1.69×) | 28.8ns |
| N=18 fwd ip | 35.7ns (0.40×) | 14.3ns |
| N=24 fwd ip | 36.5ns (0.62×) | 22.5ns |
| N=36 fwd ip | 49.5ns (0.48×) | 23.7ns |
| N=48 fwd ip | 38.1ns (1.01×) | 38.6ns |
| N=80 fwd ip | 64.4ns (1.04×) | 66.9ns |
| N=96 fwd ip | 76.0ns (1.07×) | 81.1ns |
| N=108 fwd ip | 119.9ns (0.78×) | 93.1ns |
| N=120 fwd ip | 161.9ns (0.65×) | 105.5ns |
| N=160 fwd ip | 121.5ns (1.17×) | 141.6ns |
| N=210 fwd ip | 467.1ns (0.61×) | 284.1ns |
| N=240 fwd ip | 295.3ns (0.91×) | 268.7ns |
| N=320 fwd ip | 258.1ns (1.31×) | 338.3ns |
| N=384 fwd ip | 308.0ns (1.19×) | 366.2ns |
| N=480 fwd ip | 518.7ns (1.13×) | 587.7ns |
| N=504 fwd ip | 524.8ns (1.26×) | 662.1ns |
| N=640 fwd ip | 547.2ns (1.31×) | 716.7ns |
| N=720 fwd ip | 663.3ns (1.36×) | 899.3ns |
| N=768 fwd ip | 682.0ns (1.44×) | 980.9ns |
| N=960 fwd ip | 932.5ns (1.41×) | 1.31us |
| N=1000 fwd ip | 1.10us (1.49×) | 1.64us |
| N=1200 fwd ip | 1.23us (1.64×) | 2.02us |
| N=1536 fwd ip | 1.68us (1.33×) | 2.24us |
| N=1920 fwd ip | 2.12us (1.34×) | 2.85us |
| N=1960 fwd ip | 2.20us (1.67×) | 3.67us |
| N=2400 fwd ip | 3.02us (1.42×) | 4.29us |
| N=3072 fwd ip | 3.48us (1.34×) | 4.66us |
| N=4725 fwd ip | 20.85us (0.49×) | 10.23us |
| N=4800 fwd ip | 5.24us (1.68×) | 8.80us |
| N=6144 fwd ip | 7.71us (1.44×) | 11.12us |
| N=10368 fwd ip | 12.36us (1.61×) | 19.87us |
| N=12288 fwd ip | 17.25us (1.51×) | 25.99us |
| N=27000 fwd ip | 44.84us (1.48×) | 66.33us |
| N=48000 fwd ip | 69.06us (1.80×) | 124.19us |
| N=75600 fwd ip | 149.35us (1.36×) | 202.67us |
| N=96000 fwd ip | 144.57us (1.96×) | 283.41us |
| N=165375 fwd ip | 1.06ms (0.53×) | 565.18us |
| N=1000000 fwd ip | 10.87ms (0.74×) | 8.01ms |

## Suite `rough`

### rough f32

| cell | fastfft | rustfft |
|---|---|---|
| N=17 fwd ip | 123.9ns (0.22×) | 27.2ns |
| N=31 fwd ip | 87.2ns (1.08×) | 93.7ns |
| N=61 fwd ip | 165.4ns (0.78×) | 128.5ns |
| N=127 fwd ip | 347.5ns (1.39×) | 481.8ns |
| N=257 fwd ip | 877.5ns (0.53×) | 462.5ns |
| N=509 fwd ip | 1.75us (0.86×) | 1.51us |
| N=1021 fwd ip | 3.78us (1.39×) | 5.25us |
| N=2018 fwd ip | 7.94us (0.70×) | 5.57us |
| N=2053 fwd ip | 9.21us (1.22×) | 11.24us |
| N=3063 fwd ip | 13.61us (1.21×) | 16.43us |
| N=4099 fwd ip | 20.94us (1.15×) | 24.10us |
| N=8191 fwd ip | 40.94us (1.21×) | 49.50us |
| N=9797 fwd ip | 53.70us (0.98×) | 52.44us |
| N=16381 fwd ip | 102.79us (0.98×) | 100.60us |
| N=65524 fwd ip | 526.82us (0.81×) | 427.43us |
| N=65537 fwd ip | 670.37us (0.38×) | 253.43us |
| N=131071 fwd ip | 1.26ms (0.72×) | 907.05us |

### rough f64

| cell | fastfft | rustfft |
|---|---|---|
| N=17 fwd ip | 146.4ns (0.21×) | 31.0ns |
| N=31 fwd ip | 147.2ns (0.62×) | 92.0ns |
| N=61 fwd ip | 287.8ns (0.73×) | 211.2ns |
| N=127 fwd ip | 582.9ns (0.81×) | 473.5ns |
| N=257 fwd ip | 1.63us (0.53×) | 858.9ns |
| N=509 fwd ip | 3.39us (0.94×) | 3.20us |
| N=1021 fwd ip | 9.57us (0.79×) | 7.59us |
| N=2018 fwd ip | 18.43us (0.58×) | 10.72us |
| N=2053 fwd ip | 17.54us (0.99×) | 17.33us |
| N=3063 fwd ip | 22.81us (1.10×) | 24.99us |
| N=4099 fwd ip | 36.98us (1.19×) | 43.98us |
| N=8191 fwd ip | 68.16us (1.04×) | 70.73us |
| N=9797 fwd ip | 109.57us (0.96×) | 105.35us |
| N=16381 fwd ip | 170.19us (0.84×) | 143.73us |
| N=65524 fwd ip | 1.05ms (0.60×) | 632.01us |
| N=65537 fwd ip | 1.07ms (0.45×) | 487.15us |
| N=131071 fwd ip | 2.09ms (1.26×) | 2.64ms |

## Suite `batch`

### batch f32

| cell | fastfft | rustfft |
|---|---|---|
| N=8 ×131072 fwd ip | 1.4ns (1.16×) | 1.6ns |
| N=16 ×65536 fwd ip | 3.3ns (1.02×) | 3.3ns |
| N=32 ×32768 fwd ip | 8.8ns (1.03×) | 9.0ns |
| N=64 ×16384 fwd ip | 17.1ns (1.17×) | 20.0ns |
| N=128 ×8192 fwd ip | 39.3ns (1.23×) | 48.4ns |
| N=256 ×4096 fwd ip | 89.5ns (1.18×) | 105.8ns |
| N=512 ×2048 fwd ip | 249.6ns (1.10×) | 273.5ns |
| N=1024 ×1024 fwd ip | 556.5ns (1.19×) | 662.3ns |

### batch f64

| cell | fastfft | rustfft |
|---|---|---|
| N=8 ×131072 fwd ip | 2.4ns (1.01×) | 2.4ns |
| N=16 ×65536 fwd ip | 5.5ns (1.10×) | 6.1ns |
| N=32 ×32768 fwd ip | 13.6ns (1.10×) | 15.0ns |
| N=64 ×16384 fwd ip | 35.6ns (1.15×) | 40.9ns |
| N=128 ×8192 fwd ip | 95.9ns (1.16×) | 111.2ns |
| N=256 ×4096 fwd ip | 274.8ns (1.37×) | 376.0ns |
| N=512 ×2048 fwd ip | 701.3ns (1.21×) | 849.8ns |
| N=1024 ×1024 fwd ip | 1.44us (1.10×) | 1.59us |

## Accuracy and planning time (medians over cells)

| lib | cells verified | failed | median error (ε) | worst error (ε) | median plan time |
|---|---|---|---|---|---|
| fastfft | 180 | 0 | 0.98 | 2.87 | 32.55us |
| rustfft | 180 | 0 | 1.17 | 5.84 | 8.55us |

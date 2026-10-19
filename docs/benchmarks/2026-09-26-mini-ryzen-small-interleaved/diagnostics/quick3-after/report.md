# fastfft arena report: `quick3-after`

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
| Build profile / RUSTFLAGS | arena / `` |
| Libraries | {"fearless_simd":"0.5.0","num-complex":"0.4.6","oxifft":"0.4.2","phastft":"0.4.1","pulp":"0.22.3","rustfft":"6.4.1","tfhe-fft":"0.10.1"} |
| FFTW | fftw-3.3.11-sse2-avx-avx2-avx2_128-avx512 `double: CFLAGS='-O3 -fPIC -std=gnu17' ./configure --enable-static --disable-shared --disable-fortran --disable-doc --enable-sse2 --enable-avx --enable-avx2 --enable-avx512 --enable-fma
single: CFLAGS='-O3 -fPIC -std=gnu17' ./configure --enable-static --disable-shared --disable-fortran --disable-doc --enable-sse2 --enable-avx --enable-avx2 --enable-avx512 --enable-fma --enable-float` |
| Git | 40d65034fed313a56e34b9c27e1aa088746067c6 (dirty: true) |
| Profile | quick |
| Official | true  |
| Control drift | max 0.98% over 9 control runs |
| Cells | 180 |

Times are per transform. *best* = minimum batch mean, *median* = median batch mean. Speedup = rustfft time ÷ library time (> 1 means faster than rustfft); *geomean* over the cells both libraries ran. mflops = 5·N·log2(N)/t(µs).

## Release gates (fastfft)

| Gate | Criterion | Status | Detail |
|---|---|---|---|
| G1 | pow2 vs rustfft: geomean ≥ 1.5×, no cell < 0.95× | ❌ fail | geomean best 1.070×, median 1.064×, worst cell 0.552× (pow2:f64:fwd:ip:n4194304), 48 cells |
| G2 | smooth vs rustfft: geomean ≥ 1.3×, no cell < 0.95× | ❌ fail | geomean best 1.036×, median 1.032×, worst cell 0.252× (smooth:f32:fwd:ip:n4725), 82 cells |
| G3 | rough vs rustfft: geomean ≥ 0.75×, no cell < 0.5× | ❌ fail | geomean best 0.788×, median 0.784×, worst cell 0.218× (rough:f32:fwd:ip:n17), 34 cells |
| G4 | vs each other Rust library: geomean ≥ 1.1×, ≥ 0.97× on ≥ 90% of cells | – n/a |  |
| G5 | AVX2 forced: pow2 ≥ 1.2×, smooth ≥ 1.1× vs rustfft | – n/a | pow2 NaN×/NaN×, smooth NaN×/NaN× |
| G6 | scenarios ≥ 1.3× each; batch geomean ≥ 1.5× | ❌ fail | scenarios min inf×, batch 1.143×/1.133× |
| G7 | accuracy within §6 thresholds and ≤ 1.5× rustfft + 1ε | ✅ pass | 172 cells checked |
| G8 | Estimate planning time ≤ 2× rustfft for every N ≤ 2^20 | ❌ fail | worst ratio 58.61× (rough:f64:fwd:ip:n31), 172 cells |

G9 (build time) is measured by `cargo xtask build-time`, not by the arena.

## Speedup vs rustfft (geomean of best-time ratios; median-time ratio in parentheses)

| suite | prec | fastfft | rustfft |
|---|---|---|---|
| pow2 | f32 | 1.09× (1.08×) 19/0/5 | 1.00× (1.00×) 0/24/0 |
| pow2 | f64 | 1.05× (1.04×) 17/2/5 | 1.00× (1.00×) 0/24/0 |
| smooth | f32 | 0.96× (0.96×) 26/0/15 | 1.00× (1.00×) 0/41/0 |
| smooth | f64 | 1.11× (1.11×) 30/0/11 | 1.00× (1.00×) 0/41/0 |
| rough | f32 | 0.82× (0.82×) 7/1/9 | 1.00× (1.00×) 0/17/0 |
| rough | f64 | 0.75× (0.75×) 4/2/11 | 1.00× (1.00×) 0/17/0 |
| batch | f32 | 1.12× (1.10×) 6/2/0 | 1.00× (1.00×) 0/8/0 |
| batch | f64 | 1.17× (1.17×) 7/1/0 | 1.00× (1.00×) 0/8/0 |

w/t/l = cells faster / within ±3% / slower than rustfft (best times).

## Suite `pow2`

### pow2 f32

| cell | fastfft | rustfft |
|---|---|---|
| N=2 fwd ip | 2.6ns (1.08×) | 2.8ns |
| N=4 fwd ip | 3.6ns (1.18×) | 4.2ns |
| N=8 fwd ip | 7.1ns (1.09×) | 7.8ns |
| N=16 fwd ip | 8.3ns (1.06×) | 8.7ns |
| N=32 fwd ip | 11.8ns (1.07×) | 12.6ns |
| N=64 fwd ip | 17.9ns (1.20×) | 21.5ns |
| N=128 fwd ip | 40.7ns (1.18×) | 48.1ns |
| N=256 fwd ip | 84.2ns (1.26×) | 106.5ns |
| N=512 fwd ip | 222.3ns (1.14×) | 254.3ns |
| N=1024 fwd ip | 502.7ns (1.20×) | 603.4ns |
| N=2048 fwd ip | 1.10us (1.28×) | 1.41us |
| N=4096 fwd ip | 2.89us (1.20×) | 3.47us |
| N=8192 fwd ip | 5.63us (1.24×) | 6.97us |
| N=16384 fwd ip | 11.25us (1.45×) | 16.36us |
| N=32768 fwd ip | 25.60us (1.48×) | 37.88us |
| N=65536 fwd ip | 68.01us (1.23×) | 83.47us |
| N=131072 fwd ip | 143.73us (1.27×) | 181.91us |
| N=262144 fwd ip | 311.47us (1.32×) | 410.02us |
| N=524288 fwd ip | 677.38us (1.31×) | 886.29us |
| N=1048576 fwd ip | 3.12ms (0.94×) | 2.92ms |
| N=2097152 fwd ip | 11.79ms (0.72×) | 8.45ms |
| N=4194304 fwd ip | 31.19ms (0.60×) | 18.84ms |
| N=8388608 fwd ip | 62.86ms (0.63×) | 39.89ms |
| N=16777216 fwd ip | 125.85ms (0.70×) | 88.52ms |

### pow2 f64

| cell | fastfft | rustfft |
|---|---|---|
| N=2 fwd ip | 2.6ns (1.00×) | 2.6ns |
| N=4 fwd ip | 3.6ns (1.06×) | 3.8ns |
| N=8 fwd ip | 6.6ns (1.07×) | 7.0ns |
| N=16 fwd ip | 9.3ns (1.10×) | 10.2ns |
| N=32 fwd ip | 14.7ns (1.20×) | 17.7ns |
| N=64 fwd ip | 32.5ns (1.23×) | 39.8ns |
| N=128 fwd ip | 68.9ns (1.25×) | 86.2ns |
| N=256 fwd ip | 148.3ns (1.31×) | 194.1ns |
| N=512 fwd ip | 424.6ns (1.15×) | 489.9ns |
| N=1024 fwd ip | 1.15us (1.07×) | 1.23us |
| N=2048 fwd ip | 2.69us (1.10×) | 2.97us |
| N=4096 fwd ip | 5.36us (1.26×) | 6.77us |
| N=8192 fwd ip | 10.89us (1.39×) | 15.09us |
| N=16384 fwd ip | 24.06us (1.40×) | 33.74us |
| N=32768 fwd ip | 51.17us (1.50×) | 76.90us |
| N=65536 fwd ip | 135.08us (1.25×) | 168.94us |
| N=131072 fwd ip | 290.67us (1.33×) | 385.38us |
| N=262144 fwd ip | 607.05us (1.44×) | 872.09us |
| N=524288 fwd ip | 2.83ms (1.01×) | 2.87ms |
| N=1048576 fwd ip | 12.20ms (0.66×) | 8.01ms |
| N=2097152 fwd ip | 28.68ms (0.62×) | 17.91ms |
| N=4194304 fwd ip | 71.43ms (0.55×) | 39.45ms |
| N=8388608 fwd ip | 140.36ms (0.61×) | 85.89ms |
| N=16777216 fwd ip | 282.34ms (0.67×) | 190.51ms |

## Suite `smooth`

### smooth f32

| cell | fastfft | rustfft |
|---|---|---|
| N=6 fwd ip | 7.4ns (1.28×) | 9.4ns |
| N=9 fwd ip | 11.7ns (1.14×) | 13.2ns |
| N=12 fwd ip | 9.8ns (1.12×) | 11.0ns |
| N=15 fwd ip | 14.1ns (1.84×) | 25.9ns |
| N=18 fwd ip | 56.0ns (0.42×) | 23.5ns |
| N=24 fwd ip | 23.1ns (0.63×) | 14.4ns |
| N=36 fwd ip | 47.2ns (0.42×) | 19.9ns |
| N=48 fwd ip | 23.6ns (0.72×) | 16.9ns |
| N=80 fwd ip | 72.2ns (0.53×) | 38.4ns |
| N=96 fwd ip | 83.4ns (0.60×) | 50.3ns |
| N=108 fwd ip | 125.8ns (0.50×) | 63.2ns |
| N=120 fwd ip | 106.6ns (0.58×) | 61.5ns |
| N=160 fwd ip | 153.8ns (0.53×) | 81.6ns |
| N=210 fwd ip | 578.4ns (0.44×) | 251.8ns |
| N=240 fwd ip | 170.6ns (0.73×) | 125.2ns |
| N=320 fwd ip | 142.0ns (1.20×) | 170.1ns |
| N=384 fwd ip | 168.1ns (1.18×) | 197.7ns |
| N=480 fwd ip | 248.9ns (1.36×) | 337.2ns |
| N=504 fwd ip | 313.4ns (0.91×) | 284.0ns |
| N=640 fwd ip | 285.9ns (1.32×) | 378.2ns |
| N=720 fwd ip | 870.4ns (0.61×) | 533.3ns |
| N=768 fwd ip | 349.2ns (1.22×) | 426.7ns |
| N=960 fwd ip | 446.6ns (1.43×) | 637.7ns |
| N=1000 fwd ip | 610.0ns (1.54×) | 942.3ns |
| N=1200 fwd ip | 659.2ns (1.28×) | 841.1ns |
| N=1536 fwd ip | 813.7ns (1.27×) | 1.03us |
| N=1920 fwd ip | 1.05us (1.36×) | 1.42us |
| N=1960 fwd ip | 1.26us (1.61×) | 2.04us |
| N=2400 fwd ip | 1.48us (1.56×) | 2.30us |
| N=3072 fwd ip | 1.75us (1.38×) | 2.42us |
| N=4725 fwd ip | 24.04us (0.25×) | 6.07us |
| N=4800 fwd ip | 2.84us (1.62×) | 4.61us |
| N=6144 fwd ip | 3.72us (1.38×) | 5.14us |
| N=10368 fwd ip | 6.53us (1.31×) | 8.52us |
| N=12288 fwd ip | 9.03us (1.31×) | 11.79us |
| N=27000 fwd ip | 20.38us (1.65×) | 33.54us |
| N=48000 fwd ip | 35.30us (1.71×) | 60.40us |
| N=75600 fwd ip | 67.88us (1.55×) | 105.12us |
| N=96000 fwd ip | 77.26us (1.72×) | 133.24us |
| N=165375 fwd ip | 1.20ms (0.26×) | 317.61us |
| N=1000000 fwd ip | 2.73ms (1.05×) | 2.86ms |

### smooth f64

| cell | fastfft | rustfft |
|---|---|---|
| N=6 fwd ip | 5.8ns (0.97×) | 5.6ns |
| N=9 fwd ip | 10.4ns (0.91×) | 9.4ns |
| N=12 fwd ip | 8.7ns (1.34×) | 11.6ns |
| N=15 fwd ip | 17.1ns (1.70×) | 29.0ns |
| N=18 fwd ip | 36.5ns (0.40×) | 14.5ns |
| N=24 fwd ip | 36.3ns (0.40×) | 14.7ns |
| N=36 fwd ip | 49.4ns (0.48×) | 23.7ns |
| N=48 fwd ip | 37.6ns (1.10×) | 41.3ns |
| N=80 fwd ip | 64.1ns (1.05×) | 67.3ns |
| N=96 fwd ip | 76.2ns (1.08×) | 82.3ns |
| N=108 fwd ip | 120.7ns (0.79×) | 94.8ns |
| N=120 fwd ip | 161.0ns (0.67×) | 107.9ns |
| N=160 fwd ip | 123.9ns (1.22×) | 151.2ns |
| N=210 fwd ip | 466.7ns (0.62×) | 288.3ns |
| N=240 fwd ip | 256.9ns (1.10×) | 283.0ns |
| N=320 fwd ip | 258.1ns (1.26×) | 324.4ns |
| N=384 fwd ip | 310.7ns (1.21×) | 377.0ns |
| N=480 fwd ip | 456.2ns (1.28×) | 583.2ns |
| N=504 fwd ip | 535.8ns (1.23×) | 661.0ns |
| N=640 fwd ip | 545.2ns (1.32×) | 719.1ns |
| N=720 fwd ip | 671.5ns (1.35×) | 903.6ns |
| N=768 fwd ip | 680.9ns (1.45×) | 989.1ns |
| N=960 fwd ip | 863.8ns (1.51×) | 1.31us |
| N=1000 fwd ip | 1.10us (1.50×) | 1.65us |
| N=1200 fwd ip | 1.23us (1.64×) | 2.01us |
| N=1536 fwd ip | 1.74us (1.28×) | 2.23us |
| N=1920 fwd ip | 2.18us (1.31×) | 2.85us |
| N=1960 fwd ip | 2.20us (1.67×) | 3.69us |
| N=2400 fwd ip | 3.21us (1.34×) | 4.29us |
| N=3072 fwd ip | 3.49us (1.33×) | 4.65us |
| N=4725 fwd ip | 20.57us (0.49×) | 10.13us |
| N=4800 fwd ip | 5.32us (1.65×) | 8.75us |
| N=6144 fwd ip | 7.42us (1.50×) | 11.13us |
| N=10368 fwd ip | 13.17us (1.52×) | 20.03us |
| N=12288 fwd ip | 17.07us (1.53×) | 26.12us |
| N=27000 fwd ip | 44.31us (1.49×) | 65.97us |
| N=48000 fwd ip | 69.17us (1.81×) | 124.91us |
| N=75600 fwd ip | 140.10us (1.44×) | 201.51us |
| N=96000 fwd ip | 144.50us (1.96×) | 283.39us |
| N=165375 fwd ip | 1.07ms (0.53×) | 569.96us |
| N=1000000 fwd ip | 10.90ms (0.74×) | 8.04ms |

## Suite `rough`

### rough f32

| cell | fastfft | rustfft |
|---|---|---|
| N=17 fwd ip | 125.6ns (0.22×) | 27.5ns |
| N=31 fwd ip | 87.7ns (1.08×) | 94.5ns |
| N=61 fwd ip | 165.5ns (0.78×) | 129.9ns |
| N=127 fwd ip | 352.4ns (1.41×) | 497.0ns |
| N=257 fwd ip | 880.2ns (0.52×) | 458.1ns |
| N=509 fwd ip | 1.77us (0.88×) | 1.56us |
| N=1021 fwd ip | 3.94us (1.32×) | 5.20us |
| N=2018 fwd ip | 10.47us (0.53×) | 5.54us |
| N=2053 fwd ip | 9.16us (1.23×) | 11.27us |
| N=3063 fwd ip | 13.56us (1.21×) | 16.40us |
| N=4099 fwd ip | 20.37us (1.18×) | 24.04us |
| N=8191 fwd ip | 40.65us (1.21×) | 49.26us |
| N=9797 fwd ip | 55.16us (0.95×) | 52.30us |
| N=16381 fwd ip | 100.64us (1.00×) | 100.62us |
| N=65524 fwd ip | 533.28us (0.80×) | 424.99us |
| N=65537 fwd ip | 681.37us (0.37×) | 251.74us |
| N=131071 fwd ip | 1.25ms (0.73×) | 908.02us |

### rough f64

| cell | fastfft | rustfft |
|---|---|---|
| N=17 fwd ip | 143.0ns (0.22×) | 31.9ns |
| N=31 fwd ip | 148.0ns (0.62×) | 92.5ns |
| N=61 fwd ip | 279.6ns (0.77×) | 215.7ns |
| N=127 fwd ip | 587.3ns (0.81×) | 474.9ns |
| N=257 fwd ip | 1.64us (0.53×) | 861.1ns |
| N=509 fwd ip | 3.14us (1.02×) | 3.22us |
| N=1021 fwd ip | 8.87us (0.86×) | 7.65us |
| N=2018 fwd ip | 19.25us (0.55×) | 10.62us |
| N=2053 fwd ip | 18.23us (0.95×) | 17.31us |
| N=3063 fwd ip | 22.92us (1.09×) | 25.02us |
| N=4099 fwd ip | 37.00us (1.19×) | 44.06us |
| N=8191 fwd ip | 68.31us (1.03×) | 70.61us |
| N=9797 fwd ip | 108.03us (0.97×) | 105.18us |
| N=16381 fwd ip | 170.38us (0.85×) | 144.15us |
| N=65524 fwd ip | 1.05ms (0.60×) | 631.84us |
| N=65537 fwd ip | 1.08ms (0.45×) | 486.32us |
| N=131071 fwd ip | 2.07ms (1.31×) | 2.71ms |

## Suite `batch`

### batch f32

| cell | fastfft | rustfft |
|---|---|---|
| N=8 ×131072 fwd ip | 1.4ns (1.17×) | 1.6ns |
| N=16 ×65536 fwd ip | 3.3ns (1.02×) | 3.3ns |
| N=32 ×32768 fwd ip | 8.8ns (1.02×) | 9.0ns |
| N=64 ×16384 fwd ip | 17.1ns (1.17×) | 20.0ns |
| N=128 ×8192 fwd ip | 41.5ns (1.17×) | 48.6ns |
| N=256 ×4096 fwd ip | 89.9ns (1.18×) | 105.9ns |
| N=512 ×2048 fwd ip | 246.6ns (1.10×) | 270.9ns |
| N=1024 ×1024 fwd ip | 559.1ns (1.16×) | 649.5ns |

### batch f64

| cell | fastfft | rustfft |
|---|---|---|
| N=8 ×131072 fwd ip | 2.4ns (1.01×) | 2.4ns |
| N=16 ×65536 fwd ip | 5.5ns (1.11×) | 6.2ns |
| N=32 ×32768 fwd ip | 13.6ns (1.10×) | 15.0ns |
| N=64 ×16384 fwd ip | 35.0ns (1.17×) | 40.8ns |
| N=128 ×8192 fwd ip | 89.9ns (1.22×) | 109.3ns |
| N=256 ×4096 fwd ip | 262.6ns (1.43×) | 376.6ns |
| N=512 ×2048 fwd ip | 689.5ns (1.23×) | 850.1ns |
| N=1024 ×1024 fwd ip | 1.43us (1.10×) | 1.57us |

## Accuracy and planning time (medians over cells)

| lib | cells verified | failed | median error (ε) | worst error (ε) | median plan time |
|---|---|---|---|---|---|
| fastfft | 180 | 0 | 0.98 | 2.87 | 33.49us |
| rustfft | 180 | 0 | 1.17 | 5.84 | 8.44us |

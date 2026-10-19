# fastfft arena report: `quick-after`

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
| Git | 40d65034fed313a56e34b9c27e1aa088746067c6 (dirty: true) |
| Profile | quick |
| Official | true  |
| Control drift | max 34.62% over 9 control runs — **FLAGGED** |
| Cells | 180 |

Times are per transform. *best* = minimum batch mean, *median* = median batch mean. Speedup = rustfft time ÷ library time (> 1 means faster than rustfft); *geomean* over the cells both libraries ran. mflops = 5·N·log2(N)/t(µs).

## Release gates (fastfft)

| Gate | Criterion | Status | Detail |
|---|---|---|---|
| G1 | pow2 vs rustfft: geomean ≥ 1.5×, no cell < 0.95× | ❌ fail | geomean best 1.057×, median 1.057×, worst cell 0.540× (pow2:f64:fwd:ip:n4194304), 48 cells |
| G2 | smooth vs rustfft: geomean ≥ 1.3×, no cell < 0.95× | ❌ fail | geomean best 1.033×, median 1.030×, worst cell 0.252× (smooth:f32:fwd:ip:n4725), 82 cells |
| G3 | rough vs rustfft: geomean ≥ 0.75×, no cell < 0.5× | ❌ fail | geomean best 0.786×, median 0.783×, worst cell 0.215× (rough:f64:fwd:ip:n17), 34 cells |
| G4 | vs each other Rust library: geomean ≥ 1.1×, ≥ 0.97× on ≥ 90% of cells | – n/a |  |
| G5 | AVX2 forced: pow2 ≥ 1.2×, smooth ≥ 1.1× vs rustfft | – n/a | pow2 NaN×/NaN×, smooth NaN×/NaN× |
| G6 | scenarios ≥ 1.3× each; batch geomean ≥ 1.5× | ❌ fail | scenarios min inf×, batch 1.136×/1.145× |
| G7 | accuracy within §6 thresholds and ≤ 1.5× rustfft + 1ε | ✅ pass | 172 cells checked |
| G8 | Estimate planning time ≤ 2× rustfft for every N ≤ 2^20 | ❌ fail | worst ratio 58.73× (rough:f64:fwd:ip:n31), 172 cells |

G9 (build time) is measured by `cargo xtask build-time`, not by the arena.

## Speedup vs rustfft (geomean of best-time ratios; median-time ratio in parentheses)

| suite | prec | fastfft | rustfft |
|---|---|---|---|
| pow2 | f32 | 1.08× (1.08×) 19/0/5 | 1.00× (1.00×) 0/24/0 |
| pow2 | f64 | 1.04× (1.04×) 14/4/6 | 1.00× (1.00×) 0/24/0 |
| smooth | f32 | 0.97× (0.96×) 26/0/15 | 1.00× (1.00×) 0/41/0 |
| smooth | f64 | 1.11× (1.10×) 29/1/11 | 1.00× (1.00×) 0/41/0 |
| rough | f32 | 0.84× (0.83×) 7/1/9 | 1.00× (1.00×) 0/17/0 |
| rough | f64 | 0.74× (0.74×) 4/1/12 | 1.00× (1.00×) 0/17/0 |
| batch | f32 | 1.13× (1.13×) 6/2/0 | 1.00× (1.00×) 0/8/0 |
| batch | f64 | 1.15× (1.16×) 7/1/0 | 1.00× (1.00×) 0/8/0 |

w/t/l = cells faster / within ±3% / slower than rustfft (best times).

## Suite `pow2`

### pow2 f32

| cell | fastfft | rustfft |
|---|---|---|
| N=2 fwd ip | 2.6ns (1.05×) | 2.8ns |
| N=4 fwd ip | 3.6ns (1.19×) | 4.2ns |
| N=8 fwd ip | 7.1ns (1.11×) | 7.8ns |
| N=16 fwd ip | 8.3ns (1.06×) | 8.8ns |
| N=32 fwd ip | 11.8ns (1.06×) | 12.6ns |
| N=64 fwd ip | 17.9ns (1.20×) | 21.5ns |
| N=128 fwd ip | 38.8ns (1.23×) | 47.7ns |
| N=256 fwd ip | 83.9ns (1.22×) | 102.4ns |
| N=512 fwd ip | 221.0ns (1.13×) | 249.3ns |
| N=1024 fwd ip | 501.4ns (1.24×) | 622.5ns |
| N=2048 fwd ip | 1.11us (1.27×) | 1.41us |
| N=4096 fwd ip | 2.89us (1.13×) | 3.27us |
| N=8192 fwd ip | 5.64us (1.24×) | 6.98us |
| N=16384 fwd ip | 11.23us (1.47×) | 16.49us |
| N=32768 fwd ip | 25.53us (1.48×) | 37.73us |
| N=65536 fwd ip | 67.70us (1.22×) | 82.37us |
| N=131072 fwd ip | 144.68us (1.27×) | 183.37us |
| N=262144 fwd ip | 312.43us (1.33×) | 415.44us |
| N=524288 fwd ip | 673.38us (1.32×) | 890.63us |
| N=1048576 fwd ip | 3.31ms (0.88×) | 2.90ms |
| N=2097152 fwd ip | 11.87ms (0.71×) | 8.37ms |
| N=4194304 fwd ip | 32.15ms (0.59×) | 18.98ms |
| N=8388608 fwd ip | 65.53ms (0.61×) | 40.28ms |
| N=16777216 fwd ip | 133.89ms (0.66×) | 88.60ms |

### pow2 f64

| cell | fastfft | rustfft |
|---|---|---|
| N=2 fwd ip | 2.6ns (0.93×) | 2.4ns |
| N=4 fwd ip | 3.6ns (1.03×) | 3.7ns |
| N=8 fwd ip | 6.6ns (1.00×) | 6.6ns |
| N=16 fwd ip | 9.3ns (1.10×) | 10.2ns |
| N=32 fwd ip | 14.4ns (1.21×) | 17.4ns |
| N=64 fwd ip | 32.7ns (1.22×) | 39.8ns |
| N=128 fwd ip | 67.9ns (1.25×) | 85.0ns |
| N=256 fwd ip | 147.7ns (1.31×) | 193.6ns |
| N=512 fwd ip | 431.9ns (1.16×) | 503.2ns |
| N=1024 fwd ip | 1.03us (1.21×) | 1.24us |
| N=2048 fwd ip | 2.85us (0.98×) | 2.79us |
| N=4096 fwd ip | 5.69us (1.14×) | 6.47us |
| N=8192 fwd ip | 11.02us (1.38×) | 15.19us |
| N=16384 fwd ip | 24.21us (1.39×) | 33.63us |
| N=32768 fwd ip | 51.48us (1.52×) | 78.34us |
| N=65536 fwd ip | 135.53us (1.25×) | 169.58us |
| N=131072 fwd ip | 290.84us (1.31×) | 380.53us |
| N=262144 fwd ip | 612.74us (1.39×) | 850.97us |
| N=524288 fwd ip | 2.89ms (0.99×) | 2.87ms |
| N=1048576 fwd ip | 12.20ms (0.65×) | 7.92ms |
| N=2097152 fwd ip | 28.89ms (0.63×) | 18.06ms |
| N=4194304 fwd ip | 71.85ms (0.55×) | 39.50ms |
| N=8388608 fwd ip | 143.31ms (0.60×) | 86.40ms |
| N=16777216 fwd ip | 290.10ms (0.65×) | 189.57ms |

## Suite `smooth`

### smooth f32

| cell | fastfft | rustfft |
|---|---|---|
| N=6 fwd ip | 7.4ns (1.28×) | 9.4ns |
| N=9 fwd ip | 11.6ns (1.14×) | 13.2ns |
| N=12 fwd ip | 9.8ns (1.12×) | 11.0ns |
| N=15 fwd ip | 14.2ns (1.84×) | 26.1ns |
| N=18 fwd ip | 54.6ns (0.43×) | 23.6ns |
| N=24 fwd ip | 22.3ns (0.64×) | 14.3ns |
| N=36 fwd ip | 46.7ns (0.43×) | 19.9ns |
| N=48 fwd ip | 23.6ns (0.72×) | 16.9ns |
| N=80 fwd ip | 73.0ns (0.57×) | 41.8ns |
| N=96 fwd ip | 84.4ns (0.57×) | 48.1ns |
| N=108 fwd ip | 125.0ns (0.49×) | 61.0ns |
| N=120 fwd ip | 105.8ns (0.58×) | 61.1ns |
| N=160 fwd ip | 152.3ns (0.52×) | 79.8ns |
| N=210 fwd ip | 572.8ns (0.44×) | 250.5ns |
| N=240 fwd ip | 166.6ns (0.71×) | 118.4ns |
| N=320 fwd ip | 141.2ns (1.19×) | 168.2ns |
| N=384 fwd ip | 167.1ns (1.20×) | 201.2ns |
| N=480 fwd ip | 249.5ns (1.36×) | 339.9ns |
| N=504 fwd ip | 312.4ns (0.89×) | 279.3ns |
| N=640 fwd ip | 284.0ns (1.27×) | 361.8ns |
| N=720 fwd ip | 866.3ns (0.62×) | 534.3ns |
| N=768 fwd ip | 345.0ns (1.24×) | 429.1ns |
| N=960 fwd ip | 445.1ns (1.42×) | 632.6ns |
| N=1000 fwd ip | 612.5ns (1.54×) | 944.3ns |
| N=1200 fwd ip | 669.6ns (1.26×) | 846.7ns |
| N=1536 fwd ip | 810.5ns (1.32×) | 1.07us |
| N=1920 fwd ip | 1.05us (1.35×) | 1.42us |
| N=1960 fwd ip | 1.25us (1.61×) | 2.01us |
| N=2400 fwd ip | 1.48us (1.56×) | 2.31us |
| N=3072 fwd ip | 1.74us (1.39×) | 2.41us |
| N=4725 fwd ip | 23.98us (0.25×) | 6.06us |
| N=4800 fwd ip | 2.85us (1.61×) | 4.58us |
| N=6144 fwd ip | 3.70us (1.39×) | 5.16us |
| N=10368 fwd ip | 6.56us (1.32×) | 8.66us |
| N=12288 fwd ip | 8.99us (1.36×) | 12.25us |
| N=27000 fwd ip | 20.39us (1.64×) | 33.38us |
| N=48000 fwd ip | 36.24us (1.68×) | 60.84us |
| N=75600 fwd ip | 66.57us (1.58×) | 105.13us |
| N=96000 fwd ip | 77.97us (1.71×) | 133.44us |
| N=165375 fwd ip | 1.20ms (0.26×) | 318.10us |
| N=1000000 fwd ip | 2.77ms (1.04×) | 2.89ms |

### smooth f64

| cell | fastfft | rustfft |
|---|---|---|
| N=6 fwd ip | 5.8ns (0.96×) | 5.6ns |
| N=9 fwd ip | 10.4ns (0.91×) | 9.5ns |
| N=12 fwd ip | 8.6ns (1.34×) | 11.6ns |
| N=15 fwd ip | 17.1ns (1.70×) | 29.0ns |
| N=18 fwd ip | 36.0ns (0.40×) | 14.4ns |
| N=24 fwd ip | 36.5ns (0.37×) | 13.6ns |
| N=36 fwd ip | 49.1ns (0.46×) | 22.6ns |
| N=48 fwd ip | 37.4ns (1.03×) | 38.5ns |
| N=80 fwd ip | 64.6ns (1.05×) | 67.8ns |
| N=96 fwd ip | 76.4ns (1.04×) | 79.8ns |
| N=108 fwd ip | 120.0ns (0.77×) | 92.3ns |
| N=120 fwd ip | 159.6ns (0.66×) | 105.3ns |
| N=160 fwd ip | 122.5ns (1.16×) | 141.8ns |
| N=210 fwd ip | 469.1ns (0.62×) | 289.2ns |
| N=240 fwd ip | 248.7ns (1.15×) | 286.6ns |
| N=320 fwd ip | 253.9ns (1.34×) | 340.1ns |
| N=384 fwd ip | 316.4ns (1.19×) | 375.8ns |
| N=480 fwd ip | 459.5ns (1.28×) | 586.7ns |
| N=504 fwd ip | 525.0ns (1.20×) | 628.0ns |
| N=640 fwd ip | 548.5ns (1.31×) | 716.4ns |
| N=720 fwd ip | 669.9ns (1.34×) | 900.8ns |
| N=768 fwd ip | 679.1ns (1.45×) | 986.2ns |
| N=960 fwd ip | 858.4ns (1.51×) | 1.29us |
| N=1000 fwd ip | 1.10us (1.49×) | 1.64us |
| N=1200 fwd ip | 1.23us (1.64×) | 2.01us |
| N=1536 fwd ip | 1.67us (1.34×) | 2.24us |
| N=1920 fwd ip | 2.26us (1.26×) | 2.85us |
| N=1960 fwd ip | 2.23us (1.64×) | 3.65us |
| N=2400 fwd ip | 3.01us (1.44×) | 4.33us |
| N=3072 fwd ip | 3.49us (1.33×) | 4.65us |
| N=4725 fwd ip | 20.78us (0.49×) | 10.18us |
| N=4800 fwd ip | 5.23us (1.67×) | 8.74us |
| N=6144 fwd ip | 7.54us (1.42×) | 10.69us |
| N=10368 fwd ip | 12.51us (1.60×) | 20.04us |
| N=12288 fwd ip | 17.30us (1.49×) | 25.72us |
| N=27000 fwd ip | 44.57us (1.49×) | 66.37us |
| N=48000 fwd ip | 68.88us (1.81×) | 124.61us |
| N=75600 fwd ip | 139.52us (1.45×) | 202.50us |
| N=96000 fwd ip | 144.53us (1.97×) | 285.40us |
| N=165375 fwd ip | 1.05ms (0.53×) | 560.49us |
| N=1000000 fwd ip | 11.05ms (0.71×) | 7.84ms |

## Suite `rough`

### rough f32

| cell | fastfft | rustfft |
|---|---|---|
| N=17 fwd ip | 124.5ns (0.22×) | 27.1ns |
| N=31 fwd ip | 87.8ns (1.06×) | 93.1ns |
| N=61 fwd ip | 165.4ns (0.78×) | 128.9ns |
| N=127 fwd ip | 345.3ns (1.40×) | 483.5ns |
| N=257 fwd ip | 877.8ns (0.52×) | 460.7ns |
| N=509 fwd ip | 1.76us (0.86×) | 1.52us |
| N=1021 fwd ip | 3.98us (1.32×) | 5.25us |
| N=2018 fwd ip | 7.92us (0.70×) | 5.58us |
| N=2053 fwd ip | 9.10us (1.24×) | 11.24us |
| N=3063 fwd ip | 13.41us (1.23×) | 16.44us |
| N=4099 fwd ip | 20.73us (1.16×) | 24.11us |
| N=8191 fwd ip | 40.79us (1.21×) | 49.34us |
| N=9797 fwd ip | 55.24us (0.95×) | 52.49us |
| N=16381 fwd ip | 102.18us (0.99×) | 101.33us |
| N=65524 fwd ip | 530.71us (0.80×) | 427.10us |
| N=65537 fwd ip | 666.44us (0.38×) | 252.91us |
| N=131071 fwd ip | 1.25ms (0.72×) | 902.74us |

### rough f64

| cell | fastfft | rustfft |
|---|---|---|
| N=17 fwd ip | 143.7ns (0.22×) | 30.9ns |
| N=31 fwd ip | 148.7ns (0.62×) | 91.6ns |
| N=61 fwd ip | 289.5ns (0.73×) | 211.4ns |
| N=127 fwd ip | 585.8ns (0.81×) | 475.0ns |
| N=257 fwd ip | 1.68us (0.51×) | 859.1ns |
| N=509 fwd ip | 3.41us (0.93×) | 3.19us |
| N=1021 fwd ip | 9.83us (0.78×) | 7.63us |
| N=2018 fwd ip | 18.58us (0.58×) | 10.75us |
| N=2053 fwd ip | 17.02us (1.01×) | 17.22us |
| N=3063 fwd ip | 23.17us (1.07×) | 24.89us |
| N=4099 fwd ip | 39.62us (1.11×) | 43.97us |
| N=8191 fwd ip | 67.65us (1.04×) | 70.13us |
| N=9797 fwd ip | 109.34us (0.96×) | 105.33us |
| N=16381 fwd ip | 168.65us (0.86×) | 144.94us |
| N=65524 fwd ip | 1.05ms (0.60×) | 635.57us |
| N=65537 fwd ip | 1.08ms (0.45×) | 487.93us |
| N=131071 fwd ip | 2.08ms (1.24×) | 2.57ms |

## Suite `batch`

### batch f32

| cell | fastfft | rustfft |
|---|---|---|
| N=8 ×131072 fwd ip | 1.4ns (1.16×) | 1.6ns |
| N=16 ×65536 fwd ip | 3.3ns (1.02×) | 3.3ns |
| N=32 ×32768 fwd ip | 8.8ns (1.03×) | 9.0ns |
| N=64 ×16384 fwd ip | 17.1ns (1.16×) | 19.9ns |
| N=128 ×8192 fwd ip | 39.4ns (1.24×) | 48.7ns |
| N=256 ×4096 fwd ip | 88.9ns (1.19×) | 105.9ns |
| N=512 ×2048 fwd ip | 256.6ns (1.07×) | 274.7ns |
| N=1024 ×1024 fwd ip | 568.5ns (1.15×) | 655.9ns |

### batch f64

| cell | fastfft | rustfft |
|---|---|---|
| N=8 ×131072 fwd ip | 2.4ns (1.01×) | 2.4ns |
| N=16 ×65536 fwd ip | 5.5ns (1.10×) | 6.1ns |
| N=32 ×32768 fwd ip | 14.0ns (1.08×) | 15.1ns |
| N=64 ×16384 fwd ip | 35.8ns (1.15×) | 41.0ns |
| N=128 ×8192 fwd ip | 95.8ns (1.15×) | 110.6ns |
| N=256 ×4096 fwd ip | 286.5ns (1.32×) | 378.3ns |
| N=512 ×2048 fwd ip | 692.5ns (1.31×) | 908.2ns |
| N=1024 ×1024 fwd ip | 1.50us (1.08×) | 1.63us |

## Accuracy and planning time (medians over cells)

| lib | cells verified | failed | median error (ε) | worst error (ε) | median plan time |
|---|---|---|---|---|---|
| fastfft | 180 | 0 | 0.98 | 2.87 | 32.15us |
| rustfft | 180 | 0 | 1.17 | 5.84 | 8.48us |

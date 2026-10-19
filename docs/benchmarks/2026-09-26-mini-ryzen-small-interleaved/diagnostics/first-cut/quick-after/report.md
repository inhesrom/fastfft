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
| Build profile / RUSTFLAGS | arena / `` |
| Libraries | {"fearless_simd":"0.5.0","num-complex":"0.4.6","oxifft":"0.4.2","phastft":"0.4.1","pulp":"0.22.3","rustfft":"6.4.1","tfhe-fft":"0.10.1"} |
| FFTW | fftw-3.3.11-sse2-avx-avx2-avx2_128-avx512 `double: CFLAGS='-O3 -fPIC -std=gnu17' ./configure --enable-static --disable-shared --disable-fortran --disable-doc --enable-sse2 --enable-avx --enable-avx2 --enable-avx512 --enable-fma
single: CFLAGS='-O3 -fPIC -std=gnu17' ./configure --enable-static --disable-shared --disable-fortran --disable-doc --enable-sse2 --enable-avx --enable-avx2 --enable-avx512 --enable-fma --enable-float` |
| Git | 40d65034fed313a56e34b9c27e1aa088746067c6 (dirty: true) |
| Profile | quick |
| Official | true  |
| Control drift | max 1.14% over 9 control runs |
| Cells | 180 |

Times are per transform. *best* = minimum batch mean, *median* = median batch mean. Speedup = rustfft time ÷ library time (> 1 means faster than rustfft); *geomean* over the cells both libraries ran. mflops = 5·N·log2(N)/t(µs).

## Release gates (fastfft)

| Gate | Criterion | Status | Detail |
|---|---|---|---|
| G1 | pow2 vs rustfft: geomean ≥ 1.5×, no cell < 0.95× | ❌ fail | geomean best 1.046×, median 1.041×, worst cell 0.552× (pow2:f64:fwd:ip:n4194304), 48 cells |
| G2 | smooth vs rustfft: geomean ≥ 1.3×, no cell < 0.95× | ❌ fail | geomean best 1.034×, median 1.031×, worst cell 0.252× (smooth:f32:fwd:ip:n4725), 82 cells |
| G3 | rough vs rustfft: geomean ≥ 0.75×, no cell < 0.5× | ❌ fail | geomean best 0.782×, median 0.779×, worst cell 0.214× (rough:f32:fwd:ip:n17), 34 cells |
| G4 | vs each other Rust library: geomean ≥ 1.1×, ≥ 0.97× on ≥ 90% of cells | – n/a |  |
| G5 | AVX2 forced: pow2 ≥ 1.2×, smooth ≥ 1.1× vs rustfft | – n/a | pow2 NaN×/NaN×, smooth NaN×/NaN× |
| G6 | scenarios ≥ 1.3× each; batch geomean ≥ 1.5× | ❌ fail | scenarios min inf×, batch 1.096×/1.086× |
| G7 | accuracy within §6 thresholds and ≤ 1.5× rustfft + 1ε | ✅ pass | 172 cells checked |
| G8 | Estimate planning time ≤ 2× rustfft for every N ≤ 2^20 | ❌ fail | worst ratio 56.85× (rough:f64:fwd:ip:n31), 172 cells |

G9 (build time) is measured by `cargo xtask build-time`, not by the arena.

## Speedup vs rustfft (geomean of best-time ratios; median-time ratio in parentheses)

| suite | prec | fastfft | rustfft |
|---|---|---|---|
| pow2 | f32 | 1.06× (1.06×) 17/2/5 | 1.00× (1.00×) 0/24/0 |
| pow2 | f64 | 1.03× (1.02×) 16/3/5 | 1.00× (1.00×) 0/24/0 |
| smooth | f32 | 0.97× (0.96×) 25/1/15 | 1.00× (1.00×) 0/41/0 |
| smooth | f64 | 1.11× (1.10×) 29/0/12 | 1.00× (1.00×) 0/41/0 |
| rough | f32 | 0.83× (0.83×) 7/1/9 | 1.00× (1.00×) 0/17/0 |
| rough | f64 | 0.73× (0.73×) 3/3/11 | 1.00× (1.00×) 0/17/0 |
| batch | f32 | 1.08× (1.07×) 7/1/0 | 1.00× (1.00×) 0/8/0 |
| batch | f64 | 1.12× (1.10×) 6/2/0 | 1.00× (1.00×) 0/8/0 |

w/t/l = cells faster / within ±3% / slower than rustfft (best times).

## Suite `pow2`

### pow2 f32

| cell | fastfft | rustfft |
|---|---|---|
| N=2 fwd ip | 2.6ns (1.08×) | 2.8ns |
| N=4 fwd ip | 3.6ns (1.18×) | 4.2ns |
| N=8 fwd ip | 7.3ns (1.06×) | 7.8ns |
| N=16 fwd ip | 8.7ns (1.01×) | 8.7ns |
| N=32 fwd ip | 12.4ns (1.01×) | 12.6ns |
| N=64 fwd ip | 18.8ns (1.14×) | 21.5ns |
| N=128 fwd ip | 43.5ns (1.10×) | 47.8ns |
| N=256 fwd ip | 95.6ns (1.10×) | 105.0ns |
| N=512 fwd ip | 222.1ns (1.16×) | 257.3ns |
| N=1024 fwd ip | 502.2ns (1.22×) | 610.9ns |
| N=2048 fwd ip | 1.10us (1.27×) | 1.40us |
| N=4096 fwd ip | 2.86us (1.21×) | 3.47us |
| N=8192 fwd ip | 5.65us (1.23×) | 6.97us |
| N=16384 fwd ip | 11.23us (1.46×) | 16.43us |
| N=32768 fwd ip | 25.53us (1.47×) | 37.64us |
| N=65536 fwd ip | 68.26us (1.20×) | 82.11us |
| N=131072 fwd ip | 146.14us (1.25×) | 182.10us |
| N=262144 fwd ip | 312.14us (1.31×) | 409.31us |
| N=524288 fwd ip | 681.40us (1.30×) | 883.11us |
| N=1048576 fwd ip | 3.13ms (0.93×) | 2.92ms |
| N=2097152 fwd ip | 11.78ms (0.71×) | 8.31ms |
| N=4194304 fwd ip | 32.02ms (0.59×) | 18.99ms |
| N=8388608 fwd ip | 65.46ms (0.61×) | 40.17ms |
| N=16777216 fwd ip | 133.07ms (0.66×) | 88.33ms |

### pow2 f64

| cell | fastfft | rustfft |
|---|---|---|
| N=2 fwd ip | 2.6ns (1.01×) | 2.6ns |
| N=4 fwd ip | 3.7ns (1.04×) | 3.8ns |
| N=8 fwd ip | 6.8ns (1.03×) | 7.0ns |
| N=16 fwd ip | 9.3ns (1.09×) | 10.2ns |
| N=32 fwd ip | 15.3ns (1.17×) | 17.8ns |
| N=64 fwd ip | 39.4ns (0.97×) | 38.3ns |
| N=128 fwd ip | 79.0ns (1.08×) | 85.6ns |
| N=256 fwd ip | 171.2ns (1.15×) | 196.9ns |
| N=512 fwd ip | 422.5ns (1.16×) | 491.6ns |
| N=1024 fwd ip | 1.04us (1.19×) | 1.24us |
| N=2048 fwd ip | 2.75us (1.07×) | 2.95us |
| N=4096 fwd ip | 5.37us (1.27×) | 6.83us |
| N=8192 fwd ip | 10.89us (1.38×) | 15.05us |
| N=16384 fwd ip | 24.17us (1.39×) | 33.58us |
| N=32768 fwd ip | 51.40us (1.55×) | 79.46us |
| N=65536 fwd ip | 134.16us (1.27×) | 169.79us |
| N=131072 fwd ip | 290.01us (1.31×) | 379.25us |
| N=262144 fwd ip | 614.03us (1.39×) | 853.95us |
| N=524288 fwd ip | 2.84ms (1.00×) | 2.84ms |
| N=1048576 fwd ip | 12.17ms (0.66×) | 8.08ms |
| N=2097152 fwd ip | 28.57ms (0.62×) | 17.77ms |
| N=4194304 fwd ip | 71.36ms (0.55×) | 39.55ms |
| N=8388608 fwd ip | 144.23ms (0.60×) | 86.23ms |
| N=16777216 fwd ip | 287.56ms (0.66×) | 190.38ms |

## Suite `smooth`

### smooth f32

| cell | fastfft | rustfft |
|---|---|---|
| N=6 fwd ip | 7.4ns (1.28×) | 9.4ns |
| N=9 fwd ip | 11.6ns (1.14×) | 13.2ns |
| N=12 fwd ip | 9.8ns (1.13×) | 11.0ns |
| N=15 fwd ip | 14.1ns (1.83×) | 25.8ns |
| N=18 fwd ip | 56.7ns (0.42×) | 23.6ns |
| N=24 fwd ip | 22.8ns (0.63×) | 14.4ns |
| N=36 fwd ip | 47.5ns (0.42×) | 19.8ns |
| N=48 fwd ip | 23.6ns (0.72×) | 17.0ns |
| N=80 fwd ip | 73.8ns (0.57×) | 42.4ns |
| N=96 fwd ip | 84.6ns (0.59×) | 50.3ns |
| N=108 fwd ip | 125.4ns (0.50×) | 62.4ns |
| N=120 fwd ip | 104.7ns (0.59×) | 62.1ns |
| N=160 fwd ip | 154.5ns (0.53×) | 81.4ns |
| N=210 fwd ip | 577.6ns (0.44×) | 251.5ns |
| N=240 fwd ip | 168.3ns (0.71×) | 119.4ns |
| N=320 fwd ip | 142.4ns (1.17×) | 167.1ns |
| N=384 fwd ip | 167.8ns (1.23×) | 207.1ns |
| N=480 fwd ip | 250.3ns (1.36×) | 339.8ns |
| N=504 fwd ip | 314.5ns (0.89×) | 281.3ns |
| N=640 fwd ip | 285.0ns (1.32×) | 374.9ns |
| N=720 fwd ip | 873.2ns (0.61×) | 531.2ns |
| N=768 fwd ip | 349.5ns (1.24×) | 431.9ns |
| N=960 fwd ip | 447.8ns (1.41×) | 632.1ns |
| N=1000 fwd ip | 606.6ns (1.56×) | 946.2ns |
| N=1200 fwd ip | 662.6ns (1.30×) | 859.3ns |
| N=1536 fwd ip | 816.3ns (1.32×) | 1.08us |
| N=1920 fwd ip | 1.06us (1.30×) | 1.38us |
| N=1960 fwd ip | 1.25us (1.61×) | 2.02us |
| N=2400 fwd ip | 1.48us (1.56×) | 2.31us |
| N=3072 fwd ip | 1.74us (1.39×) | 2.42us |
| N=4725 fwd ip | 24.10us (0.25×) | 6.08us |
| N=4800 fwd ip | 2.85us (1.61×) | 4.59us |
| N=6144 fwd ip | 3.71us (1.37×) | 5.07us |
| N=10368 fwd ip | 6.54us (1.36×) | 8.87us |
| N=12288 fwd ip | 8.99us (1.35×) | 12.18us |
| N=27000 fwd ip | 20.62us (1.62×) | 33.37us |
| N=48000 fwd ip | 35.16us (1.73×) | 60.83us |
| N=75600 fwd ip | 67.73us (1.56×) | 105.46us |
| N=96000 fwd ip | 75.27us (1.76×) | 132.85us |
| N=165375 fwd ip | 1.19ms (0.26×) | 313.89us |
| N=1000000 fwd ip | 2.86ms (1.00×) | 2.87ms |

### smooth f64

| cell | fastfft | rustfft |
|---|---|---|
| N=6 fwd ip | 5.8ns (0.96×) | 5.6ns |
| N=9 fwd ip | 10.4ns (0.91×) | 9.5ns |
| N=12 fwd ip | 8.6ns (1.35×) | 11.6ns |
| N=15 fwd ip | 17.1ns (1.70×) | 29.2ns |
| N=18 fwd ip | 35.8ns (0.40×) | 14.5ns |
| N=24 fwd ip | 35.0ns (0.39×) | 13.8ns |
| N=36 fwd ip | 54.4ns (0.44×) | 23.7ns |
| N=48 fwd ip | 37.9ns (1.09×) | 41.2ns |
| N=80 fwd ip | 64.2ns (1.06×) | 67.8ns |
| N=96 fwd ip | 76.5ns (1.07×) | 81.9ns |
| N=108 fwd ip | 119.3ns (0.80×) | 94.9ns |
| N=120 fwd ip | 169.0ns (0.64×) | 107.4ns |
| N=160 fwd ip | 122.7ns (1.19×) | 145.6ns |
| N=210 fwd ip | 466.5ns (0.61×) | 286.2ns |
| N=240 fwd ip | 314.6ns (0.90×) | 282.9ns |
| N=320 fwd ip | 256.7ns (1.25×) | 320.5ns |
| N=384 fwd ip | 312.2ns (1.19×) | 371.8ns |
| N=480 fwd ip | 451.7ns (1.31×) | 590.6ns |
| N=504 fwd ip | 541.1ns (1.23×) | 667.9ns |
| N=640 fwd ip | 543.0ns (1.30×) | 703.7ns |
| N=720 fwd ip | 665.1ns (1.37×) | 912.7ns |
| N=768 fwd ip | 681.6ns (1.44×) | 982.3ns |
| N=960 fwd ip | 869.1ns (1.51×) | 1.31us |
| N=1000 fwd ip | 1.10us (1.49×) | 1.63us |
| N=1200 fwd ip | 1.23us (1.69×) | 2.07us |
| N=1536 fwd ip | 1.67us (1.34×) | 2.24us |
| N=1920 fwd ip | 2.13us (1.34×) | 2.86us |
| N=1960 fwd ip | 2.21us (1.67×) | 3.68us |
| N=2400 fwd ip | 2.89us (1.48×) | 4.28us |
| N=3072 fwd ip | 3.52us (1.32×) | 4.64us |
| N=4725 fwd ip | 20.47us (0.49×) | 10.10us |
| N=4800 fwd ip | 5.32us (1.65×) | 8.76us |
| N=6144 fwd ip | 7.44us (1.44×) | 10.73us |
| N=10368 fwd ip | 12.36us (1.61×) | 19.94us |
| N=12288 fwd ip | 17.16us (1.51×) | 25.85us |
| N=27000 fwd ip | 44.26us (1.49×) | 66.11us |
| N=48000 fwd ip | 68.73us (1.82×) | 124.96us |
| N=75600 fwd ip | 139.58us (1.45×) | 202.37us |
| N=96000 fwd ip | 149.45us (1.90×) | 283.78us |
| N=165375 fwd ip | 1.06ms (0.53×) | 559.67us |
| N=1000000 fwd ip | 10.98ms (0.73×) | 8.05ms |

## Suite `rough`

### rough f32

| cell | fastfft | rustfft |
|---|---|---|
| N=17 fwd ip | 126.1ns (0.21×) | 27.0ns |
| N=31 fwd ip | 90.1ns (1.05×) | 94.5ns |
| N=61 fwd ip | 170.9ns (0.75×) | 128.6ns |
| N=127 fwd ip | 353.5ns (1.30×) | 461.2ns |
| N=257 fwd ip | 872.6ns (0.52×) | 457.6ns |
| N=509 fwd ip | 1.77us (0.88×) | 1.55us |
| N=1021 fwd ip | 3.80us (1.37×) | 5.21us |
| N=2018 fwd ip | 8.00us (0.70×) | 5.62us |
| N=2053 fwd ip | 9.03us (1.25×) | 11.27us |
| N=3063 fwd ip | 13.52us (1.22×) | 16.45us |
| N=4099 fwd ip | 20.61us (1.17×) | 24.20us |
| N=8191 fwd ip | 41.10us (1.20×) | 49.46us |
| N=9797 fwd ip | 55.18us (0.95×) | 52.44us |
| N=16381 fwd ip | 103.11us (0.98×) | 101.09us |
| N=65524 fwd ip | 536.19us (0.80×) | 427.13us |
| N=65537 fwd ip | 673.32us (0.38×) | 253.62us |
| N=131071 fwd ip | 1.25ms (0.79×) | 985.65us |

### rough f64

| cell | fastfft | rustfft |
|---|---|---|
| N=17 fwd ip | 144.7ns (0.22×) | 31.8ns |
| N=31 fwd ip | 165.2ns (0.56×) | 92.3ns |
| N=61 fwd ip | 299.6ns (0.72×) | 215.8ns |
| N=127 fwd ip | 615.0ns (0.77×) | 472.7ns |
| N=257 fwd ip | 1.64us (0.53×) | 861.1ns |
| N=509 fwd ip | 3.18us (1.01×) | 3.23us |
| N=1021 fwd ip | 9.00us (0.85×) | 7.63us |
| N=2018 fwd ip | 20.29us (0.53×) | 10.68us |
| N=2053 fwd ip | 17.41us (0.99×) | 17.28us |
| N=3063 fwd ip | 23.70us (1.05×) | 24.94us |
| N=4099 fwd ip | 36.81us (1.20×) | 44.11us |
| N=8191 fwd ip | 68.41us (1.03×) | 70.42us |
| N=9797 fwd ip | 108.45us (0.88×) | 95.56us |
| N=16381 fwd ip | 170.76us (0.84×) | 144.01us |
| N=65524 fwd ip | 1.06ms (0.60×) | 636.66us |
| N=65537 fwd ip | 1.08ms (0.45×) | 485.47us |
| N=131071 fwd ip | 2.07ms (1.22×) | 2.52ms |

## Suite `batch`

### batch f32

| cell | fastfft | rustfft |
|---|---|---|
| N=8 ×131072 fwd ip | 1.4ns (1.12×) | 1.6ns |
| N=16 ×65536 fwd ip | 3.2ns (1.03×) | 3.3ns |
| N=32 ×32768 fwd ip | 8.9ns (1.01×) | 9.0ns |
| N=64 ×16384 fwd ip | 18.5ns (1.08×) | 19.9ns |
| N=128 ×8192 fwd ip | 44.6ns (1.08×) | 48.2ns |
| N=256 ×4096 fwd ip | 99.4ns (1.06×) | 105.8ns |
| N=512 ×2048 fwd ip | 250.6ns (1.07×) | 268.0ns |
| N=1024 ×1024 fwd ip | 556.3ns (1.16×) | 648.0ns |

### batch f64

| cell | fastfft | rustfft |
|---|---|---|
| N=8 ×131072 fwd ip | 2.4ns (1.02×) | 2.4ns |
| N=16 ×65536 fwd ip | 5.6ns (1.08×) | 6.1ns |
| N=32 ×32768 fwd ip | 14.9ns (1.01×) | 15.1ns |
| N=64 ×16384 fwd ip | 38.6ns (1.07×) | 41.1ns |
| N=128 ×8192 fwd ip | 91.7ns (1.19×) | 109.4ns |
| N=256 ×4096 fwd ip | 296.8ns (1.21×) | 359.6ns |
| N=512 ×2048 fwd ip | 679.6ns (1.24×) | 841.0ns |
| N=1024 ×1024 fwd ip | 1.42us (1.12×) | 1.59us |

## Accuracy and planning time (medians over cells)

| lib | cells verified | failed | median error (ε) | worst error (ε) | median plan time |
|---|---|---|---|---|---|
| fastfft | 180 | 0 | 0.98 | 2.87 | 32.66us |
| rustfft | 180 | 0 | 1.17 | 5.84 | 8.46us |

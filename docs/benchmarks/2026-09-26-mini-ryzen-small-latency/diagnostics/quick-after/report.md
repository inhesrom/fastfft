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
| Control drift | max 1.98% over 9 control runs |
| Cells | 180 |

Times are per transform. *best* = minimum batch mean, *median* = median batch mean. Speedup = rustfft time ÷ library time (> 1 means faster than rustfft); *geomean* over the cells both libraries ran. mflops = 5·N·log2(N)/t(µs).

## Release gates (fastfft)

| Gate | Criterion | Status | Detail |
|---|---|---|---|
| G1 | pow2 vs rustfft: geomean ≥ 1.5×, no cell < 0.95× | ❌ fail | geomean best 1.015×, median 1.013×, worst cell 0.551× (pow2:f64:fwd:ip:n4194304), 48 cells |
| G2 | smooth vs rustfft: geomean ≥ 1.3×, no cell < 0.95× | ❌ fail | geomean best 1.035×, median 1.032×, worst cell 0.252× (smooth:f32:fwd:ip:n4725), 82 cells |
| G3 | rough vs rustfft: geomean ≥ 0.75×, no cell < 0.5× | ❌ fail | geomean best 0.773×, median 0.769×, worst cell 0.216× (rough:f64:fwd:ip:n17), 34 cells |
| G4 | vs each other Rust library: geomean ≥ 1.1×, ≥ 0.97× on ≥ 90% of cells | – n/a |  |
| G5 | AVX2 forced: pow2 ≥ 1.2×, smooth ≥ 1.1× vs rustfft | – n/a | pow2 NaN×/NaN×, smooth NaN×/NaN× |
| G6 | scenarios ≥ 1.3× each; batch geomean ≥ 1.5× | ❌ fail | scenarios min inf×, batch 0.900×/0.903× |
| G7 | accuracy within §6 thresholds and ≤ 1.5× rustfft + 1ε | ✅ pass | 172 cells checked |
| G8 | Estimate planning time ≤ 2× rustfft for every N ≤ 2^20 | ❌ fail | worst ratio 57.49× (rough:f64:fwd:ip:n31), 172 cells |

G9 (build time) is measured by `cargo xtask build-time`, not by the arena.

## Speedup vs rustfft (geomean of best-time ratios; median-time ratio in parentheses)

| suite | prec | fastfft | rustfft |
|---|---|---|---|
| pow2 | f32 | 1.02× (1.01×) 13/2/9 | 1.00× (1.00×) 0/24/0 |
| pow2 | f64 | 1.01× (1.01×) 14/2/8 | 1.00× (1.00×) 0/24/0 |
| smooth | f32 | 0.96× (0.96×) 26/0/15 | 1.00× (1.00×) 0/41/0 |
| smooth | f64 | 1.11× (1.11×) 30/1/10 | 1.00× (1.00×) 0/41/0 |
| rough | f32 | 0.81× (0.80×) 6/1/10 | 1.00× (1.00×) 0/17/0 |
| rough | f64 | 0.74× (0.74×) 4/1/12 | 1.00× (1.00×) 0/17/0 |
| batch | f32 | 0.80× (0.80×) 3/1/4 | 1.00× (1.00×) 0/8/0 |
| batch | f64 | 1.01× (1.02×) 5/0/3 | 1.00× (1.00×) 0/8/0 |

w/t/l = cells faster / within ±3% / slower than rustfft (best times).

## Suite `pow2`

### pow2 f32

| cell | fastfft | rustfft |
|---|---|---|
| N=2 fwd ip | 2.8ns (1.00×) | 2.8ns |
| N=4 fwd ip | 4.4ns (0.96×) | 4.2ns |
| N=8 fwd ip | 7.4ns (1.05×) | 7.8ns |
| N=16 fwd ip | 9.9ns (0.88×) | 8.7ns |
| N=32 fwd ip | 17.5ns (0.72×) | 12.6ns |
| N=64 fwd ip | 22.2ns (0.97×) | 21.6ns |
| N=128 fwd ip | 49.1ns (1.00×) | 49.1ns |
| N=256 fwd ip | 96.7ns (1.07×) | 103.5ns |
| N=512 fwd ip | 224.7ns (1.12×) | 251.3ns |
| N=1024 fwd ip | 502.9ns (1.21×) | 610.0ns |
| N=2048 fwd ip | 1.11us (1.27×) | 1.40us |
| N=4096 fwd ip | 2.87us (1.16×) | 3.32us |
| N=8192 fwd ip | 5.64us (1.23×) | 6.91us |
| N=16384 fwd ip | 11.21us (1.46×) | 16.34us |
| N=32768 fwd ip | 25.73us (1.48×) | 37.97us |
| N=65536 fwd ip | 68.05us (1.21×) | 82.68us |
| N=131072 fwd ip | 144.84us (1.25×) | 180.89us |
| N=262144 fwd ip | 312.01us (1.33×) | 415.25us |
| N=524288 fwd ip | 674.57us (1.32×) | 888.30us |
| N=1048576 fwd ip | 3.07ms (0.95×) | 2.91ms |
| N=2097152 fwd ip | 11.64ms (0.72×) | 8.40ms |
| N=4194304 fwd ip | 32.07ms (0.59×) | 18.98ms |
| N=8388608 fwd ip | 65.77ms (0.62×) | 40.71ms |
| N=16777216 fwd ip | 133.13ms (0.67×) | 88.92ms |

### pow2 f64

| cell | fastfft | rustfft |
|---|---|---|
| N=2 fwd ip | 2.6ns (0.93×) | 2.4ns |
| N=4 fwd ip | 3.6ns (1.06×) | 3.8ns |
| N=8 fwd ip | 6.4ns (1.10×) | 7.0ns |
| N=16 fwd ip | 11.8ns (0.86×) | 10.2ns |
| N=32 fwd ip | 18.6ns (0.97×) | 17.9ns |
| N=64 fwd ip | 39.6ns (0.99×) | 39.3ns |
| N=128 fwd ip | 79.7ns (1.07×) | 85.5ns |
| N=256 fwd ip | 170.8ns (1.15×) | 196.7ns |
| N=512 fwd ip | 426.5ns (1.16×) | 493.3ns |
| N=1024 fwd ip | 1.04us (1.19×) | 1.23us |
| N=2048 fwd ip | 2.66us (1.12×) | 2.99us |
| N=4096 fwd ip | 5.45us (1.24×) | 6.77us |
| N=8192 fwd ip | 10.99us (1.36×) | 14.97us |
| N=16384 fwd ip | 24.43us (1.36×) | 33.14us |
| N=32768 fwd ip | 51.51us (1.48×) | 76.13us |
| N=65536 fwd ip | 135.12us (1.26×) | 170.19us |
| N=131072 fwd ip | 291.69us (1.30×) | 380.48us |
| N=262144 fwd ip | 606.32us (1.44×) | 875.33us |
| N=524288 fwd ip | 2.89ms (0.98×) | 2.85ms |
| N=1048576 fwd ip | 12.09ms (0.68×) | 8.18ms |
| N=2097152 fwd ip | 28.39ms (0.63×) | 17.86ms |
| N=4194304 fwd ip | 71.38ms (0.55×) | 39.56ms |
| N=8388608 fwd ip | 140.97ms (0.61×) | 85.85ms |
| N=16777216 fwd ip | 283.73ms (0.68×) | 192.10ms |

## Suite `smooth`

### smooth f32

| cell | fastfft | rustfft |
|---|---|---|
| N=6 fwd ip | 7.4ns (1.27×) | 9.4ns |
| N=9 fwd ip | 11.7ns (1.14×) | 13.2ns |
| N=12 fwd ip | 9.9ns (1.11×) | 10.9ns |
| N=15 fwd ip | 14.1ns (1.82×) | 25.8ns |
| N=18 fwd ip | 55.9ns (0.42×) | 23.5ns |
| N=24 fwd ip | 22.8ns (0.63×) | 14.4ns |
| N=36 fwd ip | 47.4ns (0.42×) | 19.8ns |
| N=48 fwd ip | 23.6ns (0.72×) | 17.0ns |
| N=80 fwd ip | 73.5ns (0.52×) | 38.3ns |
| N=96 fwd ip | 84.7ns (0.60×) | 50.5ns |
| N=108 fwd ip | 124.3ns (0.50×) | 62.7ns |
| N=120 fwd ip | 104.1ns (0.60×) | 62.1ns |
| N=160 fwd ip | 154.0ns (0.52×) | 79.8ns |
| N=210 fwd ip | 572.9ns (0.44×) | 251.2ns |
| N=240 fwd ip | 167.5ns (0.72×) | 120.1ns |
| N=320 fwd ip | 143.6ns (1.16×) | 166.7ns |
| N=384 fwd ip | 167.0ns (1.21×) | 202.5ns |
| N=480 fwd ip | 251.8ns (1.34×) | 336.9ns |
| N=504 fwd ip | 311.9ns (0.90×) | 280.6ns |
| N=640 fwd ip | 286.4ns (1.32×) | 378.2ns |
| N=720 fwd ip | 865.6ns (0.61×) | 529.3ns |
| N=768 fwd ip | 350.0ns (1.23×) | 429.7ns |
| N=960 fwd ip | 450.3ns (1.41×) | 637.0ns |
| N=1000 fwd ip | 605.8ns (1.57×) | 950.2ns |
| N=1200 fwd ip | 663.1ns (1.28×) | 849.9ns |
| N=1536 fwd ip | 814.1ns (1.32×) | 1.07us |
| N=1920 fwd ip | 1.07us (1.34×) | 1.43us |
| N=1960 fwd ip | 1.23us (1.62×) | 2.00us |
| N=2400 fwd ip | 1.47us (1.57×) | 2.32us |
| N=3072 fwd ip | 1.76us (1.37×) | 2.42us |
| N=4725 fwd ip | 23.79us (0.25×) | 6.02us |
| N=4800 fwd ip | 2.88us (1.60×) | 4.62us |
| N=6144 fwd ip | 3.77us (1.37×) | 5.17us |
| N=10368 fwd ip | 6.58us (1.32×) | 8.65us |
| N=12288 fwd ip | 9.13us (1.35×) | 12.30us |
| N=27000 fwd ip | 20.38us (1.64×) | 33.51us |
| N=48000 fwd ip | 35.38us (1.72×) | 60.81us |
| N=75600 fwd ip | 67.14us (1.57×) | 105.26us |
| N=96000 fwd ip | 76.88us (1.74×) | 133.59us |
| N=165375 fwd ip | 1.19ms (0.27×) | 314.57us |
| N=1000000 fwd ip | 2.74ms (1.04×) | 2.85ms |

### smooth f64

| cell | fastfft | rustfft |
|---|---|---|
| N=6 fwd ip | 5.7ns (0.98×) | 5.6ns |
| N=9 fwd ip | 10.4ns (0.91×) | 9.5ns |
| N=12 fwd ip | 8.7ns (1.33×) | 11.5ns |
| N=15 fwd ip | 17.2ns (1.68×) | 28.9ns |
| N=18 fwd ip | 35.9ns (0.40×) | 14.4ns |
| N=24 fwd ip | 36.1ns (0.38×) | 13.9ns |
| N=36 fwd ip | 49.3ns (0.48×) | 23.5ns |
| N=48 fwd ip | 37.3ns (1.10×) | 40.9ns |
| N=80 fwd ip | 63.8ns (1.07×) | 68.4ns |
| N=96 fwd ip | 76.8ns (1.06×) | 81.8ns |
| N=108 fwd ip | 122.0ns (0.77×) | 94.6ns |
| N=120 fwd ip | 173.3ns (0.62×) | 107.9ns |
| N=160 fwd ip | 121.9ns (1.20×) | 146.4ns |
| N=210 fwd ip | 467.5ns (0.62×) | 288.3ns |
| N=240 fwd ip | 247.5ns (1.15×) | 284.8ns |
| N=320 fwd ip | 259.0ns (1.24×) | 322.5ns |
| N=384 fwd ip | 339.2ns (1.10×) | 372.7ns |
| N=480 fwd ip | 462.7ns (1.28×) | 591.1ns |
| N=504 fwd ip | 542.2ns (1.23×) | 667.1ns |
| N=640 fwd ip | 548.5ns (1.30×) | 713.1ns |
| N=720 fwd ip | 675.9ns (1.36×) | 916.6ns |
| N=768 fwd ip | 704.4ns (1.41×) | 995.8ns |
| N=960 fwd ip | 875.1ns (1.51×) | 1.32us |
| N=1000 fwd ip | 1.10us (1.50×) | 1.65us |
| N=1200 fwd ip | 1.23us (1.67×) | 2.06us |
| N=1536 fwd ip | 1.70us (1.32×) | 2.24us |
| N=1920 fwd ip | 2.10us (1.36×) | 2.86us |
| N=1960 fwd ip | 2.22us (1.67×) | 3.71us |
| N=2400 fwd ip | 2.88us (1.49×) | 4.28us |
| N=3072 fwd ip | 3.64us (1.28×) | 4.67us |
| N=4725 fwd ip | 20.49us (0.49×) | 10.13us |
| N=4800 fwd ip | 5.31us (1.72×) | 9.11us |
| N=6144 fwd ip | 7.62us (1.53×) | 11.66us |
| N=10368 fwd ip | 12.28us (1.64×) | 20.15us |
| N=12288 fwd ip | 17.84us (1.44×) | 25.69us |
| N=27000 fwd ip | 44.64us (1.48×) | 66.06us |
| N=48000 fwd ip | 68.21us (1.82×) | 124.04us |
| N=75600 fwd ip | 139.66us (1.45×) | 201.88us |
| N=96000 fwd ip | 146.00us (1.95×) | 284.24us |
| N=165375 fwd ip | 1.07ms (0.53×) | 567.01us |
| N=1000000 fwd ip | 10.94ms (0.72×) | 7.92ms |

## Suite `rough`

### rough f32

| cell | fastfft | rustfft |
|---|---|---|
| N=17 fwd ip | 124.9ns (0.22×) | 27.5ns |
| N=31 fwd ip | 117.4ns (0.81×) | 94.6ns |
| N=61 fwd ip | 195.2ns (0.86×) | 168.6ns |
| N=127 fwd ip | 351.2ns (1.30×) | 458.1ns |
| N=257 fwd ip | 885.4ns (0.52×) | 459.5ns |
| N=509 fwd ip | 1.77us (0.86×) | 1.53us |
| N=1021 fwd ip | 3.79us (1.37×) | 5.18us |
| N=2018 fwd ip | 11.11us (0.50×) | 5.57us |
| N=2053 fwd ip | 9.07us (1.24×) | 11.27us |
| N=3063 fwd ip | 13.64us (1.20×) | 16.39us |
| N=4099 fwd ip | 20.99us (1.15×) | 24.13us |
| N=8191 fwd ip | 40.90us (1.20×) | 49.22us |
| N=9797 fwd ip | 55.42us (0.94×) | 52.34us |
| N=16381 fwd ip | 102.66us (0.99×) | 101.56us |
| N=65524 fwd ip | 535.64us (0.79×) | 424.54us |
| N=65537 fwd ip | 674.87us (0.37×) | 251.93us |
| N=131071 fwd ip | 1.25ms (0.72×) | 900.52us |

### rough f64

| cell | fastfft | rustfft |
|---|---|---|
| N=17 fwd ip | 146.8ns (0.22×) | 31.7ns |
| N=31 fwd ip | 164.8ns (0.56×) | 92.3ns |
| N=61 fwd ip | 298.2ns (0.73×) | 216.3ns |
| N=127 fwd ip | 617.6ns (0.76×) | 470.9ns |
| N=257 fwd ip | 1.62us (0.53×) | 861.1ns |
| N=509 fwd ip | 3.40us (0.94×) | 3.20us |
| N=1021 fwd ip | 9.04us (0.85×) | 7.65us |
| N=2018 fwd ip | 18.96us (0.56×) | 10.71us |
| N=2053 fwd ip | 18.27us (0.95×) | 17.28us |
| N=3063 fwd ip | 23.33us (1.07×) | 24.98us |
| N=4099 fwd ip | 36.94us (1.19×) | 43.96us |
| N=8191 fwd ip | 67.92us (1.07×) | 72.64us |
| N=9797 fwd ip | 108.25us (0.98×) | 106.47us |
| N=16381 fwd ip | 169.77us (0.85×) | 144.64us |
| N=65524 fwd ip | 1.04ms (0.61×) | 634.93us |
| N=65537 fwd ip | 1.08ms (0.45×) | 485.82us |
| N=131071 fwd ip | 2.09ms (1.29×) | 2.69ms |

## Suite `batch`

### batch f32

| cell | fastfft | rustfft |
|---|---|---|
| N=8 ×131072 fwd ip | 3.7ns (0.44×) | 1.6ns |
| N=16 ×65536 fwd ip | 7.0ns (0.48×) | 3.3ns |
| N=32 ×32768 fwd ip | 15.0ns (0.60×) | 9.0ns |
| N=64 ×16384 fwd ip | 19.8ns (1.01×) | 20.0ns |
| N=128 ×8192 fwd ip | 49.6ns (0.96×) | 47.9ns |
| N=256 ×4096 fwd ip | 99.3ns (1.07×) | 106.3ns |
| N=512 ×2048 fwd ip | 252.9ns (1.09×) | 275.4ns |
| N=1024 ×1024 fwd ip | 547.9ns (1.23×) | 672.1ns |

### batch f64

| cell | fastfft | rustfft |
|---|---|---|
| N=8 ×131072 fwd ip | 3.9ns (0.63×) | 2.4ns |
| N=16 ×65536 fwd ip | 7.4ns (0.82×) | 6.1ns |
| N=32 ×32768 fwd ip | 16.6ns (0.90×) | 15.0ns |
| N=64 ×16384 fwd ip | 38.6ns (1.06×) | 40.8ns |
| N=128 ×8192 fwd ip | 87.1ns (1.27×) | 110.1ns |
| N=256 ×4096 fwd ip | 297.4ns (1.22×) | 362.4ns |
| N=512 ×2048 fwd ip | 685.2ns (1.24×) | 850.2ns |
| N=1024 ×1024 fwd ip | 1.43us (1.12×) | 1.60us |

## Accuracy and planning time (medians over cells)

| lib | cells verified | failed | median error (ε) | worst error (ε) | median plan time |
|---|---|---|---|---|---|
| fastfft | 180 | 0 | 0.98 | 2.87 | 31.84us |
| rustfft | 180 | 0 | 1.17 | 5.84 | 8.48us |

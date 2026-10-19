# fastfft arena report: `quick3-before`

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
| Control drift | max 2.82% over 9 control runs |
| Cells | 180 |

Times are per transform. *best* = minimum batch mean, *median* = median batch mean. Speedup = rustfft time ÷ library time (> 1 means faster than rustfft); *geomean* over the cells both libraries ran. mflops = 5·N·log2(N)/t(µs).

## Release gates (fastfft)

| Gate | Criterion | Status | Detail |
|---|---|---|---|
| G1 | pow2 vs rustfft: geomean ≥ 1.5×, no cell < 0.95× | ❌ fail | geomean best 1.024×, median 1.019×, worst cell 0.553× (pow2:f64:fwd:ip:n4194304), 48 cells |
| G2 | smooth vs rustfft: geomean ≥ 1.3×, no cell < 0.95× | ❌ fail | geomean best 1.036×, median 1.034×, worst cell 0.256× (smooth:f32:fwd:ip:n4725), 82 cells |
| G3 | rough vs rustfft: geomean ≥ 0.75×, no cell < 0.5× | ❌ fail | geomean best 0.780×, median 0.775×, worst cell 0.217× (rough:f32:fwd:ip:n17), 34 cells |
| G4 | vs each other Rust library: geomean ≥ 1.1×, ≥ 0.97× on ≥ 90% of cells | – n/a |  |
| G5 | AVX2 forced: pow2 ≥ 1.2×, smooth ≥ 1.1× vs rustfft | – n/a | pow2 NaN×/NaN×, smooth NaN×/NaN× |
| G6 | scenarios ≥ 1.3× each; batch geomean ≥ 1.5× | ❌ fail | scenarios min inf×, batch 0.893×/0.889× |
| G7 | accuracy within §6 thresholds and ≤ 1.5× rustfft + 1ε | ✅ pass | 172 cells checked |
| G8 | Estimate planning time ≤ 2× rustfft for every N ≤ 2^20 | ❌ fail | worst ratio 57.69× (rough:f64:fwd:ip:n31), 172 cells |

G9 (build time) is measured by `cargo xtask build-time`, not by the arena.

## Speedup vs rustfft (geomean of best-time ratios; median-time ratio in parentheses)

| suite | prec | fastfft | rustfft |
|---|---|---|---|
| pow2 | f32 | 1.03× (1.02×) 14/2/8 | 1.00× (1.00×) 0/24/0 |
| pow2 | f64 | 1.02× (1.02×) 14/2/8 | 1.00× (1.00×) 0/24/0 |
| smooth | f32 | 0.97× (0.96×) 26/0/15 | 1.00× (1.00×) 0/41/0 |
| smooth | f64 | 1.11× (1.11×) 30/0/11 | 1.00× (1.00×) 0/41/0 |
| rough | f32 | 0.82× (0.81×) 6/1/10 | 1.00× (1.00×) 0/17/0 |
| rough | f64 | 0.74× (0.74×) 4/2/11 | 1.00× (1.00×) 0/17/0 |
| batch | f32 | 0.80× (0.79×) 3/1/4 | 1.00× (1.00×) 0/8/0 |
| batch | f64 | 1.00× (1.00×) 5/0/3 | 1.00× (1.00×) 0/8/0 |

w/t/l = cells faster / within ±3% / slower than rustfft (best times).

## Suite `pow2`

### pow2 f32

| cell | fastfft | rustfft |
|---|---|---|
| N=2 fwd ip | 2.8ns (1.00×) | 2.8ns |
| N=4 fwd ip | 4.2ns (1.00×) | 4.2ns |
| N=8 fwd ip | 7.4ns (1.04×) | 7.7ns |
| N=16 fwd ip | 9.9ns (0.88×) | 8.7ns |
| N=32 fwd ip | 17.4ns (0.73×) | 12.7ns |
| N=64 fwd ip | 22.2ns (0.97×) | 21.5ns |
| N=128 fwd ip | 49.2ns (1.13×) | 55.6ns |
| N=256 fwd ip | 96.4ns (1.09×) | 105.0ns |
| N=512 fwd ip | 222.4ns (1.17×) | 261.1ns |
| N=1024 fwd ip | 503.7ns (1.20×) | 605.4ns |
| N=2048 fwd ip | 1.11us (1.25×) | 1.39us |
| N=4096 fwd ip | 2.85us (1.22×) | 3.48us |
| N=8192 fwd ip | 5.64us (1.25×) | 7.03us |
| N=16384 fwd ip | 11.20us (1.47×) | 16.48us |
| N=32768 fwd ip | 25.33us (1.50×) | 38.09us |
| N=65536 fwd ip | 67.97us (1.21×) | 82.16us |
| N=131072 fwd ip | 144.97us (1.24×) | 179.78us |
| N=262144 fwd ip | 313.20us (1.31×) | 411.21us |
| N=524288 fwd ip | 680.18us (1.29×) | 874.95us |
| N=1048576 fwd ip | 3.07ms (0.95×) | 2.93ms |
| N=2097152 fwd ip | 11.77ms (0.70×) | 8.26ms |
| N=4194304 fwd ip | 32.07ms (0.59×) | 18.94ms |
| N=8388608 fwd ip | 65.03ms (0.62×) | 40.06ms |
| N=16777216 fwd ip | 126.71ms (0.69×) | 87.82ms |

### pow2 f64

| cell | fastfft | rustfft |
|---|---|---|
| N=2 fwd ip | 2.6ns (0.93×) | 2.4ns |
| N=4 fwd ip | 3.6ns (1.06×) | 3.8ns |
| N=8 fwd ip | 6.4ns (1.10×) | 7.0ns |
| N=16 fwd ip | 11.8ns (0.86×) | 10.1ns |
| N=32 fwd ip | 18.5ns (0.96×) | 17.8ns |
| N=64 fwd ip | 39.2ns (0.99×) | 38.7ns |
| N=128 fwd ip | 78.8ns (1.09×) | 85.9ns |
| N=256 fwd ip | 171.2ns (1.16×) | 198.0ns |
| N=512 fwd ip | 427.8ns (1.22×) | 522.6ns |
| N=1024 fwd ip | 1.03us (1.20×) | 1.25us |
| N=2048 fwd ip | 2.72us (1.09×) | 2.97us |
| N=4096 fwd ip | 5.27us (1.29×) | 6.78us |
| N=8192 fwd ip | 10.88us (1.39×) | 15.09us |
| N=16384 fwd ip | 24.21us (1.39×) | 33.58us |
| N=32768 fwd ip | 51.08us (1.49×) | 76.29us |
| N=65536 fwd ip | 134.44us (1.27×) | 170.27us |
| N=131072 fwd ip | 291.16us (1.30×) | 379.59us |
| N=262144 fwd ip | 613.51us (1.42×) | 869.03us |
| N=524288 fwd ip | 2.87ms (1.00×) | 2.86ms |
| N=1048576 fwd ip | 12.14ms (0.68×) | 8.29ms |
| N=2097152 fwd ip | 28.18ms (0.63×) | 17.62ms |
| N=4194304 fwd ip | 70.52ms (0.55×) | 39.03ms |
| N=8388608 fwd ip | 139.20ms (0.62×) | 86.42ms |
| N=16777216 fwd ip | 275.55ms (0.69×) | 191.19ms |

## Suite `smooth`

### smooth f32

| cell | fastfft | rustfft |
|---|---|---|
| N=6 fwd ip | 7.4ns (1.28×) | 9.4ns |
| N=9 fwd ip | 11.6ns (1.14×) | 13.2ns |
| N=12 fwd ip | 9.7ns (1.14×) | 11.0ns |
| N=15 fwd ip | 14.2ns (1.83×) | 25.9ns |
| N=18 fwd ip | 56.0ns (0.42×) | 23.5ns |
| N=24 fwd ip | 23.0ns (0.63×) | 14.3ns |
| N=36 fwd ip | 47.2ns (0.42×) | 19.8ns |
| N=48 fwd ip | 23.6ns (0.72×) | 16.9ns |
| N=80 fwd ip | 73.6ns (0.58×) | 42.9ns |
| N=96 fwd ip | 84.0ns (0.60×) | 50.0ns |
| N=108 fwd ip | 125.1ns (0.50×) | 62.3ns |
| N=120 fwd ip | 106.1ns (0.57×) | 60.8ns |
| N=160 fwd ip | 154.4ns (0.52×) | 80.6ns |
| N=210 fwd ip | 577.6ns (0.44×) | 251.8ns |
| N=240 fwd ip | 168.4ns (0.75×) | 126.2ns |
| N=320 fwd ip | 143.8ns (1.18×) | 170.2ns |
| N=384 fwd ip | 168.9ns (1.19×) | 200.4ns |
| N=480 fwd ip | 252.6ns (1.38×) | 347.7ns |
| N=504 fwd ip | 312.4ns (0.90×) | 280.5ns |
| N=640 fwd ip | 285.5ns (1.32×) | 378.0ns |
| N=720 fwd ip | 861.3ns (0.61×) | 527.4ns |
| N=768 fwd ip | 350.1ns (1.23×) | 430.0ns |
| N=960 fwd ip | 449.9ns (1.43×) | 641.2ns |
| N=1000 fwd ip | 609.0ns (1.55×) | 942.0ns |
| N=1200 fwd ip | 657.5ns (1.28×) | 844.0ns |
| N=1536 fwd ip | 813.4ns (1.26×) | 1.03us |
| N=1920 fwd ip | 1.06us (1.34×) | 1.42us |
| N=1960 fwd ip | 1.26us (1.61×) | 2.02us |
| N=2400 fwd ip | 1.49us (1.56×) | 2.32us |
| N=3072 fwd ip | 1.76us (1.38×) | 2.43us |
| N=4725 fwd ip | 23.72us (0.26×) | 6.07us |
| N=4800 fwd ip | 2.86us (1.60×) | 4.58us |
| N=6144 fwd ip | 3.77us (1.36×) | 5.13us |
| N=10368 fwd ip | 6.58us (1.32×) | 8.67us |
| N=12288 fwd ip | 9.07us (1.37×) | 12.40us |
| N=27000 fwd ip | 20.31us (1.66×) | 33.74us |
| N=48000 fwd ip | 35.65us (1.70×) | 60.51us |
| N=75600 fwd ip | 68.01us (1.54×) | 105.00us |
| N=96000 fwd ip | 77.46us (1.72×) | 132.94us |
| N=165375 fwd ip | 1.19ms (0.26×) | 313.57us |
| N=1000000 fwd ip | 2.68ms (1.09×) | 2.91ms |

### smooth f64

| cell | fastfft | rustfft |
|---|---|---|
| N=6 fwd ip | 5.8ns (0.96×) | 5.6ns |
| N=9 fwd ip | 10.5ns (0.91×) | 9.5ns |
| N=12 fwd ip | 8.7ns (1.34×) | 11.6ns |
| N=15 fwd ip | 17.1ns (1.71×) | 29.2ns |
| N=18 fwd ip | 36.1ns (0.40×) | 14.4ns |
| N=24 fwd ip | 36.4ns (0.39×) | 14.3ns |
| N=36 fwd ip | 49.9ns (0.47×) | 23.7ns |
| N=48 fwd ip | 38.0ns (1.07×) | 40.7ns |
| N=80 fwd ip | 65.0ns (1.05×) | 68.2ns |
| N=96 fwd ip | 76.8ns (1.07×) | 82.2ns |
| N=108 fwd ip | 125.5ns (0.76×) | 94.9ns |
| N=120 fwd ip | 159.1ns (0.68×) | 107.6ns |
| N=160 fwd ip | 121.6ns (1.24×) | 151.0ns |
| N=210 fwd ip | 487.7ns (0.58×) | 284.9ns |
| N=240 fwd ip | 247.3ns (1.15×) | 283.4ns |
| N=320 fwd ip | 256.2ns (1.28×) | 328.9ns |
| N=384 fwd ip | 311.2ns (1.13×) | 352.1ns |
| N=480 fwd ip | 515.8ns (1.14×) | 589.3ns |
| N=504 fwd ip | 535.6ns (1.23×) | 658.9ns |
| N=640 fwd ip | 548.0ns (1.30×) | 714.1ns |
| N=720 fwd ip | 670.3ns (1.36×) | 912.3ns |
| N=768 fwd ip | 683.7ns (1.44×) | 982.3ns |
| N=960 fwd ip | 873.6ns (1.50×) | 1.31us |
| N=1000 fwd ip | 1.12us (1.46×) | 1.63us |
| N=1200 fwd ip | 1.23us (1.71×) | 2.10us |
| N=1536 fwd ip | 1.71us (1.30×) | 2.22us |
| N=1920 fwd ip | 2.12us (1.35×) | 2.85us |
| N=1960 fwd ip | 2.22us (1.65×) | 3.66us |
| N=2400 fwd ip | 2.92us (1.47×) | 4.29us |
| N=3072 fwd ip | 3.53us (1.32×) | 4.65us |
| N=4725 fwd ip | 20.74us (0.49×) | 10.23us |
| N=4800 fwd ip | 5.21us (1.68×) | 8.74us |
| N=6144 fwd ip | 7.41us (1.55×) | 11.49us |
| N=10368 fwd ip | 12.30us (1.63×) | 20.08us |
| N=12288 fwd ip | 17.18us (1.51×) | 25.93us |
| N=27000 fwd ip | 44.54us (1.49×) | 66.17us |
| N=48000 fwd ip | 68.81us (1.81×) | 124.77us |
| N=75600 fwd ip | 146.53us (1.38×) | 202.20us |
| N=96000 fwd ip | 145.00us (1.95×) | 282.62us |
| N=165375 fwd ip | 1.06ms (0.54×) | 568.87us |
| N=1000000 fwd ip | 10.81ms (0.74×) | 8.05ms |

## Suite `rough`

### rough f32

| cell | fastfft | rustfft |
|---|---|---|
| N=17 fwd ip | 125.9ns (0.22×) | 27.3ns |
| N=31 fwd ip | 121.5ns (0.77×) | 94.2ns |
| N=61 fwd ip | 187.2ns (0.86×) | 160.9ns |
| N=127 fwd ip | 352.2ns (1.30×) | 457.5ns |
| N=257 fwd ip | 877.9ns (0.52×) | 456.0ns |
| N=509 fwd ip | 1.78us (0.87×) | 1.55us |
| N=1021 fwd ip | 4.01us (1.29×) | 5.19us |
| N=2018 fwd ip | 7.86us (0.71×) | 5.58us |
| N=2053 fwd ip | 9.12us (1.24×) | 11.29us |
| N=3063 fwd ip | 13.59us (1.21×) | 16.39us |
| N=4099 fwd ip | 21.32us (1.13×) | 24.14us |
| N=8191 fwd ip | 41.32us (1.20×) | 49.41us |
| N=9797 fwd ip | 55.20us (0.95×) | 52.43us |
| N=16381 fwd ip | 103.34us (0.97×) | 100.69us |
| N=65524 fwd ip | 533.65us (0.80×) | 426.12us |
| N=65537 fwd ip | 671.74us (0.38×) | 252.69us |
| N=131071 fwd ip | 1.25ms (0.79×) | 987.16us |

### rough f64

| cell | fastfft | rustfft |
|---|---|---|
| N=17 fwd ip | 143.3ns (0.22×) | 32.1ns |
| N=31 fwd ip | 165.8ns (0.56×) | 92.3ns |
| N=61 fwd ip | 296.4ns (0.73×) | 215.4ns |
| N=127 fwd ip | 642.7ns (0.74×) | 477.4ns |
| N=257 fwd ip | 1.62us (0.53×) | 863.2ns |
| N=509 fwd ip | 3.16us (1.01×) | 3.21us |
| N=1021 fwd ip | 8.76us (0.87×) | 7.64us |
| N=2018 fwd ip | 18.76us (0.57×) | 10.69us |
| N=2053 fwd ip | 17.36us (1.00×) | 17.29us |
| N=3063 fwd ip | 23.08us (1.08×) | 24.95us |
| N=4099 fwd ip | 37.37us (1.17×) | 43.90us |
| N=8191 fwd ip | 67.75us (1.04×) | 70.68us |
| N=9797 fwd ip | 108.22us (0.88×) | 94.96us |
| N=16381 fwd ip | 167.18us (0.87×) | 144.80us |
| N=65524 fwd ip | 1.05ms (0.61×) | 635.29us |
| N=65537 fwd ip | 1.07ms (0.45×) | 486.25us |
| N=131071 fwd ip | 2.06ms (1.25×) | 2.58ms |

## Suite `batch`

### batch f32

| cell | fastfft | rustfft |
|---|---|---|
| N=8 ×131072 fwd ip | 3.7ns (0.44×) | 1.6ns |
| N=16 ×65536 fwd ip | 7.0ns (0.48×) | 3.3ns |
| N=32 ×32768 fwd ip | 15.0ns (0.60×) | 9.0ns |
| N=64 ×16384 fwd ip | 19.8ns (1.01×) | 20.0ns |
| N=128 ×8192 fwd ip | 49.7ns (0.96×) | 47.8ns |
| N=256 ×4096 fwd ip | 99.5ns (1.06×) | 105.8ns |
| N=512 ×2048 fwd ip | 245.9ns (1.11×) | 271.7ns |
| N=1024 ×1024 fwd ip | 552.0ns (1.18×) | 649.8ns |

### batch f64

| cell | fastfft | rustfft |
|---|---|---|
| N=8 ×131072 fwd ip | 3.8ns (0.62×) | 2.4ns |
| N=16 ×65536 fwd ip | 7.4ns (0.83×) | 6.1ns |
| N=32 ×32768 fwd ip | 16.7ns (0.90×) | 15.0ns |
| N=64 ×16384 fwd ip | 38.6ns (1.06×) | 40.8ns |
| N=128 ×8192 fwd ip | 89.6ns (1.21×) | 108.3ns |
| N=256 ×4096 fwd ip | 292.3ns (1.20×) | 351.7ns |
| N=512 ×2048 fwd ip | 683.9ns (1.22×) | 837.5ns |
| N=1024 ×1024 fwd ip | 1.42us (1.11×) | 1.58us |

## Accuracy and planning time (medians over cells)

| lib | cells verified | failed | median error (ε) | worst error (ε) | median plan time |
|---|---|---|---|---|---|
| fastfft | 180 | 0 | 0.98 | 2.87 | 32.90us |
| rustfft | 180 | 0 | 1.17 | 5.84 | 8.62us |

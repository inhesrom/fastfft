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
| Build profile / RUSTFLAGS | arena / `` |
| Libraries | {"fearless_simd":"0.5.0","num-complex":"0.4.6","oxifft":"0.4.2","phastft":"0.4.1","pulp":"0.22.3","rustfft":"6.4.1","tfhe-fft":"0.10.1"} |
| FFTW | fftw-3.3.11-sse2-avx-avx2-avx2_128-avx512 `double: CFLAGS='-O3 -fPIC -std=gnu17' ./configure --enable-static --disable-shared --disable-fortran --disable-doc --enable-sse2 --enable-avx --enable-avx2 --enable-avx512 --enable-fma
single: CFLAGS='-O3 -fPIC -std=gnu17' ./configure --enable-static --disable-shared --disable-fortran --disable-doc --enable-sse2 --enable-avx --enable-avx2 --enable-avx512 --enable-fma --enable-float` |
| Git | 40d65034fed313a56e34b9c27e1aa088746067c6 (dirty: true) |
| Profile | quick |
| Official | true  |
| Control drift | max 0.99% over 9 control runs |
| Cells | 180 |

Times are per transform. *best* = minimum batch mean, *median* = median batch mean. Speedup = rustfft time ÷ library time (> 1 means faster than rustfft); *geomean* over the cells both libraries ran. mflops = 5·N·log2(N)/t(µs).

## Release gates (fastfft)

| Gate | Criterion | Status | Detail |
|---|---|---|---|
| G1 | pow2 vs rustfft: geomean ≥ 1.5×, no cell < 0.95× | ❌ fail | geomean best 1.017×, median 1.016×, worst cell 0.548× (pow2:f64:fwd:ip:n4194304), 48 cells |
| G2 | smooth vs rustfft: geomean ≥ 1.3×, no cell < 0.95× | ❌ fail | geomean best 1.036×, median 1.033×, worst cell 0.253× (smooth:f32:fwd:ip:n4725), 82 cells |
| G3 | rough vs rustfft: geomean ≥ 0.75×, no cell < 0.5× | ❌ fail | geomean best 0.779×, median 0.776×, worst cell 0.213× (rough:f32:fwd:ip:n17), 34 cells |
| G4 | vs each other Rust library: geomean ≥ 1.1×, ≥ 0.97× on ≥ 90% of cells | – n/a |  |
| G5 | AVX2 forced: pow2 ≥ 1.2×, smooth ≥ 1.1× vs rustfft | – n/a | pow2 NaN×/NaN×, smooth NaN×/NaN× |
| G6 | scenarios ≥ 1.3× each; batch geomean ≥ 1.5× | ❌ fail | scenarios min inf×, batch 0.894×/0.894× |
| G7 | accuracy within §6 thresholds and ≤ 1.5× rustfft + 1ε | ✅ pass | 172 cells checked |
| G8 | Estimate planning time ≤ 2× rustfft for every N ≤ 2^20 | ❌ fail | worst ratio 51.51× (rough:f32:fwd:ip:n31), 172 cells |

G9 (build time) is measured by `cargo xtask build-time`, not by the arena.

## Speedup vs rustfft (geomean of best-time ratios; median-time ratio in parentheses)

| suite | prec | fastfft | rustfft |
|---|---|---|---|
| pow2 | f32 | 1.02× (1.02×) 13/2/9 | 1.00× (1.00×) 0/24/0 |
| pow2 | f64 | 1.01× (1.02×) 13/3/8 | 1.00× (1.00×) 0/24/0 |
| smooth | f32 | 0.96× (0.96×) 25/1/15 | 1.00× (1.00×) 0/41/0 |
| smooth | f64 | 1.11× (1.11×) 29/0/12 | 1.00× (1.00×) 0/41/0 |
| rough | f32 | 0.82× (0.82×) 6/1/10 | 1.00× (1.00×) 0/17/0 |
| rough | f64 | 0.74× (0.74×) 4/1/12 | 1.00× (1.00×) 0/17/0 |
| batch | f32 | 0.80× (0.79×) 3/1/4 | 1.00× (1.00×) 0/8/0 |
| batch | f64 | 1.00× (1.01×) 5/0/3 | 1.00× (1.00×) 0/8/0 |

w/t/l = cells faster / within ±3% / slower than rustfft (best times).

## Suite `pow2`

### pow2 f32

| cell | fastfft | rustfft |
|---|---|---|
| N=2 fwd ip | 2.8ns (1.00×) | 2.8ns |
| N=4 fwd ip | 4.4ns (0.96×) | 4.2ns |
| N=8 fwd ip | 7.5ns (1.04×) | 7.8ns |
| N=16 fwd ip | 9.9ns (0.88×) | 8.7ns |
| N=32 fwd ip | 17.4ns (0.72×) | 12.5ns |
| N=64 fwd ip | 22.2ns (0.97×) | 21.6ns |
| N=128 fwd ip | 49.3ns (0.96×) | 47.3ns |
| N=256 fwd ip | 96.8ns (1.08×) | 104.9ns |
| N=512 fwd ip | 222.2ns (1.13×) | 250.3ns |
| N=1024 fwd ip | 501.9ns (1.20×) | 602.8ns |
| N=2048 fwd ip | 1.10us (1.27×) | 1.40us |
| N=4096 fwd ip | 2.87us (1.21×) | 3.48us |
| N=8192 fwd ip | 5.64us (1.24×) | 6.98us |
| N=16384 fwd ip | 11.17us (1.44×) | 16.12us |
| N=32768 fwd ip | 25.60us (1.50×) | 38.45us |
| N=65536 fwd ip | 67.60us (1.21×) | 81.81us |
| N=131072 fwd ip | 144.81us (1.25×) | 181.06us |
| N=262144 fwd ip | 312.50us (1.32×) | 411.50us |
| N=524288 fwd ip | 679.50us (1.32×) | 896.38us |
| N=1048576 fwd ip | 3.10ms (0.96×) | 2.97ms |
| N=2097152 fwd ip | 11.78ms (0.70×) | 8.26ms |
| N=4194304 fwd ip | 32.14ms (0.59×) | 18.99ms |
| N=8388608 fwd ip | 65.28ms (0.61×) | 39.98ms |
| N=16777216 fwd ip | 126.20ms (0.70×) | 87.96ms |

### pow2 f64

| cell | fastfft | rustfft |
|---|---|---|
| N=2 fwd ip | 2.6ns (0.93×) | 2.4ns |
| N=4 fwd ip | 3.7ns (1.03×) | 3.8ns |
| N=8 fwd ip | 6.4ns (1.10×) | 7.1ns |
| N=16 fwd ip | 11.8ns (0.86×) | 10.1ns |
| N=32 fwd ip | 18.8ns (0.94×) | 17.7ns |
| N=64 fwd ip | 39.5ns (0.98×) | 38.8ns |
| N=128 fwd ip | 79.5ns (1.08×) | 85.6ns |
| N=256 fwd ip | 171.6ns (1.14×) | 196.0ns |
| N=512 fwd ip | 427.7ns (1.24×) | 529.4ns |
| N=1024 fwd ip | 1.05us (1.19×) | 1.24us |
| N=2048 fwd ip | 2.77us (1.09×) | 3.00us |
| N=4096 fwd ip | 5.30us (1.30×) | 6.90us |
| N=8192 fwd ip | 10.96us (1.39×) | 15.21us |
| N=16384 fwd ip | 24.14us (1.38×) | 33.38us |
| N=32768 fwd ip | 51.13us (1.49×) | 76.28us |
| N=65536 fwd ip | 135.32us (1.26×) | 169.88us |
| N=131072 fwd ip | 290.75us (1.31×) | 380.87us |
| N=262144 fwd ip | 610.62us (1.41×) | 860.91us |
| N=524288 fwd ip | 2.85ms (1.01×) | 2.88ms |
| N=1048576 fwd ip | 12.14ms (0.68×) | 8.23ms |
| N=2097152 fwd ip | 28.62ms (0.63×) | 17.95ms |
| N=4194304 fwd ip | 72.08ms (0.55×) | 39.52ms |
| N=8388608 fwd ip | 140.65ms (0.61×) | 85.68ms |
| N=16777216 fwd ip | 278.88ms (0.69×) | 192.77ms |

## Suite `smooth`

### smooth f32

| cell | fastfft | rustfft |
|---|---|---|
| N=6 fwd ip | 7.4ns (1.28×) | 9.4ns |
| N=9 fwd ip | 11.7ns (1.14×) | 13.2ns |
| N=12 fwd ip | 9.8ns (1.12×) | 11.0ns |
| N=15 fwd ip | 14.2ns (1.82×) | 25.9ns |
| N=18 fwd ip | 56.0ns (0.42×) | 23.6ns |
| N=24 fwd ip | 23.1ns (0.62×) | 14.4ns |
| N=36 fwd ip | 48.0ns (0.41×) | 19.8ns |
| N=48 fwd ip | 23.6ns (0.72×) | 17.0ns |
| N=80 fwd ip | 73.4ns (0.58×) | 42.6ns |
| N=96 fwd ip | 84.9ns (0.59×) | 50.5ns |
| N=108 fwd ip | 126.0ns (0.49×) | 62.1ns |
| N=120 fwd ip | 104.9ns (0.60×) | 62.8ns |
| N=160 fwd ip | 154.5ns (0.52×) | 80.6ns |
| N=210 fwd ip | 578.9ns (0.44×) | 252.6ns |
| N=240 fwd ip | 166.1ns (0.72×) | 119.1ns |
| N=320 fwd ip | 142.5ns (1.17×) | 167.2ns |
| N=384 fwd ip | 167.0ns (1.22×) | 203.9ns |
| N=480 fwd ip | 249.9ns (1.38×) | 344.5ns |
| N=504 fwd ip | 312.4ns (0.90×) | 282.3ns |
| N=640 fwd ip | 285.4ns (1.34×) | 381.4ns |
| N=720 fwd ip | 863.9ns (0.62×) | 534.3ns |
| N=768 fwd ip | 350.9ns (1.22×) | 429.0ns |
| N=960 fwd ip | 450.7ns (1.42×) | 638.0ns |
| N=1000 fwd ip | 606.6ns (1.55×) | 940.4ns |
| N=1200 fwd ip | 659.9ns (1.28×) | 845.7ns |
| N=1536 fwd ip | 813.8ns (1.28×) | 1.04us |
| N=1920 fwd ip | 1.06us (1.33×) | 1.42us |
| N=1960 fwd ip | 1.26us (1.63×) | 2.04us |
| N=2400 fwd ip | 1.46us (1.58×) | 2.31us |
| N=3072 fwd ip | 1.76us (1.37×) | 2.42us |
| N=4725 fwd ip | 24.03us (0.25×) | 6.08us |
| N=4800 fwd ip | 2.86us (1.61×) | 4.60us |
| N=6144 fwd ip | 3.77us (1.36×) | 5.13us |
| N=10368 fwd ip | 6.59us (1.31×) | 8.66us |
| N=12288 fwd ip | 9.05us (1.35×) | 12.18us |
| N=27000 fwd ip | 20.32us (1.64×) | 33.32us |
| N=48000 fwd ip | 35.50us (1.70×) | 60.51us |
| N=75600 fwd ip | 67.60us (1.55×) | 104.85us |
| N=96000 fwd ip | 77.77us (1.71×) | 132.87us |
| N=165375 fwd ip | 1.19ms (0.26×) | 313.43us |
| N=1000000 fwd ip | 2.87ms (1.01×) | 2.89ms |

### smooth f64

| cell | fastfft | rustfft |
|---|---|---|
| N=6 fwd ip | 5.8ns (0.97×) | 5.6ns |
| N=9 fwd ip | 10.4ns (0.91×) | 9.5ns |
| N=12 fwd ip | 8.6ns (1.35×) | 11.6ns |
| N=15 fwd ip | 17.1ns (1.70×) | 29.1ns |
| N=18 fwd ip | 35.8ns (0.40×) | 14.4ns |
| N=24 fwd ip | 35.2ns (0.42×) | 14.7ns |
| N=36 fwd ip | 49.7ns (0.48×) | 23.7ns |
| N=48 fwd ip | 37.2ns (1.10×) | 40.9ns |
| N=80 fwd ip | 64.2ns (1.07×) | 68.5ns |
| N=96 fwd ip | 76.3ns (1.08×) | 82.5ns |
| N=108 fwd ip | 120.3ns (0.78×) | 94.3ns |
| N=120 fwd ip | 159.5ns (0.67×) | 107.3ns |
| N=160 fwd ip | 122.7ns (1.22×) | 149.8ns |
| N=210 fwd ip | 465.2ns (0.61×) | 284.8ns |
| N=240 fwd ip | 292.4ns (0.97×) | 283.5ns |
| N=320 fwd ip | 258.7ns (1.33×) | 343.7ns |
| N=384 fwd ip | 311.9ns (1.19×) | 371.8ns |
| N=480 fwd ip | 456.2ns (1.29×) | 587.3ns |
| N=504 fwd ip | 532.7ns (1.25×) | 667.4ns |
| N=640 fwd ip | 558.8ns (1.28×) | 714.6ns |
| N=720 fwd ip | 669.7ns (1.36×) | 910.6ns |
| N=768 fwd ip | 697.4ns (1.42×) | 987.2ns |
| N=960 fwd ip | 857.9ns (1.52×) | 1.31us |
| N=1000 fwd ip | 1.10us (1.48×) | 1.64us |
| N=1200 fwd ip | 1.23us (1.65×) | 2.03us |
| N=1536 fwd ip | 1.76us (1.27×) | 2.23us |
| N=1920 fwd ip | 2.23us (1.28×) | 2.86us |
| N=1960 fwd ip | 2.23us (1.65×) | 3.67us |
| N=2400 fwd ip | 2.93us (1.46×) | 4.29us |
| N=3072 fwd ip | 3.57us (1.31×) | 4.66us |
| N=4725 fwd ip | 20.54us (0.49×) | 10.10us |
| N=4800 fwd ip | 5.62us (1.56×) | 8.75us |
| N=6144 fwd ip | 7.35us (1.56×) | 11.45us |
| N=10368 fwd ip | 12.35us (1.63×) | 20.12us |
| N=12288 fwd ip | 17.36us (1.50×) | 26.00us |
| N=27000 fwd ip | 44.50us (1.48×) | 65.94us |
| N=48000 fwd ip | 70.86us (1.76×) | 125.04us |
| N=75600 fwd ip | 139.21us (1.45×) | 201.99us |
| N=96000 fwd ip | 145.76us (1.94×) | 282.97us |
| N=165375 fwd ip | 1.06ms (0.53×) | 560.61us |
| N=1000000 fwd ip | 11.01ms (0.73×) | 8.02ms |

## Suite `rough`

### rough f32

| cell | fastfft | rustfft |
|---|---|---|
| N=17 fwd ip | 126.3ns (0.21×) | 27.0ns |
| N=31 fwd ip | 122.7ns (0.77×) | 94.2ns |
| N=61 fwd ip | 188.1ns (0.85×) | 160.4ns |
| N=127 fwd ip | 353.0ns (1.30×) | 460.3ns |
| N=257 fwd ip | 881.3ns (0.52×) | 458.8ns |
| N=509 fwd ip | 1.76us (0.89×) | 1.57us |
| N=1021 fwd ip | 3.86us (1.35×) | 5.19us |
| N=2018 fwd ip | 8.08us (0.69×) | 5.55us |
| N=2053 fwd ip | 9.08us (1.24×) | 11.27us |
| N=3063 fwd ip | 13.68us (1.20×) | 16.38us |
| N=4099 fwd ip | 20.71us (1.16×) | 24.02us |
| N=8191 fwd ip | 40.95us (1.21×) | 49.38us |
| N=9797 fwd ip | 54.92us (0.95×) | 52.42us |
| N=16381 fwd ip | 102.20us (0.99×) | 101.33us |
| N=65524 fwd ip | 527.19us (0.81×) | 427.21us |
| N=65537 fwd ip | 672.39us (0.38×) | 252.96us |
| N=131071 fwd ip | 1.24ms (0.72×) | 894.34us |

### rough f64

| cell | fastfft | rustfft |
|---|---|---|
| N=17 fwd ip | 147.5ns (0.21×) | 31.6ns |
| N=31 fwd ip | 165.2ns (0.56×) | 92.7ns |
| N=61 fwd ip | 298.7ns (0.72×) | 216.2ns |
| N=127 fwd ip | 614.2ns (0.77×) | 472.4ns |
| N=257 fwd ip | 1.68us (0.51×) | 858.3ns |
| N=509 fwd ip | 3.18us (1.01×) | 3.22us |
| N=1021 fwd ip | 9.30us (0.82×) | 7.66us |
| N=2018 fwd ip | 18.92us (0.57×) | 10.76us |
| N=2053 fwd ip | 18.24us (0.95×) | 17.29us |
| N=3063 fwd ip | 23.08us (1.08×) | 25.02us |
| N=4099 fwd ip | 36.87us (1.19×) | 43.94us |
| N=8191 fwd ip | 68.64us (1.03×) | 70.87us |
| N=9797 fwd ip | 109.18us (0.97×) | 105.97us |
| N=16381 fwd ip | 168.47us (0.87×) | 145.73us |
| N=65524 fwd ip | 1.05ms (0.60×) | 632.09us |
| N=65537 fwd ip | 1.10ms (0.44×) | 485.70us |
| N=131071 fwd ip | 2.08ms (1.31×) | 2.73ms |

## Suite `batch`

### batch f32

| cell | fastfft | rustfft |
|---|---|---|
| N=8 ×131072 fwd ip | 3.7ns (0.44×) | 1.6ns |
| N=16 ×65536 fwd ip | 7.0ns (0.48×) | 3.3ns |
| N=32 ×32768 fwd ip | 15.0ns (0.60×) | 9.0ns |
| N=64 ×16384 fwd ip | 19.8ns (1.01×) | 20.0ns |
| N=128 ×8192 fwd ip | 49.6ns (0.96×) | 47.9ns |
| N=256 ×4096 fwd ip | 99.0ns (1.07×) | 105.8ns |
| N=512 ×2048 fwd ip | 251.6ns (1.07×) | 270.1ns |
| N=1024 ×1024 fwd ip | 565.2ns (1.15×) | 647.3ns |

### batch f64

| cell | fastfft | rustfft |
|---|---|---|
| N=8 ×131072 fwd ip | 3.9ns (0.63×) | 2.4ns |
| N=16 ×65536 fwd ip | 7.4ns (0.82×) | 6.1ns |
| N=32 ×32768 fwd ip | 16.6ns (0.90×) | 15.0ns |
| N=64 ×16384 fwd ip | 38.8ns (1.05×) | 40.8ns |
| N=128 ×8192 fwd ip | 90.3ns (1.19×) | 107.2ns |
| N=256 ×4096 fwd ip | 289.1ns (1.27×) | 366.9ns |
| N=512 ×2048 fwd ip | 688.1ns (1.24×) | 852.8ns |
| N=1024 ×1024 fwd ip | 1.43us (1.12×) | 1.60us |

## Accuracy and planning time (medians over cells)

| lib | cells verified | failed | median error (ε) | worst error (ε) | median plan time |
|---|---|---|---|---|---|
| fastfft | 180 | 0 | 0.98 | 2.87 | 32.87us |
| rustfft | 180 | 0 | 1.17 | 5.84 | 8.41us |

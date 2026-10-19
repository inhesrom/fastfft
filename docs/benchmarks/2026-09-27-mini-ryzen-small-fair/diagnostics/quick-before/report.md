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
| Git | 40d65034fed313a56e34b9c27e1aa088746067c6 (dirty: true) |
| Profile | quick |
| Official | true  |
| Control drift | max 34.59% over 9 control runs — **FLAGGED** |
| Cells | 180 |

Times are per transform. *best* = minimum batch mean, *median* = median batch mean. Speedup = rustfft time ÷ library time (> 1 means faster than rustfft); *geomean* over the cells both libraries ran. mflops = 5·N·log2(N)/t(µs).

## Release gates (fastfft)

| Gate | Criterion | Status | Detail |
|---|---|---|---|
| G1 | pow2 vs rustfft: geomean ≥ 1.5×, no cell < 0.95× | ❌ fail | geomean best 1.063×, median 1.062×, worst cell 0.551× (pow2:f64:fwd:ip:n4194304), 48 cells |
| G2 | smooth vs rustfft: geomean ≥ 1.3×, no cell < 0.95× | ❌ fail | geomean best 1.032×, median 1.029×, worst cell 0.253× (smooth:f32:fwd:ip:n4725), 82 cells |
| G3 | rough vs rustfft: geomean ≥ 0.75×, no cell < 0.5× | ❌ fail | geomean best 0.789×, median 0.787×, worst cell 0.215× (rough:f64:fwd:ip:n17), 34 cells |
| G4 | vs each other Rust library: geomean ≥ 1.1×, ≥ 0.97× on ≥ 90% of cells | – n/a |  |
| G5 | AVX2 forced: pow2 ≥ 1.2×, smooth ≥ 1.1× vs rustfft | – n/a | pow2 NaN×/NaN×, smooth NaN×/NaN× |
| G6 | scenarios ≥ 1.3× each; batch geomean ≥ 1.5× | ❌ fail | scenarios min inf×, batch 1.128×/1.119× |
| G7 | accuracy within §6 thresholds and ≤ 1.5× rustfft + 1ε | ✅ pass | 172 cells checked |
| G8 | Estimate planning time ≤ 2× rustfft for every N ≤ 2^20 | ❌ fail | worst ratio 53.60× (rough:f64:fwd:ip:n31), 172 cells |

G9 (build time) is measured by `cargo xtask build-time`, not by the arena.

## Speedup vs rustfft (geomean of best-time ratios; median-time ratio in parentheses)

| suite | prec | fastfft | rustfft |
|---|---|---|---|
| pow2 | f32 | 1.09× (1.09×) 19/0/5 | 1.00× (1.00×) 0/24/0 |
| pow2 | f64 | 1.04× (1.04×) 15/3/6 | 1.00× (1.00×) 0/24/0 |
| smooth | f32 | 0.96× (0.96×) 25/1/15 | 1.00× (1.00×) 0/41/0 |
| smooth | f64 | 1.11× (1.10×) 28/3/10 | 1.00× (1.00×) 0/41/0 |
| rough | f32 | 0.83× (0.83×) 7/1/9 | 1.00× (1.00×) 0/17/0 |
| rough | f64 | 0.75× (0.75×) 4/1/12 | 1.00× (1.00×) 0/17/0 |
| batch | f32 | 1.12× (1.11×) 6/2/0 | 1.00× (1.00×) 0/8/0 |
| batch | f64 | 1.14× (1.13×) 7/1/0 | 1.00× (1.00×) 0/8/0 |

w/t/l = cells faster / within ±3% / slower than rustfft (best times).

## Suite `pow2`

### pow2 f32

| cell | fastfft | rustfft |
|---|---|---|
| N=2 fwd ip | 2.6ns (1.07×) | 2.8ns |
| N=4 fwd ip | 3.6ns (1.18×) | 4.2ns |
| N=8 fwd ip | 7.0ns (1.11×) | 7.8ns |
| N=16 fwd ip | 8.2ns (1.06×) | 8.7ns |
| N=32 fwd ip | 11.8ns (1.06×) | 12.6ns |
| N=64 fwd ip | 18.1ns (1.19×) | 21.4ns |
| N=128 fwd ip | 40.6ns (1.19×) | 48.2ns |
| N=256 fwd ip | 84.2ns (1.25×) | 105.2ns |
| N=512 fwd ip | 221.8ns (1.13×) | 250.2ns |
| N=1024 fwd ip | 502.3ns (1.22×) | 614.8ns |
| N=2048 fwd ip | 1.10us (1.27×) | 1.39us |
| N=4096 fwd ip | 2.88us (1.14×) | 3.30us |
| N=8192 fwd ip | 5.61us (1.30×) | 7.28us |
| N=16384 fwd ip | 11.21us (1.46×) | 16.36us |
| N=32768 fwd ip | 25.53us (1.54×) | 39.32us |
| N=65536 fwd ip | 68.01us (1.22×) | 82.85us |
| N=131072 fwd ip | 144.57us (1.26×) | 181.73us |
| N=262144 fwd ip | 311.68us (1.32×) | 410.67us |
| N=524288 fwd ip | 666.90us (1.34×) | 891.44us |
| N=1048576 fwd ip | 3.01ms (0.97×) | 2.91ms |
| N=2097152 fwd ip | 11.58ms (0.73×) | 8.42ms |
| N=4194304 fwd ip | 31.72ms (0.59×) | 18.59ms |
| N=8388608 fwd ip | 61.66ms (0.65×) | 39.80ms |
| N=16777216 fwd ip | 127.72ms (0.70×) | 89.04ms |

### pow2 f64

| cell | fastfft | rustfft |
|---|---|---|
| N=2 fwd ip | 2.6ns (0.93×) | 2.4ns |
| N=4 fwd ip | 3.6ns (1.04×) | 3.7ns |
| N=8 fwd ip | 6.6ns (1.03×) | 6.7ns |
| N=16 fwd ip | 9.3ns (1.10×) | 10.2ns |
| N=32 fwd ip | 14.2ns (1.23×) | 17.4ns |
| N=64 fwd ip | 32.6ns (1.22×) | 39.9ns |
| N=128 fwd ip | 69.2ns (1.23×) | 85.1ns |
| N=256 fwd ip | 148.1ns (1.33×) | 196.9ns |
| N=512 fwd ip | 423.8ns (1.16×) | 491.0ns |
| N=1024 fwd ip | 1.13us (1.09×) | 1.22us |
| N=2048 fwd ip | 2.75us (1.01×) | 2.78us |
| N=4096 fwd ip | 5.63us (1.16×) | 6.53us |
| N=8192 fwd ip | 11.03us (1.37×) | 15.06us |
| N=16384 fwd ip | 24.45us (1.38×) | 33.75us |
| N=32768 fwd ip | 51.29us (1.50×) | 76.92us |
| N=65536 fwd ip | 135.84us (1.25×) | 170.35us |
| N=131072 fwd ip | 290.71us (1.30×) | 378.31us |
| N=262144 fwd ip | 618.55us (1.38×) | 854.23us |
| N=524288 fwd ip | 2.89ms (0.99×) | 2.87ms |
| N=1048576 fwd ip | 12.47ms (0.66×) | 8.20ms |
| N=2097152 fwd ip | 28.51ms (0.61×) | 17.40ms |
| N=4194304 fwd ip | 71.60ms (0.55×) | 39.55ms |
| N=8388608 fwd ip | 140.07ms (0.62×) | 87.51ms |
| N=16777216 fwd ip | 285.32ms (0.67×) | 191.60ms |

## Suite `smooth`

### smooth f32

| cell | fastfft | rustfft |
|---|---|---|
| N=6 fwd ip | 7.3ns (1.29×) | 9.4ns |
| N=9 fwd ip | 11.7ns (1.14×) | 13.2ns |
| N=12 fwd ip | 9.8ns (1.12×) | 11.0ns |
| N=15 fwd ip | 14.0ns (1.84×) | 25.8ns |
| N=18 fwd ip | 54.8ns (0.43×) | 23.6ns |
| N=24 fwd ip | 22.5ns (0.64×) | 14.3ns |
| N=36 fwd ip | 46.9ns (0.42×) | 19.6ns |
| N=48 fwd ip | 23.6ns (0.72×) | 16.9ns |
| N=80 fwd ip | 73.3ns (0.57×) | 41.9ns |
| N=96 fwd ip | 84.0ns (0.59×) | 49.5ns |
| N=108 fwd ip | 125.4ns (0.49×) | 60.9ns |
| N=120 fwd ip | 105.3ns (0.59×) | 61.6ns |
| N=160 fwd ip | 153.8ns (0.52×) | 80.0ns |
| N=210 fwd ip | 578.9ns (0.43×) | 250.8ns |
| N=240 fwd ip | 168.4ns (0.70×) | 117.5ns |
| N=320 fwd ip | 141.2ns (1.18×) | 166.6ns |
| N=384 fwd ip | 167.2ns (1.20×) | 201.5ns |
| N=480 fwd ip | 249.8ns (1.35×) | 338.1ns |
| N=504 fwd ip | 313.5ns (0.90×) | 283.2ns |
| N=640 fwd ip | 284.3ns (1.33×) | 377.8ns |
| N=720 fwd ip | 871.7ns (0.61×) | 529.3ns |
| N=768 fwd ip | 346.8ns (1.25×) | 434.2ns |
| N=960 fwd ip | 444.4ns (1.42×) | 632.9ns |
| N=1000 fwd ip | 611.6ns (1.55×) | 950.0ns |
| N=1200 fwd ip | 663.5ns (1.27×) | 845.7ns |
| N=1536 fwd ip | 809.2ns (1.28×) | 1.03us |
| N=1920 fwd ip | 1.05us (1.34×) | 1.41us |
| N=1960 fwd ip | 1.25us (1.61×) | 2.02us |
| N=2400 fwd ip | 1.48us (1.55×) | 2.30us |
| N=3072 fwd ip | 1.74us (1.39×) | 2.42us |
| N=4725 fwd ip | 24.05us (0.25×) | 6.08us |
| N=4800 fwd ip | 2.87us (1.59×) | 4.57us |
| N=6144 fwd ip | 3.71us (1.39×) | 5.17us |
| N=10368 fwd ip | 6.53us (1.33×) | 8.69us |
| N=12288 fwd ip | 9.06us (1.36×) | 12.35us |
| N=27000 fwd ip | 20.69us (1.61×) | 33.35us |
| N=48000 fwd ip | 35.64us (1.70×) | 60.73us |
| N=75600 fwd ip | 67.74us (1.55×) | 105.25us |
| N=96000 fwd ip | 77.43us (1.71×) | 132.16us |
| N=165375 fwd ip | 1.20ms (0.26×) | 317.19us |
| N=1000000 fwd ip | 2.85ms (1.00×) | 2.84ms |

### smooth f64

| cell | fastfft | rustfft |
|---|---|---|
| N=6 fwd ip | 5.7ns (0.97×) | 5.6ns |
| N=9 fwd ip | 10.4ns (0.91×) | 9.5ns |
| N=12 fwd ip | 8.6ns (1.34×) | 11.5ns |
| N=15 fwd ip | 17.1ns (1.70×) | 29.0ns |
| N=18 fwd ip | 35.8ns (0.40×) | 14.3ns |
| N=24 fwd ip | 35.7ns (0.38×) | 13.6ns |
| N=36 fwd ip | 49.5ns (0.46×) | 22.7ns |
| N=48 fwd ip | 37.7ns (1.02×) | 38.3ns |
| N=80 fwd ip | 64.6ns (1.03×) | 66.4ns |
| N=96 fwd ip | 76.2ns (1.06×) | 81.1ns |
| N=108 fwd ip | 118.9ns (0.79×) | 93.4ns |
| N=120 fwd ip | 162.3ns (0.66×) | 106.4ns |
| N=160 fwd ip | 121.3ns (1.19×) | 144.5ns |
| N=210 fwd ip | 467.6ns (0.61×) | 285.7ns |
| N=240 fwd ip | 247.8ns (1.15×) | 285.7ns |
| N=320 fwd ip | 258.9ns (1.24×) | 322.2ns |
| N=384 fwd ip | 309.5ns (1.19×) | 367.7ns |
| N=480 fwd ip | 454.5ns (1.28×) | 583.8ns |
| N=504 fwd ip | 533.2ns (1.26×) | 673.2ns |
| N=640 fwd ip | 548.9ns (1.30×) | 712.2ns |
| N=720 fwd ip | 664.1ns (1.36×) | 903.5ns |
| N=768 fwd ip | 729.8ns (1.34×) | 979.4ns |
| N=960 fwd ip | 864.9ns (1.51×) | 1.30us |
| N=1000 fwd ip | 1.12us (1.46×) | 1.63us |
| N=1200 fwd ip | 1.22us (1.66×) | 2.03us |
| N=1536 fwd ip | 1.67us (1.34×) | 2.24us |
| N=1920 fwd ip | 2.15us (1.33×) | 2.85us |
| N=1960 fwd ip | 2.19us (1.70×) | 3.74us |
| N=2400 fwd ip | 2.91us (1.46×) | 4.25us |
| N=3072 fwd ip | 3.63us (1.28×) | 4.66us |
| N=4725 fwd ip | 20.88us (0.49×) | 10.20us |
| N=4800 fwd ip | 5.23us (1.67×) | 8.76us |
| N=6144 fwd ip | 7.62us (1.47×) | 11.18us |
| N=10368 fwd ip | 13.14us (1.53×) | 20.03us |
| N=12288 fwd ip | 17.24us (1.50×) | 25.83us |
| N=27000 fwd ip | 44.23us (1.49×) | 65.95us |
| N=48000 fwd ip | 69.34us (1.80×) | 124.86us |
| N=75600 fwd ip | 139.93us (1.44×) | 201.62us |
| N=96000 fwd ip | 143.40us (1.99×) | 285.72us |
| N=165375 fwd ip | 1.07ms (0.53×) | 564.98us |
| N=1000000 fwd ip | 10.99ms (0.72×) | 7.86ms |

## Suite `rough`

### rough f32

| cell | fastfft | rustfft |
|---|---|---|
| N=17 fwd ip | 124.5ns (0.22×) | 27.3ns |
| N=31 fwd ip | 87.6ns (1.07×) | 94.0ns |
| N=61 fwd ip | 165.7ns (0.78×) | 129.0ns |
| N=127 fwd ip | 347.4ns (1.38×) | 480.7ns |
| N=257 fwd ip | 879.8ns (0.51×) | 450.5ns |
| N=509 fwd ip | 1.77us (0.86×) | 1.52us |
| N=1021 fwd ip | 3.83us (1.36×) | 5.22us |
| N=2018 fwd ip | 8.01us (0.70×) | 5.57us |
| N=2053 fwd ip | 9.23us (1.21×) | 11.22us |
| N=3063 fwd ip | 13.50us (1.21×) | 16.40us |
| N=4099 fwd ip | 20.96us (1.15×) | 24.09us |
| N=8191 fwd ip | 41.36us (1.20×) | 49.58us |
| N=9797 fwd ip | 54.15us (0.98×) | 53.00us |
| N=16381 fwd ip | 105.59us (0.97×) | 101.98us |
| N=65524 fwd ip | 527.25us (0.81×) | 429.16us |
| N=65537 fwd ip | 675.83us (0.37×) | 252.81us |
| N=131071 fwd ip | 1.26ms (0.72×) | 900.85us |

### rough f64

| cell | fastfft | rustfft |
|---|---|---|
| N=17 fwd ip | 143.9ns (0.21×) | 30.9ns |
| N=31 fwd ip | 148.2ns (0.62×) | 91.9ns |
| N=61 fwd ip | 288.0ns (0.74×) | 211.8ns |
| N=127 fwd ip | 587.9ns (0.81×) | 473.8ns |
| N=257 fwd ip | 1.63us (0.53×) | 855.7ns |
| N=509 fwd ip | 3.42us (0.94×) | 3.20us |
| N=1021 fwd ip | 9.60us (0.80×) | 7.68us |
| N=2018 fwd ip | 18.15us (0.59×) | 10.69us |
| N=2053 fwd ip | 16.92us (1.02×) | 17.32us |
| N=3063 fwd ip | 22.95us (1.08×) | 24.90us |
| N=4099 fwd ip | 36.91us (1.19×) | 44.07us |
| N=8191 fwd ip | 67.76us (1.04×) | 70.55us |
| N=9797 fwd ip | 109.96us (0.96×) | 105.17us |
| N=16381 fwd ip | 169.96us (0.85×) | 144.76us |
| N=65524 fwd ip | 1.05ms (0.61×) | 641.41us |
| N=65537 fwd ip | 1.09ms (0.45×) | 487.77us |
| N=131071 fwd ip | 2.07ms (1.25×) | 2.60ms |

## Suite `batch`

### batch f32

| cell | fastfft | rustfft |
|---|---|---|
| N=8 ×131072 fwd ip | 1.4ns (1.17×) | 1.6ns |
| N=16 ×65536 fwd ip | 3.3ns (1.01×) | 3.3ns |
| N=32 ×32768 fwd ip | 8.8ns (1.03×) | 9.0ns |
| N=64 ×16384 fwd ip | 17.1ns (1.16×) | 19.9ns |
| N=128 ×8192 fwd ip | 41.4ns (1.17×) | 48.2ns |
| N=256 ×4096 fwd ip | 89.4ns (1.19×) | 106.0ns |
| N=512 ×2048 fwd ip | 253.2ns (1.07×) | 270.8ns |
| N=1024 ×1024 fwd ip | 563.9ns (1.16×) | 652.7ns |

### batch f64

| cell | fastfft | rustfft |
|---|---|---|
| N=8 ×131072 fwd ip | 2.4ns (1.00×) | 2.4ns |
| N=16 ×65536 fwd ip | 5.5ns (1.11×) | 6.1ns |
| N=32 ×32768 fwd ip | 13.6ns (1.11×) | 15.1ns |
| N=64 ×16384 fwd ip | 35.4ns (1.17×) | 41.4ns |
| N=128 ×8192 fwd ip | 94.5ns (1.14×) | 107.9ns |
| N=256 ×4096 fwd ip | 281.7ns (1.31×) | 369.6ns |
| N=512 ×2048 fwd ip | 702.9ns (1.25×) | 880.6ns |
| N=1024 ×1024 fwd ip | 1.55us (1.04×) | 1.62us |

## Accuracy and planning time (medians over cells)

| lib | cells verified | failed | median error (ε) | worst error (ε) | median plan time |
|---|---|---|---|---|---|
| fastfft | 180 | 0 | 0.98 | 2.87 | 32.55us |
| rustfft | 180 | 0 | 1.17 | 5.84 | 8.43us |

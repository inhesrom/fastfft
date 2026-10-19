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
| Git | bf19dd6b36fd6297bf3d856f315000034f458389 (dirty: true) |
| Profile | quick |
| Official | true  |
| Control drift | max 12.13% over 9 control runs — **FLAGGED** |
| Cells | 180 |

Times are per transform. *best* = minimum batch mean, *median* = median batch mean. Speedup = rustfft time ÷ library time (> 1 means faster than rustfft); *geomean* over the cells both libraries ran. mflops = 5·N·log2(N)/t(µs).

## Release gates (fastfft)

| Gate | Criterion | Status | Detail |
|---|---|---|---|
| G1 | pow2 vs rustfft: geomean ≥ 1.5×, no cell < 0.95× | ❌ fail | geomean best 1.078×, median 1.074×, worst cell 0.554× (pow2:f64:fwd:ip:n4194304), 48 cells |
| G2 | smooth vs rustfft: geomean ≥ 1.3×, no cell < 0.95× | ❌ fail | geomean best 1.033×, median 1.030×, worst cell 0.251× (smooth:f32:fwd:ip:n4725), 82 cells |
| G3 | rough vs rustfft: geomean ≥ 0.75×, no cell < 0.5× | ❌ fail | geomean best 0.789×, median 0.785×, worst cell 0.215× (rough:f64:fwd:ip:n17), 34 cells |
| G4 | vs each other Rust library: geomean ≥ 1.1×, ≥ 0.97× on ≥ 90% of cells | – n/a |  |
| G5 | AVX2 forced: pow2 ≥ 1.2×, smooth ≥ 1.1× vs rustfft | – n/a | pow2 NaN×/NaN×, smooth NaN×/NaN× |
| G6 | scenarios ≥ 1.3× each; batch geomean ≥ 1.5× | ❌ fail | scenarios min inf×, batch 1.215×/1.190× |
| G7 | accuracy within §6 thresholds and ≤ 1.5× rustfft + 1ε | ✅ pass | 172 cells checked |
| G8 | Estimate planning time ≤ 2× rustfft for every N ≤ 2^20 | ❌ fail | worst ratio 60.99× (rough:f64:fwd:ip:n31), 172 cells |

G9 (build time) is measured by `cargo xtask build-time`, not by the arena.

## Speedup vs rustfft (geomean of best-time ratios; median-time ratio in parentheses)

| suite | prec | fastfft | rustfft |
|---|---|---|---|
| pow2 | f32 | 1.09× (1.09×) 19/0/5 | 1.00× (1.00×) 0/24/0 |
| pow2 | f64 | 1.07× (1.06×) 16/3/5 | 1.00× (1.00×) 0/24/0 |
| smooth | f32 | 0.96× (0.96×) 25/1/15 | 1.00× (1.00×) 0/41/0 |
| smooth | f64 | 1.11× (1.10×) 28/3/10 | 1.00× (1.00×) 0/41/0 |
| rough | f32 | 0.84× (0.83×) 7/1/9 | 1.00× (1.00×) 0/17/0 |
| rough | f64 | 0.74× (0.74×) 4/0/13 | 1.00× (1.00×) 0/17/0 |
| batch | f32 | 1.23× (1.22×) 8/0/0 | 1.00× (1.00×) 0/8/0 |
| batch | f64 | 1.20× (1.16×) 7/1/0 | 1.00× (1.00×) 0/8/0 |

w/t/l = cells faster / within ±3% / slower than rustfft (best times).

## Suite `pow2`

### pow2 f32

| cell | fastfft | rustfft |
|---|---|---|
| N=2 fwd ip | 2.6ns (1.06×) | 2.8ns |
| N=4 fwd ip | 3.6ns (1.15×) | 4.1ns |
| N=8 fwd ip | 7.0ns (1.11×) | 7.8ns |
| N=16 fwd ip | 8.3ns (1.06×) | 8.8ns |
| N=32 fwd ip | 11.4ns (1.10×) | 12.6ns |
| N=64 fwd ip | 16.9ns (1.27×) | 21.4ns |
| N=128 fwd ip | 37.6ns (1.28×) | 48.0ns |
| N=256 fwd ip | 73.8ns (1.43×) | 105.9ns |
| N=512 fwd ip | 221.6ns (1.15×) | 255.3ns |
| N=1024 fwd ip | 501.7ns (1.21×) | 608.7ns |
| N=2048 fwd ip | 1.10us (1.25×) | 1.38us |
| N=4096 fwd ip | 2.88us (1.12×) | 3.23us |
| N=8192 fwd ip | 5.61us (1.24×) | 6.95us |
| N=16384 fwd ip | 11.21us (1.44×) | 16.14us |
| N=32768 fwd ip | 25.67us (1.48×) | 37.98us |
| N=65536 fwd ip | 67.94us (1.22×) | 83.15us |
| N=131072 fwd ip | 144.90us (1.25×) | 181.41us |
| N=262144 fwd ip | 312.29us (1.30×) | 407.52us |
| N=524288 fwd ip | 688.50us (1.30×) | 893.77us |
| N=1048576 fwd ip | 3.07ms (0.94×) | 2.88ms |
| N=2097152 fwd ip | 11.84ms (0.71×) | 8.45ms |
| N=4194304 fwd ip | 31.98ms (0.59×) | 18.92ms |
| N=8388608 fwd ip | 65.18ms (0.61×) | 40.04ms |
| N=16777216 fwd ip | 132.39ms (0.67×) | 88.95ms |

### pow2 f64

| cell | fastfft | rustfft |
|---|---|---|
| N=2 fwd ip | 2.6ns (1.00×) | 2.6ns |
| N=4 fwd ip | 3.6ns (1.05×) | 3.8ns |
| N=8 fwd ip | 6.5ns (1.07×) | 7.0ns |
| N=16 fwd ip | 8.9ns (1.15×) | 10.2ns |
| N=32 fwd ip | 14.0ns (1.27×) | 17.8ns |
| N=64 fwd ip | 29.2ns (1.36×) | 39.8ns |
| N=128 fwd ip | 59.7ns (1.42×) | 85.0ns |
| N=256 fwd ip | 129.6ns (1.53×) | 197.7ns |
| N=512 fwd ip | 425.4ns (1.14×) | 486.4ns |
| N=1024 fwd ip | 1.03us (1.19×) | 1.23us |
| N=2048 fwd ip | 2.80us (0.99×) | 2.78us |
| N=4096 fwd ip | 5.66us (1.14×) | 6.45us |
| N=8192 fwd ip | 11.05us (1.37×) | 15.11us |
| N=16384 fwd ip | 24.41us (1.36×) | 33.28us |
| N=32768 fwd ip | 51.34us (1.54×) | 78.86us |
| N=65536 fwd ip | 134.71us (1.26×) | 169.28us |
| N=131072 fwd ip | 291.09us (1.29×) | 376.49us |
| N=262144 fwd ip | 609.80us (1.40×) | 855.59us |
| N=524288 fwd ip | 2.89ms (0.98×) | 2.83ms |
| N=1048576 fwd ip | 12.12ms (0.66×) | 8.04ms |
| N=2097152 fwd ip | 28.22ms (0.63×) | 17.73ms |
| N=4194304 fwd ip | 70.74ms (0.56×) | 39.35ms |
| N=8388608 fwd ip | 141.93ms (0.61×) | 86.31ms |
| N=16777216 fwd ip | 276.65ms (0.69×) | 191.39ms |

## Suite `smooth`

### smooth f32

| cell | fastfft | rustfft |
|---|---|---|
| N=6 fwd ip | 7.4ns (1.27×) | 9.4ns |
| N=9 fwd ip | 11.7ns (1.14×) | 13.2ns |
| N=12 fwd ip | 9.8ns (1.12×) | 11.1ns |
| N=15 fwd ip | 14.2ns (1.84×) | 26.0ns |
| N=18 fwd ip | 54.1ns (0.43×) | 23.4ns |
| N=24 fwd ip | 23.1ns (0.62×) | 14.4ns |
| N=36 fwd ip | 46.9ns (0.42×) | 19.8ns |
| N=48 fwd ip | 23.6ns (0.72×) | 16.9ns |
| N=80 fwd ip | 73.2ns (0.57×) | 42.0ns |
| N=96 fwd ip | 83.9ns (0.58×) | 48.7ns |
| N=108 fwd ip | 125.1ns (0.49×) | 61.5ns |
| N=120 fwd ip | 107.4ns (0.57×) | 61.2ns |
| N=160 fwd ip | 151.9ns (0.53×) | 80.4ns |
| N=210 fwd ip | 579.7ns (0.43×) | 250.4ns |
| N=240 fwd ip | 177.5ns (0.70×) | 124.0ns |
| N=320 fwd ip | 142.2ns (1.18×) | 168.4ns |
| N=384 fwd ip | 165.4ns (1.21×) | 199.7ns |
| N=480 fwd ip | 250.9ns (1.36×) | 340.9ns |
| N=504 fwd ip | 315.1ns (0.89×) | 281.5ns |
| N=640 fwd ip | 285.0ns (1.31×) | 373.6ns |
| N=720 fwd ip | 862.3ns (0.61×) | 524.6ns |
| N=768 fwd ip | 347.8ns (1.23×) | 426.9ns |
| N=960 fwd ip | 446.7ns (1.41×) | 630.3ns |
| N=1000 fwd ip | 606.6ns (1.55×) | 942.2ns |
| N=1200 fwd ip | 662.4ns (1.27×) | 844.2ns |
| N=1536 fwd ip | 804.4ns (1.27×) | 1.02us |
| N=1920 fwd ip | 1.05us (1.36×) | 1.43us |
| N=1960 fwd ip | 1.25us (1.60×) | 2.00us |
| N=2400 fwd ip | 1.46us (1.58×) | 2.30us |
| N=3072 fwd ip | 1.74us (1.39×) | 2.42us |
| N=4725 fwd ip | 24.05us (0.25×) | 6.05us |
| N=4800 fwd ip | 2.84us (1.61×) | 4.57us |
| N=6144 fwd ip | 3.72us (1.39×) | 5.15us |
| N=10368 fwd ip | 6.53us (1.33×) | 8.69us |
| N=12288 fwd ip | 9.00us (1.33×) | 12.01us |
| N=27000 fwd ip | 20.20us (1.65×) | 33.42us |
| N=48000 fwd ip | 35.45us (1.71×) | 60.52us |
| N=75600 fwd ip | 68.35us (1.53×) | 104.83us |
| N=96000 fwd ip | 77.80us (1.72×) | 133.42us |
| N=165375 fwd ip | 1.19ms (0.26×) | 314.50us |
| N=1000000 fwd ip | 2.88ms (1.00×) | 2.88ms |

### smooth f64

| cell | fastfft | rustfft |
|---|---|---|
| N=6 fwd ip | 5.7ns (0.98×) | 5.6ns |
| N=9 fwd ip | 10.4ns (0.92×) | 9.5ns |
| N=12 fwd ip | 8.6ns (1.34×) | 11.6ns |
| N=15 fwd ip | 17.1ns (1.69×) | 28.9ns |
| N=18 fwd ip | 35.6ns (0.40×) | 14.1ns |
| N=24 fwd ip | 36.5ns (0.39×) | 14.3ns |
| N=36 fwd ip | 49.5ns (0.45×) | 22.4ns |
| N=48 fwd ip | 37.4ns (1.01×) | 37.7ns |
| N=80 fwd ip | 64.7ns (1.03×) | 66.3ns |
| N=96 fwd ip | 75.8ns (1.07×) | 80.9ns |
| N=108 fwd ip | 124.7ns (0.75×) | 93.6ns |
| N=120 fwd ip | 161.1ns (0.66×) | 106.2ns |
| N=160 fwd ip | 121.9ns (1.16×) | 141.8ns |
| N=210 fwd ip | 467.1ns (0.61×) | 284.0ns |
| N=240 fwd ip | 248.0ns (1.13×) | 281.2ns |
| N=320 fwd ip | 260.5ns (1.25×) | 324.4ns |
| N=384 fwd ip | 311.9ns (1.17×) | 366.1ns |
| N=480 fwd ip | 453.1ns (1.29×) | 585.8ns |
| N=504 fwd ip | 541.3ns (1.21×) | 655.8ns |
| N=640 fwd ip | 546.7ns (1.33×) | 726.1ns |
| N=720 fwd ip | 662.8ns (1.35×) | 896.2ns |
| N=768 fwd ip | 684.2ns (1.44×) | 982.7ns |
| N=960 fwd ip | 864.5ns (1.49×) | 1.29us |
| N=1000 fwd ip | 1.10us (1.49×) | 1.65us |
| N=1200 fwd ip | 1.21us (1.65×) | 2.00us |
| N=1536 fwd ip | 1.68us (1.33×) | 2.23us |
| N=1920 fwd ip | 2.10us (1.36×) | 2.84us |
| N=1960 fwd ip | 2.20us (1.70×) | 3.74us |
| N=2400 fwd ip | 2.89us (1.47×) | 4.26us |
| N=3072 fwd ip | 3.49us (1.34×) | 4.67us |
| N=4725 fwd ip | 20.87us (0.49×) | 10.16us |
| N=4800 fwd ip | 5.27us (1.73×) | 9.09us |
| N=6144 fwd ip | 7.50us (1.47×) | 11.03us |
| N=10368 fwd ip | 13.15us (1.51×) | 19.82us |
| N=12288 fwd ip | 17.51us (1.48×) | 25.89us |
| N=27000 fwd ip | 44.18us (1.50×) | 66.17us |
| N=48000 fwd ip | 68.76us (1.82×) | 124.85us |
| N=75600 fwd ip | 139.43us (1.45×) | 201.98us |
| N=96000 fwd ip | 143.41us (2.00×) | 286.43us |
| N=165375 fwd ip | 1.05ms (0.54×) | 567.72us |
| N=1000000 fwd ip | 10.94ms (0.73×) | 8.04ms |

## Suite `rough`

### rough f32

| cell | fastfft | rustfft |
|---|---|---|
| N=17 fwd ip | 124.6ns (0.22×) | 27.2ns |
| N=31 fwd ip | 85.7ns (1.10×) | 94.4ns |
| N=61 fwd ip | 157.4ns (0.81×) | 127.5ns |
| N=127 fwd ip | 332.1ns (1.45×) | 481.4ns |
| N=257 fwd ip | 887.4ns (0.52×) | 457.3ns |
| N=509 fwd ip | 1.77us (0.85×) | 1.51us |
| N=1021 fwd ip | 4.03us (1.30×) | 5.23us |
| N=2018 fwd ip | 7.91us (0.70×) | 5.54us |
| N=2053 fwd ip | 9.12us (1.23×) | 11.21us |
| N=3063 fwd ip | 13.53us (1.21×) | 16.41us |
| N=4099 fwd ip | 20.94us (1.15×) | 24.07us |
| N=8191 fwd ip | 41.33us (1.19×) | 49.30us |
| N=9797 fwd ip | 54.45us (0.97×) | 52.68us |
| N=16381 fwd ip | 101.10us (1.00×) | 100.73us |
| N=65524 fwd ip | 529.98us (0.80×) | 426.29us |
| N=65537 fwd ip | 680.91us (0.37×) | 253.08us |
| N=131071 fwd ip | 1.24ms (0.72×) | 899.50us |

### rough f64

| cell | fastfft | rustfft |
|---|---|---|
| N=17 fwd ip | 143.0ns (0.21×) | 30.7ns |
| N=31 fwd ip | 139.8ns (0.65×) | 90.9ns |
| N=61 fwd ip | 276.5ns (0.76×) | 211.4ns |
| N=127 fwd ip | 538.8ns (0.88×) | 473.4ns |
| N=257 fwd ip | 1.64us (0.52×) | 855.9ns |
| N=509 fwd ip | 3.40us (0.94×) | 3.20us |
| N=1021 fwd ip | 10.05us (0.76×) | 7.61us |
| N=2018 fwd ip | 18.71us (0.57×) | 10.65us |
| N=2053 fwd ip | 18.18us (0.95×) | 17.31us |
| N=3063 fwd ip | 23.06us (1.08×) | 24.93us |
| N=4099 fwd ip | 37.46us (1.18×) | 44.06us |
| N=8191 fwd ip | 67.96us (1.07×) | 72.66us |
| N=9797 fwd ip | 108.58us (0.88×) | 95.31us |
| N=16381 fwd ip | 167.43us (0.86×) | 144.57us |
| N=65524 fwd ip | 1.05ms (0.61×) | 634.87us |
| N=65537 fwd ip | 1.08ms (0.45×) | 485.64us |
| N=131071 fwd ip | 2.07ms (1.22×) | 2.53ms |

## Suite `batch`

### batch f32

| cell | fastfft | rustfft |
|---|---|---|
| N=8 ×131072 fwd ip | 1.4ns (1.16×) | 1.6ns |
| N=16 ×65536 fwd ip | 2.8ns (1.18×) | 3.3ns |
| N=32 ×32768 fwd ip | 7.1ns (1.26×) | 9.0ns |
| N=64 ×16384 fwd ip | 15.3ns (1.30×) | 19.9ns |
| N=128 ×8192 fwd ip | 34.3ns (1.42×) | 48.6ns |
| N=256 ×4096 fwd ip | 81.0ns (1.31×) | 106.0ns |
| N=512 ×2048 fwd ip | 253.3ns (1.08×) | 274.3ns |
| N=1024 ×1024 fwd ip | 552.7ns (1.18×) | 654.9ns |

### batch f64

| cell | fastfft | rustfft |
|---|---|---|
| N=8 ×131072 fwd ip | 2.4ns (1.02×) | 2.4ns |
| N=16 ×65536 fwd ip | 5.1ns (1.20×) | 6.1ns |
| N=32 ×32768 fwd ip | 14.0ns (1.07×) | 15.0ns |
| N=64 ×16384 fwd ip | 33.1ns (1.24×) | 40.9ns |
| N=128 ×8192 fwd ip | 83.8ns (1.33×) | 111.3ns |
| N=256 ×4096 fwd ip | 251.1ns (1.52×) | 382.3ns |
| N=512 ×2048 fwd ip | 690.5ns (1.24×) | 858.1ns |
| N=1024 ×1024 fwd ip | 1.52us (1.03×) | 1.57us |

## Accuracy and planning time (medians over cells)

| lib | cells verified | failed | median error (ε) | worst error (ε) | median plan time |
|---|---|---|---|---|---|
| fastfft | 180 | 0 | 0.98 | 2.87 | 33.27us |
| rustfft | 180 | 0 | 1.17 | 5.84 | 8.82us |

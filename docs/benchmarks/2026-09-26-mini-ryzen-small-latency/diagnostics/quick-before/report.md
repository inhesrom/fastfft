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
| Control drift | max 1.00% over 9 control runs |
| Cells | 180 |

Times are per transform. *best* = minimum batch mean, *median* = median batch mean. Speedup = rustfft time ÷ library time (> 1 means faster than rustfft); *geomean* over the cells both libraries ran. mflops = 5·N·log2(N)/t(µs).

## Release gates (fastfft)

| Gate | Criterion | Status | Detail |
|---|---|---|---|
| G1 | pow2 vs rustfft: geomean ≥ 1.5×, no cell < 0.95× | ❌ fail | geomean best 1.001×, median 0.998×, worst cell 0.546× (pow2:f64:fwd:ip:n4194304), 48 cells |
| G2 | smooth vs rustfft: geomean ≥ 1.3×, no cell < 0.95× | ❌ fail | geomean best 1.032×, median 1.029×, worst cell 0.253× (smooth:f32:fwd:ip:n4725), 82 cells |
| G3 | rough vs rustfft: geomean ≥ 0.75×, no cell < 0.5× | ❌ fail | geomean best 0.779×, median 0.774×, worst cell 0.216× (rough:f64:fwd:ip:n17), 34 cells |
| G4 | vs each other Rust library: geomean ≥ 1.1×, ≥ 0.97× on ≥ 90% of cells | – n/a |  |
| G5 | AVX2 forced: pow2 ≥ 1.2×, smooth ≥ 1.1× vs rustfft | – n/a | pow2 NaN×/NaN×, smooth NaN×/NaN× |
| G6 | scenarios ≥ 1.3× each; batch geomean ≥ 1.5× | ❌ fail | scenarios min inf×, batch 0.873×/0.868× |
| G7 | accuracy within §6 thresholds and ≤ 1.5× rustfft + 1ε | ✅ pass | 172 cells checked |
| G8 | Estimate planning time ≤ 2× rustfft for every N ≤ 2^20 | ❌ fail | worst ratio 51.10× (rough:f32:fwd:ip:n31), 172 cells |

G9 (build time) is measured by `cargo xtask build-time`, not by the arena.

## Speedup vs rustfft (geomean of best-time ratios; median-time ratio in parentheses)

| suite | prec | fastfft | rustfft |
|---|---|---|---|
| pow2 | f32 | 1.00× (1.00×) 12/2/10 | 1.00× (1.00×) 0/24/0 |
| pow2 | f64 | 1.00× (1.00×) 13/2/9 | 1.00× (1.00×) 0/24/0 |
| smooth | f32 | 0.96× (0.96×) 25/0/16 | 1.00× (1.00×) 0/41/0 |
| smooth | f64 | 1.11× (1.10×) 29/1/11 | 1.00× (1.00×) 0/41/0 |
| rough | f32 | 0.82× (0.82×) 6/0/11 | 1.00× (1.00×) 0/17/0 |
| rough | f64 | 0.74× (0.73×) 4/1/12 | 1.00× (1.00×) 0/17/0 |
| batch | f32 | 0.79× (0.78×) 3/1/4 | 1.00× (1.00×) 0/8/0 |
| batch | f64 | 0.97× (0.96×) 5/0/3 | 1.00× (1.00×) 0/8/0 |

w/t/l = cells faster / within ±3% / slower than rustfft (best times).

## Suite `pow2`

### pow2 f32

| cell | fastfft | rustfft |
|---|---|---|
| N=2 fwd ip | 2.8ns (1.00×) | 2.8ns |
| N=4 fwd ip | 4.4ns (0.96×) | 4.2ns |
| N=8 fwd ip | 10.9ns (0.72×) | 7.8ns |
| N=16 fwd ip | 9.9ns (0.88×) | 8.7ns |
| N=32 fwd ip | 17.5ns (0.72×) | 12.6ns |
| N=64 fwd ip | 22.2ns (0.97×) | 21.6ns |
| N=128 fwd ip | 49.1ns (0.96×) | 47.1ns |
| N=256 fwd ip | 96.5ns (1.08×) | 104.6ns |
| N=512 fwd ip | 222.0ns (1.13×) | 250.5ns |
| N=1024 fwd ip | 500.4ns (1.22×) | 608.4ns |
| N=2048 fwd ip | 1.10us (1.27×) | 1.40us |
| N=4096 fwd ip | 2.89us (1.13×) | 3.27us |
| N=8192 fwd ip | 5.53us (1.27×) | 7.04us |
| N=16384 fwd ip | 11.19us (1.46×) | 16.30us |
| N=32768 fwd ip | 25.49us (1.48×) | 37.75us |
| N=65536 fwd ip | 67.64us (1.23×) | 82.90us |
| N=131072 fwd ip | 145.04us (1.25×) | 181.62us |
| N=262144 fwd ip | 314.13us (1.31×) | 410.74us |
| N=524288 fwd ip | 680.24us (1.31×) | 893.53us |
| N=1048576 fwd ip | 3.14ms (0.93×) | 2.92ms |
| N=2097152 fwd ip | 11.66ms (0.73×) | 8.53ms |
| N=4194304 fwd ip | 31.98ms (0.60×) | 19.07ms |
| N=8388608 fwd ip | 62.05ms (0.65×) | 40.49ms |
| N=16777216 fwd ip | 132.64ms (0.66×) | 87.66ms |

### pow2 f64

| cell | fastfft | rustfft |
|---|---|---|
| N=2 fwd ip | 2.6ns (0.93×) | 2.4ns |
| N=4 fwd ip | 3.8ns (1.01×) | 3.8ns |
| N=8 fwd ip | 6.4ns (1.10×) | 7.1ns |
| N=16 fwd ip | 11.7ns (0.87×) | 10.2ns |
| N=32 fwd ip | 20.2ns (0.87×) | 17.6ns |
| N=64 fwd ip | 38.6ns (1.01×) | 39.1ns |
| N=128 fwd ip | 79.8ns (1.07×) | 85.1ns |
| N=256 fwd ip | 170.6ns (1.15×) | 196.7ns |
| N=512 fwd ip | 423.7ns (1.17×) | 494.8ns |
| N=1024 fwd ip | 1.05us (1.18×) | 1.24us |
| N=2048 fwd ip | 2.70us (1.04×) | 2.81us |
| N=4096 fwd ip | 5.64us (1.17×) | 6.60us |
| N=8192 fwd ip | 10.91us (1.39×) | 15.13us |
| N=16384 fwd ip | 24.44us (1.37×) | 33.58us |
| N=32768 fwd ip | 51.94us (1.50×) | 77.70us |
| N=65536 fwd ip | 135.07us (1.26×) | 169.89us |
| N=131072 fwd ip | 291.83us (1.30×) | 379.05us |
| N=262144 fwd ip | 605.78us (1.43×) | 864.35us |
| N=524288 fwd ip | 2.92ms (0.97×) | 2.83ms |
| N=1048576 fwd ip | 12.26ms (0.66×) | 8.08ms |
| N=2097152 fwd ip | 28.71ms (0.62×) | 17.88ms |
| N=4194304 fwd ip | 72.02ms (0.55×) | 39.48ms |
| N=8388608 fwd ip | 144.89ms (0.59×) | 85.80ms |
| N=16777216 fwd ip | 288.89ms (0.67×) | 192.23ms |

## Suite `smooth`

### smooth f32

| cell | fastfft | rustfft |
|---|---|---|
| N=6 fwd ip | 7.4ns (1.27×) | 9.4ns |
| N=9 fwd ip | 11.7ns (1.14×) | 13.2ns |
| N=12 fwd ip | 9.8ns (1.12×) | 11.0ns |
| N=15 fwd ip | 14.1ns (1.83×) | 25.9ns |
| N=18 fwd ip | 56.1ns (0.42×) | 23.5ns |
| N=24 fwd ip | 23.0ns (0.63×) | 14.4ns |
| N=36 fwd ip | 47.8ns (0.41×) | 19.8ns |
| N=48 fwd ip | 23.6ns (0.72×) | 16.9ns |
| N=80 fwd ip | 74.0ns (0.57×) | 41.9ns |
| N=96 fwd ip | 85.2ns (0.57×) | 48.9ns |
| N=108 fwd ip | 125.7ns (0.49×) | 61.7ns |
| N=120 fwd ip | 106.9ns (0.57×) | 60.9ns |
| N=160 fwd ip | 154.4ns (0.52×) | 81.0ns |
| N=210 fwd ip | 578.3ns (0.44×) | 253.0ns |
| N=240 fwd ip | 168.1ns (0.71×) | 119.4ns |
| N=320 fwd ip | 142.6ns (1.19×) | 169.4ns |
| N=384 fwd ip | 167.5ns (1.21×) | 203.5ns |
| N=480 fwd ip | 251.2ns (1.36×) | 341.8ns |
| N=504 fwd ip | 313.7ns (0.89×) | 280.5ns |
| N=640 fwd ip | 285.8ns (1.33×) | 378.7ns |
| N=720 fwd ip | 871.1ns (0.62×) | 536.7ns |
| N=768 fwd ip | 348.9ns (1.23×) | 430.7ns |
| N=960 fwd ip | 447.6ns (1.42×) | 635.9ns |
| N=1000 fwd ip | 610.0ns (1.55×) | 945.8ns |
| N=1200 fwd ip | 664.0ns (1.28×) | 849.9ns |
| N=1536 fwd ip | 810.2ns (1.31×) | 1.06us |
| N=1920 fwd ip | 1.05us (1.34×) | 1.41us |
| N=1960 fwd ip | 1.24us (1.61×) | 2.00us |
| N=2400 fwd ip | 1.47us (1.56×) | 2.30us |
| N=3072 fwd ip | 1.76us (1.38×) | 2.42us |
| N=4725 fwd ip | 24.02us (0.25×) | 6.08us |
| N=4800 fwd ip | 2.84us (1.62×) | 4.61us |
| N=6144 fwd ip | 3.72us (1.38×) | 5.13us |
| N=10368 fwd ip | 6.56us (1.30×) | 8.54us |
| N=12288 fwd ip | 9.03us (1.34×) | 12.10us |
| N=27000 fwd ip | 20.68us (1.61×) | 33.20us |
| N=48000 fwd ip | 35.83us (1.68×) | 60.31us |
| N=75600 fwd ip | 69.07us (1.52×) | 105.18us |
| N=96000 fwd ip | 78.28us (1.70×) | 132.86us |
| N=165375 fwd ip | 1.20ms (0.26×) | 317.40us |
| N=1000000 fwd ip | 2.94ms (0.97×) | 2.85ms |

### smooth f64

| cell | fastfft | rustfft |
|---|---|---|
| N=6 fwd ip | 5.8ns (0.96×) | 5.6ns |
| N=9 fwd ip | 10.4ns (0.91×) | 9.5ns |
| N=12 fwd ip | 8.7ns (1.33×) | 11.5ns |
| N=15 fwd ip | 17.1ns (1.70×) | 29.0ns |
| N=18 fwd ip | 36.0ns (0.40×) | 14.4ns |
| N=24 fwd ip | 36.0ns (0.38×) | 13.9ns |
| N=36 fwd ip | 55.9ns (0.42×) | 23.6ns |
| N=48 fwd ip | 37.7ns (1.17×) | 44.1ns |
| N=80 fwd ip | 64.7ns (1.03×) | 66.5ns |
| N=96 fwd ip | 76.1ns (1.08×) | 82.2ns |
| N=108 fwd ip | 123.5ns (0.77×) | 94.9ns |
| N=120 fwd ip | 160.1ns (0.68×) | 108.1ns |
| N=160 fwd ip | 122.7ns (1.16×) | 142.8ns |
| N=210 fwd ip | 469.3ns (0.62×) | 291.0ns |
| N=240 fwd ip | 249.5ns (1.15×) | 287.2ns |
| N=320 fwd ip | 255.6ns (1.34×) | 341.6ns |
| N=384 fwd ip | 311.0ns (1.21×) | 374.9ns |
| N=480 fwd ip | 462.6ns (1.28×) | 592.0ns |
| N=504 fwd ip | 531.5ns (1.24×) | 660.3ns |
| N=640 fwd ip | 554.4ns (1.27×) | 703.3ns |
| N=720 fwd ip | 673.9ns (1.34×) | 903.4ns |
| N=768 fwd ip | 691.3ns (1.42×) | 983.3ns |
| N=960 fwd ip | 888.4ns (1.48×) | 1.31us |
| N=1000 fwd ip | 1.12us (1.47×) | 1.64us |
| N=1200 fwd ip | 1.22us (1.66×) | 2.03us |
| N=1536 fwd ip | 1.77us (1.26×) | 2.24us |
| N=1920 fwd ip | 2.12us (1.35×) | 2.85us |
| N=1960 fwd ip | 2.22us (1.65×) | 3.67us |
| N=2400 fwd ip | 3.05us (1.40×) | 4.28us |
| N=3072 fwd ip | 3.51us (1.33×) | 4.68us |
| N=4725 fwd ip | 20.82us (0.49×) | 10.19us |
| N=4800 fwd ip | 5.26us (1.67×) | 8.76us |
| N=6144 fwd ip | 7.64us (1.46×) | 11.13us |
| N=10368 fwd ip | 12.45us (1.61×) | 20.06us |
| N=12288 fwd ip | 17.12us (1.50×) | 25.73us |
| N=27000 fwd ip | 46.71us (1.41×) | 65.95us |
| N=48000 fwd ip | 67.56us (1.85×) | 124.90us |
| N=75600 fwd ip | 139.43us (1.45×) | 202.04us |
| N=96000 fwd ip | 144.32us (1.97×) | 285.01us |
| N=165375 fwd ip | 1.06ms (0.53×) | 566.49us |
| N=1000000 fwd ip | 10.87ms (0.73×) | 7.91ms |

## Suite `rough`

### rough f32

| cell | fastfft | rustfft |
|---|---|---|
| N=17 fwd ip | 125.9ns (0.22×) | 27.2ns |
| N=31 fwd ip | 116.5ns (0.81×) | 94.3ns |
| N=61 fwd ip | 186.0ns (0.91×) | 168.6ns |
| N=127 fwd ip | 353.2ns (1.30×) | 460.7ns |
| N=257 fwd ip | 884.6ns (0.52×) | 459.6ns |
| N=509 fwd ip | 1.77us (0.87×) | 1.54us |
| N=1021 fwd ip | 3.88us (1.34×) | 5.21us |
| N=2018 fwd ip | 7.93us (0.70×) | 5.58us |
| N=2053 fwd ip | 9.11us (1.24×) | 11.26us |
| N=3063 fwd ip | 13.55us (1.21×) | 16.43us |
| N=4099 fwd ip | 21.03us (1.15×) | 24.09us |
| N=8191 fwd ip | 41.35us (1.20×) | 49.47us |
| N=9797 fwd ip | 54.80us (0.96×) | 52.41us |
| N=16381 fwd ip | 104.88us (0.96×) | 101.19us |
| N=65524 fwd ip | 538.09us (0.80×) | 427.91us |
| N=65537 fwd ip | 676.05us (0.37×) | 252.00us |
| N=131071 fwd ip | 1.25ms (0.72×) | 897.91us |

### rough f64

| cell | fastfft | rustfft |
|---|---|---|
| N=17 fwd ip | 145.8ns (0.22×) | 32.0ns |
| N=31 fwd ip | 164.4ns (0.56×) | 92.6ns |
| N=61 fwd ip | 300.9ns (0.71×) | 213.0ns |
| N=127 fwd ip | 618.0ns (0.77×) | 473.2ns |
| N=257 fwd ip | 1.63us (0.53×) | 860.2ns |
| N=509 fwd ip | 3.41us (0.94×) | 3.21us |
| N=1021 fwd ip | 9.36us (0.82×) | 7.65us |
| N=2018 fwd ip | 18.53us (0.58×) | 10.67us |
| N=2053 fwd ip | 16.97us (1.02×) | 17.29us |
| N=3063 fwd ip | 22.88us (1.09×) | 25.00us |
| N=4099 fwd ip | 36.84us (1.20×) | 44.17us |
| N=8191 fwd ip | 68.13us (1.03×) | 70.36us |
| N=9797 fwd ip | 111.06us (0.95×) | 105.57us |
| N=16381 fwd ip | 170.81us (0.85×) | 145.19us |
| N=65524 fwd ip | 1.04ms (0.61×) | 632.24us |
| N=65537 fwd ip | 1.10ms (0.44×) | 485.65us |
| N=131071 fwd ip | 2.07ms (1.25×) | 2.58ms |

## Suite `batch`

### batch f32

| cell | fastfft | rustfft |
|---|---|---|
| N=8 ×131072 fwd ip | 4.3ns (0.38×) | 1.6ns |
| N=16 ×65536 fwd ip | 7.0ns (0.47×) | 3.3ns |
| N=32 ×32768 fwd ip | 15.0ns (0.60×) | 9.0ns |
| N=64 ×16384 fwd ip | 19.8ns (1.01×) | 20.1ns |
| N=128 ×8192 fwd ip | 49.8ns (0.96×) | 47.9ns |
| N=256 ×4096 fwd ip | 99.4ns (1.07×) | 106.5ns |
| N=512 ×2048 fwd ip | 252.2ns (1.08×) | 272.9ns |
| N=1024 ×1024 fwd ip | 548.1ns (1.21×) | 660.9ns |

### batch f64

| cell | fastfft | rustfft |
|---|---|---|
| N=8 ×131072 fwd ip | 3.8ns (0.62×) | 2.4ns |
| N=16 ×65536 fwd ip | 7.4ns (0.83×) | 6.1ns |
| N=32 ×32768 fwd ip | 19.2ns (0.79×) | 15.1ns |
| N=64 ×16384 fwd ip | 38.7ns (1.06×) | 41.0ns |
| N=128 ×8192 fwd ip | 103.0ns (1.05×) | 108.2ns |
| N=256 ×4096 fwd ip | 289.4ns (1.26×) | 363.8ns |
| N=512 ×2048 fwd ip | 684.9ns (1.23×) | 839.1ns |
| N=1024 ×1024 fwd ip | 1.43us (1.10×) | 1.57us |

## Accuracy and planning time (medians over cells)

| lib | cells verified | failed | median error (ε) | worst error (ε) | median plan time |
|---|---|---|---|---|---|
| fastfft | 180 | 0 | 0.98 | 2.87 | 32.76us |
| rustfft | 180 | 0 | 1.17 | 5.84 | 8.64us |

# fastfft arena report: `repeat-before-1`

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
| Control drift | max 50.52% over 3 control runs — **FLAGGED** |
| Cells | 28 |

Times are per transform. *best* = minimum batch mean, *median* = median batch mean. Speedup = rustfft time ÷ library time (> 1 means faster than rustfft); *geomean* over the cells both libraries ran. mflops = 5·N·log2(N)/t(µs).

## Release gates (fastfft)

| Gate | Criterion | Status | Detail |
|---|---|---|---|
| G1 | pow2 vs rustfft: geomean ≥ 1.5×, no cell < 0.95× | ❌ fail | geomean best 0.929×, median 0.930×, worst cell 0.608× (pow2:f64:fwd:ip:n8388608), 6 cells |
| G2 | smooth vs rustfft: geomean ≥ 1.3×, no cell < 0.95× | ❌ fail | geomean best 1.032×, median 1.028×, worst cell 0.578× (smooth:f32:fwd:ip:n120), 12 cells |
| G3 | rough vs rustfft: geomean ≥ 0.75×, no cell < 0.5× | ✅ pass | geomean best 0.886×, median 0.882×, worst cell 0.575× (rough:f64:fwd:ip:n2018), 8 cells |
| G4 | vs each other Rust library: geomean ≥ 1.1×, ≥ 0.97× on ≥ 90% of cells | – n/a |  |
| G5 | AVX2 forced: pow2 ≥ 1.2×, smooth ≥ 1.1× vs rustfft | – n/a | pow2 NaN×/NaN×, smooth NaN×/NaN× |
| G6 | scenarios ≥ 1.3× each; batch geomean ≥ 1.5× | ❌ fail | scenarios min inf×, batch 1.224×/1.285× |
| G7 | accuracy within §6 thresholds and ≤ 1.5× rustfft + 1ε | ✅ pass | 26 cells checked |
| G8 | Estimate planning time ≤ 2× rustfft for every N ≤ 2^20 | ❌ fail | worst ratio 9.85× (smooth:f64:fwd:ip:n96), 26 cells |

G9 (build time) is measured by `cargo xtask build-time`, not by the arena.

## Speedup vs rustfft (geomean of best-time ratios; median-time ratio in parentheses)

| suite | prec | fastfft | rustfft |
|---|---|---|---|
| pow2 | f32 | 0.95× (0.95×) 2/0/1 | 1.00× (1.00×) 0/3/0 |
| pow2 | f64 | 0.91× (0.91×) 2/0/1 | 1.00× (1.00×) 0/3/0 |
| smooth | f32 | 0.94× (0.94×) 3/0/3 | 1.00× (1.00×) 0/6/0 |
| smooth | f64 | 1.13× (1.12×) 5/0/1 | 1.00× (1.00×) 0/6/0 |
| rough | f32 | 1.02× (1.01×) 2/0/2 | 1.00× (1.00×) 0/4/0 |
| rough | f64 | 0.77× (0.77×) 0/1/3 | 1.00× (1.00×) 0/4/0 |
| batch | f32 | 1.07× (1.06×) 1/0/0 | 1.00× (1.00×) 0/1/0 |
| batch | f64 | 1.40× (1.56×) 1/0/0 | 1.00× (1.00×) 0/1/0 |

w/t/l = cells faster / within ±3% / slower than rustfft (best times).

## Suite `pow2`

### pow2 f32

| cell | fastfft | rustfft |
|---|---|---|
| N=256 fwd ip | 95.7ns (1.10×) | 105.5ns |
| N=2048 fwd ip | 1.10us (1.26×) | 1.39us |
| N=8388608 fwd ip | 64.46ms (0.62×) | 40.13ms |

### pow2 f64

| cell | fastfft | rustfft |
|---|---|---|
| N=256 fwd ip | 171.4ns (1.15×) | 196.7ns |
| N=2048 fwd ip | 2.79us (1.06×) | 2.98us |
| N=8388608 fwd ip | 143.39ms (0.61×) | 87.19ms |

## Suite `smooth`

### smooth f32

| cell | fastfft | rustfft |
|---|---|---|
| N=96 fwd ip | 83.9ns (0.58×) | 48.5ns |
| N=120 fwd ip | 106.5ns (0.58×) | 61.5ns |
| N=384 fwd ip | 167.5ns (1.21×) | 203.3ns |
| N=504 fwd ip | 313.1ns (0.91×) | 286.5ns |
| N=3072 fwd ip | 1.75us (1.38×) | 2.41us |
| N=12288 fwd ip | 9.00us (1.36×) | 12.22us |

### smooth f64

| cell | fastfft | rustfft |
|---|---|---|
| N=96 fwd ip | 76.4ns (1.07×) | 81.4ns |
| N=120 fwd ip | 163.5ns (0.66×) | 108.3ns |
| N=384 fwd ip | 310.0ns (1.21×) | 375.6ns |
| N=504 fwd ip | 536.8ns (1.23×) | 661.5ns |
| N=3072 fwd ip | 3.50us (1.33×) | 4.66us |
| N=12288 fwd ip | 17.17us (1.50×) | 25.76us |

## Suite `rough`

### rough f32

| cell | fastfft | rustfft |
|---|---|---|
| N=61 fwd ip | 185.3ns (0.90×) | 167.7ns |
| N=1021 fwd ip | 3.80us (1.37×) | 5.21us |
| N=2018 fwd ip | 7.99us (0.70×) | 5.60us |
| N=2053 fwd ip | 9.16us (1.23×) | 11.24us |

### rough f64

| cell | fastfft | rustfft |
|---|---|---|
| N=61 fwd ip | 301.9ns (0.71×) | 213.8ns |
| N=1021 fwd ip | 8.89us (0.86×) | 7.63us |
| N=2018 fwd ip | 18.52us (0.58×) | 10.70us |
| N=2053 fwd ip | 17.06us (1.01×) | 17.31us |

## Suite `batch`

### batch f32

| cell | fastfft | rustfft |
|---|---|---|
| N=256 ×4096 fwd ip | 99.3ns (1.07×) | 106.1ns |

### batch f64

| cell | fastfft | rustfft |
|---|---|---|
| N=256 ×4096 fwd ip | 328.3ns (1.40×) | 460.1ns |

## Accuracy and planning time (medians over cells)

| lib | cells verified | failed | median error (ε) | worst error (ε) | median plan time |
|---|---|---|---|---|---|
| fastfft | 28 | 0 | 0.99 | 2.78 | 39.56us |
| rustfft | 28 | 0 | 1.52 | 3.77 | 16.36us |

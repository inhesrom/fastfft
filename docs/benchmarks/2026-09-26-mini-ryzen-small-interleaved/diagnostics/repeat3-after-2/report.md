# fastfft arena report: `repeat3-after-2`

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
| Control drift | max 0.77% over 2 control runs |
| Cells | 20 |

Times are per transform. *best* = minimum batch mean, *median* = median batch mean. Speedup = rustfft time ÷ library time (> 1 means faster than rustfft); *geomean* over the cells both libraries ran. mflops = 5·N·log2(N)/t(µs).

## Release gates (fastfft)

| Gate | Criterion | Status | Detail |
|---|---|---|---|
| G1 | pow2 vs rustfft: geomean ≥ 1.5×, no cell < 0.95× | ❌ fail | geomean best 1.142×, median 1.137×, worst cell 1.066× (pow2:f64:fwd:ip:n8), 4 cells |
| G2 | smooth vs rustfft: geomean ≥ 1.3×, no cell < 0.95× | ❌ fail | geomean best 1.279×, median 1.271×, worst cell 0.716× (smooth:f32:fwd:ip:n240), 8 cells |
| G3 | rough vs rustfft: geomean ≥ 0.75×, no cell < 0.5× | ✅ pass | geomean best 0.780×, median 0.775×, worst cell 0.534× (rough:f32:fwd:ip:n2018), 4 cells |
| G4 | vs each other Rust library: geomean ≥ 1.1×, ≥ 0.97× on ≥ 90% of cells | – n/a |  |
| G5 | AVX2 forced: pow2 ≥ 1.2×, smooth ≥ 1.1× vs rustfft | – n/a | pow2 NaN×/NaN×, smooth NaN×/NaN× |
| G6 | scenarios ≥ 1.3× each; batch geomean ≥ 1.5× | ❌ fail | scenarios min inf×, batch 1.116×/1.119× |
| G7 | accuracy within §6 thresholds and ≤ 1.5× rustfft + 1ε | ✅ pass | 20 cells checked |
| G8 | Estimate planning time ≤ 2× rustfft for every N ≤ 2^20 | ❌ fail | worst ratio 13.98× (pow2:f64:fwd:ip:n8), 20 cells |

G9 (build time) is measured by `cargo xtask build-time`, not by the arena.

## Speedup vs rustfft (geomean of best-time ratios; median-time ratio in parentheses)

| suite | prec | fastfft | rustfft |
|---|---|---|---|
| pow2 | f32 | 1.16× (1.15×) 2/0/0 | 1.00× (1.00×) 0/2/0 |
| pow2 | f64 | 1.13× (1.13×) 2/0/0 | 1.00× (1.00×) 0/2/0 |
| smooth | f32 | 1.19× (1.19×) 3/0/1 | 1.00× (1.00×) 0/4/0 |
| smooth | f64 | 1.37× (1.36×) 4/0/0 | 1.00× (1.00×) 0/4/0 |
| rough | f32 | 0.82× (0.81×) 1/0/1 | 1.00× (1.00×) 0/2/0 |
| rough | f64 | 0.74× (0.74×) 0/0/2 | 1.00× (1.00×) 0/2/0 |
| batch | f32 | 1.17× (1.16×) 2/0/0 | 1.00× (1.00×) 0/2/0 |
| batch | f64 | 1.07× (1.08×) 1/1/0 | 1.00× (1.00×) 0/2/0 |

w/t/l = cells faster / within ±3% / slower than rustfft (best times).

## Suite `pow2`

### pow2 f32

| cell | fastfft | rustfft |
|---|---|---|
| N=8 fwd ip | 7.1ns (1.11×) | 7.8ns |
| N=1024 fwd ip | 501.6ns (1.21×) | 605.3ns |

### pow2 f64

| cell | fastfft | rustfft |
|---|---|---|
| N=8 fwd ip | 6.5ns (1.07×) | 7.0ns |
| N=1024 fwd ip | 1.04us (1.19×) | 1.23us |

## Suite `smooth`

### smooth f32

| cell | fastfft | rustfft |
|---|---|---|
| N=240 fwd ip | 165.4ns (0.72×) | 119.8ns |
| N=1920 fwd ip | 1.05us (1.36×) | 1.44us |
| N=2400 fwd ip | 1.49us (1.55×) | 2.32us |
| N=10368 fwd ip | 6.56us (1.32×) | 8.67us |

### smooth f64

| cell | fastfft | rustfft |
|---|---|---|
| N=240 fwd ip | 247.9ns (1.15×) | 284.2ns |
| N=1920 fwd ip | 2.23us (1.28×) | 2.86us |
| N=2400 fwd ip | 2.89us (1.48×) | 4.29us |
| N=10368 fwd ip | 12.35us (1.63×) | 20.07us |

## Suite `rough`

### rough f32

| cell | fastfft | rustfft |
|---|---|---|
| N=2018 fwd ip | 10.40us (0.54×) | 5.60us |
| N=2053 fwd ip | 9.09us (1.24×) | 11.29us |

### rough f64

| cell | fastfft | rustfft |
|---|---|---|
| N=2018 fwd ip | 18.39us (0.58×) | 10.63us |
| N=2053 fwd ip | 18.09us (0.96×) | 17.31us |

## Suite `batch`

### batch f32

| cell | fastfft | rustfft |
|---|---|---|
| N=8 ×131072 fwd ip | 1.4ns (1.16×) | 1.6ns |
| N=1024 ×1024 fwd ip | 557.9ns (1.18×) | 655.6ns |

### batch f64

| cell | fastfft | rustfft |
|---|---|---|
| N=8 ×131072 fwd ip | 2.4ns (1.01×) | 2.4ns |
| N=1024 ×1024 fwd ip | 1.44us (1.12×) | 1.62us |

## Accuracy and planning time (medians over cells)

| lib | cells verified | failed | median error (ε) | worst error (ε) | median plan time |
|---|---|---|---|---|---|
| fastfft | 20 | 0 | 0.98 | 2.15 | 58.46us |
| rustfft | 20 | 0 | 1.29 | 3.72 | 15.97us |

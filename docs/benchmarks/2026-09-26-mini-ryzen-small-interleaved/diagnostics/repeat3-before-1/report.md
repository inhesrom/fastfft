# fastfft arena report: `repeat3-before-1`

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
| Control drift | max 0.63% over 2 control runs |
| Cells | 20 |

Times are per transform. *best* = minimum batch mean, *median* = median batch mean. Speedup = rustfft time ÷ library time (> 1 means faster than rustfft); *geomean* over the cells both libraries ran. mflops = 5·N·log2(N)/t(µs).

## Release gates (fastfft)

| Gate | Criterion | Status | Detail |
|---|---|---|---|
| G1 | pow2 vs rustfft: geomean ≥ 1.5×, no cell < 0.95× | ❌ fail | geomean best 1.103×, median 1.108×, worst cell 1.033× (pow2:f32:fwd:ip:n8), 4 cells |
| G2 | smooth vs rustfft: geomean ≥ 1.3×, no cell < 0.95× | ❌ fail | geomean best 1.238×, median 1.229×, worst cell 0.709× (smooth:f32:fwd:ip:n240), 8 cells |
| G3 | rough vs rustfft: geomean ≥ 0.75×, no cell < 0.5× | ✅ pass | geomean best 0.841×, median 0.837×, worst cell 0.571× (rough:f64:fwd:ip:n2018), 4 cells |
| G4 | vs each other Rust library: geomean ≥ 1.1×, ≥ 0.97× on ≥ 90% of cells | – n/a |  |
| G5 | AVX2 forced: pow2 ≥ 1.2×, smooth ≥ 1.1× vs rustfft | – n/a | pow2 NaN×/NaN×, smooth NaN×/NaN× |
| G6 | scenarios ≥ 1.3× each; batch geomean ≥ 1.5× | ❌ fail | scenarios min inf×, batch 0.773×/0.782× |
| G7 | accuracy within §6 thresholds and ≤ 1.5× rustfft + 1ε | ✅ pass | 20 cells checked |
| G8 | Estimate planning time ≤ 2× rustfft for every N ≤ 2^20 | ❌ fail | worst ratio 11.78× (pow2:f64:fwd:ip:n8), 20 cells |

G9 (build time) is measured by `cargo xtask build-time`, not by the arena.

## Speedup vs rustfft (geomean of best-time ratios; median-time ratio in parentheses)

| suite | prec | fastfft | rustfft |
|---|---|---|---|
| pow2 | f32 | 1.13× (1.13×) 2/0/0 | 1.00× (1.00×) 0/2/0 |
| pow2 | f64 | 1.08× (1.08×) 2/0/0 | 1.00× (1.00×) 0/2/0 |
| smooth | f32 | 1.18× (1.18×) 3/0/1 | 1.00× (1.00×) 0/4/0 |
| smooth | f64 | 1.30× (1.28×) 3/0/1 | 1.00× (1.00×) 0/4/0 |
| rough | f32 | 0.92× (0.92×) 1/0/1 | 1.00× (1.00×) 0/2/0 |
| rough | f64 | 0.77× (0.76×) 0/1/1 | 1.00× (1.00×) 0/2/0 |
| batch | f32 | 0.71× (0.70×) 1/0/1 | 1.00× (1.00×) 0/2/0 |
| batch | f64 | 0.84× (0.87×) 1/0/1 | 1.00× (1.00×) 0/2/0 |

w/t/l = cells faster / within ±3% / slower than rustfft (best times).

## Suite `pow2`

### pow2 f32

| cell | fastfft | rustfft |
|---|---|---|
| N=8 fwd ip | 7.5ns (1.03×) | 7.8ns |
| N=1024 fwd ip | 501.9ns (1.24×) | 621.3ns |

### pow2 f64

| cell | fastfft | rustfft |
|---|---|---|
| N=8 fwd ip | 6.4ns (1.09×) | 7.0ns |
| N=1024 fwd ip | 1.17us (1.06×) | 1.24us |

## Suite `smooth`

### smooth f32

| cell | fastfft | rustfft |
|---|---|---|
| N=240 fwd ip | 166.7ns (0.72×) | 119.3ns |
| N=1920 fwd ip | 1.06us (1.34×) | 1.41us |
| N=2400 fwd ip | 1.49us (1.55×) | 2.31us |
| N=10368 fwd ip | 6.57us (1.33×) | 8.73us |

### smooth f64

| cell | fastfft | rustfft |
|---|---|---|
| N=240 fwd ip | 301.7ns (0.93×) | 279.6ns |
| N=1920 fwd ip | 2.11us (1.34×) | 2.84us |
| N=2400 fwd ip | 2.88us (1.49×) | 4.30us |
| N=10368 fwd ip | 13.14us (1.52×) | 19.94us |

## Suite `rough`

### rough f32

| cell | fastfft | rustfft |
|---|---|---|
| N=2018 fwd ip | 7.93us (0.70×) | 5.54us |
| N=2053 fwd ip | 9.21us (1.22×) | 11.24us |

### rough f64

| cell | fastfft | rustfft |
|---|---|---|
| N=2018 fwd ip | 18.44us (0.58×) | 10.67us |
| N=2053 fwd ip | 17.01us (1.02×) | 17.27us |

## Suite `batch`

### batch f32

| cell | fastfft | rustfft |
|---|---|---|
| N=8 ×131072 fwd ip | 3.7ns (0.44×) | 1.6ns |
| N=1024 ×1024 fwd ip | 565.0ns (1.15×) | 650.6ns |

### batch f64

| cell | fastfft | rustfft |
|---|---|---|
| N=8 ×131072 fwd ip | 3.8ns (0.63×) | 2.4ns |
| N=1024 ×1024 fwd ip | 1.44us (1.12×) | 1.61us |

## Accuracy and planning time (medians over cells)

| lib | cells verified | failed | median error (ε) | worst error (ε) | median plan time |
|---|---|---|---|---|---|
| fastfft | 20 | 0 | 0.98 | 2.15 | 56.96us |
| rustfft | 20 | 0 | 1.29 | 3.72 | 15.89us |

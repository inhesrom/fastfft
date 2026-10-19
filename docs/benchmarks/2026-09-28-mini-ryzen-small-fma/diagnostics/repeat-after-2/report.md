# fastfft arena report: `repeat-after-2`

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
| Control drift | max 0.83% over 3 control runs |
| Cells | 30 |

Times are per transform. *best* = minimum batch mean, *median* = median batch mean. Speedup = rustfft time ÷ library time (> 1 means faster than rustfft); *geomean* over the cells both libraries ran. mflops = 5·N·log2(N)/t(µs).

## Release gates (fastfft)

| Gate | Criterion | Status | Detail |
|---|---|---|---|
| G1 | pow2 vs rustfft: geomean ≥ 1.5×, no cell < 0.95× | ❌ fail | geomean best 0.897×, median 0.894×, worst cell 0.551× (pow2:f64:fwd:ip:n4194304), 10 cells |
| G2 | smooth vs rustfft: geomean ≥ 1.3×, no cell < 0.95× | ❌ fail | geomean best 1.044×, median 1.042×, worst cell 0.490× (smooth:f32:fwd:ip:n108), 12 cells |
| G3 | rough vs rustfft: geomean ≥ 0.75×, no cell < 0.5× | ✅ pass | geomean best 1.113×, median 1.110×, worst cell 0.903× (rough:f64:fwd:ip:n1021), 4 cells |
| G4 | vs each other Rust library: geomean ≥ 1.1×, ≥ 0.97× on ≥ 90% of cells | – n/a |  |
| G5 | AVX2 forced: pow2 ≥ 1.2×, smooth ≥ 1.1× vs rustfft | – n/a | pow2 NaN×/NaN×, smooth NaN×/NaN× |
| G6 | scenarios ≥ 1.3× each; batch geomean ≥ 1.5× | ❌ fail | scenarios min inf×, batch 1.133×/1.089× |
| G7 | accuracy within §6 thresholds and ≤ 1.5× rustfft + 1ε | ✅ pass | 26 cells checked |
| G8 | Estimate planning time ≤ 2× rustfft for every N ≤ 2^20 | ❌ fail | worst ratio 8.42× (pow2:f32:fwd:ip:n32), 26 cells |

G9 (build time) is measured by `cargo xtask build-time`, not by the arena.

## Speedup vs rustfft (geomean of best-time ratios; median-time ratio in parentheses)

| suite | prec | fastfft | rustfft |
|---|---|---|---|
| pow2 | f32 | 0.89× (0.89×) 3/0/2 | 1.00× (1.00×) 0/5/0 |
| pow2 | f64 | 0.90× (0.90×) 3/0/2 | 1.00× (1.00×) 0/5/0 |
| smooth | f32 | 0.98× (0.98×) 3/0/3 | 1.00× (1.00×) 0/6/0 |
| smooth | f64 | 1.12× (1.11×) 4/0/2 | 1.00× (1.00×) 0/6/0 |
| rough | f32 | 1.29× (1.29×) 2/0/0 | 1.00× (1.00×) 0/2/0 |
| rough | f64 | 0.96× (0.95×) 0/1/1 | 1.00× (1.00×) 0/2/0 |
| batch | f32 | 1.22× (1.22×) 2/0/0 | 1.00× (1.00×) 0/2/0 |
| batch | f64 | 1.05× (0.97×) 2/0/0 | 1.00× (1.00×) 0/2/0 |

w/t/l = cells faster / within ±3% / slower than rustfft (best times).

## Suite `pow2`

### pow2 f32

| cell | fastfft | rustfft |
|---|---|---|
| N=32 fwd ip | 11.4ns (1.10×) | 12.6ns |
| N=1024 fwd ip | 501.3ns (1.21×) | 607.0ns |
| N=4096 fwd ip | 2.87us (1.16×) | 3.32us |
| N=4194304 fwd ip | 31.85ms (0.60×) | 18.96ms |
| N=8388608 fwd ip | 65.17ms (0.62×) | 40.26ms |

### pow2 f64

| cell | fastfft | rustfft |
|---|---|---|
| N=32 fwd ip | 14.0ns (1.25×) | 17.4ns |
| N=1024 fwd ip | 1.05us (1.16×) | 1.22us |
| N=4096 fwd ip | 5.54us (1.21×) | 6.69us |
| N=4194304 fwd ip | 71.28ms (0.55×) | 39.44ms |
| N=8388608 fwd ip | 141.21ms (0.61×) | 86.52ms |

## Suite `smooth`

### smooth f32

| cell | fastfft | rustfft |
|---|---|---|
| N=15 fwd ip | 14.2ns (1.84×) | 26.0ns |
| N=108 fwd ip | 125.0ns (0.49×) | 61.4ns |
| N=240 fwd ip | 167.4ns (0.75×) | 125.5ns |
| N=504 fwd ip | 315.3ns (0.90×) | 283.6ns |
| N=10368 fwd ip | 6.54us (1.33×) | 8.68us |
| N=1000000 fwd ip | 2.70ms (1.07×) | 2.88ms |

### smooth f64

| cell | fastfft | rustfft |
|---|---|---|
| N=15 fwd ip | 17.1ns (1.70×) | 29.0ns |
| N=108 fwd ip | 125.2ns (0.75×) | 93.9ns |
| N=240 fwd ip | 254.5ns (1.06×) | 269.3ns |
| N=504 fwd ip | 538.1ns (1.23×) | 663.2ns |
| N=10368 fwd ip | 12.34us (1.61×) | 19.89us |
| N=1000000 fwd ip | 11.03ms (0.73×) | 8.00ms |

## Suite `rough`

### rough f32

| cell | fastfft | rustfft |
|---|---|---|
| N=1021 fwd ip | 3.83us (1.36×) | 5.22us |
| N=2053 fwd ip | 9.13us (1.23×) | 11.24us |

### rough f64

| cell | fastfft | rustfft |
|---|---|---|
| N=1021 fwd ip | 8.49us (0.91×) | 7.69us |
| N=2053 fwd ip | 17.10us (1.01×) | 17.29us |

## Suite `batch`

### batch f32

| cell | fastfft | rustfft |
|---|---|---|
| N=32 ×32768 fwd ip | 7.1ns (1.26×) | 9.0ns |
| N=1024 ×1024 fwd ip | 564.0ns (1.18×) | 662.9ns |

### batch f64

| cell | fastfft | rustfft |
|---|---|---|
| N=32 ×32768 fwd ip | 14.0ns (1.07×) | 15.0ns |
| N=1024 ×1024 fwd ip | 1.52us (1.04×) | 1.57us |

## Accuracy and planning time (medians over cells)

| lib | cells verified | failed | median error (ε) | worst error (ε) | median plan time |
|---|---|---|---|---|---|
| fastfft | 30 | 0 | 0.98 | 2.78 | 23.77us |
| rustfft | 30 | 0 | 1.29 | 3.72 | 13.37us |

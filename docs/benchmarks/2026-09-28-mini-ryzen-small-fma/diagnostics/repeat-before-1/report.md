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
| Build profile / RUSTFLAGS | arena / `-C llvm-args=-align-all-functions=6` |
| Libraries | {"fearless_simd":"0.5.0","num-complex":"0.4.6","oxifft":"0.4.2","phastft":"0.4.1","pulp":"0.22.3","rustfft":"6.4.1","tfhe-fft":"0.10.1"} |
| FFTW | fftw-3.3.11-sse2-avx-avx2-avx2_128-avx512 `double: CFLAGS='-O3 -fPIC -std=gnu17' ./configure --enable-static --disable-shared --disable-fortran --disable-doc --enable-sse2 --enable-avx --enable-avx2 --enable-avx512 --enable-fma
single: CFLAGS='-O3 -fPIC -std=gnu17' ./configure --enable-static --disable-shared --disable-fortran --disable-doc --enable-sse2 --enable-avx --enable-avx2 --enable-avx512 --enable-fma --enable-float` |
| Git | bf19dd6b36fd6297bf3d856f315000034f458389 (dirty: true) |
| Profile | quick |
| Official | true  |
| Control drift | max 24.01% over 3 control runs — **FLAGGED** |
| Cells | 30 |

Times are per transform. *best* = minimum batch mean, *median* = median batch mean. Speedup = rustfft time ÷ library time (> 1 means faster than rustfft); *geomean* over the cells both libraries ran. mflops = 5·N·log2(N)/t(µs).

## Release gates (fastfft)

| Gate | Criterion | Status | Detail |
|---|---|---|---|
| G1 | pow2 vs rustfft: geomean ≥ 1.5×, no cell < 0.95× | ❌ fail | geomean best 0.885×, median 0.887×, worst cell 0.554× (pow2:f64:fwd:ip:n4194304), 10 cells |
| G2 | smooth vs rustfft: geomean ≥ 1.3×, no cell < 0.95× | ❌ fail | geomean best 1.055×, median 1.054×, worst cell 0.488× (smooth:f32:fwd:ip:n108), 12 cells |
| G3 | rough vs rustfft: geomean ≥ 0.75×, no cell < 0.5× | ✅ pass | geomean best 1.072×, median 1.066×, worst cell 0.770× (rough:f64:fwd:ip:n1021), 4 cells |
| G4 | vs each other Rust library: geomean ≥ 1.1×, ≥ 0.97× on ≥ 90% of cells | – n/a |  |
| G5 | AVX2 forced: pow2 ≥ 1.2×, smooth ≥ 1.1× vs rustfft | – n/a | pow2 NaN×/NaN×, smooth NaN×/NaN× |
| G6 | scenarios ≥ 1.3× each; batch geomean ≥ 1.5× | ❌ fail | scenarios min inf×, batch 1.109×/1.053× |
| G7 | accuracy within §6 thresholds and ≤ 1.5× rustfft + 1ε | ✅ pass | 26 cells checked |
| G8 | Estimate planning time ≤ 2× rustfft for every N ≤ 2^20 | ❌ fail | worst ratio 8.21× (batch:f32:fwd:ip:n32:b32768), 26 cells |

G9 (build time) is measured by `cargo xtask build-time`, not by the arena.

## Speedup vs rustfft (geomean of best-time ratios; median-time ratio in parentheses)

| suite | prec | fastfft | rustfft |
|---|---|---|---|
| pow2 | f32 | 0.89× (0.88×) 3/0/2 | 1.00× (1.00×) 0/5/0 |
| pow2 | f64 | 0.88× (0.89×) 3/0/2 | 1.00× (1.00×) 0/5/0 |
| smooth | f32 | 0.97× (0.98×) 3/0/3 | 1.00× (1.00×) 0/6/0 |
| smooth | f64 | 1.14× (1.13×) 4/0/2 | 1.00× (1.00×) 0/6/0 |
| rough | f32 | 1.31× (1.30×) 2/0/0 | 1.00× (1.00×) 0/2/0 |
| rough | f64 | 0.88× (0.87×) 0/1/1 | 1.00× (1.00×) 0/2/0 |
| batch | f32 | 1.11× (1.09×) 1/1/0 | 1.00× (1.00×) 0/2/0 |
| batch | f64 | 1.11× (1.01×) 2/0/0 | 1.00× (1.00×) 0/2/0 |

w/t/l = cells faster / within ±3% / slower than rustfft (best times).

## Suite `pow2`

### pow2 f32

| cell | fastfft | rustfft |
|---|---|---|
| N=32 fwd ip | 11.8ns (1.06×) | 12.6ns |
| N=1024 fwd ip | 500.2ns (1.21×) | 607.3ns |
| N=4096 fwd ip | 2.85us (1.16×) | 3.30us |
| N=4194304 fwd ip | 32.07ms (0.59×) | 19.07ms |
| N=8388608 fwd ip | 65.61ms (0.61×) | 40.08ms |

### pow2 f64

| cell | fastfft | rustfft |
|---|---|---|
| N=32 fwd ip | 14.5ns (1.22×) | 17.6ns |
| N=1024 fwd ip | 1.07us (1.15×) | 1.23us |
| N=4096 fwd ip | 5.70us (1.15×) | 6.58us |
| N=4194304 fwd ip | 71.34ms (0.55×) | 39.54ms |
| N=8388608 fwd ip | 143.02ms (0.60×) | 86.43ms |

## Suite `smooth`

### smooth f32

| cell | fastfft | rustfft |
|---|---|---|
| N=15 fwd ip | 14.1ns (1.83×) | 25.8ns |
| N=108 fwd ip | 125.6ns (0.49×) | 61.3ns |
| N=240 fwd ip | 167.3ns (0.75×) | 124.6ns |
| N=504 fwd ip | 314.4ns (0.90×) | 282.9ns |
| N=10368 fwd ip | 6.54us (1.33×) | 8.67us |
| N=1000000 fwd ip | 2.69ms (1.08×) | 2.90ms |

### smooth f64

| cell | fastfft | rustfft |
|---|---|---|
| N=15 fwd ip | 17.1ns (1.69×) | 29.0ns |
| N=108 fwd ip | 120.3ns (0.77×) | 92.3ns |
| N=240 fwd ip | 247.4ns (1.14×) | 281.6ns |
| N=504 fwd ip | 533.1ns (1.26×) | 669.2ns |
| N=10368 fwd ip | 12.33us (1.64×) | 20.16us |
| N=1000000 fwd ip | 10.98ms (0.73×) | 7.99ms |

## Suite `rough`

### rough f32

| cell | fastfft | rustfft |
|---|---|---|
| N=1021 fwd ip | 3.79us (1.38×) | 5.23us |
| N=2053 fwd ip | 9.06us (1.24×) | 11.22us |

### rough f64

| cell | fastfft | rustfft |
|---|---|---|
| N=1021 fwd ip | 9.87us (0.77×) | 7.63us |
| N=2053 fwd ip | 17.33us (1.00×) | 17.29us |

## Suite `batch`

### batch f32

| cell | fastfft | rustfft |
|---|---|---|
| N=32 ×32768 fwd ip | 8.8ns (1.02×) | 9.0ns |
| N=1024 ×1024 fwd ip | 550.6ns (1.20×) | 660.2ns |

### batch f64

| cell | fastfft | rustfft |
|---|---|---|
| N=32 ×32768 fwd ip | 13.6ns (1.10×) | 15.0ns |
| N=1024 ×1024 fwd ip | 1.43us (1.12×) | 1.60us |

## Accuracy and planning time (medians over cells)

| lib | cells verified | failed | median error (ε) | worst error (ε) | median plan time |
|---|---|---|---|---|---|
| fastfft | 30 | 0 | 0.98 | 2.78 | 23.25us |
| rustfft | 30 | 0 | 1.29 | 3.72 | 8.78us |

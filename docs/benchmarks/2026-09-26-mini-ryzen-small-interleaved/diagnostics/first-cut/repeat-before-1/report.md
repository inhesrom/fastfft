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
| Control drift | max 1.15% over 2 control runs |
| Cells | 20 |

Times are per transform. *best* = minimum batch mean, *median* = median batch mean. Speedup = rustfft time ÷ library time (> 1 means faster than rustfft); *geomean* over the cells both libraries ran. mflops = 5·N·log2(N)/t(µs).

## Release gates (fastfft)

| Gate | Criterion | Status | Detail |
|---|---|---|---|
| G1 | pow2 vs rustfft: geomean ≥ 1.5×, no cell < 0.95× | ❌ fail | geomean best 0.891×, median 0.893×, worst cell 0.648× (pow2:f64:fwd:ip:n1048576), 8 cells |
| G2 | smooth vs rustfft: geomean ≥ 1.3×, no cell < 0.95× | ❌ fail | geomean best 0.636×, median 0.631×, worst cell 0.415× (smooth:f32:fwd:ip:n36), 6 cells |
| G3 | rough vs rustfft: geomean ≥ 0.75×, no cell < 0.5× | ❌ fail | geomean best 0.615×, median 0.612×, worst cell 0.535× (rough:f64:fwd:ip:n2018), 2 cells |
| G4 | vs each other Rust library: geomean ≥ 1.1×, ≥ 0.97× on ≥ 90% of cells | – n/a |  |
| G5 | AVX2 forced: pow2 ≥ 1.2×, smooth ≥ 1.1× vs rustfft | – n/a | pow2 NaN×/NaN×, smooth NaN×/NaN× |
| G6 | scenarios ≥ 1.3× each; batch geomean ≥ 1.5× | ❌ fail | scenarios min inf×, batch 0.759×/0.748× |
| G7 | accuracy within §6 thresholds and ≤ 1.5× rustfft + 1ε | ✅ pass | 18 cells checked |
| G8 | Estimate planning time ≤ 2× rustfft for every N ≤ 2^20 | ❌ fail | worst ratio 13.28× (batch:f64:fwd:ip:n8:b131072), 18 cells |

G9 (build time) is measured by `cargo xtask build-time`, not by the arena.

## Speedup vs rustfft (geomean of best-time ratios; median-time ratio in parentheses)

| suite | prec | fastfft | rustfft |
|---|---|---|---|
| pow2 | f32 | 0.94× (0.94×) 2/0/2 | 1.00× (1.00×) 0/4/0 |
| pow2 | f64 | 0.85× (0.85×) 2/0/2 | 1.00× (1.00×) 0/4/0 |
| smooth | f32 | 0.57× (0.57×) 0/0/3 | 1.00× (1.00×) 0/3/0 |
| smooth | f64 | 0.70× (0.69×) 1/0/2 | 1.00× (1.00×) 0/3/0 |
| rough | f32 | 0.70× (0.70×) 0/0/1 | 1.00× (1.00×) 0/1/0 |
| rough | f64 | 0.54× (0.54×) 0/0/1 | 1.00× (1.00×) 0/1/0 |
| batch | f32 | 0.65× (0.65×) 0/0/2 | 1.00× (1.00×) 0/2/0 |
| batch | f64 | 0.88× (0.87×) 1/0/1 | 1.00× (1.00×) 0/2/0 |

w/t/l = cells faster / within ±3% / slower than rustfft (best times).

## Suite `pow2`

### pow2 f32

| cell | fastfft | rustfft |
|---|---|---|
| N=8 fwd ip | 7.5ns (1.04×) | 7.8ns |
| N=128 fwd ip | 49.1ns (1.13×) | 55.6ns |
| N=1048576 fwd ip | 3.16ms (0.93×) | 2.95ms |
| N=16777216 fwd ip | 127.83ms (0.70×) | 89.64ms |

### pow2 f64

| cell | fastfft | rustfft |
|---|---|---|
| N=8 fwd ip | 6.4ns (1.08×) | 6.9ns |
| N=128 fwd ip | 79.8ns (1.07×) | 85.8ns |
| N=1048576 fwd ip | 12.30ms (0.65×) | 7.98ms |
| N=16777216 fwd ip | 282.03ms (0.69×) | 193.29ms |

## Suite `smooth`

### smooth f32

| cell | fastfft | rustfft |
|---|---|---|
| N=36 fwd ip | 46.9ns (0.42×) | 19.8ns |
| N=120 fwd ip | 104.9ns (0.59×) | 62.0ns |
| N=240 fwd ip | 166.0ns (0.76×) | 126.4ns |

### smooth f64

| cell | fastfft | rustfft |
|---|---|---|
| N=36 fwd ip | 49.9ns (0.47×) | 23.6ns |
| N=120 fwd ip | 164.3ns (0.65×) | 107.6ns |
| N=240 fwd ip | 252.4ns (1.12×) | 283.3ns |

## Suite `rough`

### rough f32

| cell | fastfft | rustfft |
|---|---|---|
| N=2018 fwd ip | 7.93us (0.70×) | 5.57us |

### rough f64

| cell | fastfft | rustfft |
|---|---|---|
| N=2018 fwd ip | 19.85us (0.54×) | 10.66us |

## Suite `batch`

### batch f32

| cell | fastfft | rustfft |
|---|---|---|
| N=8 ×131072 fwd ip | 3.7ns (0.44×) | 1.6ns |
| N=128 ×8192 fwd ip | 49.6ns (0.96×) | 47.8ns |

### batch f64

| cell | fastfft | rustfft |
|---|---|---|
| N=8 ×131072 fwd ip | 3.9ns (0.63×) | 2.5ns |
| N=128 ×8192 fwd ip | 88.9ns (1.23×) | 109.6ns |

## Accuracy and planning time (medians over cells)

| lib | cells verified | failed | median error (ε) | worst error (ε) | median plan time |
|---|---|---|---|---|---|
| fastfft | 20 | 0 | 0.80 | 2.80 | 6.87us |
| rustfft | 20 | 0 | 0.87 | 3.13 | 1.05us |

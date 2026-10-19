# fastfft arena report: `repeat-after-1`

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
| Control drift | max 1.69% over 2 control runs |
| Cells | 20 |

Times are per transform. *best* = minimum batch mean, *median* = median batch mean. Speedup = rustfft time ÷ library time (> 1 means faster than rustfft); *geomean* over the cells both libraries ran. mflops = 5·N·log2(N)/t(µs).

## Release gates (fastfft)

| Gate | Criterion | Status | Detail |
|---|---|---|---|
| G1 | pow2 vs rustfft: geomean ≥ 1.5×, no cell < 0.95× | ❌ fail | geomean best 0.883×, median 0.890×, worst cell 0.656× (pow2:f64:fwd:ip:n1048576), 8 cells |
| G2 | smooth vs rustfft: geomean ≥ 1.3×, no cell < 0.95× | ❌ fail | geomean best 0.630×, median 0.624×, worst cell 0.411× (smooth:f32:fwd:ip:n36), 6 cells |
| G3 | rough vs rustfft: geomean ≥ 0.75×, no cell < 0.5× | ❌ fail | geomean best 0.632×, median 0.629×, worst cell 0.564× (rough:f64:fwd:ip:n2018), 2 cells |
| G4 | vs each other Rust library: geomean ≥ 1.1×, ≥ 0.97× on ≥ 90% of cells | – n/a |  |
| G5 | AVX2 forced: pow2 ≥ 1.2×, smooth ≥ 1.1× vs rustfft | – n/a | pow2 NaN×/NaN×, smooth NaN×/NaN× |
| G6 | scenarios ≥ 1.3× each; batch geomean ≥ 1.5× | ❌ fail | scenarios min inf×, batch 1.104×/1.078× |
| G7 | accuracy within §6 thresholds and ≤ 1.5× rustfft + 1ε | ✅ pass | 18 cells checked |
| G8 | Estimate planning time ≤ 2× rustfft for every N ≤ 2^20 | ❌ fail | worst ratio 13.53× (batch:f64:fwd:ip:n8:b131072), 18 cells |

G9 (build time) is measured by `cargo xtask build-time`, not by the arena.

## Speedup vs rustfft (geomean of best-time ratios; median-time ratio in parentheses)

| suite | prec | fastfft | rustfft |
|---|---|---|---|
| pow2 | f32 | 0.93× (0.94×) 2/0/2 | 1.00× (1.00×) 0/4/0 |
| pow2 | f64 | 0.84× (0.85×) 1/1/2 | 1.00× (1.00×) 0/4/0 |
| smooth | f32 | 0.57× (0.56×) 0/0/3 | 1.00× (1.00×) 0/3/0 |
| smooth | f64 | 0.70× (0.69×) 1/0/2 | 1.00× (1.00×) 0/3/0 |
| rough | f32 | 0.71× (0.70×) 0/0/1 | 1.00× (1.00×) 0/1/0 |
| rough | f64 | 0.57× (0.56×) 0/0/1 | 1.00× (1.00×) 0/1/0 |
| batch | f32 | 1.11× (1.11×) 2/0/0 | 1.00× (1.00×) 0/2/0 |
| batch | f64 | 1.10× (1.05×) 2/0/0 | 1.00× (1.00×) 0/2/0 |

w/t/l = cells faster / within ±3% / slower than rustfft (best times).

## Suite `pow2`

### pow2 f32

| cell | fastfft | rustfft |
|---|---|---|
| N=8 fwd ip | 7.3ns (1.05×) | 7.7ns |
| N=128 fwd ip | 43.3ns (1.11×) | 48.3ns |
| N=1048576 fwd ip | 3.20ms (0.92×) | 2.95ms |
| N=16777216 fwd ip | 127.43ms (0.70×) | 89.20ms |

### pow2 f64

| cell | fastfft | rustfft |
|---|---|---|
| N=8 fwd ip | 6.8ns (1.02×) | 6.9ns |
| N=128 fwd ip | 78.9ns (1.08×) | 85.2ns |
| N=1048576 fwd ip | 12.23ms (0.66×) | 8.03ms |
| N=16777216 fwd ip | 284.51ms (0.68×) | 193.25ms |

## Suite `smooth`

### smooth f32

| cell | fastfft | rustfft |
|---|---|---|
| N=36 fwd ip | 47.4ns (0.42×) | 19.8ns |
| N=120 fwd ip | 107.1ns (0.58×) | 61.8ns |
| N=240 fwd ip | 167.3ns (0.75×) | 125.1ns |

### smooth f64

| cell | fastfft | rustfft |
|---|---|---|
| N=36 fwd ip | 49.3ns (0.49×) | 24.2ns |
| N=120 fwd ip | 173.7ns (0.62×) | 107.6ns |
| N=240 fwd ip | 249.0ns (1.14×) | 284.2ns |

## Suite `rough`

### rough f32

| cell | fastfft | rustfft |
|---|---|---|
| N=2018 fwd ip | 7.96us (0.71×) | 5.63us |

### rough f64

| cell | fastfft | rustfft |
|---|---|---|
| N=2018 fwd ip | 18.87us (0.57×) | 10.67us |

## Suite `batch`

### batch f32

| cell | fastfft | rustfft |
|---|---|---|
| N=8 ×131072 fwd ip | 1.4ns (1.13×) | 1.6ns |
| N=128 ×8192 fwd ip | 44.2ns (1.10×) | 48.4ns |

### batch f64

| cell | fastfft | rustfft |
|---|---|---|
| N=8 ×131072 fwd ip | 2.4ns (1.03×) | 2.4ns |
| N=128 ×8192 fwd ip | 95.4ns (1.16×) | 110.9ns |

## Accuracy and planning time (medians over cells)

| lib | cells verified | failed | median error (ε) | worst error (ε) | median plan time |
|---|---|---|---|---|---|
| fastfft | 20 | 0 | 0.77 | 2.80 | 6.86us |
| rustfft | 20 | 0 | 0.87 | 3.13 | 1.06us |

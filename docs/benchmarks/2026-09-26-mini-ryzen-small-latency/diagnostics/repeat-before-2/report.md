# fastfft arena report: `repeat-before-2`

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
| Control drift | max 1.20% over 3 control runs |
| Cells | 28 |

Times are per transform. *best* = minimum batch mean, *median* = median batch mean. Speedup = rustfft time ÷ library time (> 1 means faster than rustfft); *geomean* over the cells both libraries ran. mflops = 5·N·log2(N)/t(µs).

## Release gates (fastfft)

| Gate | Criterion | Status | Detail |
|---|---|---|---|
| G1 | pow2 vs rustfft: geomean ≥ 1.5×, no cell < 0.95× | ❌ fail | geomean best 0.918×, median 0.918×, worst cell 0.592× (pow2:f64:fwd:ip:n8388608), 6 cells |
| G2 | smooth vs rustfft: geomean ≥ 1.3×, no cell < 0.95× | ❌ fail | geomean best 1.027×, median 1.022×, worst cell 0.580× (smooth:f32:fwd:ip:n96), 12 cells |
| G3 | rough vs rustfft: geomean ≥ 0.75×, no cell < 0.5× | ✅ pass | geomean best 0.886×, median 0.885×, worst cell 0.565× (rough:f64:fwd:ip:n2018), 8 cells |
| G4 | vs each other Rust library: geomean ≥ 1.1×, ≥ 0.97× on ≥ 90% of cells | – n/a |  |
| G5 | AVX2 forced: pow2 ≥ 1.2×, smooth ≥ 1.1× vs rustfft | – n/a | pow2 NaN×/NaN×, smooth NaN×/NaN× |
| G6 | scenarios ≥ 1.3× each; batch geomean ≥ 1.5× | ❌ fail | scenarios min inf×, batch 1.126×/1.059× |
| G7 | accuracy within §6 thresholds and ≤ 1.5× rustfft + 1ε | ✅ pass | 26 cells checked |
| G8 | Estimate planning time ≤ 2× rustfft for every N ≤ 2^20 | ❌ fail | worst ratio 9.36× (smooth:f64:fwd:ip:n96), 26 cells |

G9 (build time) is measured by `cargo xtask build-time`, not by the arena.

## Speedup vs rustfft (geomean of best-time ratios; median-time ratio in parentheses)

| suite | prec | fastfft | rustfft |
|---|---|---|---|
| pow2 | f32 | 0.96× (0.95×) 2/0/1 | 1.00× (1.00×) 0/3/0 |
| pow2 | f64 | 0.88× (0.88×) 1/1/1 | 1.00× (1.00×) 0/3/0 |
| smooth | f32 | 0.94× (0.94×) 3/0/3 | 1.00× (1.00×) 0/6/0 |
| smooth | f64 | 1.12× (1.11×) 5/0/1 | 1.00× (1.00×) 0/6/0 |
| rough | f32 | 1.02× (1.02×) 2/0/2 | 1.00× (1.00×) 0/4/0 |
| rough | f64 | 0.77× (0.77×) 0/1/3 | 1.00× (1.00×) 0/4/0 |
| batch | f32 | 1.07× (1.07×) 1/0/0 | 1.00× (1.00×) 0/1/0 |
| batch | f64 | 1.19× (1.05×) 1/0/0 | 1.00× (1.00×) 0/1/0 |

w/t/l = cells faster / within ±3% / slower than rustfft (best times).

## Suite `pow2`

### pow2 f32

| cell | fastfft | rustfft |
|---|---|---|
| N=256 fwd ip | 96.4ns (1.08×) | 104.2ns |
| N=2048 fwd ip | 1.12us (1.26×) | 1.41us |
| N=8388608 fwd ip | 62.65ms (0.64×) | 40.30ms |

### pow2 f64

| cell | fastfft | rustfft |
|---|---|---|
| N=256 fwd ip | 171.1ns (1.15×) | 196.1ns |
| N=2048 fwd ip | 2.77us (1.00×) | 2.78us |
| N=8388608 fwd ip | 146.15ms (0.59×) | 86.57ms |

## Suite `smooth`

### smooth f32

| cell | fastfft | rustfft |
|---|---|---|
| N=96 fwd ip | 84.2ns (0.58×) | 48.8ns |
| N=120 fwd ip | 105.1ns (0.60×) | 62.9ns |
| N=384 fwd ip | 168.2ns (1.21×) | 202.9ns |
| N=504 fwd ip | 313.4ns (0.90×) | 281.3ns |
| N=3072 fwd ip | 1.78us (1.33×) | 2.37us |
| N=12288 fwd ip | 8.92us (1.38×) | 12.35us |

### smooth f64

| cell | fastfft | rustfft |
|---|---|---|
| N=96 fwd ip | 76.4ns (1.08×) | 82.9ns |
| N=120 fwd ip | 161.9ns (0.67×) | 108.7ns |
| N=384 fwd ip | 332.1ns (1.12×) | 370.7ns |
| N=504 fwd ip | 536.1ns (1.24×) | 665.2ns |
| N=3072 fwd ip | 3.57us (1.31×) | 4.66us |
| N=12288 fwd ip | 17.10us (1.50×) | 25.73us |

## Suite `rough`

### rough f32

| cell | fastfft | rustfft |
|---|---|---|
| N=61 fwd ip | 186.8ns (0.90×) | 167.5ns |
| N=1021 fwd ip | 3.81us (1.37×) | 5.23us |
| N=2018 fwd ip | 7.92us (0.71×) | 5.63us |
| N=2053 fwd ip | 9.10us (1.23×) | 11.23us |

### rough f64

| cell | fastfft | rustfft |
|---|---|---|
| N=61 fwd ip | 302.2ns (0.70×) | 212.4ns |
| N=1021 fwd ip | 8.77us (0.87×) | 7.64us |
| N=2018 fwd ip | 18.95us (0.57×) | 10.73us |
| N=2053 fwd ip | 17.05us (1.01×) | 17.30us |

## Suite `batch`

### batch f32

| cell | fastfft | rustfft |
|---|---|---|
| N=256 ×4096 fwd ip | 99.5ns (1.07×) | 106.5ns |

### batch f64

| cell | fastfft | rustfft |
|---|---|---|
| N=256 ×4096 fwd ip | 314.5ns (1.19×) | 373.1ns |

## Accuracy and planning time (medians over cells)

| lib | cells verified | failed | median error (ε) | worst error (ε) | median plan time |
|---|---|---|---|---|---|
| fastfft | 28 | 0 | 0.99 | 2.78 | 39.88us |
| rustfft | 28 | 0 | 1.52 | 3.77 | 16.27us |

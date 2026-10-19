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
| Build profile / RUSTFLAGS | arena / `-C llvm-args=-align-all-functions=6` |
| Libraries | {"fearless_simd":"0.5.0","num-complex":"0.4.6","oxifft":"0.4.2","phastft":"0.4.1","pulp":"0.22.3","rustfft":"6.4.1","tfhe-fft":"0.10.1"} |
| FFTW | fftw-3.3.11-sse2-avx-avx2-avx2_128-avx512 `double: CFLAGS='-O3 -fPIC -std=gnu17' ./configure --enable-static --disable-shared --disable-fortran --disable-doc --enable-sse2 --enable-avx --enable-avx2 --enable-avx512 --enable-fma
single: CFLAGS='-O3 -fPIC -std=gnu17' ./configure --enable-static --disable-shared --disable-fortran --disable-doc --enable-sse2 --enable-avx --enable-avx2 --enable-avx512 --enable-fma --enable-float` |
| Git | bf19dd6b36fd6297bf3d856f315000034f458389 (dirty: true) |
| Profile | quick |
| Official | true  |
| Control drift | max 0.76% over 3 control runs |
| Cells | 30 |

Times are per transform. *best* = minimum batch mean, *median* = median batch mean. Speedup = rustfft time ÷ library time (> 1 means faster than rustfft); *geomean* over the cells both libraries ran. mflops = 5·N·log2(N)/t(µs).

## Release gates (fastfft)

| Gate | Criterion | Status | Detail |
|---|---|---|---|
| G1 | pow2 vs rustfft: geomean ≥ 1.5×, no cell < 0.95× | ❌ fail | geomean best 0.889×, median 0.884×, worst cell 0.547× (pow2:f64:fwd:ip:n4194304), 10 cells |
| G2 | smooth vs rustfft: geomean ≥ 1.3×, no cell < 0.95× | ❌ fail | geomean best 1.052×, median 1.049×, worst cell 0.493× (smooth:f32:fwd:ip:n108), 12 cells |
| G3 | rough vs rustfft: geomean ≥ 0.75×, no cell < 0.5× | ✅ pass | geomean best 1.065×, median 1.061×, worst cell 0.801× (rough:f64:fwd:ip:n1021), 4 cells |
| G4 | vs each other Rust library: geomean ≥ 1.1×, ≥ 0.97× on ≥ 90% of cells | – n/a |  |
| G5 | AVX2 forced: pow2 ≥ 1.2×, smooth ≥ 1.1× vs rustfft | – n/a | pow2 NaN×/NaN×, smooth NaN×/NaN× |
| G6 | scenarios ≥ 1.3× each; batch geomean ≥ 1.5× | ❌ fail | scenarios min inf×, batch 1.154×/1.107× |
| G7 | accuracy within §6 thresholds and ≤ 1.5× rustfft + 1ε | ✅ pass | 26 cells checked |
| G8 | Estimate planning time ≤ 2× rustfft for every N ≤ 2^20 | ❌ fail | worst ratio 8.12× (smooth:f64:fwd:ip:n240), 26 cells |

G9 (build time) is measured by `cargo xtask build-time`, not by the arena.

## Speedup vs rustfft (geomean of best-time ratios; median-time ratio in parentheses)

| suite | prec | fastfft | rustfft |
|---|---|---|---|
| pow2 | f32 | 0.88× (0.88×) 3/0/2 | 1.00× (1.00×) 0/5/0 |
| pow2 | f64 | 0.89× (0.89×) 3/0/2 | 1.00× (1.00×) 0/5/0 |
| smooth | f32 | 0.97× (0.97×) 3/0/3 | 1.00× (1.00×) 0/6/0 |
| smooth | f64 | 1.14× (1.14×) 4/0/2 | 1.00× (1.00×) 0/6/0 |
| rough | f32 | 1.30× (1.30×) 2/0/0 | 1.00× (1.00×) 0/2/0 |
| rough | f64 | 0.87× (0.87×) 0/0/2 | 1.00× (1.00×) 0/2/0 |
| batch | f32 | 1.23× (1.22×) 2/0/0 | 1.00× (1.00×) 0/2/0 |
| batch | f64 | 1.08× (1.00×) 2/0/0 | 1.00× (1.00×) 0/2/0 |

w/t/l = cells faster / within ±3% / slower than rustfft (best times).

## Suite `pow2`

### pow2 f32

| cell | fastfft | rustfft |
|---|---|---|
| N=32 fwd ip | 11.4ns (1.10×) | 12.6ns |
| N=1024 fwd ip | 504.7ns (1.20×) | 603.4ns |
| N=4096 fwd ip | 2.89us (1.12×) | 3.23us |
| N=4194304 fwd ip | 32.05ms (0.59×) | 18.98ms |
| N=8388608 fwd ip | 65.42ms (0.62×) | 40.34ms |

### pow2 f64

| cell | fastfft | rustfft |
|---|---|---|
| N=32 fwd ip | 13.9ns (1.26×) | 17.5ns |
| N=1024 fwd ip | 1.07us (1.16×) | 1.24us |
| N=4096 fwd ip | 5.56us (1.17×) | 6.49us |
| N=4194304 fwd ip | 71.53ms (0.56×) | 39.71ms |
| N=8388608 fwd ip | 143.12ms (0.60×) | 86.34ms |

## Suite `smooth`

### smooth f32

| cell | fastfft | rustfft |
|---|---|---|
| N=15 fwd ip | 14.1ns (1.83×) | 25.7ns |
| N=108 fwd ip | 123.9ns (0.49×) | 61.1ns |
| N=240 fwd ip | 168.4ns (0.73×) | 123.2ns |
| N=504 fwd ip | 311.5ns (0.90×) | 279.4ns |
| N=10368 fwd ip | 6.52us (1.33×) | 8.69us |
| N=1000000 fwd ip | 2.75ms (1.04×) | 2.87ms |

### smooth f64

| cell | fastfft | rustfft |
|---|---|---|
| N=15 fwd ip | 17.1ns (1.69×) | 28.9ns |
| N=108 fwd ip | 118.7ns (0.79×) | 93.4ns |
| N=240 fwd ip | 247.3ns (1.15×) | 284.9ns |
| N=504 fwd ip | 535.9ns (1.30×) | 698.7ns |
| N=10368 fwd ip | 13.10us (1.53×) | 20.04us |
| N=1000000 fwd ip | 10.94ms (0.73×) | 7.94ms |

## Suite `rough`

### rough f32

| cell | fastfft | rustfft |
|---|---|---|
| N=1021 fwd ip | 3.80us (1.37×) | 5.20us |
| N=2053 fwd ip | 9.10us (1.24×) | 11.24us |

### rough f64

| cell | fastfft | rustfft |
|---|---|---|
| N=1021 fwd ip | 9.53us (0.80×) | 7.66us |
| N=2053 fwd ip | 18.23us (0.95×) | 17.29us |

## Suite `batch`

### batch f32

| cell | fastfft | rustfft |
|---|---|---|
| N=32 ×32768 fwd ip | 7.1ns (1.27×) | 9.0ns |
| N=1024 ×1024 fwd ip | 555.8ns (1.19×) | 662.7ns |

### batch f64

| cell | fastfft | rustfft |
|---|---|---|
| N=32 ×32768 fwd ip | 14.0ns (1.08×) | 15.1ns |
| N=1024 ×1024 fwd ip | 1.45us (1.08×) | 1.57us |

## Accuracy and planning time (medians over cells)

| lib | cells verified | failed | median error (ε) | worst error (ε) | median plan time |
|---|---|---|---|---|---|
| fastfft | 30 | 0 | 0.98 | 2.78 | 23.32us |
| rustfft | 30 | 0 | 1.29 | 3.72 | 9.05us |

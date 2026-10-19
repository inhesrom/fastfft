# fastfft arena report: `single-final`

| | |
|---|---|
| Host | mini-ryzen |
| CPU | AMD Ryzen 7 7840HS w/ Radeon 780M Graphics (family 25, model 116, stepping 1, microcode 0xa704108) |
| Pinned CPU | 2 (SMT siblings 2,10) |
| Governor / EPP / boost | performance / performance / 1 |
| Kernel | Linux version 7.0.0-28-generic |
| Virtualization | container-other |
| rustc | rustc 1.95.0 (59807616e 2026-04-14); binary: rustc; commit-hash: 59807616e1fa2540724bfbac14d7976d7e4a3860; commit-date: 2026-04-14; host: x86_64-unknown-linux-gnu; release: 1.95.0; LLVM version: 22.1.2 |
| Build profile / RUSTFLAGS | arena / `-C llvm-args=-align-all-functions=6` |
| Libraries | {"fearless_simd":"0.5.0","num-complex":"0.4.6","oxifft":"0.4.2","phastft":"0.4.1","pulp":"0.22.3","rustfft":"6.4.1","tfhe-fft":"0.10.1"} |
| FFTW | fftw-3.3.11-sse2-avx-avx2-avx2_128-avx512 `double: CFLAGS='-O3 -fPIC -std=gnu17' ./configure --enable-static --disable-shared --disable-fortran --disable-doc --enable-sse2 --enable-avx --enable-avx2 --enable-avx512 --enable-fma
single: CFLAGS='-O3 -fPIC -std=gnu17' ./configure --enable-static --disable-shared --disable-fortran --disable-doc --enable-sse2 --enable-avx --enable-avx2 --enable-avx512 --enable-fma --enable-float` |
| Git | a4d8aae88738db827a9a259f23077b72b591481c (dirty: true) |
| Profile | quick |
| Official | true  |
| Control drift | max 0.58% over 2 control runs |
| Cells | 16 |

Times are per transform. *best* = minimum batch mean, *median* = median batch mean. Speedup = rustfft time ÷ library time (> 1 means faster than rustfft); *geomean* over the cells both libraries ran. mflops = 5·N·log2(N)/t(µs).

## Release gates (fastfft)

| Gate | Criterion | Status | Detail |
|---|---|---|---|
| G1 | pow2 vs rustfft: geomean ≥ 1.5×, no cell < 0.95× | ❌ fail | geomean best 1.222×, median 1.206×, worst cell 1.058× (pow2:f32:fwd:ip:n32), 16 cells |
| G2 | smooth vs rustfft: geomean ≥ 1.3×, no cell < 0.95× | – n/a | no data |
| G3 | rough vs rustfft: geomean ≥ 0.75×, no cell < 0.5× | – n/a | no data |
| G4 | vs each other Rust library: geomean ≥ 1.1×, ≥ 0.97× on ≥ 90% of cells | – n/a |  |
| G5 | AVX2 forced: pow2 ≥ 1.2×, smooth ≥ 1.1× vs rustfft | – n/a | pow2 NaN×/NaN×, smooth NaN×/NaN× |
| G6 | scenarios ≥ 1.3× each; batch geomean ≥ 1.5× | – n/a | scenarios min inf×, batch NaN×/NaN× |
| G7 | accuracy within §6 thresholds and ≤ 1.5× rustfft + 1ε | ✅ pass | 16 cells checked |
| G8 | Estimate planning time ≤ 2× rustfft for every N ≤ 2^20 | ❌ fail | worst ratio 19.73× (pow2:f64:fwd:ip:n16), 16 cells |

G9 (build time) is measured by `cargo xtask build-time`, not by the arena.

## Speedup vs rustfft (geomean of best-time ratios; median-time ratio in parentheses)

| suite | prec | fastfft | rustfft |
|---|---|---|---|
| pow2 | f32 | 1.20× (1.18×) 8/0/0 | 1.00× (1.00×) 0/8/0 |
| pow2 | f64 | 1.25× (1.23×) 8/0/0 | 1.00× (1.00×) 0/8/0 |

w/t/l = cells faster / within ±3% / slower than rustfft (best times).

## Suite `pow2`

### pow2 f32

| cell | fastfft | rustfft |
|---|---|---|
| N=8 fwd ip | 7.1ns (1.11×) | 7.8ns |
| N=16 fwd ip | 8.2ns (1.07×) | 8.8ns |
| N=32 fwd ip | 11.4ns (1.10×) | 12.6ns |
| N=64 fwd ip | 17.3ns (1.24×) | 21.4ns |
| N=128 fwd ip | 37.6ns (1.28×) | 48.0ns |
| N=256 fwd ip | 74.7ns (1.46×) | 109.3ns |
| N=512 fwd ip | 224.6ns (1.13×) | 253.7ns |
| N=1024 fwd ip | 502.2ns (1.23×) | 616.0ns |

![mflops](plots/pow2-f32-mflops.svg)
![speedup](plots/pow2-f32-speedup.svg)
![accuracy](plots/pow2-f32-accuracy.svg)

### pow2 f64

| cell | fastfft | rustfft |
|---|---|---|
| N=8 fwd ip | 6.6ns (1.07×) | 7.0ns |
| N=16 fwd ip | 8.9ns (1.14×) | 10.1ns |
| N=32 fwd ip | 14.2ns (1.23×) | 17.4ns |
| N=64 fwd ip | 29.8ns (1.33×) | 39.7ns |
| N=128 fwd ip | 61.5ns (1.38×) | 84.8ns |
| N=256 fwd ip | 128.8ns (1.53×) | 196.9ns |
| N=512 fwd ip | 437.0ns (1.16×) | 505.7ns |
| N=1024 fwd ip | 1.05us (1.20×) | 1.25us |

![mflops](plots/pow2-f64-mflops.svg)
![speedup](plots/pow2-f64-speedup.svg)
![accuracy](plots/pow2-f64-accuracy.svg)

## Accuracy and planning time (medians over cells)

| lib | cells verified | failed | median error (ε) | worst error (ε) | median plan time |
|---|---|---|---|---|---|
| fastfft | 16 | 0 | 0.73 | 0.98 | 6.70us |
| rustfft | 16 | 0 | 0.81 | 1.29 | 982.0ns |

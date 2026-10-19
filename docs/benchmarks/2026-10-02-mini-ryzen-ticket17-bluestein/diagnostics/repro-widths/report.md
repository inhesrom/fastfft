# fastfft arena report: `repro-widths`

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
| Git | b908bc6c0d76427cf82cafb6a53625eaebbab812 (dirty: true) |
| Profile | quick |
| Official | true  |
| Control drift | max 0.94% over 2 control runs |
| Cells | 2 |

Times are per transform. *best* = minimum batch mean, *median* = median batch mean. Speedup = rustfft time ÷ library time (> 1 means faster than rustfft); *geomean* over the cells both libraries ran. mflops = 5·N·log2(N)/t(µs).

## Release gates (fastfft)

| Gate | Criterion | Status | Detail |
|---|---|---|---|
| G1 | pow2 vs rustfft: geomean ≥ 1.5×, no cell < 0.95× | – n/a | no data |
| G2 | smooth vs rustfft: geomean ≥ 1.3×, no cell < 0.95× | – n/a | no data |
| G3 | rough vs rustfft: geomean ≥ 0.75×, no cell < 0.5× | ❌ fail | geomean best 0.490×, median 0.490×, worst cell 0.481× (rough:f32:fwd:ip:n17), 2 cells |
| G4 | vs each other Rust library: geomean ≥ 1.1×, ≥ 0.97× on ≥ 90% of cells | – n/a |  |
| G5 | AVX2 forced: pow2 ≥ 1.2×, smooth ≥ 1.1× vs rustfft | – n/a | pow2 NaN×/NaN×, smooth NaN×/NaN× |
| G6 | scenarios ≥ 1.3× each; batch geomean ≥ 1.5× | – n/a | scenarios min inf×, batch NaN×/NaN× |
| G7 | accuracy within §6 thresholds and ≤ 1.5× rustfft + 1ε | ✅ pass | 2 cells checked |
| G8 | Estimate planning time ≤ 2× rustfft for every N ≤ 2^20 | ❌ fail | worst ratio 219.29× (rough:f64:fwd:ip:n17), 2 cells |

G9 (build time) is measured by `cargo xtask build-time`, not by the arena.

## Speedup vs rustfft (geomean of best-time ratios; median-time ratio in parentheses)

| suite | prec | fastfft | fastfft/avx512-ymm | fastfft/avx2 | fastfft/sse2 | rustfft |
|---|---|---|---|---|---|---|
| rough | f32 | 0.48× (0.48×) 0/0/1 | 0.53× (0.53×) 0/0/1 | 0.38× (0.38×) 0/0/1 | 0.33× (0.34×) 0/0/1 | 1.00× (1.00×) 0/1/0 |
| rough | f64 | 0.50× (0.50×) 0/0/1 | 0.51× (0.50×) 0/0/1 | 0.33× (0.33×) 0/0/1 | 0.25× (0.25×) 0/0/1 | 1.00× (1.00×) 0/1/0 |

w/t/l = cells faster / within ±3% / slower than rustfft (best times).

## Suite `rough`

### rough f32

| cell | fastfft | fastfft/avx512-ymm | fastfft/avx2 | fastfft/sse2 | rustfft |
|---|---|---|---|---|---|
| N=17 fwd ip | 55.2ns (0.48×) | 50.5ns (0.53×) | 70.2ns (0.38×) | 79.2ns (0.33×) | 26.5ns |

![mflops](plots/rough-f32-mflops.svg)
![speedup](plots/rough-f32-speedup.svg)
![accuracy](plots/rough-f32-accuracy.svg)

### rough f64

| cell | fastfft | fastfft/avx512-ymm | fastfft/avx2 | fastfft/sse2 | rustfft |
|---|---|---|---|---|---|
| N=17 fwd ip | 61.8ns (0.50×) | 60.6ns (0.51×) | 93.6ns (0.33×) | 124.7ns (0.25×) | 30.9ns |

![mflops](plots/rough-f64-mflops.svg)
![speedup](plots/rough-f64-speedup.svg)
![accuracy](plots/rough-f64-accuracy.svg)

## Accuracy and planning time (medians over cells)

| lib | cells verified | failed | median error (ε) | worst error (ε) | median plan time |
|---|---|---|---|---|---|
| fastfft | 2 | 0 | 1.28 | 1.28 | 17.54us |
| fastfft/avx512-ymm | 2 | 0 | 1.28 | 1.28 | 12.72us |
| fastfft/avx2 | 2 | 0 | 1.28 | 1.28 | 11.00us |
| fastfft/sse2 | 2 | 0 | 1.72 | 1.72 | 9.10us |
| rustfft | 2 | 0 | 0.68 | 0.68 | 80.0ns |

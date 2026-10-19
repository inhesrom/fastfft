# fastfft arena report: `shared-smoke`

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
| FFTW | ? `?` |
| Git | 932ed59d5d8c23b239436940a1ac8b622a7cbb7f (dirty: true) |
| Profile | quick |
| Official | true  |
| Control drift | max 0.09% over 2 control runs |
| Cells | 18 |

Times are per transform. *best* = minimum batch mean, *median* = median batch mean. Speedup = rustfft time ÷ library time (> 1 means faster than rustfft); *geomean* over the cells both libraries ran. mflops = 5·N·log2(N)/t(µs).

## Release gates (fastfft)

| Gate | Criterion | Status | Detail |
|---|---|---|---|
| G1 | pow2 vs rustfft: geomean ≥ 1.5×, no cell < 0.95× | ❌ fail | geomean best 1.336×, median 1.327×, worst cell 1.214× (pow2:f32:fwd:ip:n64), 6 cells |
| G2 | smooth vs rustfft: geomean ≥ 1.3×, no cell < 0.95× | ❌ fail | geomean best 1.283×, median 1.280×, worst cell 1.190× (smooth:f32:fwd:ip:n768), 2 cells |
| G3 | rough vs rustfft: geomean ≥ 0.75×, no cell < 0.5× | ❌ fail | geomean best 0.562×, median 0.559×, worst cell 0.542× (rough:f64:fwd:ip:n17), 2 cells |
| G4 | vs each other Rust library: geomean ≥ 1.1×, ≥ 0.97× on ≥ 90% of cells | – n/a |  |
| G5 | AVX2 forced: pow2 ≥ 1.2×, smooth ≥ 1.1× vs rustfft | – n/a | pow2 NaN×/NaN×, smooth NaN×/NaN× |
| G6 | scenarios ≥ 1.3× each; batch geomean ≥ 1.5× | – n/a | scenarios min inf×, batch NaN×/NaN× |
| G7 | accuracy within §6 thresholds and ≤ 1.5× rustfft + 1ε | ✅ pass | 18 cells checked |
| G8 | Estimate planning time ≤ 2× rustfft for every N ≤ 2^20 | ❌ fail | worst ratio 18.54× (rough:f64:fwd:ip:n17), 18 cells |

G9 (build time) is measured by `cargo xtask build-time`, not by the arena.

## Speedup vs rustfft (geomean of best-time ratios; median-time ratio in parentheses)

| suite | prec | fastfft | fastfft/measure | rustfft |
|---|---|---|---|---|
| pow2 | f32 | 1.28× (1.27×) 3/0/0 | 1.31× (1.31×) 3/0/0 | 1.00× (1.00×) 0/3/0 |
| pow2 | f64 | 1.40× (1.38×) 3/0/0 | 1.39× (1.39×) 3/0/0 | 1.00× (1.00×) 0/3/0 |
| smooth | f32 | 1.20× (1.19×) 1/0/0 | 1.20× (1.19×) 1/0/0 | 1.00× (1.00×) 0/1/0 |
| smooth | f64 | 1.38× (1.38×) 1/0/0 | 1.33× (1.33×) 1/0/0 | 1.00× (1.00×) 0/1/0 |
| rough | f32 | 0.57× (0.58×) 0/0/1 | 0.57× (0.58×) 0/0/1 | 1.00× (1.00×) 0/1/0 |
| rough | f64 | 0.55× (0.54×) 0/0/1 | 0.55× (0.55×) 0/0/1 | 1.00× (1.00×) 0/1/0 |
| datacheck | f32 | 1.27× (1.26×) 4/0/0 | 1.29× (1.27×) 4/0/0 | 1.00× (1.00×) 0/4/0 |
| datacheck | f64 | 1.46× (1.44×) 4/0/0 | 1.45× (1.45×) 4/0/0 | 1.00× (1.00×) 0/4/0 |

w/t/l = cells faster / within ±3% / slower than rustfft (best times).

## Suite `pow2`

### pow2 f32

| cell | fastfft | fastfft/measure | rustfft |
|---|---|---|---|
| N=64 fwd ip | 17.5ns (1.23×) | 17.5ns (1.23×) | 21.4ns |
| N=4096 fwd ip | 2.51us (1.29×) | 2.38us (1.36×) | 3.25us |
| N=16384 fwd ip | 11.85us (1.31×) | 11.55us (1.35×) | 15.58us |

![mflops](plots/pow2-f32-mflops.svg)
![speedup](plots/pow2-f32-speedup.svg)
![accuracy](plots/pow2-f32-accuracy.svg)

### pow2 f64

| cell | fastfft | fastfft/measure | rustfft |
|---|---|---|---|
| N=64 fwd ip | 29.2ns (1.32×) | 29.8ns (1.30×) | 38.6ns |
| N=4096 fwd ip | 4.61us (1.40×) | 4.57us (1.41×) | 6.47us |
| N=16384 fwd ip | 22.49us (1.47×) | 22.45us (1.47×) | 33.07us |

![mflops](plots/pow2-f64-mflops.svg)
![speedup](plots/pow2-f64-speedup.svg)
![accuracy](plots/pow2-f64-accuracy.svg)

## Suite `smooth`

### smooth f32

| cell | fastfft | fastfft/measure | rustfft |
|---|---|---|---|
| N=768 fwd ip | 348.7ns (1.20×) | 348.1ns (1.20×) | 416.7ns |

![mflops](plots/smooth-f32-mflops.svg)
![speedup](plots/smooth-f32-speedup.svg)
![accuracy](plots/smooth-f32-accuracy.svg)

### smooth f64

| cell | fastfft | fastfft/measure | rustfft |
|---|---|---|---|
| N=768 fwd ip | 687.3ns (1.38×) | 710.9ns (1.33×) | 946.4ns |

![mflops](plots/smooth-f64-mflops.svg)
![speedup](plots/smooth-f64-speedup.svg)
![accuracy](plots/smooth-f64-accuracy.svg)

## Suite `rough`

### rough f32

| cell | fastfft | fastfft/measure | rustfft |
|---|---|---|---|
| N=17 fwd ip | 46.9ns (0.57×) | 46.6ns (0.57×) | 26.8ns |

![mflops](plots/rough-f32-mflops.svg)
![speedup](plots/rough-f32-speedup.svg)
![accuracy](plots/rough-f32-accuracy.svg)

### rough f64

| cell | fastfft | fastfft/measure | rustfft |
|---|---|---|---|
| N=17 fwd ip | 56.6ns (0.55×) | 57.2ns (0.55×) | 31.3ns |

![mflops](plots/rough-f64-mflops.svg)
![speedup](plots/rough-f64-speedup.svg)
![accuracy](plots/rough-f64-accuracy.svg)

## Suite `datacheck`

### datacheck f32

| cell | fastfft | fastfft/measure | rustfft |
|---|---|---|---|
| N=64 fwd imm | 16.0ns (1.28×) | 16.2ns (1.26×) | 20.4ns |
| N=64 fwd imm | 16.2ns (1.26×) | 16.0ns (1.28×) | 20.4ns |
| N=4096 fwd imm | 2.69us (1.27×) | 2.59us (1.32×) | 3.43us |
| N=4096 fwd imm | 2.68us (1.27×) | 2.61us (1.31×) | 3.41us |

![mflops](plots/datacheck-f32-mflops.svg)
![speedup](plots/datacheck-f32-speedup.svg)
![accuracy](plots/datacheck-f32-accuracy.svg)

### datacheck f64

| cell | fastfft | fastfft/measure | rustfft |
|---|---|---|---|
| N=64 fwd imm | 27.4ns (1.42×) | 27.4ns (1.42×) | 38.8ns |
| N=64 fwd imm | 27.4ns (1.42×) | 27.6ns (1.41×) | 39.0ns |
| N=4096 fwd imm | 4.58us (1.46×) | 4.57us (1.46×) | 6.67us |
| N=4096 fwd imm | 4.57us (1.53×) | 4.56us (1.53×) | 6.98us |

![mflops](plots/datacheck-f64-mflops.svg)
![speedup](plots/datacheck-f64-speedup.svg)
![accuracy](plots/datacheck-f64-accuracy.svg)

## Accuracy and planning time (medians over cells)

| lib | cells verified | failed | median error (ε) | worst error (ε) | median plan time |
|---|---|---|---|---|---|
| fastfft | 18 | 0 | 1.02 | 1.28 | 9.50us |
| fastfft/measure | 18 | 0 | 1.02 | 1.28 | 10.22ms |
| rustfft | 18 | 0 | 1.03 | 2.25 | 9.11us |

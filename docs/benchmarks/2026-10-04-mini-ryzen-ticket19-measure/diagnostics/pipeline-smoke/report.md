# fastfft arena report: `pipeline-smoke`

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
| Control drift | max 0.58% over 2 control runs |
| Cells | 6 |

Times are per transform. *best* = minimum batch mean, *median* = median batch mean. Speedup = rustfft time ÷ library time (> 1 means faster than rustfft); *geomean* over the cells both libraries ran. mflops = 5·N·log2(N)/t(µs).

## Release gates (fastfft)

| Gate | Criterion | Status | Detail |
|---|---|---|---|
| G1 | pow2 vs rustfft: geomean ≥ 1.5×, no cell < 0.95× | – n/a | no data |
| G2 | smooth vs rustfft: geomean ≥ 1.3×, no cell < 0.95× | – n/a | no data |
| G3 | rough vs rustfft: geomean ≥ 0.75×, no cell < 0.5× | – n/a | no data |
| G4 | vs each other Rust library: geomean ≥ 1.1×, ≥ 0.97× on ≥ 90% of cells | – n/a |  |
| G5 | AVX2 forced: pow2 ≥ 1.2×, smooth ≥ 1.1× vs rustfft | – n/a | pow2 NaN×/NaN×, smooth NaN×/NaN× |
| G6 | scenarios ≥ 1.3× each; batch geomean ≥ 1.5× | ❌ fail | scenarios min 1.092×, batch NaN×/NaN× |
| G7 | accuracy within §6 thresholds and ≤ 1.5× rustfft + 1ε | – n/a | 0 cells checked |
| G8 | Estimate planning time ≤ 2× rustfft for every N ≤ 2^20 | – n/a | worst ratio 0.00× (), 0 cells |

G9 (build time) is measured by `cargo xtask build-time`, not by the arena.

## Speedup vs rustfft (geomean of best-time ratios; median-time ratio in parentheses)

| suite | prec | fastfft | fastfft/measure | rustfft | phastft/split |
|---|---|---|---|---|---|
| realworld | f32 | 1.15× (1.15×) 5/0/0 | 1.14× (1.14×) 5/0/0 | 1.00× (1.00×) 0/5/0 | 0.87× (0.88×) 0/1/4 |
| realworld | f64 | 1.18× (1.17×) 1/0/0 | 1.18× (1.17×) 1/0/0 | 1.00× (1.00×) 0/1/0 | 0.91× (0.91×) 0/0/1 |

w/t/l = cells faster / within ±3% / slower than rustfft (best times).

## Suite `realworld`

### realworld f32

| cell | fastfft | fastfft/measure | rustfft | phastft/split |
|---|---|---|---|---|
| Spectrogram N=1024 | 760 MS/s (1.09×) | 728 MS/s (1.05×) | 696 MS/s | 700 MS/s (1.01×) |
| Spectrogram N=4096 | 645 MS/s (1.13×) | 661 MS/s (1.16×) | 570 MS/s | 510 MS/s (0.89×) |
| Spectrogram N=16384 | 605 MS/s (1.16×) | 607 MS/s (1.16×) | 523 MS/s | 450 MS/s (0.86×) |
| Spectrogram N=65536 | 534 MS/s (1.16×) | 530 MS/s (1.15×) | 459 MS/s | 346 MS/s (0.75×) |
| OverlapSave N=4096 | 338 MS/s (1.21×) | 339 MS/s (1.21×) | 281 MS/s | 247 MS/s (0.88×) |

### realworld f64

| cell | fastfft | fastfft/measure | rustfft | phastft/split |
|---|---|---|---|---|
| Spectrogram N=4096 | 336 MS/s (1.18×) | 336 MS/s (1.18×) | 285 MS/s | 260 MS/s (0.91×) |

## Accuracy and planning time (medians over cells)

| lib | cells verified | failed | median error (ε) | worst error (ε) | median plan time |
|---|---|---|---|---|---|
| fastfft | 6 | 0 | 1.19 | 2.18 | 35.31us |
| fastfft/measure | 6 | 0 | 1.19 | 2.18 | 7.41ms |
| rustfft | 6 | 0 | 0.80 | 1.26 | 35.58us |
| phastft/split | 6 | 0 | 1.33 | 2.37 | 39.84us |

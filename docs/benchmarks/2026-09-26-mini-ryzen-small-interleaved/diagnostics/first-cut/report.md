# fastfft arena report: `final`

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
| Profile | full |
| Official | true  |
| Control drift | max 1.04% over 4 control runs |
| Cells | 64 |

Times are per transform. *best* = minimum batch mean, *median* = median batch mean. Speedup = rustfft time ÷ library time (> 1 means faster than rustfft); *geomean* over the cells both libraries ran. mflops = 5·N·log2(N)/t(µs).

## Release gates (fastfft)

| Gate | Criterion | Status | Detail |
|---|---|---|---|
| G1 | pow2 vs rustfft: geomean ≥ 1.5×, no cell < 0.95× | ❌ fail | geomean best 1.135×, median 1.107×, worst cell 0.797× (pow2:f32:fwd:oop:n2), 64 cells |
| G2 | smooth vs rustfft: geomean ≥ 1.3×, no cell < 0.95× | – n/a | no data |
| G3 | rough vs rustfft: geomean ≥ 0.75×, no cell < 0.5× | – n/a | no data |
| G4 | vs each other Rust library: geomean ≥ 1.1×, ≥ 0.97× on ≥ 90% of cells | – n/a |  |
| G5 | AVX2 forced: pow2 ≥ 1.2×, smooth ≥ 1.1× vs rustfft | – n/a | pow2 NaN×/NaN×, smooth NaN×/NaN× |
| G6 | scenarios ≥ 1.3× each; batch geomean ≥ 1.5× | – n/a | scenarios min inf×, batch NaN×/NaN× |
| G7 | accuracy within §6 thresholds and ≤ 1.5× rustfft + 1ε | ✅ pass | 64 cells checked |
| G8 | Estimate planning time ≤ 2× rustfft for every N ≤ 2^20 | ❌ fail | worst ratio 17.04× (pow2:f64:fwd:oop:n16), 64 cells |

G9 (build time) is measured by `cargo xtask build-time`, not by the arena.

## Speedup vs rustfft (geomean of best-time ratios; median-time ratio in parentheses)

| suite | prec | fastfft | rustfft |
|---|---|---|---|
| pow2 | f32 | 1.14× (1.12×) 27/5/0 | 1.00× (1.00×) 0/32/0 |
| pow2 | f64 | 1.13× (1.10×) 28/4/0 | 1.00× (1.00×) 0/32/0 |

w/t/l = cells faster / within ±3% / slower than rustfft (best times).

## Suite `pow2`

### pow2 f32

| cell | fastfft | rustfft |
|---|---|---|
| N=2 fwd ip | 2.6ns (1.08×) | 2.8ns |
| N=2 fwd oop | 2.2ns (1.01×) | 2.2ns |
| N=2 inv ip | 2.6ns (1.08×) | 2.8ns |
| N=2 inv oop | 2.2ns (1.28×) | 2.8ns |
| N=4 fwd ip | 3.6ns (1.17×) | 4.2ns |
| N=4 fwd oop | 2.2ns (1.65×) | 3.6ns |
| N=4 inv ip | 3.6ns (1.19×) | 4.2ns |
| N=4 inv oop | 2.2ns (1.56×) | 3.4ns |
| N=8 fwd ip | 7.3ns (1.06×) | 7.8ns |
| N=8 fwd oop | 2.8ns (1.22×) | 3.4ns |
| N=8 inv ip | 7.3ns (1.06×) | 7.8ns |
| N=8 inv oop | 2.6ns (1.32×) | 3.4ns |
| N=16 fwd ip | 8.6ns (1.01×) | 8.7ns |
| N=16 fwd oop | 3.4ns (1.18×) | 4.0ns |
| N=16 inv ip | 8.6ns (1.01×) | 8.7ns |
| N=16 inv oop | 3.4ns (1.19×) | 4.0ns |
| N=32 fwd ip | 12.4ns (1.01×) | 12.5ns |
| N=32 fwd oop | 8.5ns (1.14×) | 9.7ns |
| N=32 inv ip | 12.4ns (1.00×) | 12.4ns |
| N=32 inv oop | 8.5ns (1.14×) | 9.7ns |
| N=64 fwd ip | 18.9ns (1.14×) | 21.5ns |
| N=64 fwd oop | 17.9ns (1.14×) | 20.3ns |
| N=64 inv ip | 18.8ns (1.14×) | 21.5ns |
| N=64 inv oop | 17.9ns (1.14×) | 20.3ns |
| N=128 fwd ip | 43.2ns (1.10×) | 47.7ns |
| N=128 fwd oop | 42.7ns (1.10×) | 46.8ns |
| N=128 inv ip | 43.2ns (1.10×) | 47.7ns |
| N=128 inv oop | 43.4ns (1.06×) | 45.8ns |
| N=256 fwd ip | 96.1ns (1.07×) | 103.0ns |
| N=256 fwd oop | 94.9ns (1.08×) | 102.6ns |
| N=256 inv ip | 96.1ns (1.08×) | 103.9ns |
| N=256 inv oop | 95.3ns (1.08×) | 103.1ns |

### pow2 f64

| cell | fastfft | rustfft |
|---|---|---|
| N=2 fwd ip | 2.4ns (1.08×) | 2.6ns |
| N=2 fwd oop | 2.2ns (1.10×) | 2.4ns |
| N=2 inv ip | 2.4ns (1.08×) | 2.6ns |
| N=2 inv oop | 2.2ns (1.10×) | 2.4ns |
| N=4 fwd ip | 3.6ns (1.05×) | 3.8ns |
| N=4 fwd oop | 2.2ns (1.56×) | 3.4ns |
| N=4 inv ip | 3.6ns (1.06×) | 3.8ns |
| N=4 inv oop | 2.2ns (1.46×) | 3.2ns |
| N=8 fwd ip | 6.8ns (1.03×) | 7.0ns |
| N=8 fwd oop | 3.0ns (1.27×) | 3.8ns |
| N=8 inv ip | 6.9ns (1.02×) | 7.0ns |
| N=8 inv oop | 3.0ns (1.15×) | 3.4ns |
| N=16 fwd ip | 9.4ns (1.09×) | 10.2ns |
| N=16 fwd oop | 5.3ns (1.43×) | 7.6ns |
| N=16 inv ip | 9.4ns (1.08×) | 10.2ns |
| N=16 inv oop | 5.2ns (1.45×) | 7.6ns |
| N=32 fwd ip | 15.1ns (1.17×) | 17.7ns |
| N=32 fwd oop | 13.4ns (1.15×) | 15.4ns |
| N=32 inv ip | 15.0ns (1.18×) | 17.7ns |
| N=32 inv oop | 13.4ns (1.14×) | 15.2ns |
| N=64 fwd ip | 38.8ns (1.00×) | 38.8ns |
| N=64 fwd oop | 37.5ns (1.03×) | 38.7ns |
| N=64 inv ip | 38.9ns (0.99×) | 38.5ns |
| N=64 inv oop | 36.8ns (1.04×) | 38.2ns |
| N=128 fwd ip | 79.0ns (1.07×) | 84.6ns |
| N=128 fwd oop | 78.9ns (1.05×) | 83.1ns |
| N=128 inv ip | 78.8ns (1.07×) | 84.5ns |
| N=128 inv oop | 79.2ns (1.06×) | 84.3ns |
| N=256 fwd ip | 170.7ns (1.14×) | 195.3ns |
| N=256 fwd oop | 169.5ns (1.13×) | 192.3ns |
| N=256 inv ip | 170.3ns (1.15×) | 195.6ns |
| N=256 inv oop | 170.6ns (1.13×) | 192.1ns |

## Accuracy and planning time (medians over cells)

| lib | cells verified | failed | median error (ε) | worst error (ε) | median plan time |
|---|---|---|---|---|---|
| fastfft | 64 | 0 | 0.50 | 0.85 | 1.86us |
| rustfft | 64 | 0 | 0.57 | 0.97 | 270.0ns |

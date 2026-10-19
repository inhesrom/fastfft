# fastfft arena report: `final2`

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
| Control drift | max 0.75% over 4 control runs |
| Cells | 64 |

Times are per transform. *best* = minimum batch mean, *median* = median batch mean. Speedup = rustfft time ÷ library time (> 1 means faster than rustfft); *geomean* over the cells both libraries ran. mflops = 5·N·log2(N)/t(µs).

## Release gates (fastfft)

| Gate | Criterion | Status | Detail |
|---|---|---|---|
| G1 | pow2 vs rustfft: geomean ≥ 1.5×, no cell < 0.95× | ❌ fail | geomean best 1.210×, median 1.189×, worst cell 1.000× (pow2:f64:inv:ip:n2), 64 cells |
| G2 | smooth vs rustfft: geomean ≥ 1.3×, no cell < 0.95× | – n/a | no data |
| G3 | rough vs rustfft: geomean ≥ 0.75×, no cell < 0.5× | – n/a | no data |
| G4 | vs each other Rust library: geomean ≥ 1.1×, ≥ 0.97× on ≥ 90% of cells | – n/a |  |
| G5 | AVX2 forced: pow2 ≥ 1.2×, smooth ≥ 1.1× vs rustfft | – n/a | pow2 NaN×/NaN×, smooth NaN×/NaN× |
| G6 | scenarios ≥ 1.3× each; batch geomean ≥ 1.5× | – n/a | scenarios min inf×, batch NaN×/NaN× |
| G7 | accuracy within §6 thresholds and ≤ 1.5× rustfft + 1ε | ✅ pass | 64 cells checked |
| G8 | Estimate planning time ≤ 2× rustfft for every N ≤ 2^20 | ❌ fail | worst ratio 17.44× (pow2:f64:fwd:oop:n16), 64 cells |

G9 (build time) is measured by `cargo xtask build-time`, not by the arena.

## Speedup vs rustfft (geomean of best-time ratios; median-time ratio in parentheses)

| suite | prec | fastfft | rustfft |
|---|---|---|---|
| pow2 | f32 | 1.19× (1.18×) 32/0/0 | 1.00× (1.00×) 0/32/0 |
| pow2 | f64 | 1.23× (1.20×) 32/0/0 | 1.00× (1.00×) 0/32/0 |

w/t/l = cells faster / within ±3% / slower than rustfft (best times).

## Suite `pow2`

### pow2 f32

| cell | fastfft | rustfft |
|---|---|---|
| N=2 fwd ip | 2.6ns (1.08×) | 2.8ns |
| N=2 fwd oop | 2.0ns (1.21×) | 2.4ns |
| N=2 inv ip | 2.6ns (1.08×) | 2.8ns |
| N=2 inv oop | 2.0ns (1.21×) | 2.4ns |
| N=4 fwd ip | 3.6ns (1.17×) | 4.2ns |
| N=4 fwd oop | 2.2ns (1.47×) | 3.2ns |
| N=4 inv ip | 3.6ns (1.19×) | 4.2ns |
| N=4 inv oop | 2.2ns (1.46×) | 3.2ns |
| N=8 fwd ip | 7.1ns (1.10×) | 7.8ns |
| N=8 fwd oop | 2.6ns (1.32×) | 3.4ns |
| N=8 inv ip | 7.1ns (1.10×) | 7.7ns |
| N=8 inv oop | 2.6ns (1.31×) | 3.4ns |
| N=16 fwd ip | 8.3ns (1.06×) | 8.7ns |
| N=16 fwd oop | 3.4ns (1.19×) | 4.0ns |
| N=16 inv ip | 8.2ns (1.06×) | 8.7ns |
| N=16 inv oop | 3.4ns (1.18×) | 4.0ns |
| N=32 fwd ip | 11.8ns (1.06×) | 12.5ns |
| N=32 fwd oop | 8.3ns (1.16×) | 9.7ns |
| N=32 inv ip | 11.8ns (1.06×) | 12.6ns |
| N=32 inv oop | 8.1ns (1.19×) | 9.7ns |
| N=64 fwd ip | 18.0ns (1.21×) | 21.8ns |
| N=64 fwd oop | 16.6ns (1.21×) | 20.1ns |
| N=64 inv ip | 17.8ns (1.21×) | 21.5ns |
| N=64 inv oop | 16.8ns (1.21×) | 20.3ns |
| N=128 fwd ip | 40.5ns (1.19×) | 48.0ns |
| N=128 fwd oop | 40.6ns (1.14×) | 46.5ns |
| N=128 inv ip | 40.7ns (1.17×) | 47.5ns |
| N=128 inv oop | 40.6ns (1.14×) | 46.2ns |
| N=256 fwd ip | 83.4ns (1.26×) | 105.2ns |
| N=256 fwd oop | 83.7ns (1.23×) | 102.9ns |
| N=256 inv ip | 82.4ns (1.29×) | 106.4ns |
| N=256 inv oop | 83.5ns (1.23×) | 102.8ns |

### pow2 f64

| cell | fastfft | rustfft |
|---|---|---|
| N=2 fwd ip | 2.4ns (1.08×) | 2.6ns |
| N=2 fwd oop | 2.2ns (1.37×) | 3.0ns |
| N=2 inv ip | 2.4ns (1.08×) | 2.6ns |
| N=2 inv oop | 2.2ns (1.37×) | 3.0ns |
| N=4 fwd ip | 3.6ns (1.06×) | 3.8ns |
| N=4 fwd oop | 2.4ns (1.51×) | 3.6ns |
| N=4 inv ip | 3.6ns (1.06×) | 3.8ns |
| N=4 inv oop | 2.4ns (1.43×) | 3.4ns |
| N=8 fwd ip | 6.5ns (1.07×) | 7.0ns |
| N=8 fwd oop | 3.0ns (1.27×) | 3.8ns |
| N=8 inv ip | 6.5ns (1.07×) | 7.0ns |
| N=8 inv oop | 3.0ns (1.14×) | 3.4ns |
| N=16 fwd ip | 9.3ns (1.10×) | 10.2ns |
| N=16 fwd oop | 5.1ns (1.48×) | 7.5ns |
| N=16 inv ip | 9.3ns (1.10×) | 10.2ns |
| N=16 inv oop | 5.1ns (1.48×) | 7.5ns |
| N=32 fwd ip | 14.6ns (1.24×) | 18.1ns |
| N=32 fwd oop | 12.8ns (1.20×) | 15.4ns |
| N=32 inv ip | 14.6ns (1.21×) | 17.7ns |
| N=32 inv oop | 12.9ns (1.18×) | 15.3ns |
| N=64 fwd ip | 32.1ns (1.22×) | 39.0ns |
| N=64 fwd oop | 30.6ns (1.24×) | 37.8ns |
| N=64 inv ip | 32.3ns (1.22×) | 39.3ns |
| N=64 inv oop | 30.4ns (1.25×) | 38.2ns |
| N=128 fwd ip | 67.9ns (1.24×) | 84.3ns |
| N=128 fwd oop | 68.9ns (1.22×) | 83.9ns |
| N=128 inv ip | 68.4ns (1.25×) | 85.6ns |
| N=128 inv oop | 68.6ns (1.22×) | 83.7ns |
| N=256 fwd ip | 146.7ns (1.33×) | 195.7ns |
| N=256 fwd oop | 147.6ns (1.30×) | 192.1ns |
| N=256 inv ip | 147.3ns (1.32×) | 194.4ns |
| N=256 inv oop | 148.0ns (1.31×) | 193.4ns |

## Accuracy and planning time (medians over cells)

| lib | cells verified | failed | median error (ε) | worst error (ε) | median plan time |
|---|---|---|---|---|---|
| fastfft | 64 | 0 | 0.53 | 0.79 | 1.74us |
| rustfft | 64 | 0 | 0.57 | 0.97 | 270.0ns |

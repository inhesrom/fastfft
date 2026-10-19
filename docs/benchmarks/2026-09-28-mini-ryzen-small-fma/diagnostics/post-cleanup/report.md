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
| Build profile / RUSTFLAGS | arena / `-C llvm-args=-align-all-functions=6` |
| Libraries | {"fearless_simd":"0.5.0","num-complex":"0.4.6","oxifft":"0.4.2","phastft":"0.4.1","pulp":"0.22.3","rustfft":"6.4.1","tfhe-fft":"0.10.1"} |
| FFTW | fftw-3.3.11-sse2-avx-avx2-avx2_128-avx512 `double: CFLAGS='-O3 -fPIC -std=gnu17' ./configure --enable-static --disable-shared --disable-fortran --disable-doc --enable-sse2 --enable-avx --enable-avx2 --enable-avx512 --enable-fma
single: CFLAGS='-O3 -fPIC -std=gnu17' ./configure --enable-static --disable-shared --disable-fortran --disable-doc --enable-sse2 --enable-avx --enable-avx2 --enable-avx512 --enable-fma --enable-float` |
| Git | 4d6211bc017f28cec511ecaf1e5bba2a01e49880 (dirty: true) |
| Profile | full |
| Official | true  |
| Control drift | max 34.53% over 4 control runs — **FLAGGED** |
| Cells | 64 |

Times are per transform. *best* = minimum batch mean, *median* = median batch mean. Speedup = rustfft time ÷ library time (> 1 means faster than rustfft); *geomean* over the cells both libraries ran. mflops = 5·N·log2(N)/t(µs).

## Release gates (fastfft)

| Gate | Criterion | Status | Detail |
|---|---|---|---|
| G1 | pow2 vs rustfft: geomean ≥ 1.5×, no cell < 0.95× | ❌ fail | geomean best 1.276×, median 1.253×, worst cell 0.926× (pow2:f64:inv:ip:n2), 64 cells |
| G2 | smooth vs rustfft: geomean ≥ 1.3×, no cell < 0.95× | – n/a | no data |
| G3 | rough vs rustfft: geomean ≥ 0.75×, no cell < 0.5× | – n/a | no data |
| G4 | vs each other Rust library: geomean ≥ 1.1×, ≥ 0.97× on ≥ 90% of cells | – n/a |  |
| G5 | AVX2 forced: pow2 ≥ 1.2×, smooth ≥ 1.1× vs rustfft | – n/a | pow2 NaN×/NaN×, smooth NaN×/NaN× |
| G6 | scenarios ≥ 1.3× each; batch geomean ≥ 1.5× | – n/a | scenarios min inf×, batch NaN×/NaN× |
| G7 | accuracy within §6 thresholds and ≤ 1.5× rustfft + 1ε | ✅ pass | 64 cells checked |
| G8 | Estimate planning time ≤ 2× rustfft for every N ≤ 2^20 | ❌ fail | worst ratio 19.94× (pow2:f64:inv:oop:n16), 64 cells |

G9 (build time) is measured by `cargo xtask build-time`, not by the arena.

## Speedup vs rustfft (geomean of best-time ratios; median-time ratio in parentheses)

| suite | prec | fastfft | rustfft |
|---|---|---|---|
| pow2 | f32 | 1.28× (1.24×) 32/0/0 | 1.00× (1.00×) 0/32/0 |
| pow2 | f64 | 1.27× (1.26×) 29/1/2 | 1.00× (1.00×) 0/32/0 |

w/t/l = cells faster / within ±3% / slower than rustfft (best times).

## Suite `pow2`

### pow2 f32

| cell | fastfft | rustfft |
|---|---|---|
| N=2 fwd ip | 2.6ns (1.08×) | 2.8ns |
| N=2 fwd oop | 1.0ns (1.39×) | 1.4ns |
| N=2 inv ip | 2.6ns (1.07×) | 2.8ns |
| N=2 inv oop | 1.0ns (1.40×) | 1.4ns |
| N=4 fwd ip | 3.6ns (1.12×) | 4.0ns |
| N=4 fwd oop | 1.2ns (1.66×) | 2.0ns |
| N=4 inv ip | 3.6ns (1.17×) | 4.2ns |
| N=4 inv oop | 1.2ns (1.83×) | 2.2ns |
| N=8 fwd ip | 7.0ns (1.11×) | 7.8ns |
| N=8 fwd oop | 1.8ns (1.23×) | 2.2ns |
| N=8 inv ip | 7.0ns (1.11×) | 7.8ns |
| N=8 inv oop | 1.8ns (1.23×) | 2.2ns |
| N=16 fwd ip | 8.2ns (1.06×) | 8.7ns |
| N=16 fwd oop | 2.9ns (1.27×) | 3.6ns |
| N=16 inv ip | 8.3ns (1.06×) | 8.7ns |
| N=16 inv oop | 2.9ns (1.29×) | 3.7ns |
| N=32 fwd ip | 11.4ns (1.10×) | 12.6ns |
| N=32 fwd oop | 7.1ns (1.34×) | 9.6ns |
| N=32 inv ip | 11.6ns (1.08×) | 12.5ns |
| N=32 inv oop | 7.1ns (1.35×) | 9.6ns |
| N=64 fwd ip | 16.8ns (1.27×) | 21.3ns |
| N=64 fwd oop | 14.7ns (1.34×) | 19.7ns |
| N=64 inv ip | 16.8ns (1.28×) | 21.5ns |
| N=64 inv oop | 14.7ns (1.35×) | 19.9ns |
| N=128 fwd ip | 36.9ns (1.29×) | 47.5ns |
| N=128 fwd oop | 33.2ns (1.42×) | 47.0ns |
| N=128 inv ip | 37.5ns (1.27×) | 47.7ns |
| N=128 inv oop | 33.5ns (1.40×) | 47.0ns |
| N=256 fwd ip | 73.0ns (1.44×) | 105.1ns |
| N=256 fwd oop | 72.9ns (1.41×) | 102.9ns |
| N=256 inv ip | 73.1ns (1.41×) | 103.2ns |
| N=256 inv oop | 73.2ns (1.40×) | 102.6ns |

### pow2 f64

| cell | fastfft | rustfft |
|---|---|---|
| N=2 fwd ip | 2.6ns (0.93×) | 2.4ns |
| N=2 fwd oop | 1.0ns (1.21×) | 1.2ns |
| N=2 inv ip | 2.6ns (0.93×) | 2.4ns |
| N=2 inv oop | 1.0ns (1.21×) | 1.2ns |
| N=4 fwd ip | 3.6ns (1.05×) | 3.8ns |
| N=4 fwd oop | 1.6ns (1.27×) | 2.0ns |
| N=4 inv ip | 3.6ns (1.05×) | 3.8ns |
| N=4 inv oop | 1.6ns (1.38×) | 2.2ns |
| N=8 fwd ip | 6.6ns (1.04×) | 6.8ns |
| N=8 fwd oop | 2.2ns (1.19×) | 2.6ns |
| N=8 inv ip | 6.5ns (1.01×) | 6.6ns |
| N=8 inv oop | 2.2ns (1.19×) | 2.6ns |
| N=16 fwd ip | 8.8ns (1.15×) | 10.1ns |
| N=16 fwd oop | 4.5ns (1.53×) | 6.8ns |
| N=16 inv ip | 8.8ns (1.15×) | 10.1ns |
| N=16 inv oop | 4.5ns (1.54×) | 6.9ns |
| N=32 fwd ip | 13.7ns (1.24×) | 17.0ns |
| N=32 fwd oop | 11.2ns (1.34×) | 15.0ns |
| N=32 inv ip | 14.0ns (1.24×) | 17.3ns |
| N=32 inv oop | 11.1ns (1.32×) | 14.6ns |
| N=64 fwd ip | 29.1ns (1.36×) | 39.4ns |
| N=64 fwd oop | 27.1ns (1.42×) | 38.6ns |
| N=64 inv ip | 29.2ns (1.35×) | 39.5ns |
| N=64 inv oop | 27.2ns (1.42×) | 38.6ns |
| N=128 fwd ip | 59.4ns (1.43×) | 85.0ns |
| N=128 fwd oop | 60.2ns (1.40×) | 84.3ns |
| N=128 inv ip | 61.1ns (1.39×) | 84.9ns |
| N=128 inv oop | 59.6ns (1.41×) | 84.4ns |
| N=256 fwd ip | 128.6ns (1.51×) | 194.5ns |
| N=256 fwd oop | 128.8ns (1.49×) | 191.9ns |
| N=256 inv ip | 128.0ns (1.52×) | 195.0ns |
| N=256 inv oop | 128.7ns (1.50×) | 193.0ns |

## Accuracy and planning time (medians over cells)

| lib | cells verified | failed | median error (ε) | worst error (ε) | median plan time |
|---|---|---|---|---|---|
| fastfft | 64 | 0 | 0.53 | 0.78 | 1.92us |
| rustfft | 64 | 0 | 0.57 | 0.97 | 260.0ns |

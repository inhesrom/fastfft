# fastfft arena report: `n32-arena-before`

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
| Control drift | max 0.92% over 2 control runs |
| Cells | 8 |

Times are per transform. *best* = minimum batch mean, *median* = median batch mean. Speedup = rustfft time ÷ library time (> 1 means faster than rustfft); *geomean* over the cells both libraries ran. mflops = 5·N·log2(N)/t(µs).

## Release gates (fastfft)

| Gate | Criterion | Status | Detail |
|---|---|---|---|
| G1 | pow2 vs rustfft: geomean ≥ 1.5×, no cell < 0.95× | ❌ fail | geomean best 0.778×, median 0.770×, worst cell 0.640× (pow2:f32:fwd:oop:n32), 8 cells |
| G2 | smooth vs rustfft: geomean ≥ 1.3×, no cell < 0.95× | – n/a | no data |
| G3 | rough vs rustfft: geomean ≥ 0.75×, no cell < 0.5× | – n/a | no data |
| G4 | vs each other Rust library: geomean ≥ 1.1×, ≥ 0.97× on ≥ 90% of cells | – n/a |  |
| G5 | AVX2 forced: pow2 ≥ 1.2×, smooth ≥ 1.1× vs rustfft | ❌ fail | pow2 0.676×/0.677×, smooth NaN×/NaN× |
| G6 | scenarios ≥ 1.3× each; batch geomean ≥ 1.5× | – n/a | scenarios min inf×, batch NaN×/NaN× |
| G7 | accuracy within §6 thresholds and ≤ 1.5× rustfft + 1ε | ✅ pass | 8 cells checked |
| G8 | Estimate planning time ≤ 2× rustfft for every N ≤ 2^20 | ❌ fail | worst ratio 7.98× (pow2:f32:fwd:oop:n32), 8 cells |

G9 (build time) is measured by `cargo xtask build-time`, not by the arena.

## Speedup vs rustfft (geomean of best-time ratios; median-time ratio in parentheses)

| suite | prec | fastfft | fastfft/avx2 | rustfft |
|---|---|---|---|---|
| pow2 | f32 | 0.68× (0.68×) 0/0/4 | 0.60× (0.60×) 0/0/4 | 1.00× (1.00×) 0/4/0 |
| pow2 | f64 | 0.89× (0.87×) 0/0/4 | 0.76× (0.76×) 0/0/4 | 1.00× (1.00×) 0/4/0 |

w/t/l = cells faster / within ±3% / slower than rustfft (best times).

## Suite `pow2`

### pow2 f32

| cell | fastfft | fastfft/avx2 | rustfft |
|---|---|---|---|
| N=32 fwd ip | 17.5ns (0.72×) | 20.7ns (0.61×) | 12.6ns |
| N=32 fwd oop | 15.1ns (0.64×) | 16.0ns (0.61×) | 9.7ns |
| N=32 inv ip | 17.5ns (0.72×) | 20.7ns (0.61×) | 12.6ns |
| N=32 inv oop | 15.0ns (0.64×) | 16.3ns (0.59×) | 9.7ns |

### pow2 f64

| cell | fastfft | fastfft/avx2 | rustfft |
|---|---|---|---|
| N=32 fwd ip | 20.2ns (0.89×) | 21.9ns (0.82×) | 17.9ns |
| N=32 fwd oop | 17.1ns (0.90×) | 21.6ns (0.71×) | 15.4ns |
| N=32 inv ip | 20.2ns (0.89×) | 22.5ns (0.79×) | 17.9ns |
| N=32 inv oop | 17.1ns (0.89×) | 21.5ns (0.70×) | 15.2ns |

## Accuracy and planning time (medians over cells)

| lib | cells verified | failed | median error (ε) | worst error (ε) | median plan time |
|---|---|---|---|---|---|
| fastfft | 8 | 0 | 0.56 | 0.69 | 2.04us |
| fastfft/avx2 | 8 | 0 | 0.58 | 0.62 | 1.98us |
| rustfft | 8 | 0 | 0.72 | 0.75 | 280.0ns |

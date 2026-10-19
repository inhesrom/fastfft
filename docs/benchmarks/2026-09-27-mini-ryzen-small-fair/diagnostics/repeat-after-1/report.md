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
| Git | 40d65034fed313a56e34b9c27e1aa088746067c6 (dirty: true) |
| Profile | quick |
| Official | true  |
| Control drift | max 1.19% over 2 control runs |
| Cells | 24 |

Times are per transform. *best* = minimum batch mean, *median* = median batch mean. Speedup = rustfft time ÷ library time (> 1 means faster than rustfft); *geomean* over the cells both libraries ran. mflops = 5·N·log2(N)/t(µs).

## Release gates (fastfft)

| Gate | Criterion | Status | Detail |
|---|---|---|---|
| G1 | pow2 vs rustfft: geomean ≥ 1.5×, no cell < 0.95× | ❌ fail | geomean best 0.806×, median 0.800×, worst cell 0.606× (pow2:f64:fwd:ip:n8388608), 12 cells |
| G2 | smooth vs rustfft: geomean ≥ 1.3×, no cell < 0.95× | ✅ pass | geomean best 1.329×, median 1.322×, worst cell 1.157× (smooth:f64:fwd:ip:n384), 6 cells |
| G3 | rough vs rustfft: geomean ≥ 0.75×, no cell < 0.5× | ✅ pass | geomean best 0.868×, median 0.865×, worst cell 0.509× (rough:f64:fwd:ip:n257), 6 cells |
| G4 | vs each other Rust library: geomean ≥ 1.1×, ≥ 0.97× on ≥ 90% of cells | – n/a |  |
| G5 | AVX2 forced: pow2 ≥ 1.2×, smooth ≥ 1.1× vs rustfft | – n/a | pow2 NaN×/NaN×, smooth NaN×/NaN× |
| G6 | scenarios ≥ 1.3× each; batch geomean ≥ 1.5× | – n/a | scenarios min inf×, batch NaN×/NaN× |
| G7 | accuracy within §6 thresholds and ≤ 1.5× rustfft + 1ε | ✅ pass | 18 cells checked |
| G8 | Estimate planning time ≤ 2× rustfft for every N ≤ 2^20 | ❌ fail | worst ratio 5.45× (rough:f64:fwd:ip:n257), 18 cells |

G9 (build time) is measured by `cargo xtask build-time`, not by the arena.

## Speedup vs rustfft (geomean of best-time ratios; median-time ratio in parentheses)

| suite | prec | fastfft | rustfft |
|---|---|---|---|
| pow2 | f32 | 0.88× (0.87×) 2/0/4 | 1.00× (1.00×) 0/6/0 |
| pow2 | f64 | 0.74× (0.74×) 0/2/4 | 1.00× (1.00×) 0/6/0 |
| smooth | f32 | 1.35× (1.35×) 3/0/0 | 1.00× (1.00×) 0/3/0 |
| smooth | f64 | 1.31× (1.30×) 3/0/0 | 1.00× (1.00×) 0/3/0 |
| rough | f32 | 0.94× (0.94×) 2/0/1 | 1.00× (1.00×) 0/3/0 |
| rough | f64 | 0.80× (0.80×) 1/0/2 | 1.00× (1.00×) 0/3/0 |

w/t/l = cells faster / within ±3% / slower than rustfft (best times).

## Suite `pow2`

### pow2 f32

| cell | fastfft | rustfft |
|---|---|---|
| N=2048 fwd ip | 1.10us (1.27×) | 1.40us |
| N=524288 fwd ip | 684.66us (1.31×) | 893.98us |
| N=1048576 fwd ip | 3.18ms (0.93×) | 2.95ms |
| N=2097152 fwd ip | 11.79ms (0.72×) | 8.47ms |
| N=8388608 fwd ip | 65.64ms (0.61×) | 40.14ms |
| N=16777216 fwd ip | 134.14ms (0.67×) | 89.52ms |

### pow2 f64

| cell | fastfft | rustfft |
|---|---|---|
| N=2048 fwd ip | 2.79us (1.01×) | 2.80us |
| N=524288 fwd ip | 2.92ms (0.98×) | 2.85ms |
| N=1048576 fwd ip | 12.12ms (0.66×) | 7.97ms |
| N=2097152 fwd ip | 28.54ms (0.63×) | 18.01ms |
| N=8388608 fwd ip | 143.38ms (0.61×) | 87.66ms |
| N=16777216 fwd ip | 289.25ms (0.67×) | 193.28ms |

## Suite `smooth`

### smooth f32

| cell | fastfft | rustfft |
|---|---|---|
| N=384 fwd ip | 166.1ns (1.20×) | 199.9ns |
| N=1920 fwd ip | 1.04us (1.35×) | 1.41us |
| N=2400 fwd ip | 1.52us (1.51×) | 2.29us |

### smooth f64

| cell | fastfft | rustfft |
|---|---|---|
| N=384 fwd ip | 312.1ns (1.18×) | 368.6ns |
| N=1920 fwd ip | 2.22us (1.28×) | 2.85us |
| N=2400 fwd ip | 2.91us (1.48×) | 4.29us |

## Suite `rough`

### rough f32

| cell | fastfft | rustfft |
|---|---|---|
| N=257 fwd ip | 879.7ns (0.53×) | 462.7ns |
| N=1021 fwd ip | 3.81us (1.37×) | 5.22us |
| N=4099 fwd ip | 20.78us (1.16×) | 24.15us |

### rough f64

| cell | fastfft | rustfft |
|---|---|---|
| N=257 fwd ip | 1.69us (0.51×) | 858.4ns |
| N=1021 fwd ip | 9.03us (0.85×) | 7.64us |
| N=4099 fwd ip | 36.97us (1.19×) | 43.93us |

## Accuracy and planning time (medians over cells)

| lib | cells verified | failed | median error (ε) | worst error (ε) | median plan time |
|---|---|---|---|---|---|
| fastfft | 24 | 0 | 1.43 | 2.80 | 336.35us |
| rustfft | 24 | 0 | 1.51 | 5.79 | 176.05us |

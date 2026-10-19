# fastfft arena report: `repeat-after-2`

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
| Control drift | max 34.49% over 2 control runs — **FLAGGED** |
| Cells | 24 |

Times are per transform. *best* = minimum batch mean, *median* = median batch mean. Speedup = rustfft time ÷ library time (> 1 means faster than rustfft); *geomean* over the cells both libraries ran. mflops = 5·N·log2(N)/t(µs).

## Release gates (fastfft)

| Gate | Criterion | Status | Detail |
|---|---|---|---|
| G1 | pow2 vs rustfft: geomean ≥ 1.5×, no cell < 0.95× | ❌ fail | geomean best 0.811×, median 0.808×, worst cell 0.604× (pow2:f64:fwd:ip:n8388608), 12 cells |
| G2 | smooth vs rustfft: geomean ≥ 1.3×, no cell < 0.95× | ✅ pass | geomean best 1.321×, median 1.312×, worst cell 1.088× (smooth:f64:fwd:ip:n384), 6 cells |
| G3 | rough vs rustfft: geomean ≥ 0.75×, no cell < 0.5× | ✅ pass | geomean best 0.862×, median 0.857×, worst cell 0.512× (rough:f32:fwd:ip:n257), 6 cells |
| G4 | vs each other Rust library: geomean ≥ 1.1×, ≥ 0.97× on ≥ 90% of cells | – n/a |  |
| G5 | AVX2 forced: pow2 ≥ 1.2×, smooth ≥ 1.1× vs rustfft | – n/a | pow2 NaN×/NaN×, smooth NaN×/NaN× |
| G6 | scenarios ≥ 1.3× each; batch geomean ≥ 1.5× | – n/a | scenarios min inf×, batch NaN×/NaN× |
| G7 | accuracy within §6 thresholds and ≤ 1.5× rustfft + 1ε | ✅ pass | 18 cells checked |
| G8 | Estimate planning time ≤ 2× rustfft for every N ≤ 2^20 | ❌ fail | worst ratio 5.76× (rough:f64:fwd:ip:n257), 18 cells |

G9 (build time) is measured by `cargo xtask build-time`, not by the arena.

## Speedup vs rustfft (geomean of best-time ratios; median-time ratio in parentheses)

| suite | prec | fastfft | rustfft |
|---|---|---|---|
| pow2 | f32 | 0.88× (0.87×) 2/0/4 | 1.00× (1.00×) 0/6/0 |
| pow2 | f64 | 0.75× (0.75×) 0/2/4 | 1.00× (1.00×) 0/6/0 |
| smooth | f32 | 1.34× (1.34×) 3/0/0 | 1.00× (1.00×) 0/3/0 |
| smooth | f64 | 1.30× (1.29×) 3/0/0 | 1.00× (1.00×) 0/3/0 |
| rough | f32 | 0.92× (0.91×) 2/0/1 | 1.00× (1.00×) 0/3/0 |
| rough | f64 | 0.81× (0.81×) 1/0/2 | 1.00× (1.00×) 0/3/0 |

w/t/l = cells faster / within ±3% / slower than rustfft (best times).

## Suite `pow2`

### pow2 f32

| cell | fastfft | rustfft |
|---|---|---|
| N=2048 fwd ip | 1.10us (1.26×) | 1.39us |
| N=524288 fwd ip | 686.13us (1.30×) | 894.87us |
| N=1048576 fwd ip | 3.13ms (0.93×) | 2.91ms |
| N=2097152 fwd ip | 11.76ms (0.72×) | 8.48ms |
| N=8388608 fwd ip | 65.47ms (0.62×) | 40.33ms |
| N=16777216 fwd ip | 133.80ms (0.66×) | 88.88ms |

### pow2 f64

| cell | fastfft | rustfft |
|---|---|---|
| N=2048 fwd ip | 2.76us (1.02×) | 2.82us |
| N=524288 fwd ip | 2.82ms (1.02×) | 2.88ms |
| N=1048576 fwd ip | 12.07ms (0.67×) | 8.06ms |
| N=2097152 fwd ip | 28.70ms (0.63×) | 17.96ms |
| N=8388608 fwd ip | 143.83ms (0.60×) | 86.81ms |
| N=16777216 fwd ip | 285.32ms (0.67×) | 191.76ms |

## Suite `smooth`

### smooth f32

| cell | fastfft | rustfft |
|---|---|---|
| N=384 fwd ip | 167.2ns (1.18×) | 197.5ns |
| N=1920 fwd ip | 1.05us (1.34×) | 1.42us |
| N=2400 fwd ip | 1.48us (1.53×) | 2.26us |

### smooth f64

| cell | fastfft | rustfft |
|---|---|---|
| N=384 fwd ip | 319.6ns (1.12×) | 356.7ns |
| N=1920 fwd ip | 2.13us (1.34×) | 2.84us |
| N=2400 fwd ip | 2.91us (1.47×) | 4.29us |

## Suite `rough`

### rough f32

| cell | fastfft | rustfft |
|---|---|---|
| N=257 fwd ip | 887.0ns (0.52×) | 458.3ns |
| N=1021 fwd ip | 4.05us (1.29×) | 5.23us |
| N=4099 fwd ip | 20.71us (1.16×) | 24.09us |

### rough f64

| cell | fastfft | rustfft |
|---|---|---|
| N=257 fwd ip | 1.60us (0.54×) | 869.7ns |
| N=1021 fwd ip | 9.30us (0.82×) | 7.65us |
| N=4099 fwd ip | 36.96us (1.19×) | 43.94us |

## Accuracy and planning time (medians over cells)

| lib | cells verified | failed | median error (ε) | worst error (ε) | median plan time |
|---|---|---|---|---|---|
| fastfft | 24 | 0 | 1.43 | 2.80 | 337.62us |
| rustfft | 24 | 0 | 1.51 | 5.79 | 172.13us |

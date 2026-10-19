# Four-library FFT comparison

Host: **mini-ryzen**. One full-profile run; 80 cells; 320/320 available library measurements.

Speedup is **RustFFT median latency ÷ library median latency**. Above 1× is faster. Overview bars use the geometric mean over lengths with valid results for all four libraries, with equal weight per length. Controls are excluded. These are execution timings; planning is separate.

![Four-panel geometric-mean overview](overview.png)

[Overview SVG](overview.svg)

| Precision / direction | Shared cells | fastfft | RustFFT | FFTW | PhastFT interleaved |
|---|---:|---:|---:|---:|---:|
| f32 forward | 20 | 1.260× | 1.000× | 0.782× | 0.310× |
| f32 inverse | 20 | 1.330× | 1.000× | 0.823× | 0.320× |
| f64 forward | 20 | 1.332× | 1.000× | 0.987× | 0.320× |
| f64 inverse | 20 | 1.337× | 1.000× | 0.988× | 0.310× |

## Measurement method

Lengths are 2¹ through 2²⁰ (2–1,048,576), f32/f64, forward/inverse, in-place, one transform per call, 64-byte-aligned arena buffers. Full profile: 200 ms warm-up per library, seven rounds with rotating library order, at least 100 ms per library per round, and calibrated batches targeting at least 50 µs. Zero-filled input is used for timing. Each cell runs sequentially in its own child pinned to CPU 2; SMT sibling CPU 10 stays idle. Median is taken over recorded batch means per transform, rather than individual-call samples.

Every available library result passed seeded-random-input verification against the double-double reference before timing (relative L2 tolerance 200·(log₂ N + 1)·ε). The arena repeats an N=4,096 control before timing, every 25 cells, and at the end; each control merges three child processes. Drift uses the arena's dependent-add timing proxy, not calibrated GHz; control latency is informational.

Run validity: official=True; drift flag=False; maximum proxy drift=0.58%; child failures=0; aborted=None; elapsed=368.4 s.

Host-visible processes were inspected after compilation. Immediately before timing, three consecutive 10-second samples required overall CPU usage and usage of CPUs 2 and 10 each ≤2.0%, followed by a passing `scripts/bench-env.sh check --core 2`. Builds, tests and chart generation were paused during timing. [Idle samples and host process evidence](idle-check.json); [environment check](bench-env-check.txt); [execution log](run.log).

## Library APIs and comparability

- fastfft 0.1.0: default Estimate planner; detected AVX-512 tier; observed kernels: AVX2, AVX-512, AVX-512 YMM, scalar (selected by length and precision); preallocated scratch; `process_with_scratch`. The detected plan descriptions are retained in the complete results.
- RustFFT 6.4.1: automatic SIMD planner; preallocated scratch; `process_with_scratch`.
- FFTW fftw-3.3.11-sse2-avx-avx2-avx2_128-avx512: existing static single/double build; `FFTW_MEASURE`, saved host wisdom; planning excluded.
- PhastFT 0.4.1: `complex-nums` interleaved API with reused `PlannerDit32/64`; `parallel` disabled. Each timed call deinterleaves into two temporary vectors, transforms, allocates a complex vector to recombine, and copies the result back. Allocation, conversion, copy and deallocation are included. These temporary vectors have the library’s own alignment.

PhastFT inverse transforms normalize by 1/N; fastfft, RustFFT and FFTW return unnormalized inverse transforms. Verification rescales PhastFT outside timing. The timed inverse calls retain their native behavior, including PhastFT's normalization. These results compare the requested interleaved APIs and do not measure PhastFT's split-array API.

## Build and machine

- CPU: AMD Ryzen 7 7840HS w/ Radeon 780M Graphics; host `mini-ryzen`; CPU 2, siblings `2,10`.
- Governor `performance`; EPP `performance`; boost `1`; SMT `1`.
- Compiler: `rustc 1.95.0 (59807616e 2026-04-14); binary: rustc; commit-hash: 59807616e1fa2540724bfbac14d7976d7e4a3860; commit-date: 2026-04-14; host: x86_64-unknown-linux-gnu; release: 1.95.0; LLVM version: 22.1.2`.
- Source revision: `804324ea7789fde4d0a9d4c8a6ad10cf5d68d12d`; captured dirty status `False`. The reporting script and evidence were added locally; benchmark source and Cargo.lock were unchanged.
- Profile: `arena` (optimized, fat LTO, one codegen unit); RUSTFLAGS: `-C llvm-args=-align-all-functions=6`; `target-cpu=native`: `False`.

FFTW configure lines:

```text
double: CFLAGS='-O3 -fPIC -std=gnu17' ./configure --enable-static --disable-shared --disable-fortran --disable-doc --enable-sse2 --enable-avx --enable-avx2 --enable-avx512 --enable-fma
single: CFLAGS='-O3 -fPIC -std=gnu17' ./configure --enable-static --disable-shared --disable-fortran --disable-doc --enable-sse2 --enable-avx --enable-avx2 --enable-avx512 --enable-fma --enable-float
```

Benchmark command (after preparation and idle check):

```bash
RUSTFLAGS="-C llvm-args=-align-all-functions=6" \
  cargo xtask arena run --suite pow2 --profile full \
  --libs fastfft,rustfft,fftw,phastft/interleaved \
  --max-n 1048576 --filter place=ip --core 2 \
  --label four-library-comparison
```

## Detailed charts and absolute median latencies

All detail charts share a zero-based linear scale. Selected lengths are 16, 64, 256, 1,024, 4,096, 16,384, 65,536 and 1,048,576. Tables include every measured length; latencies are **nanoseconds per transform**, rounded to three decimals.

### f32 forward

![f32 forward median speedups](f32-forward.png)

[SVG chart](f32-forward.svg)

| N | fastfft (ns) | RustFFT (ns) | FFTW (ns) | PhastFT interleaved (ns) |
|---:|---:|---:|---:|---:|
| 2 | 2.614 | 2.906 | 3.686 | 35.364 |
| 4 | 3.597 | 4.287 | 4.662 | 44.676 |
| 8 | 7.162 | 7.890 | 7.854 | 58.575 |
| 16 | 8.343 | 8.844 | 15.567 | 85.204 |
| 32 | 11.919 | 12.736 | 28.807 | 113.450 |
| 64 | 17.759 | 21.609 | 37.878 | 90.416 |
| 128 | 37.549 | 47.394 | 61.150 | 157.093 |
| 256 | 75.521 | 104.028 | 150.319 | 308.490 |
| 512 | 229.834 | 252.133 | 250.370 | 683.653 |
| 1,024 | 508.628 | 585.036 | 503.274 | 1,394.861 |
| 2,048 | 1,102.089 | 1,317.763 | 1,200.829 | 2,941.412 |
| 4,096 | 2,428.429 | 3,353.188 | 2,800.833 | 6,214.000 |
| 8,192 | 5,347.100 | 7,211.250 | 8,736.500 | 12,974.500 |
| 16,384 | 11,570.000 | 15,597.000 | 17,560.000 | 30,898.500 |
| 32,768 | 23,802.000 | 37,741.500 | 38,032.000 | 73,740.000 |
| 65,536 | 59,032.000 | 80,532.000 | 101,372.000 | 170,136.500 |
| 131,072 | 129,635.000 | 179,129.000 | 219,745.500 | 312,291.000 |
| 262,144 | 313,413.000 | 402,772.000 | 534,666.000 | 717,317.000 |
| 524,288 | 684,325.000 | 898,164.000 | 2,237,392.000 | 1,787,792.000 |
| 1,048,576 | 1,896,047.000 | 2,907,500.000 | 4,937,470.000 | 5,273,265.000 |

### f32 inverse

![f32 inverse median speedups](f32-inverse.png)

[SVG chart](f32-inverse.svg)

| N | fastfft (ns) | RustFFT (ns) | FFTW (ns) | PhastFT interleaved (ns) |
|---:|---:|---:|---:|---:|
| 2 | 2.613 | 2.901 | 3.679 | 36.834 |
| 4 | 3.595 | 4.256 | 4.659 | 46.171 |
| 8 | 7.169 | 7.891 | 7.858 | 60.670 |
| 16 | 8.363 | 8.846 | 15.099 | 88.140 |
| 32 | 11.827 | 12.780 | 28.156 | 117.790 |
| 64 | 17.930 | 32.268 | 39.149 | 93.486 |
| 128 | 37.890 | 47.497 | 61.050 | 163.520 |
| 256 | 75.804 | 113.332 | 162.977 | 322.807 |
| 512 | 230.184 | 457.717 | 256.227 | 662.054 |
| 1,024 | 509.787 | 580.974 | 519.022 | 1,375.667 |
| 2,048 | 1,100.533 | 1,318.289 | 1,132.136 | 2,897.722 |
| 4,096 | 2,411.238 | 3,298.200 | 2,825.333 | 6,399.625 |
| 8,192 | 5,333.100 | 7,019.500 | 8,409.333 | 13,715.750 |
| 16,384 | 11,574.000 | 16,639.000 | 17,469.667 | 30,528.000 |
| 32,768 | 23,748.333 | 38,177.500 | 38,413.000 | 74,060.000 |
| 65,536 | 59,652.000 | 81,193.000 | 102,975.000 | 174,290.000 |
| 131,072 | 129,866.000 | 178,457.000 | 223,623.000 | 311,855.000 |
| 262,144 | 309,525.000 | 406,650.000 | 521,677.000 | 866,008.000 |
| 524,288 | 694,935.000 | 880,501.000 | 2,288,364.000 | 1,665,896.500 |
| 1,048,576 | 1,888,403.000 | 2,906,939.000 | 4,976,915.000 | 5,301,343.500 |

### f64 forward

![f64 forward median speedups](f64-forward.png)

[SVG chart](f64-forward.svg)

| N | fastfft (ns) | RustFFT (ns) | FFTW (ns) | PhastFT interleaved (ns) |
|---:|---:|---:|---:|---:|
| 2 | 2.597 | 2.597 | 2.870 | 35.404 |
| 4 | 3.687 | 3.822 | 3.679 | 45.500 |
| 8 | 6.455 | 7.125 | 5.750 | 61.854 |
| 16 | 9.173 | 10.376 | 10.001 | 77.434 |
| 32 | 14.252 | 17.491 | 22.239 | 128.911 |
| 64 | 30.785 | 39.260 | 47.518 | 124.506 |
| 128 | 64.429 | 85.609 | 129.651 | 247.335 |
| 256 | 131.589 | 193.760 | 218.545 | 572.847 |
| 512 | 442.602 | 497.571 | 447.800 | 1,137.044 |
| 1,024 | 1,004.980 | 1,166.163 | 1,042.388 | 2,796.842 |
| 2,048 | 2,261.091 | 2,902.167 | 2,700.895 | 5,413.409 |
| 4,096 | 4,771.727 | 6,839.667 | 6,633.750 | 11,367.600 |
| 8,192 | 10,586.200 | 14,632.750 | 14,727.750 | 29,212.000 |
| 16,384 | 21,814.667 | 33,733.500 | 31,409.500 | 60,595.000 |
| 32,768 | 47,735.500 | 76,274.000 | 74,120.000 | 137,780.500 |
| 65,536 | 118,104.000 | 167,547.000 | 161,615.000 | 273,928.000 |
| 131,072 | 241,667.500 | 373,106.000 | 370,907.000 | 686,173.000 |
| 262,144 | 640,382.000 | 850,028.000 | 845,719.000 | 1,765,339.000 |
| 524,288 | 1,757,395.000 | 2,818,963.000 | 2,860,521.500 | 5,459,037.000 |
| 1,048,576 | 4,074,038.000 | 8,262,601.000 | 7,701,470.000 | 22,918,798.000 |

### f64 inverse

![f64 inverse median speedups](f64-inverse.png)

[SVG chart](f64-inverse.svg)

| N | fastfft (ns) | RustFFT (ns) | FFTW (ns) | PhastFT interleaved (ns) |
|---:|---:|---:|---:|---:|
| 2 | 2.597 | 2.597 | 3.054 | 37.933 |
| 4 | 3.687 | 3.824 | 3.685 | 48.823 |
| 8 | 6.357 | 7.102 | 5.673 | 62.668 |
| 16 | 9.155 | 10.375 | 9.283 | 78.301 |
| 32 | 14.254 | 17.991 | 23.901 | 132.762 |
| 64 | 30.762 | 39.341 | 47.661 | 131.379 |
| 128 | 64.429 | 84.882 | 117.649 | 258.124 |
| 256 | 131.651 | 192.853 | 235.495 | 773.278 |
| 512 | 447.757 | 505.041 | 448.835 | 1,095.277 |
| 1,024 | 1,033.417 | 1,216.595 | 1,025.408 | 2,878.222 |
| 2,048 | 2,304.773 | 2,864.833 | 2,689.263 | 5,391.333 |
| 4,096 | 4,574.591 | 6,625.125 | 6,859.125 | 13,588.250 |
| 8,192 | 10,532.000 | 14,510.000 | 14,212.000 | 27,258.000 |
| 16,384 | 21,744.333 | 33,463.500 | 31,424.500 | 64,211.000 |
| 32,768 | 48,527.000 | 76,054.000 | 76,044.000 | 142,770.500 |
| 65,536 | 117,983.000 | 167,286.500 | 164,251.000 | 302,011.000 |
| 131,072 | 241,607.500 | 370,532.000 | 374,288.000 | 668,720.000 |
| 262,144 | 643,918.000 | 904,846.500 | 846,151.000 | 1,646,189.000 |
| 524,288 | 1,751,594.000 | 2,840,133.000 | 2,848,789.000 | 5,207,972.500 |
| 1,048,576 | 4,070,801.000 | 8,469,022.000 | 7,786,290.000 | 23,656,243.000 |

## Availability and limits

No unavailable measurements: all 320 library measurements passed verification and were timed; each overview panel shares all 20 lengths.

One run on one CPU with aligned buffers and zero-filled timing data does not establish cross-machine performance or run-to-run uncertainty. Single-process address placement and small-N call overhead can affect ratios. Inverse normalization and PhastFT's allocation costs are part of the API behavior being compared.

## Complete results and regeneration

[Interactive HTML report](index.html).

[Complete results](results.jsonl.gz), [environment](env.json), [run metadata](meta.json), [chart arithmetic and shared cells](chart-data.json), [arena report](report.md), [validation](validation.json).

Regenerate from the repository root:

```bash
python3 scripts/plot-library-comparison.py docs/benchmarks/2026-10-16-mini-ryzen-four-library-comparison --out docs/benchmarks/2026-10-16-mini-ryzen-four-library-comparison
```

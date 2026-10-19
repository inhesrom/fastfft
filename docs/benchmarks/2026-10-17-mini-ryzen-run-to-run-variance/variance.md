# Run-to-run spread over 5 captures, 80 common cells

Runs: variance-1, variance-2, variance-3, variance-4, variance-5

| run | max control drift | drift flag | aborted | child failures |
|---|---|---|---|---|
| variance-1 | 0.84% | False | None | 0 |
| variance-2 | 0.39% | False | None | 0 |
| variance-3 | 0.44% | False | None | 0 |
| variance-4 | 0.48% | False | None | 0 |
| variance-5 | 0.48% | False | None | 0 |

## Geometric-mean median speedup vs RustFFT, per run

| panel | library | run 1 | run 2 | run 3 | run 4 | run 5 | mean | stdev | CV | range |
|---|---|---|---|---|---|---|---|---|---|---|
| f32 forward | fastfft | 1.295 | 1.262 | 1.268 | 1.262 | 1.357 | 1.289 | 0.0402 | 3.12% | 7.50% |
| f32 forward | fftw | 0.788 | 0.780 | 0.769 | 0.780 | 0.828 | 0.789 | 0.0227 | 2.88% | 7.65% |
| f32 forward | phastft/interleaved | 0.315 | 0.312 | 0.311 | 0.312 | 0.335 | 0.317 | 0.0103 | 3.26% | 7.86% |
| f32 inverse | fastfft | 1.270 | 1.274 | 1.314 | 1.275 | 1.287 | 1.284 | 0.0181 | 1.41% | 3.53% |
| f32 inverse | fftw | 0.785 | 0.787 | 0.810 | 0.790 | 0.801 | 0.795 | 0.0103 | 1.30% | 3.11% |
| f32 inverse | phastft/interleaved | 0.301 | 0.304 | 0.312 | 0.303 | 0.307 | 0.305 | 0.0045 | 1.47% | 3.86% |
| f64 forward | fastfft | 1.324 | 1.329 | 1.343 | 1.362 | 1.325 | 1.337 | 0.0164 | 1.22% | 2.94% |
| f64 forward | fftw | 0.990 | 0.985 | 0.991 | 1.020 | 0.997 | 0.997 | 0.0140 | 1.41% | 3.63% |
| f64 forward | phastft/interleaved | 0.321 | 0.323 | 0.323 | 0.328 | 0.322 | 0.324 | 0.0028 | 0.86% | 2.26% |
| f64 inverse | fastfft | 1.340 | 1.337 | 1.337 | 1.342 | 1.386 | 1.349 | 0.0210 | 1.56% | 3.66% |
| f64 inverse | fftw | 0.993 | 0.993 | 0.992 | 0.988 | 1.031 | 0.999 | 0.0175 | 1.76% | 4.29% |
| f64 inverse | phastft/interleaved | 0.308 | 0.309 | 0.314 | 0.306 | 0.318 | 0.311 | 0.0049 | 1.57% | 3.88% |

## Geometric-mean median latency per run, relative to the K-run mean

| panel | library | run 1 | run 2 | run 3 | run 4 | run 5 | CV |
|---|---|---|---|---|---|---|---|
| f32 forward | fastfft | 1.001 | 1.002 | 0.999 | 1.001 | 0.998 | 0.16% |
| f32 forward | fftw | 1.006 | 0.992 | 1.008 | 0.992 | 1.001 | 0.77% |
| f32 forward | phastft/interleaved | 1.011 | 0.998 | 1.002 | 0.996 | 0.993 | 0.70% |
| f32 forward | rustfft | 1.005 | 0.981 | 0.983 | 0.981 | 1.050 | 3.01% |
| f32 inverse | fastfft | 0.999 | 1.001 | 0.998 | 1.002 | 1.001 | 0.17% |
| f32 inverse | fftw | 0.999 | 1.003 | 1.002 | 1.001 | 0.995 | 0.30% |
| f32 inverse | phastft/interleaved | 1.003 | 0.998 | 0.999 | 1.003 | 0.998 | 0.26% |
| f32 inverse | rustfft | 0.987 | 0.994 | 1.021 | 0.995 | 1.003 | 1.32% |
| f64 forward | fastfft | 1.002 | 0.999 | 0.995 | 0.999 | 1.004 | 0.35% |
| f64 forward | fftw | 0.999 | 1.006 | 1.005 | 0.995 | 0.995 | 0.54% |
| f64 forward | phastft/interleaved | 1.000 | 0.996 | 1.001 | 1.004 | 0.999 | 0.30% |
| f64 forward | rustfft | 0.993 | 0.994 | 0.999 | 1.019 | 0.995 | 1.07% |
| f64 inverse | fastfft | 1.002 | 0.998 | 0.996 | 1.001 | 1.003 | 0.29% |
| f64 inverse | fftw | 1.002 | 0.997 | 0.994 | 1.008 | 1.000 | 0.51% |
| f64 inverse | phastft/interleaved | 1.005 | 0.996 | 0.977 | 1.013 | 1.009 | 1.43% |
| f64 inverse | rustfft | 0.996 | 0.990 | 0.987 | 0.996 | 1.031 | 1.77% |

## Per-cell CV of median latency across runs

| library | bucket | cells | median CV | p90 CV | max CV |
|---|---|---|---|---|---|
| fastfft | all | 80 | 0.50% | 1.49% | 7.98% |
| fastfft | N<=64 | 24 | 0.12% | 0.70% | 1.25% |
| fastfft | 128<=N<=4096 | 24 | 0.76% | 3.08% | 7.98% |
| fastfft | N>4096 | 32 | 0.57% | 1.17% | 2.04% |
| fftw | all | 80 | 1.05% | 3.66% | 10.71% |
| fftw | N<=64 | 24 | 0.91% | 3.04% | 10.71% |
| fftw | 128<=N<=4096 | 24 | 2.29% | 5.96% | 7.51% |
| fftw | N>4096 | 32 | 0.71% | 1.31% | 2.88% |
| phastft/interleaved | all | 80 | 1.56% | 4.83% | 8.83% |
| phastft/interleaved | N<=64 | 24 | 0.37% | 2.22% | 5.99% |
| phastft/interleaved | 128<=N<=4096 | 24 | 1.60% | 5.09% | 6.39% |
| phastft/interleaved | N>4096 | 32 | 2.75% | 5.21% | 8.83% |
| rustfft | all | 80 | 0.71% | 9.32% | 44.49% |
| rustfft | N<=64 | 24 | 0.15% | 25.78% | 44.49% |
| rustfft | 128<=N<=4096 | 24 | 3.10% | 14.67% | 22.56% |
| rustfft | N>4096 | 32 | 0.70% | 2.72% | 9.24% |

## Per-cell CV of best latency across runs

| library | bucket | cells | median CV | p90 CV | max CV |
|---|---|---|---|---|---|
| fastfft | all | 80 | 0.59% | 1.56% | 7.74% |
| fastfft | N<=64 | 24 | 0.17% | 1.09% | 2.27% |
| fastfft | 128<=N<=4096 | 24 | 0.85% | 3.12% | 7.74% |
| fastfft | N>4096 | 32 | 0.65% | 1.47% | 1.93% |
| fftw | all | 80 | 0.92% | 2.58% | 7.74% |
| fftw | N<=64 | 24 | 1.01% | 2.42% | 3.31% |
| fftw | 128<=N<=4096 | 24 | 1.56% | 3.53% | 7.74% |
| fftw | N>4096 | 32 | 0.66% | 1.28% | 3.07% |
| phastft/interleaved | all | 80 | 1.81% | 4.82% | 6.80% |
| phastft/interleaved | N<=64 | 24 | 0.53% | 1.99% | 5.20% |
| phastft/interleaved | 128<=N<=4096 | 24 | 1.70% | 5.42% | 6.59% |
| phastft/interleaved | N>4096 | 32 | 2.73% | 4.66% | 6.80% |
| rustfft | all | 80 | 0.87% | 9.17% | 45.33% |
| rustfft | N<=64 | 24 | 0.63% | 25.67% | 45.33% |
| rustfft | 128<=N<=4096 | 24 | 2.96% | 14.60% | 22.45% |
| rustfft | N>4096 | 32 | 0.74% | 2.70% | 9.40% |

## Pairwise run-to-run |median ratio - 1| (what `arena compare` sees)

| library | pairs x cells | median | p90 | p99 | max | share > 3% |
|---|---|---|---|---|---|---|
| fastfft | 800 | 0.40% | 2.05% | 9.41% | 15.55% | 5.2% |
| fftw | 800 | 0.91% | 4.51% | 14.75% | 27.08% | 17.2% |
| phastft/interleaved | 800 | 1.29% | 6.58% | 14.04% | 17.92% | 28.6% |
| rustfft | 800 | 0.49% | 6.54% | 47.01% | 90.46% | 16.2% |

## Noisiest cells (median latency CV)

| cell | library | CV | range | medians (ns) |
|---|---|---|---|---|
| f64 inverse inplace N=16 | rustfft | 44.49% | 124.49% | 10, 10, 10, 10, 23 |
| f32 inverse inplace N=64 | rustfft | 33.94% | 90.46% | 22, 22, 41, 22, 22 |
| f64 forward inplace N=32 | rustfft | 26.48% | 70.05% | 18, 18, 18, 30, 18 |
| f32 forward inplace N=64 | rustfft | 24.16% | 61.02% | 22, 22, 22, 22, 35 |
| f32 forward inplace N=512 | rustfft | 22.56% | 57.36% | 253, 252, 253, 257, 396 |
| f32 inverse inplace N=512 | rustfft | 22.50% | 60.04% | 253, 275, 257, 258, 406 |
| f32 forward inplace N=4096 | rustfft | 16.68% | 42.15% | 4704, 3376, 3386, 3309, 3344 |
| f32 forward inplace N=32 | fftw | 10.71% | 27.08% | 30, 29, 36, 29, 30 |
| f32 forward inplace N=128 | rustfft | 10.00% | 23.58% | 48, 48, 48, 48, 59 |
| f32 forward inplace N=32768 | rustfft | 9.24% | 23.51% | 46158, 38057, 41128, 37746, 37370 |
| f32 forward inplace N=2048 | rustfft | 9.17% | 22.02% | 1325, 1327, 1318, 1331, 1608 |
| f64 inverse inplace N=131072 | phastft/interleaved | 8.83% | 21.84% | 627687, 704434, 628249, 645943, 764747 |
| f64 forward inplace N=262144 | rustfft | 7.99% | 19.48% | 854627, 854498, 1012838, 863193, 847680 |
| f64 forward inplace N=256 | fastfft | 7.98% | 15.55% | 152, 132, 132, 132, 152 |
| f32 forward inplace N=128 | fftw | 7.51% | 19.21% | 75, 65, 63, 63, 66 |

## fastfft plan changes across runs: 0


## Control cell (f32 forward in-place N=4096) median latency

- fastfft: within-run CV mean 0.56%, max 1.01%
- rustfft: within-run CV mean 1.65%, max 5.89%

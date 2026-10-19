# Run-to-run spread of the four-library comparison

Measurement on `mini-ryzen` (Ryzen 7 7840HS, Zen 4), 2026-10-17. This report
answers one question: how much do the published
[four-library comparison](../2026-10-16-mini-ryzen-four-library-comparison/summary.md)
numbers move between runs when nothing changes? It does not change any
published figure, gate or threshold.

## Method

Five captures were taken back to back from one benchmark-mode session, with
identical source, binary and host settings. Each capture is steps 3, 4 and 6 of
[the runbook](../../runbooks/four-library-comparison.md): idle evidence, then
the arena run, then report generation. Every capture passed the idle check,
completed all 80 cells with zero child failures and generated its report.

| | |
|---|---|
| Source | `a63aebf` (master). `dirty` in `env.json` comes only from the then-untracked `scripts/arena-variance.py`; no library, arena or comparator source differed |
| Toolchain | rustc 1.95.0, `RUSTFLAGS=-C llvm-args=-align-all-functions=6`, arena profile with `--features fftw` |
| Comparators | RustFFT 6.4.1, FFTW 3.3.11 (AVX-512 build, the host's retained wisdom), PhastFT 0.4.1 interleaved |
| Suite | `pow2`, `full` profile, in-place, f32/f64 forward/inverse, N = 2…2^20, `--procs 3`, pinned to CPU 2 (sibling 10), boost on |
| Host | Benchmark mode via `bench-env.sh setup --core 2`. Both self-hosted GitHub Actions runners were stopped, and another Pi agent was paused for the whole window |
| Window | 04:02–04:42 UTC, 337 s per arena run |
| Drift | 0.84%, 0.39%, 0.44%, 0.48%, 0.48% (limit 3%) |

Speedup is calculated as in the published report: RustFFT median ÷ library
median. Each speedup is a geometric mean with equal weight per length.
`variance.md` is the full output of `scripts/arena-variance.py` over
`runs/variance-*`. `variance.json` holds every per-run and per-cell value. Its
geomeans match each run's `chart-data.json` to within 2.2e-16.

## Results

### Headline geomean speedups

| panel | fastfft mean ± sd | CV | range | fftw CV | phastft CV |
|---|---:|---:|---:|---:|---:|
| f32 forward | 1.289 ± 0.040 | 3.12% | 7.50% | 2.88% | 3.26% |
| f32 inverse | 1.284 ± 0.018 | 1.41% | 3.53% | 1.30% | 1.47% |
| f64 forward | 1.337 ± 0.016 | 1.22% | 2.94% | 1.41% | 0.86% |
| f64 inverse | 1.349 ± 0.021 | 1.56% | 3.66% | 1.76% | 1.57% |

Comparison with the published 2026-10-16 run, one day earlier:

| panel | published fastfft speedup | z vs five runs | published/mean latency, fastfft | published/mean latency, RustFFT |
|---|---:|---:|---:|---:|
| f32 forward | 1.260 | −0.70 | 0.998 | 0.976 |
| f32 inverse | 1.330 | **+2.56** | 0.999 | **1.034** |
| f64 forward | 1.332 | −0.30 | 0.995 | 0.992 |
| f64 inverse | 1.337 | −0.53 | 1.000 | 0.992 |

Three published panels lie within the spread. The f32 inverse headline is
+2.6σ high for fastfft, and FFTW (+2.7σ) and PhastFT (+3.3σ) are high with it.
fastfft's own latency matches the five-run mean within 0.2%; RustFFT was
3.4% slower in that run. So the published f32 inverse 1.330× includes about
3.5% of RustFFT baseline noise; the five-run mean is 1.284×. Across these two
sessions, fastfft's absolute geomean latencies agree within 0.5% in every
panel.

### Most of the spread is in the baseline

Each library's own geomean median latency varies much less than its
speedup does:

| library | CV across runs (range over the four panels) |
|---|---:|
| fastfft | 0.16–0.35% |
| fftw | 0.30–0.77% |
| phastft/interleaved | 0.26–1.43% |
| rustfft | 1.07–3.01% |

RustFFT has a bimodal slow mode that lasts a whole child process. It is the
address-placement effect found in
[ticket 05](../../../.scratch/fastfft-v1/issues/05-arena-drift-and-placement-noise.md).
Best-of-3 processes does not always filter it out:

| cell | RustFFT medians over five runs (ns) |
|---|---|
| f64 inverse N=16 | 10, 10, 10, 10, 23 |
| f32 forward N=512 | 253, 252, 253, 257, 396 |
| f32 forward N=4096 | 4704, 3376, 3386, 3309, 3344 |

When RustFFT is slow in a run, every library's speedup rises together. In
run 5, f32 forward speedups rose 6–7% for fastfft, FFTW and PhastFT alike,
while their own latencies stayed within 0.7%.

### Per cell

Per-cell CV of median latency across the five runs:

| library | median | p90 | max | max cell |
|---|---:|---:|---:|---|
| fastfft | 0.50% | 1.49% | 7.98% | f64 forward N=256, either 132 or 152 ns |
| fftw | 1.05% | 3.66% | 10.71% | f32 forward N=32 |
| phastft/interleaved | 1.56% | 4.83% | 8.83% | f64 inverse N=131072 |
| rustfft | 0.71% | 9.32% | 44.49% | f64 inverse N=16 |

fastfft's spread is lowest for N ≤ 64 (p90 0.70%) and highest for
128 ≤ N ≤ 4096 (p90 3.08%). Its plan (`describe`) was identical in all five
runs. Within each run, the f32 N=4096 control cell varied with a CV of 0.56%
(max 1.01%) for fastfft and 1.65% (max 5.89%) for RustFFT.

`cargo xtask arena compare` flags cells that move more than 3%. Between pairs
of these identical runs (10 pairs × 80 cells), the share of cells it would
flag is:

| library | median move | p90 | p99 | max | share > 3% |
|---|---:|---:|---:|---:|---:|
| fastfft | 0.40% | 2.05% | 9.41% | 15.55% | 5.2% |
| fftw | 0.91% | 4.51% | 14.75% | 27.08% | 17.2% |
| phastft/interleaved | 1.29% | 6.58% | 14.04% | 17.92% | 28.6% |
| rustfft | 0.49% | 6.54% | 47.01% | 90.46% | 16.2% |

## Interpretation

These are rules of thumb for this host and protocol, within one session:

- A change under about ±4% (≈2σ) in one fastfft headline speedup is
  consistent with noise. Treat it as real only if the library's absolute
  geomean latency moves too.
- A change under about 2% (p90) in one fastfft cell's latency is noise. A
  move above about 9% (p99) is very likely real. For comparator cells, a
  move needs to exceed about 15% to count as evidence.
- To detect a fastfft change, compare absolute latencies (`arena compare` on
  the fastfft rows), not speedups. Speedup ratios carry RustFFT's
  placement noise.
- `arena compare`'s fixed 3% threshold flags 5% of fastfft cells and 16–29%
  of comparator cells between identical runs.

## Limits

- All five runs come from one session, back to back. The only cross-session
  evidence is the comparison above with the published run, one day earlier.
  Spread across reboots or longer periods is unmeasured.
- One host, one suite (pow2 in-place). Other suites, placements and CPUs are
  untested.
- Five samples give a rough estimate. A sample standard deviation from n = 5
  has a wide confidence interval: a 95% interval of roughly 0.6–2.9× the
  estimate.

## Retained attempt

An earlier second capture was aborted at cell 21/80 with clock drift of
55.1%, above the 10% abort limit. Another Pi agent had started a `cargo`
build on the host; see
`aborted/host-processes-after.txt`. The next idle check also failed on load
average. That attempt's `meta.json` and `run.log` are kept in `aborted/`.
It is excluded from the statistics. All later captures came after the host
was quiet again.

## Files

| Path | Contents |
|---|---|
| `variance.md` | Full `arena-variance.py` output |
| `variance.json` | Every geomean, latency geomean and per-cell statistic |
| `runs/variance-N/` | Each capture: `results.jsonl.gz`, `trials.jsonl.gz`, `meta.json`, `env.json`, `chart-data.json` and idle evidence |
| `aborted/` | The drift-aborted attempt |

The full per-run HTML/SVG reports are kept locally under the ignored
`target/arena/variance/2026-10-17-mini-ryzen/`.

## Reproduce

Follow runbook steps 0–2: session file, host setup and build. Stop CI runners
and other agents on the host, then run:

```bash
scripts/arena-variance-campaign.sh 5            # steps 3, 4, 6 five times
scripts/bench-env.sh restore
python3 scripts/arena-variance.py docs/benchmarks/2026-10-17-mini-ryzen-run-to-run-variance/runs/variance-*
```

`arena-variance.py` reads `results.jsonl` or `results.jsonl.gz` from each run
directory.

# Measure the run-to-run spread of the four-library comparison

Type: task
Status: resolved
Roadmap: FFT-011 (protocol)

## Question

How much do the four-library comparison's published numbers move between
identical runs on the Zen 4 benchmark host? The runbook said this spread was
"not measured", so no threshold existed for when a change is real.

## Work

- Repeat runbook steps 3, 4 and 6 at least five times back to back on the
  idle 7840HS, with identical source, binary and host settings.
- Report each library's geomean speedup spread, its absolute geomean latency
  spread, and the distribution of per-cell CV. Also report the pairwise
  spread that `arena compare` sees, fastfft plan changes and control-cell
  stability.
- Record the result in the runbook's Noise paragraph.

## Done when

The campaign and its analysis are archived with reproducible scripts, and the
runbook no longer says the spread is unmeasured.

## Answer

[Report](../../../docs/benchmarks/2026-10-17-mini-ryzen-run-to-run-variance/README.md):
five clean captures (2026-10-17, drift ≤ 0.84%, 80 cells each, identical
fastfft plans). One drift-aborted attempt, caused by another agent's build,
is retained and excluded.

- **Headline speedups:** fastfft's geomean speedup vs RustFFT has a CV of
  1.2–3.1% (sd 0.016–0.040). FFTW and PhastFT are similar.
- **Most of that spread is RustFFT's own.** RustFFT sometimes lands in a
  slow mode for a whole process (the placement effect from ticket 05), and
  best-of-3 doesn't always filter it out. fastfft's absolute geomean latency
  varies with a CV of only 0.16–0.35%, against 1.07–3.01% for RustFFT.
- **Per cell:** fastfft's median latency CV is 0.50% (p90 1.49%, max 7.98%
  at f64 forward N=256, which is bimodal). RustFFT reaches 44%.
- **`arena compare`'s fixed 3% threshold** flags 5.2% of fastfft cells and
  16–29% of comparator cells between identical runs.
- **The published 2026-10-16 f32 inverse headline (1.330×) is +2.6σ high.**
  RustFFT was 3.4% slow in that run; fastfft's latency matches within 0.2%.
  The five-run mean is 1.284×. The other three panels are within the spread.
  This report does not change the README headline.

Tools: `scripts/arena-variance-campaign.sh` and `scripts/arena-variance.py`.

Not covered:
- spread across reboots or longer periods (the only cross-session point is
  the published run, one day earlier);
- other suites and hosts;
- a noise-aware `arena compare` threshold, or using absolute-latency
  comparison in place of ratios.

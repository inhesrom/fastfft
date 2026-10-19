# Million-point panel comparison

Same source and executable as the [first smooth dispatch run](../2026-09-30-mini-ryzen-ticket13-smooth-dispatch/report.md).
The quick smooth suite was filtered to N=1000000, with
`--libs fastfft,fastfft/measure,rustfft --core 2 --procs 3`. Both cells verified;
maximum control drift was 0.81%.

For f64, Measure selects AVX-512 L=8 panels with dimensions 1000×1000:
7.774 ms best / 7.967 ms median, compared with Estimate's 11.000 / 11.638 ms
and RustFFT's 7.987 / 8.539 ms. This supports the subsequent default change.
For f32, Measure retains the existing 256-bit Stockham plan.
See the [full report](report.md) for exact values and context.

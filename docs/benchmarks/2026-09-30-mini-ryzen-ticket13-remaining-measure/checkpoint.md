# Remaining small-size Measure comparison

Same source and executable as the [first smooth dispatch run](../2026-09-30-mini-ryzen-ticket13-smooth-dispatch/report.md).
The quick smooth suite was filtered to N=6,18,36,80,96,108,210, with
`--libs fastfft,fastfft/measure,rustfft --core 2 --procs 3`. All 14 cells
verified; maximum control drift was 0.90%.

Measure confirms most defaults. For f32 N=80 and N=96 it prefers other
rectangles over the tall fused choices, but neither reaches the 0.95× floor.
The follow-up therefore tests local tiling for those tall rectangles.
At f64 N=18 and N=210 the current candidate set remains below the floor.
The marginal N=6 and N=36 results pass here but do not erase their misses in
the full-suite run. See the [report](report.md) for all rows.

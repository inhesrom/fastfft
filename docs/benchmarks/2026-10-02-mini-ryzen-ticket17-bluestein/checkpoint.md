# Ticket 17: Bluestein quick rough checkpoint

G3 passes on the Ryzen 7 7840HS: **1.1575x best / 1.1512x median**
geomean versus RustFFT, with a minimum **0.5458x best / 0.5461x median**.
All 34 quick-profile cells verify, there are no child failures, and
control drift is 1.14%. The required thresholds remain 0.75x geomean
and 0.5x in every cell, on both statistics.

| Precision | Cells | Best geomean | Median geomean | Minimum best | Minimum median |
|---|---:|---:|---:|---:|---:|
| f32 | 17 | 1.2810x | 1.2735x | 0.5674x | 0.5667x |
| f64 | 17 | 1.0458x | 1.0407x | 0.5458x | 0.5461x |
| Combined | 34 | 1.1575x | 1.1512x | 0.5458x | 0.5461x |

These are forward, in-place cells under the ticket's quick-profile
acceptance. This is not a full-profile release-gate evaluation.

## Change and comparison

The baseline is ticket 16, `b908bc6`. Its fresh rough run passes accuracy
but fails G3's per-cell minimum at N=17 (about 0.35x f32 / 0.37x f64).

Bluestein now uses SIMD pointwise products and prepacked factor tables,
fuses conjugation and padding into those passes, and consumes input
before writing output. All placements share one workspace; the separate
N-element in-place copy is removed. The planner prices candidate inner
FFTs rather than selecting the smallest length. Kernel symmetry permits
M=2N-2, allowing N=17, 257 and 65537 to use power-of-two inner lengths.
The [policy note](policy.md) gives the derivation, ISA behavior and cost
model limitations.

Against the same before executable, fastfft improves **1.2474x best /
1.2482x median** over all 34 cells. Every fastfft cell improves by more
than 8% on both statistics. N=17 falls from 76.1 to 47.0 ns for f32 and
83.1 to 56.3 ns for f64. Its in-place workspace falls from 61 to 40
complex values for f32 and from 57 to 36 for f64.

RustFFT's before/after geomeans are 0.999x best / 0.998x median. Its
largest individual changes are at N=131071, where placement sensitivity
remains visible. The [comparison](comparison.md) retains those cells;
the G3 numbers above use the paired libraries within the final run.

## Validation and limitations

All 75 release tests pass, including the full f32/f64 accuracy sweep and
new public buffer-contract checks. All five ISA caps pass the test suite
with quick accuracy coverage. Workspace Clippy, fmt, codegen, restricted
feature builds and whitespace checks pass. The final arena verifies all
34 rough cells and passes G7. See [validation](validation.md) and the
[final arena report](after/report.md) for commands and detailed results.

**G8 still fails and planning overhead increased.** Its worst ratio is
310.59x RustFFT at f64 N=31, versus 76.01x in the baseline. The four
candidate evaluations and table preparation add planning work. Ticket 18
owns the measured cost tables and planning-time gate; this ticket does
not claim G8, Measure's speed guarantee, or other release gates.

The report retains the baseline, failed experiments, raw results,
environment metadata, source patch/hashes, executable hashes and
validation logs. `check-g3.py` checks completeness, verification, the
measurement protocol and both G3 timing statistics; it fails on the
baseline and passes on the final run.

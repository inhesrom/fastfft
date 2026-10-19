# Ticket 11: Small engine implementation and acceptance

**Correctness passes. Performance acceptance fails; ticket 11 remains unresolved.**

Default Estimate on the Ryzen 7 7840HS, default target CPU, arena `full`, CPU 2,
three processes per cell, all 64 required cells (eight powers of two from 2
through 256 × two precisions × two directions × in-place/out-of-place):

| Precision | Geomean best | Geomean median | Worst best | Worst median | Cells below 0.95×, best / median |
|---|---:|---:|---:|---:|---:|
| f32 | 0.896× | 0.887× | 0.558× | 0.554× | 14 / 12 |
| f64 | 1.031× | 1.026× | 0.856× | 0.862× | 9 / 7 |

Required: every cell ≥0.95× rustfft and geomean ≥1.2× **per precision**, on
both statistics. Neither precision passes. The f32 worst cell is N=16 forward
out-of-place; f64's worst best-time cell is N=16 inverse in-place and its worst
median-time cell is N=16 forward in-place.

All 128 library rows verified. There were no child failures or aborts. The
recorded maximum control drift was 2.21%, with no flag. See the
[full report](report.md), [machine-readable gate audit](acceptance.json),
[raw results](results.jsonl.gz), [environment](env.json) and [metadata](meta.json).
The general G1 line in the generated report uses the roadmap's 1.5× threshold;
the ticket-specific 1.2× verdict is the table above.

Against the [pre-edit baseline](../2026-09-26-mini-ryzen-small-before/provenance.md),
fastfft's own times improved by 2.767× best / 2.758× median for f32 and
2.440× / 2.469× for f64, geometrically averaged across the same 32 cells per
precision. This improvement does not waive either acceptance threshold.

## Implementation

- A private Small implementation behind the existing FFT trait specializes
  length, direction, ISA and decomposition at planning. It validates/chunks
  buffers and has a separate single-transform path. All three placements need
  zero caller scratch; `process()` bypasses thread-local scratch.
- Direct generated codelets cover 2 through 16, including odd sizes. The
  generator emits latency variants with FMA fusion but without add-pipe
  balancing or the opaque `one`. Existing balanced Stockham arithmetic is
  unchanged.
- Fused SIMD transforms use `N=M*L`, `M<=L`, `M<=8`, and `L` in {2,4,8}:
  interleaved loads, first codelet, register transpose/twiddles, second codelet,
  natural-order stores. The 4×8 case narrows registers after its rectangular
  transpose. Inputs are loaded before stores; short stores never cross the
  buffer end. Inverse transforms use real/imaginary swaps.
- Selected one- and two-pass shapes at N=32/64/128/256 use fixed-schedule
  Stockham execution, preserving its balanced arithmetic and scratch contract.
  Other configurations retain generic Stockham. Oversized transforms are not
  placed in giant register arrays.
- The private cache stores an FFT trait object and description, preserving Arc
  identity. Measure includes both engines where available and always retains
  Estimate within its existing eight-candidate limit. A small measured table
  handles the new range; the general cost model remains unchanged.

## Selection and iteration

Focused measurements are an ignored internal diagnostic, run as three separate
processes pinned to CPU 2, with no concurrent compilation. Every candidate is
measured in both directions and all three placements. Selection uses the median
of the three process medians per case, then the geometric mean across the six
cases. Changes within 3% retain the previous Estimate choice. These release-test
measurements guide dispatch; acceptance comes exclusively from the full arena.

[Diagnostic data](diagnostics/) preserves the iterations: initial Small,
fixed Stockham, the rectangular transpose and direct FMA variants, then the
single-transform shortcut. The initial and final table-selection scripts are
included. The final candidate measurements are `candidates-6.csv` through `candidates-8.csv`.
These precede the final scratch bounds-safety fix; that fix does not change
the Small kernels or Stockham arithmetic. The published full acceptance run
includes it. The earlier full run and broad quick comparison are retained in
`diagnostics/before-scratch-audit/`, with their own source and executable hashes.

Assembly inspection checked target-feature boundaries, helper calls and stack
traffic. The Small SIMD bodies inspected had no helper calls. Some padded or
register-constrained alternatives still have stack traffic; the measured table
avoids many of them. In-place timing exposes dependencies between successive
transforms that are absent with unchanged out-of-place input. For example, the
f32 N=8 forward in-place deficit is visible in both the focused per-placement
records and the arena; an aggregate candidate time alone conceals it.

Remaining work belongs to this still-open ticket: reduce the critical path at
N=8, improve tiny SIMD codelets at N=16, and reduce N=32 costs while preserving
all placement contracts. The final data also includes a failing f32 N=128
inverse out-of-place cell. No alignment workaround, generalized odd-size SIMD,
batch engine, cost-model retuning or clock-policy change was introduced.

The [larger-size regression investigation](regressions.md) records the broad
pow2/smooth/rough/batch comparison and matched repetitions. Two f64 default-row
regressions at N=2048 and Bluestein N=1021 persist in the original row order and
reverse with a different order. They remain qualified findings, not waived
regressions; their allocation/timing sensitivity is consistent with ticket 31.

## Validation and provenance

[Validation commands and coverage](validation.md), [captured logs](validation-logs.txt.gz),
[source patch](source.patch), [source hashes](source.sha256) and
[arena executable hash](executable.sha256) are retained. The patch applies to
`40d65034fed313a56e34b9c27e1aa088746067c6` and includes new source files. No commit
or push was performed. The tracker remains claimed; the map and roadmap have
not been marked complete.

The final patch was applied to a temporary archive of that commit and all 85
captured source hashes matched. The captured executable hash matches the final
arena, and the published compressed JSONL reproduces the raw 64-cell run exactly.

The existing `clock_ghz` probe is an uncalibrated throughput proxy: its compiler
folds four intended additions into one. FFT timings use `Instant` independently.
This work retains the existing drift policy and original probe readings;
calibration remains ticket 32. The first final-run launch correctly refused a
post-build load average above 2.0; the published run started only after the
existing environment check passed.

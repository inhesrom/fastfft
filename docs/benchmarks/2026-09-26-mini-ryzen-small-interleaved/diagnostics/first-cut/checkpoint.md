# Ticket 11: interleaved small-N leaves (first cut)

> Superseded by the [final checkpoint](../../checkpoint.md) of the same pass. Kept as
> the evidence for the first set of leaves (N=2-128), unchanged except for link paths.

**Acceptance failed; ticket 11 remains claimed.** Every one of the 64 cells now
clears 0.95× rustfft on the best statistic, but the median statistic still
fails in three N=2 out-of-place cells, and neither precision reaches the 1.2×
geomean. No commit or push was made.

| Precision | Statistic | Geomean | Worst | Cells below 0.95× | Before (geomean / below) |
|---|---|---:|---:|---:|---:|
| f32 | best | 1.136 | 0.998 | 0 / 32 | 0.927 / 11 |
| f32 | median | 1.119 | 0.797 | 1 / 32 | 0.912 / 12 |
| f64 | best | 1.134 | 0.989 | 0 / 32 | 1.037 / 7 |
| f64 | median | 1.096 | 0.867 | 2 / 32 | 1.030 / 8 |

"Before" is the previous checkpoint,
[small-latency](../../../2026-09-26-mini-ryzen-small-latency/checkpoint.md), whose final
arena is the baseline for every comparison here. The run used the unchanged
acceptance command (below): 64 cells, both libraries verified, zero child
failures, maximum control drift 1.04%, unflagged. Per-cell ratios are in
[acceptance.json](acceptance.json) and the table at the end.

## Root cause of the old deficit

The worst cells (f32 N16 out-of-place at 0.56×, N32 at 0.64×) were not overhead:
the kernels themselves were slow. f32 N16 ran the SSE2 split-layout Small kernel,
about 150 legacy-SSE instructions of which 36 are register copies, against
rustfft's interleaved 256-bit butterfly. Split layout pays a deinterleave and an
interleave per call, which dominates at these sizes. N32-N128 ran three Stockham
passes where rustfft uses one or two.

## What changed

- **Interleaved leaves** (`isa/x86/interleaved.rs`, `engine/small/interleaved.rs`):
  rows of four adjacent complex values (one ymm in f32, two in f64), so every
  load and store is a plain move. N=16 is 4x4, N=32 8x4, N=64 8x8 (register
  resident), N=128 8x16 in two passes through a stack buffer (scratch stays 0).
  N=8 is a radix-2 plus a lane-pair radix-4. N=2 and N=4 are SSE2-only sequences
  inlined into the wrapper, with no target-feature call. Sizes: N=2-32 in both
  precisions; N=64 and N=128 f32 only (f64 rows need twice the registers).
- **Two entries.** The leaves compile under AVX2+FMA and under AVX-512VL, which
  gives them 32 ymm registers. The AVX2 N=64 leaf spills (42 ns vs 20.7 ns), and
  f64 N=32 is 6-13% faster with 32 registers.
- **Dispatch** (`small_dispatch::preferred`): interleaved for N=2-32 from the
  AVX2 cap up; AVX-512VL entry for f64 N=32 and f32 N=64/128 from the
  AVX-512-ymm cap up; the AVX2 entry for f32 N=128 at the AVX2 cap. If the leaves
  are not compiled, the incumbent table applies as before. The previous
  split-layout N=8/N=32 leaves are no longer preferred but stay Measure
  candidates.
- **No closures in leaf code.** `core::array::from_fn` closures are compiled
  without the caller's target features, so the intrinsics they call are not
  inlined (N=128 took 620 ns). Leaves now use only `#[inline(always)]` helpers.
  None of the 76 leaf entries in either final executable contains a call.

## Remaining failures

**Median floor, N=2 out-of-place** (f32 fwd 0.797; f64 fwd and inv 0.867). The
best time is 2.18 ns for every N=2 and N=4 out-of-place cell in both precisions,
which is the harness floor. Inside the process the driver keeps, the samples
split between about 2.2 and 2.8 ns (11 vs 14 cycles): p10 2.22, median 2.80.
rustfft shows the same two modes between cells: its forward and inverse N=2
cells run identical code yet land in different modes. The effect predates this
change: the previous checkpoint's final run failed the same statistic with the
old scalar kernel (f32 inv out-of-place, median 0.796). The kept process of each
cell in two filtered driver runs (`n2oop-*`) and all six standalone
`run-cell` processes stayed in the fast mode.
The root cause is unconfirmed: hardware counters need root here
(`perf_event_paranoid` = 4). This overlaps ticket 31's placement sensitivity.

**Geomean below 1.2×.** In-place cells are latency-bound (store-to-load
forwarding plus the transform's critical path), and both libraries are near that
bound at N=8-32 (f32 1.00-1.06×). N=2 and N=4 are bound by per-call overhead.
The avenues left, with rough per-precision geomean gains, are: f64 N=64/128
leaves with zmm rows (about 3%), an f32 N=256 two-pass leaf (about 1.5%), and
shorter in-place critical paths by fusing twiddles into FMAs (1-2%). Together
they do not reach 1.2×.

## Regressions

[regressions.md](regressions.md): of nine initial flags in the 180-cell matched
audit, only f64 N=8 in-place recurs in both repeat pairs (+6.4 to +8.5%). That
cell now runs the interleaved leaf instead of the scalar-lane codelet, which had a
shorter in-place critical path. It still runs 1.02× rustfft, and its
out-of-place and batch forms improved (batch -38%). The broad audit's geomean
improved by 2.8%.

## Validation and reproduction

[validation.md](validation.md) covers formatting, Clippy, codegen, every feature
combination, all five ISA caps, the exhaustive M3 checks and the new leaf tests.

```sh
bash docs/benchmarks/2026-09-26-mini-ryzen-small-interleaved/diagnostics/first-cut/validate.sh
bash docs/benchmarks/2026-09-26-mini-ryzen-small-interleaved/diagnostics/first-cut/run-audit.sh
bash docs/benchmarks/2026-09-26-mini-ryzen-small-interleaved/diagnostics/first-cut/run-repeats.sh
```

The acceptance command inside `run-audit.sh` is the unchanged one:

```sh
fastfft-arena run --suite pow2 --profile full --max-n 256 \
  --libs fastfft,rustfft --procs 3 --core 2 --label small-interleaved \
  --out target/small-interleaved/final
```

The scripts read executables from `target/small-interleaved/`; the baseline is
the previous checkpoint's final arena (SHA-256 `5db079a7...ebdba`), and the new
arena is `210761662672...57c1` ([provenance.json](provenance.json)).
[source.patch](source.patch) and [source.sha256](source.sha256) identify the
tested tree, including the earlier uncommitted work this pass builds on.

This directory also keeps the intermediate runs. `focus-*` and `n2n4-*` are
focused before/after runs from earlier builds. `accept-1` and `accept-2` are
drift-flagged 64-cell runs (17.8% and 3.3%, the latter with concurrent activity
on the machine), kept for completeness but not used as evidence.
`candidates-*.log.gz` hold the diagnostic's per-candidate timings: `n128` before
the interleaved N=128 leaf existed, and the other two after the closure fix.

## Per-cell ratios (rustfft / fastfft)

Bold marks cells below 0.95×.

| Cell | Before best / median | After best / median | fastfft ns (after, best) | After plan |
|---|---:|---:|---:|---|
| f32:fwd:ip:n2 | 0.999 / 0.975 | 1.083 / 1.077 | 2.58 | avx2 interleaved |
| f32:fwd:oop:n2 | 1.279 / 1.349 | 1.012 / **0.797** | 2.18 | avx2 interleaved |
| f32:inv:ip:n2 | 1.004 / 0.982 | 1.077 / 1.078 | 2.58 | avx2 interleaved |
| f32:inv:oop:n2 | 1.014 / **0.796** | 1.279 / 1.265 | 2.18 | avx2 interleaved |
| f32:fwd:ip:n4 | 0.997 / 0.967 | 1.171 / 1.190 | 3.57 | avx2 interleaved |
| f32:fwd:oop:n4 | 1.072 / 1.127 | 1.646 / 1.626 | 2.18 | avx2 interleaved |
| f32:inv:ip:n4 | 0.986 / 0.985 | 1.188 / 1.200 | 3.57 | avx2 interleaved |
| f32:inv:oop:n4 | 1.015 / 1.005 | 1.561 / 1.538 | 2.18 | avx2 interleaved |
| f32:fwd:ip:n8 | 1.045 / 1.041 | 1.057 / 1.060 | 7.34 | avx2 interleaved |
| f32:fwd:oop:n8 | **0.833** / **0.792** | 1.220 / 1.207 | 2.78 | avx2 interleaved |
| f32:inv:ip:n8 | 1.052 / 1.044 | 1.058 / 1.061 | 7.34 | avx2 interleaved |
| f32:inv:oop:n8 | 0.989 / 0.955 | 1.324 / 1.298 | 2.58 | avx2 interleaved |
| f32:fwd:ip:n16 | **0.881** / **0.846** | 1.007 / 1.003 | 8.65 | avx2 interleaved |
| f32:fwd:oop:n16 | **0.563** / **0.549** | 1.182 / 1.148 | 3.37 | avx2 interleaved |
| f32:inv:ip:n16 | **0.881** / **0.846** | 1.011 / 1.003 | 8.64 | avx2 interleaved |
| f32:inv:oop:n16 | **0.565** / **0.553** | 1.188 / 1.151 | 3.38 | avx2 interleaved |
| f32:fwd:ip:n32 | **0.726** / **0.725** | 1.008 / 0.998 | 12.40 | avx2 interleaved |
| f32:fwd:oop:n32 | **0.640** / **0.640** | 1.140 / 1.110 | 8.52 | avx2 interleaved |
| f32:inv:ip:n32 | **0.730** / **0.722** | 0.998 / 0.999 | 12.40 | avx2 interleaved |
| f32:inv:oop:n32 | **0.651** / **0.643** | 1.138 / 1.103 | 8.52 | avx2 interleaved |
| f32:fwd:ip:n64 | 0.982 / 0.977 | 1.140 / 1.121 | 18.86 | avx512-ymm interleaved |
| f32:fwd:oop:n64 | 1.039 / 1.022 | 1.137 / 1.130 | 17.86 | avx512-ymm interleaved |
| f32:inv:ip:n64 | 0.971 / 0.965 | 1.144 / 1.122 | 18.79 | avx512-ymm interleaved |
| f32:inv:oop:n64 | 1.028 / 1.022 | 1.135 / 1.133 | 17.86 | avx512-ymm interleaved |
| f32:fwd:ip:n128 | 1.013 / 1.026 | 1.102 / 1.107 | 43.25 | avx512-ymm interleaved |
| f32:fwd:oop:n128 | **0.945** / **0.949** | 1.097 / 1.083 | 42.65 | avx512-ymm interleaved |
| f32:inv:ip:n128 | 0.998 / 1.020 | 1.102 / 1.111 | 43.23 | avx512-ymm interleaved |
| f32:inv:oop:n128 | **0.937** / **0.949** | 1.056 / 1.086 | 43.36 | avx512-ymm interleaved |
| f32:fwd:ip:n256 | 1.102 / 1.086 | 1.072 / 1.074 | 96.05 | stockham avx512-ymm |
| f32:fwd:oop:n256 | 1.075 / 1.058 | 1.081 / 1.055 | 94.93 | stockham avx512-ymm |
| f32:inv:ip:n256 | 1.092 / 1.078 | 1.082 / 1.080 | 96.07 | stockham avx512-ymm |
| f32:inv:oop:n256 | 1.087 / 1.066 | 1.082 / 1.061 | 95.25 | stockham avx512-ymm |
| f64:fwd:ip:n2 | **0.930** / 1.005 | 1.077 / 1.006 | 2.40 | avx2 interleaved |
| f64:fwd:oop:n2 | **0.926** / **0.922** | 1.103 / **0.867** | 2.18 | avx2 interleaved |
| f64:inv:ip:n2 | 1.000 / 1.004 | 1.077 / 1.004 | 2.40 | avx2 interleaved |
| f64:inv:oop:n2 | 1.082 / 1.076 | 1.099 / **0.867** | 2.18 | avx2 interleaved |
| f64:fwd:ip:n4 | 1.055 / 1.000 | 1.054 / 1.032 | 3.61 | avx2 interleaved |
| f64:fwd:oop:n4 | 1.292 / 1.278 | 1.559 / 1.526 | 2.18 | avx2 interleaved |
| f64:inv:ip:n4 | 1.051 / 1.045 | 1.061 / 1.035 | 3.59 | avx2 interleaved |
| f64:inv:oop:n4 | 1.292 / 1.282 | 1.460 / 1.443 | 2.18 | avx2 interleaved |
| f64:fwd:ip:n8 | 1.097 / 1.104 | 1.028 / 1.020 | 6.80 | avx2 interleaved |
| f64:fwd:oop:n8 | **0.949** / **0.928** | 1.272 / 1.260 | 2.98 | avx2 interleaved |
| f64:inv:ip:n8 | 1.102 / 1.118 | 1.022 / 1.024 | 6.86 | avx2 interleaved |
| f64:inv:oop:n8 | 1.004 / 1.003 | 1.149 / 1.003 | 2.98 | avx2 interleaved |
| f64:fwd:ip:n16 | **0.857** / **0.865** | 1.093 / 1.047 | 9.36 | avx2 interleaved |
| f64:fwd:oop:n16 | 1.071 / 1.041 | 1.434 / 1.434 | 5.29 | avx2 interleaved |
| f64:inv:ip:n16 | **0.861** / **0.865** | 1.084 / 1.045 | 9.38 | avx2 interleaved |
| f64:inv:oop:n16 | 1.065 / 1.041 | 1.448 / 1.442 | 5.21 | avx2 interleaved |
| f64:fwd:ip:n32 | 0.966 / **0.931** | 1.175 / 1.154 | 15.09 | avx512-ymm interleaved |
| f64:fwd:oop:n32 | **0.917** / **0.936** | 1.149 / 1.125 | 13.38 | avx512-ymm interleaved |
| f64:inv:ip:n32 | 0.967 / **0.929** | 1.182 / 1.156 | 14.99 | avx512-ymm interleaved |
| f64:inv:oop:n32 | **0.925** / **0.947** | 1.135 / 1.122 | 13.36 | avx512-ymm interleaved |
| f64:fwd:ip:n64 | 0.982 / 0.973 | 1.000 / 0.980 | 38.76 | stockham avx512 |
| f64:fwd:oop:n64 | 1.042 / 1.030 | 1.031 / 1.031 | 37.53 | stockham avx512 |
| f64:inv:ip:n64 | 0.987 / 0.977 | 0.989 / 0.982 | 38.94 | stockham avx512 |
| f64:inv:oop:n64 | 1.054 / 1.026 | 1.037 / 1.028 | 36.84 | stockham avx512 |
| f64:fwd:ip:n128 | 1.083 / 1.061 | 1.071 / 1.059 | 79.00 | stockham avx512-ymm |
| f64:fwd:oop:n128 | 1.066 / 1.057 | 1.053 / 1.052 | 78.92 | stockham avx512-ymm |
| f64:inv:ip:n128 | 1.082 / 1.061 | 1.073 / 1.057 | 78.79 | stockham avx512-ymm |
| f64:inv:oop:n128 | 1.055 / 1.051 | 1.064 / 1.053 | 79.24 | stockham avx512-ymm |
| f64:fwd:ip:n256 | 1.147 / 1.156 | 1.144 / 1.157 | 170.67 | stockham avx512-ymm |
| f64:fwd:oop:n256 | 1.139 / 1.125 | 1.134 / 1.119 | 169.54 | stockham avx512-ymm |
| f64:inv:ip:n256 | 1.152 / 1.154 | 1.149 / 1.157 | 170.28 | stockham avx512-ymm |
| f64:inv:oop:n256 | 1.141 / 1.126 | 1.126 / 1.109 | 170.60 | stockham avx512-ymm |

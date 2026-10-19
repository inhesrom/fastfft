# Arena order bias: one shared timing call site

The N=2 "per-process modes"
([n2-process-modes.md](../../2026-09-26-mini-ryzen-small-interleaved/diagnostics/n2-process-modes.md))
are an artifact of the arena, not of either library. It favours whichever library
is listed first in `--libs`. Every acceptance run up to and including the
[small-interleaved checkpoint](../../2026-09-26-mini-ryzen-small-interleaved/checkpoint.md)
lists `fastfft,rustfft`.

## Cause

The arena timed every library through one loop. `timing::turn` called a
`&mut dyn FnMut()` closure, and the closure called `Runner::run` through a
`Box<dyn Runner<T>>`. That one indirect call site served every library in the
cell.

On Zen 4, an indirect branch that has taken more than one target keeps one
static target in its branch-target-buffer entry. The branch predictor predicts
the other targets through its indirect target array, which costs about 3
cycles (0.6 ns at 5 GHz) per call.

The first library to run the site owns the static target, and the second pays
on every call. Occasionally the two swap in the middle of a process.

## Evidence

Raw data: [order-bias-data.tar.gz](order-bias-data.tar.gz), with the per-process
`perf stat` CSVs and results, and the acceptance results and analyses. The
table covers `pow2:f64:fwd:oop:n2` on the final3 arena. Each process ran
alone on core 2 under `perf stat` (user mode). The dynamic-prediction column
is `bp_dyn_ind_pred` per timed call.

| `libs` (processes) | fastfft median, ns | rustfft median, ns | dynamic predictions per call |
|---|---:|---:|---:|
| `fastfft` (25) | 2.20–2.22 | — | 0.00 |
| `rustfft` (25) | — | 2.62 | 0.00 |
| `fastfft,rustfft` (30) | 2.20–2.23; 2 flips (2.41, 2.80) | 3.19–3.20; 1 flip (2.62) | 0.41–0.45 |
| `rustfft,fastfft` (20) | 2.79–2.81; 2 flips (2.22, 2.23) | 2.62; 3 flips (3.19–3.20) | 0.39–0.94 |

- Run alone, neither library flips or uses the indirect predictor.
- Run as a pair, the dynamic predictions match the second library's share of
  timed calls.
- The listed-second library runs 0.6 ns slower per call, whichever library it
  is.

For the full 64-cell acceptance with the order reversed (same binary), the
geomean moved from the published figure to the reversed figure:

| Precision | Best, published | Best, reversed | Median, published | Median, reversed |
|---|---:|---:|---:|---:|
| f32 | 1.191 | 1.107 | 1.174 | 1.113 |
| f64 | 1.221 | 1.168 | 1.191 | 1.152 |

Almost all of the change is in the out-of-place cells for N ≤ 16. For example,
f32 forward N=2 goes from 1.51 to 0.92, and f64 forward N=4 from 1.51 to 1.00.

## Fix

`Runner::calibrate` and `Runner::turn` are now provided trait methods, and the
timing functions are generic over the closure. As a result, each runner type
compiles its own loop, with a direct call to its own `run`. No two libraries
share a call site. Rows with the same runner type (the fastfft ISA rows) still
share one loop.

On the fixed arena, N=2 f64 out of place gives fastfft 1.40 ns and rustfft
1.61 ns in either order, with no dynamic predictions. The per-call overhead
falls for both libraries.

The 64-cell acceptance on the fixed arena used the final3 fastfft source and
was run in both orders:

| Precision | Best, fastfft first | Best, rustfft first | Median, fastfft first | Median, rustfft first | Lowest cell (best / median) |
|---|---:|---:|---:|---:|---:|
| f32 | 1.211 | 1.206 | 1.209 | 1.208 | 1.058 / 1.054 |
| f64 | 1.202 | 1.205 | 1.176 | 1.184 | **0.926** / 1.000 |

The two orders now agree to within 0.8%. On the fixed arena, f32 passes the
gate and f64 does not: its median geomean is below 1.2, and one cell is below
the floor.

The failing cell is f64 N=2 in place, best statistic. There, fastfft's leaf
and rustfft's `Butterfly2` execute the same instructions: two 16-byte loads,
an add, a subtract and two stores. Both run at 13 cycles per call (median
2.585 ns). rustfft's best of 2.39 ns comes from 3 of 105,663 batches. The
"best" statistic is the minimum over roughly 100k batches, so this cell is
decided by a 0.003% outlier.

## Code layout at the per-call floor

Once the per-call overhead drops, out-of-place N=2 costs 6–8 cycles per call,
and it moves by a whole cycle when unrelated code shifts a function across a
64-byte fetch line. Two builds of the fixed arena illustrate this. The second
adds f32 zmm rows for N=128 and changes no N ≤ 4 code in either library.

| Cell | fastfft median, ns | rustfft median, ns | Ratio |
|---|---:|---:|---:|
| f32 N=2 out of place | 1.015 → 1.208 | 1.415 → 1.415 | 1.39 → 1.17 |
| f64 N=2 out of place | 1.405 → 1.405 | 1.611 → 1.413 | 1.15 → 1.01 |

In the f64 cell, fastfft's function is byte-identical in both builds, but it
now starts at line offset 0x30 instead of 0x10. rustfft gained a cycle from
its own shift. In-place N=2 and all N=4 cells stayed within 0.3%.

Stable Rust cannot align individual functions. Build-to-build swings of about
±15% in the N=2 out-of-place ratios are therefore measurement noise for this
gate, not kernel quality.

## Deterministic layout: 64-byte function alignment

Building the arena with `RUSTFLAGS="-C llvm-args=-align-all-functions=6"`
starts every function compiled from source on a 64-byte line, in both
libraries. Two builds whose fastfft code differs above N=8 now give the same
out-of-place N ≤ 8 medians within 0.3% for both libraries. For example, N=2
gives fastfft 1.21 ns and rustfft 1.41 ns in either precision. The acceptance
on that build, with the per-library loops and `p1`, gives:

| Precision | p1 geomean | Median geomean | Lowest cell | Cells below 0.95 |
|---|---:|---:|---:|---:|
| f32 | 1.187 | 1.182 | 1.054 | 0 |
| f64 | 1.197 | 1.177 | 1.000 | 0 |

The weakest cells are the latency-bound in-place ones: f32 N=16 and N=32
(1.06), and f64 N=2 to N=16 (1.00–1.08).

# Ticket 11: interleaved small-N leaves

> **Superseded** by [small-fair](../2026-09-27-mini-ryzen-small-fair/checkpoint.md).
> The arena this page used favoured the first library listed in `--libs`, which
> was fastfft, by about 0.6 ns per call
> ([order-bias.md](../2026-09-27-mini-ryzen-small-fair/diagnostics/order-bias.md)).
> The ratios below overstate fastfft in the out-of-place cells for N ≤ 16.

**Acceptance failed; ticket 11 remains claimed.** f64 reaches 1.2× on the best
statistic, and did on both statistics in an earlier run of an almost identical
build. f32 stays about 1–2% short of 1.2× on both statistics. The floor holds
on the best statistic everywhere. On the median it fails in one N=2
out-of-place cell, the same per-process timing flip that failed the previous
checkpoint. No commit or push was made.

| Precision | Statistic | Geomean | Worst | Cells below 0.95× | Previous checkpoint (geomean / below) |
|---|---|---:|---:|---:|---:|
| f32 | best | 1.191 | 1.055 | 0 / 32 | 0.927 / 11 |
| f32 | median | 1.174 | 0.934 | 1 / 32 | 0.912 / 12 |
| f64 | best | **1.221** | 1.050 | 0 / 32 | 1.037 / 7 |
| f64 | median | 1.191 | 1.000 | 0 / 32 | 1.030 / 8 |

The run used the unchanged acceptance command (below): 64 cells, both
libraries verified, zero child failures, maximum control drift 0.88%,
unflagged. "Previous checkpoint" is
[small-latency](../2026-09-26-mini-ryzen-small-latency/checkpoint.md), whose final
arena is the baseline for every comparison here. The validated build before
the last change, which only added f64 batch prefetching, measured f32 1.188 /
1.176 and f64 1.231 / **1.2015** with no cell below 0.95×
([diagnostics/final2-acceptance.json](diagnostics/final2-acceptance.json)). The
run-to-run spread is about ±1% of geomean. Per-cell ratios are in
[acceptance.json](acceptance.json) and the table at the end.
[diagnostics/first-cut](diagnostics/first-cut/checkpoint.md) holds this pass's
first checkpoint (N=2–128 leaves, f32 1.136, f64 1.134).

## What changed

The old deficit came from kernels, not overhead. For example, f32 N=16 ran an
SSE2 split-layout kernel of about 150 instructions against rustfft's
interleaved butterfly. The work, by effect:

- **Interleaved leaves** (`isa/x86/interleaved.rs`, `engine/small/interleaved.rs`):
  rows of four adjacent complex values, so loads and stores are plain moves.
  Shapes are 4x4 (N=16), 8x4 (32) and 8x8 (64, register resident). N=128 is 8x16
  and N=256 is 16x16, each in two passes. N=8 is radix-2 plus a lane-pair
  radix-4, and N=2 and N=4 are SSE2 sequences inlined into the wrapper.
- **Three row types and entries.** ymm rows run under AVX2 and under AVX-512VL
  (32 registers). f64 N=64–256 use zmm rows on the AVX-512 tier; f64 rows in
  ymm need twice the registers.
- **Shorter latency paths.** The complex multiply is `fmadd(swap(v), ±wi, v·wr)`
  with a sign-folded table, and ω8 multiplies take one FMA each. Latency-bound
  f32 leaves (N ≤ 32) fold the ∓i rotation into `addsub` of swapped differences.
  Other leaves keep rotate-then-add, which has one fewer operation. Against
  the first cut, these took f32 in-place N=16/32 from 1.00–1.01 to 1.06–1.08×,
  N=8 from 1.06 to 1.10×, and f64 N=32 out of place from 1.14–1.15 to
  1.18–1.23×.
- **No 4K aliasing in two-pass leaves.** The N=128 intermediate is a stack
  window placed so no address matches the input or output modulo 4 KiB. N=256
  uses the output out of place and a window exactly 2 KiB from the buffer in
  place. Before this, the same N=128 leaf measured 47 or 69 ns depending on
  buffer placement, and N=256 had looked slower than Stockham; it is now
  1.22–1.26× (f32) and 1.27–1.31× (f64).
- **Batch prefetch.** f64 two-pass batches read each chunk in strided row order.
  Prefetching the chunk after next brought batch f64 N=128 from 122 back to 90
  ns (the old path's speed) and batch f64 N=256 from 330 to 270–289 ns.
- **Dispatch** (`small_dispatch::preferred`) picks the interleaved leaf for
  N=2–256 from the AVX2 cap up (f64 N=64–256 only on the AVX-512 tier), with the
  entry measured best per size. It falls back to the incumbent table when the
  leaves are not compiled. The previous split-layout N=8/N=32 leaves stay
  Measure candidates only.
- **No closures in leaf code.** `core::array::from_fn` closures are compiled
  without the caller's target features and called intrinsics out of line (N=128
  took 620 ns). All 96 leaf entries in the final executables are call-free.

Two attempts were measured and dropped: zmm rows for f64 N=16/32, and volatile
split stores for f32 N=2 (in-place best improved, but the median did not and
out-of-place got worse).

## Remaining failures

**f32 geomean ≈ 1.18–1.19.** Most of the shortfall is in-place N=2–32 (1.06–1.10×).
Those cells are latency-bound: store-to-load forwarding plus the transform's
critical path. rustfft sits near the same bound; for example, f32 N=16 in place
takes 8.22–8.28 ns for us and 8.74 ns for rustfft. The critical-path levers here
save a cycle or two each, and I found none that closes 1–2% of geomean across
these cells.

**Median floor, N=2 out of place.** [n2-process-modes.md](diagnostics/n2-process-modes.md)
has the experiments. Roughly one process in ten runs most of fastfft's N=2
out-of-place batches at 2.8 instead of 2.2 ns; in exactly those processes,
rustfft flips from slow to fast. The flip persists with buffer misalignment
and with address randomization disabled. The driver keeps each library's
process with the lowest best time (ties go to the first), so a flipped
process can supply a cell's median. The old scalar kernel failed the same way.
Root-causing needs hardware counters (`perf_event_paranoid` is 4). Choosing each
library's process by its median for the median statistic would also remove most
of the exposure, but that is a measurement-policy change (tickets 05/31).

## Regressions

[regressions.md](regressions.md): the 180-cell matched audit improved 3.55%
(best) / 3.45% (median) in geomean. Of eight initial flags, only f64 N=8
in-place recurs in all three pairs (median +3.1 to +4.1%, best +2.1 to 2.2%). It
still runs 1.05× rustfft, and its batch form is 37% faster.

## Validation and reproduction

[validation.md](validation.md) covers formatting, Clippy, codegen, every feature
combination, all five ISA caps, the exhaustive M3 checks and the leaf tests.

```sh
bash docs/benchmarks/2026-09-26-mini-ryzen-small-interleaved/diagnostics/pipeline.sh
bash docs/benchmarks/2026-09-26-mini-ryzen-small-interleaved/diagnostics/run-repeats.sh
```

`pipeline.sh` validates, snapshots the source and executables, runs the
unchanged acceptance command, then the broad audit:

```sh
fastfft-arena run --suite pow2 --profile full --max-n 256 \
  --libs fastfft,rustfft --procs 3 --core 2 --label small-interleaved \
  --out target/small-interleaved/final3
```

The baseline arena is the previous checkpoint's final one (SHA-256
`5db079a7...ebdba`). The tested arena is `54246315...6006`
([provenance.json](provenance.json)). [source.patch](source.patch) and
[source.sha256](source.sha256) identify the tested tree, including the earlier
uncommitted work this pass builds on.

`diagnostics/` keeps each measured step as a run directory:

| Directory | What it measures |
|---|---|
| `lat-*` | latency paths |
| `n128-*` | f64 N=128 on zmm rows |
| `n256-*` | N=256 leaves |
| `n8-*` | f64 N=8 pair stage |
| `n2-*` | f32 N=2 split stores |
| `b-*` | batch prefetch |
| `accept-6`, `final2` | full runs of the two preceding builds |

## Per-cell ratios (rustfft / fastfft)

Bold marks cells below 0.95×.

| Cell | Before best / median | After best / median | fastfft ns (after, best) | After plan |
|---|---:|---:|---:|---|
| f32:fwd:ip:n2 | 0.999 / 0.975 | 1.082 / 1.087 | 2.58 | avx2 interleaved |
| f32:fwd:oop:n2 | 1.279 / 1.349 | 1.507 / 1.485 | 1.98 | avx2 interleaved |
| f32:inv:ip:n2 | 1.004 / 0.982 | 1.078 / 1.077 | 2.58 | avx2 interleaved |
| f32:inv:oop:n2 | 1.014 / **0.796** | 1.207 / **0.934** | 1.98 | avx2 interleaved |
| f32:fwd:ip:n4 | 0.997 / 0.967 | 1.173 / 1.195 | 3.57 | avx2 interleaved |
| f32:fwd:oop:n4 | 1.072 / 1.127 | 1.281 / 1.274 | 2.18 | avx2 interleaved |
| f32:inv:ip:n4 | 0.986 / 0.985 | 1.194 / 1.207 | 3.57 | avx2 interleaved |
| f32:inv:oop:n4 | 1.015 / 1.005 | 1.469 / 1.447 | 2.18 | avx2 interleaved |
| f32:fwd:ip:n8 | 1.045 / 1.041 | 1.097 / 1.093 | 7.06 | avx2 interleaved |
| f32:fwd:oop:n8 | **0.833** / **0.792** | 1.311 / 1.298 | 2.58 | avx2 interleaved |
| f32:inv:ip:n8 | 1.052 / 1.044 | 1.106 / 1.093 | 7.05 | avx2 interleaved |
| f32:inv:oop:n8 | 0.989 / 0.955 | 1.317 / 1.298 | 2.58 | avx2 interleaved |
| f32:fwd:ip:n16 | **0.881** / **0.846** | 1.063 / 1.057 | 8.22 | avx2 interleaved |
| f32:fwd:oop:n16 | **0.563** / **0.549** | 1.182 / 1.170 | 3.37 | avx2 interleaved |
| f32:inv:ip:n16 | **0.881** / **0.846** | 1.055 / 1.061 | 8.28 | avx2 interleaved |
| f32:inv:oop:n16 | **0.565** / **0.553** | 1.189 / 1.171 | 3.37 | avx2 interleaved |
| f32:fwd:ip:n32 | **0.726** / **0.725** | 1.077 / 1.061 | 11.77 | avx2 interleaved |
| f32:fwd:oop:n32 | **0.640** / **0.640** | 1.173 / 1.136 | 8.28 | avx2 interleaved |
| f32:inv:ip:n32 | **0.730** / **0.722** | 1.061 / 1.058 | 11.80 | avx2 interleaved |
| f32:inv:oop:n32 | **0.651** / **0.643** | 1.175 / 1.129 | 8.25 | avx2 interleaved |
| f32:fwd:ip:n64 | 0.982 / 0.977 | 1.194 / 1.178 | 17.97 | avx512-ymm interleaved |
| f32:fwd:oop:n64 | 1.039 / 1.022 | 1.216 / 1.197 | 16.58 | avx512-ymm interleaved |
| f32:inv:ip:n64 | 0.971 / 0.965 | 1.230 / 1.197 | 17.77 | avx512-ymm interleaved |
| f32:inv:oop:n64 | 1.028 / 1.022 | 1.202 / 1.199 | 16.76 | avx512-ymm interleaved |
| f32:fwd:ip:n128 | 1.013 / 1.026 | 1.178 / 1.186 | 40.70 | avx512-ymm interleaved |
| f32:fwd:oop:n128 | **0.945** / **0.949** | 1.140 / 1.155 | 40.62 | avx512-ymm interleaved |
| f32:inv:ip:n128 | 0.998 / 1.020 | 1.179 / 1.181 | 40.69 | avx512-ymm interleaved |
| f32:inv:oop:n128 | **0.937** / **0.949** | 1.140 / 1.154 | 40.52 | avx512-ymm interleaved |
| f32:fwd:ip:n256 | 1.102 / 1.086 | 1.247 / 1.244 | 83.74 | avx512-ymm interleaved |
| f32:fwd:oop:n256 | 1.075 / 1.058 | 1.221 / 1.222 | 84.08 | avx512-ymm interleaved |
| f32:inv:ip:n256 | 1.092 / 1.078 | 1.258 / 1.254 | 84.02 | avx512-ymm interleaved |
| f32:inv:oop:n256 | 1.087 / 1.066 | 1.233 / 1.226 | 83.41 | avx512-ymm interleaved |
| f64:fwd:ip:n2 | **0.930** / 1.005 | 1.078 / 1.000 | 2.40 | avx2 interleaved |
| f64:fwd:oop:n2 | **0.926** / **0.922** | 1.461 / 1.439 | 2.18 | avx2 interleaved |
| f64:inv:ip:n2 | 1.000 / 1.004 | 1.080 / 1.000 | 2.40 | avx2 interleaved |
| f64:inv:oop:n2 | 1.082 / 1.076 | 1.189 / 1.177 | 2.18 | avx2 interleaved |
| f64:fwd:ip:n4 | 1.055 / 1.000 | 1.062 / 1.033 | 3.59 | avx2 interleaved |
| f64:fwd:oop:n4 | 1.292 / 1.278 | 1.508 / 1.485 | 2.38 | avx2 interleaved |
| f64:inv:ip:n4 | 1.051 / 1.045 | 1.057 / 1.033 | 3.59 | avx2 interleaved |
| f64:inv:oop:n4 | 1.292 / 1.282 | 1.181 / 1.168 | 2.38 | avx2 interleaved |
| f64:fwd:ip:n8 | 1.097 / 1.104 | 1.066 / 1.066 | 6.55 | avx2 interleaved |
| f64:fwd:oop:n8 | **0.949** / **0.928** | 1.278 / 1.257 | 2.98 | avx2 interleaved |
| f64:inv:ip:n8 | 1.102 / 1.118 | 1.050 / 1.064 | 6.55 | avx2 interleaved |
| f64:inv:oop:n8 | 1.004 / 1.003 | 1.151 / 1.134 | 2.98 | avx2 interleaved |
| f64:fwd:ip:n16 | **0.857** / **0.865** | 1.100 / 1.083 | 9.26 | avx2 interleaved |
| f64:fwd:oop:n16 | 1.071 / 1.041 | 1.486 / 1.472 | 5.16 | avx2 interleaved |
| f64:inv:ip:n16 | **0.861** / **0.865** | 1.098 / 1.082 | 9.26 | avx2 interleaved |
| f64:inv:oop:n16 | 1.065 / 1.041 | 1.456 / 1.446 | 5.15 | avx2 interleaved |
| f64:fwd:ip:n32 | 0.966 / **0.931** | 1.214 / 1.187 | 14.59 | avx512-ymm interleaved |
| f64:fwd:oop:n32 | **0.917** / **0.936** | 1.233 / 1.199 | 12.58 | avx512-ymm interleaved |
| f64:inv:ip:n32 | 0.967 / **0.929** | 1.243 / 1.220 | 14.59 | avx512-ymm interleaved |
| f64:inv:oop:n32 | **0.925** / **0.947** | 1.176 / 1.188 | 12.89 | avx512-ymm interleaved |
| f64:fwd:ip:n64 | 0.982 / 0.973 | 1.229 / 1.203 | 32.02 | avx512 interleaved |
| f64:fwd:oop:n64 | 1.042 / 1.030 | 1.255 / 1.228 | 30.69 | avx512 interleaved |
| f64:inv:ip:n64 | 0.987 / 0.977 | 1.235 / 1.200 | 32.07 | avx512 interleaved |
| f64:inv:oop:n64 | 1.054 / 1.026 | 1.240 / 1.231 | 30.71 | avx512 interleaved |
| f64:fwd:ip:n128 | 1.083 / 1.061 | 1.240 / 1.184 | 68.57 | avx512 interleaved |
| f64:fwd:oop:n128 | 1.066 / 1.057 | 1.236 / 1.183 | 67.89 | avx512 interleaved |
| f64:inv:ip:n128 | 1.082 / 1.061 | 1.244 / 1.189 | 68.34 | avx512 interleaved |
| f64:inv:oop:n128 | 1.055 / 1.051 | 1.231 / 1.180 | 67.72 | avx512 interleaved |
| f64:fwd:ip:n256 | 1.147 / 1.156 | 1.311 / 1.270 | 148.24 | avx512 interleaved |
| f64:fwd:oop:n256 | 1.139 / 1.125 | 1.300 / 1.230 | 147.73 | avx512 interleaved |
| f64:inv:ip:n256 | 1.152 / 1.154 | 1.301 / 1.263 | 147.40 | avx512 interleaved |
| f64:inv:oop:n256 | 1.141 / 1.126 | 1.273 / 1.228 | 152.13 | avx512 interleaved |

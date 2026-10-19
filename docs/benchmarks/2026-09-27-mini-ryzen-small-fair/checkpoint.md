# Ticket 11: fair small-N arena and f32 zmm rows

> **Superseded** by [small-fma](../2026-09-28-mini-ryzen-small-fma/checkpoint.md),
> where acceptance passes on this arena. FMA-folded rotations made the leaves
> from N=16 up faster, the f64 N=256 spread described below is gone, and the
> N=64/128 spread remains
> ([fma-rotations.md](../2026-09-28-mini-ryzen-small-fma/diagnostics/fma-rotations.md)).

**Acceptance failed; ticket 11 remains claimed.** This checkpoint corrects how
the gate is measured and adds one kernel. On the corrected arena, no cell in
either precision is below the 0.95× floor, but neither precision reaches the
1.2× geomean. No commit or push was made.

| Precision | Statistic | Geomean | Worst | Cells below 0.95× | Previous checkpoint, same arena |
|---|---|---:|---:|---:|---:|
| f32 | p1 | 1.187 | 1.054 | 0 / 32 | 1.175 / 0 |
| f32 | median | 1.183 | 1.052 | 0 / 32 | 1.172 / 0 |
| f64 | p1 | 1.194 | 1.000 | 0 / 32 | 1.198 / 0 |
| f64 | median | 1.178 | 1.001 | 0 / 32 | 1.177 / 0 |

The run used the acceptance command below: 64 cells, both libraries
verified, zero child failures, maximum control drift 2.02% (unflagged).

"Previous checkpoint, same arena" is the
[small-interleaved](../2026-09-26-mini-ryzen-small-interleaved/checkpoint.md)
source, rebuilt with this checkpoint's harness and alignment and run in the
same pipeline ([acceptance-before.json](diagnostics/acceptance-before.json)).
On its own biased arena it had reported f32 1.191 / 1.174 and f64 1.221 /
1.191 (best / median).

## Measurement changes

The maintainer approved three changes on 2026-09-27.

1. **Per-library timing loops.** The arena timed every library through one
   indirect call site. Zen 4 gives the first library to run it the fast
   prediction path and charges the second about 3 cycles (0.6 ns) per call.
   fastfft was always listed first. With the order reversed, the previous
   checkpoint's geomeans fell to f32 1.107 / 1.113 and f64 1.168 / 1.152.
   `Runner::turn` and `Runner::calibrate` are now provided trait methods, so
   each runner type has its own loop and call sites. Results no longer depend
   on the order (within 0.8%), and the N=2 "per-process modes" are gone. See
   [diagnostics/order-bias.md](diagnostics/order-bias.md), with
   hardware-counter evidence.
2. **p1 instead of the minimum.** The gate's best statistic was the fastest
   of about 100k batches. It is now `p1`, the 1st-percentile batch. At f64
   N=2 in place both libraries execute the same six instructions, yet 3 of
   105,663 rustfft batches had set that cell's floor to 0.926. The driver
   also keeps each library's process by lowest p1. `best` is still recorded
   and reported.
3. **64-byte function alignment.** Gate arenas are built with
   `RUSTFLAGS="-C llvm-args=-align-all-functions=6"`. At N ≤ 8 a call costs
   6–8 cycles. Either library gained or lost a cycle whenever unrelated code
   moved its function across a fetch line (N=2 out-of-place ratios swung
   ±15% between builds). Aligned builds of different sources agree within
   0.3% on those cells.

[docs/benchmarking.md](../../benchmarking.md) documents all three.

## What changed in fastfft

- **zmm rows for f32 N=128** (`R32z`, eight complex values per register).
  N=128 runs as 8x16, register-resident: two radix-8 column halves, two 8x8
  transposes, then radix-16 across 16 rows, with no stack intermediate. It is
  5–6% faster on best and 3–5% on median than the AVX-512VL ymm leaf; f32 N=128
  went from 1.16–1.18× to 1.22–1.24×.
- To support this, the `Row` trait carries its row width and a per-row-type
  `leaf`, the four-complex leaves moved to a `Quad` subtrait, and the twiddle
  table takes the lane count.
- **Dispatch:** f32 N=128 prefers the AVX-512 tier (zmm rows), then
  AVX-512VL and AVX2.

Dropped after measurement:

- zmm rows at f32 N=64 (31% slower in place, 19% out of place: the transposes
  sit on the critical path) and N=256 (+1%). See
  [diagnostics/f32-zmm-rows.md](diagnostics/f32-zmm-rows.md).
- ymm rows for f64 N=64–256 (only out-of-place N=64 gains).
- A 64-byte-aligned twiddle table (fewer split loads, but out-of-place N=128
  and N=256 got slower). See
  [diagnostics/f64-zmm-spread.md](diagnostics/f64-zmm-spread.md).

## Where the gap is

Averaged over direction:

| Cells | f32 p1 / median | f64 p1 / median |
|---|---:|---:|
| in place N=2 | 1.054 / 1.095 | 1.000 / 1.001 |
| in place N=4 | 1.189 / 1.184 | 1.039 / 1.036 |
| in place N=8 | 1.112 / 1.090 | 1.043 / 1.061 |
| in place N=16 | 1.058 / 1.062 | 1.102 / 1.096 |
| in place N=32 | 1.066 / 1.058 | 1.203 / 1.194 |
| out of place N=16–32 | 1.12–1.14 | 1.19–1.40 |
| N ≥ 64 | 1.18–1.32 | 1.17–1.32 |

The in-place cells are latency-bound: store-to-load forwarding plus the
transform's critical path. At N=2 fastfft and rustfft execute the same
instructions. Reaching 1.2× through the ten in-place cells for N ≤ 32 alone
would need them about 4–5% faster (f32), or about 1.5% (f64 p1) and 6% (f64
median).

The f64 median has a second cause: the f64 zmm leaves (N=64–256) run 3–7%
above their own best, against 1–2% for rustfft. Their batch times alternate
with period 2 or 4. It is not clock frequency, FP state, the front end or the
other library, and the root cause is not found
([diagnostics/f64-zmm-spread.md](diagnostics/f64-zmm-spread.md)). Closing
that spread alone would lift the f64 median geomean by about 1%.

## Regressions

[regressions.md](regressions.md): the 180-cell matched audit is neutral
(+0.09% p1, +0.06% median). Its 12 flags all had unchanged plans, and none
recurred in two repeat pairs. The three cells whose plan changed, all f32
N=128, are faster.

## Validation and reproduction

[validation.md](validation.md) covers formatting, Clippy, codegen, the gate
analysis tests, every feature combination, all five ISA caps, the exhaustive
M3 checks and the leaf tests. All 100 leaf entries in the tested executables
are call-free.

```sh
bash docs/benchmarks/2026-09-27-mini-ryzen-small-fair/diagnostics/pipeline.sh
bash docs/benchmarks/2026-09-27-mini-ryzen-small-fair/diagnostics/run-repeats.sh
```

`pipeline.sh` runs these steps in order:

1. Validate the source.
2. Rebuild the previous checkpoint's source with this checkpoint's arena
   (`build-baseline.sh`).
3. Snapshot the source and the executables.
4. Run the acceptance on both arenas.
5. Run the broad audit.

The acceptance command is unchanged, apart from the aligned build:

```sh
fastfft-arena run --suite pow2 --profile full --max-n 256 \
  --libs fastfft,rustfft --procs 3 --core 2 --label small-fair \
  --out target/small-fair/final
```

The tested arena's SHA-256 is `4d10be9d...69c9`; the baseline arena's is
`bdfdb6d3...c8ab` ([provenance.json](provenance.json)).
[source.patch](source.patch) and [source.sha256](source.sha256) identify the
tested tree, including the earlier uncommitted work this pass builds on.

`diagnostics/` also keeps the exploratory runs:

| Directory | What it measures |
|---|---|
| `z-before-*`, `z-after-*` | f32 N=64–256: ymm leaf vs zmm rows (fixed arena) |
| `cur`, `p1` | two unaligned builds of the fixed arena (layout swing at N ≤ 8) |
| `al-cur`, `al-f3` | aligned builds of two sources, out of place N ≤ 8 |
| `aligned` | full acceptance on the first aligned build |
| `order-bias-data.tar.gz` | perf counters and order-reversal runs behind order-bias.md |

## Per-cell ratios (rustfft / fastfft)

"Before" is the previous checkpoint's source on this arena. Bold marks cells
below 0.95×.

| Cell | Before p1 / median | After p1 / median | fastfft ns (after, p1) | After plan |
|---|---:|---:|---:|---|
| f32:fwd:ip:n2 | 1.054 / 1.095 | 1.054 / 1.095 | 2.64 | avx2 interleaved |
| f32:fwd:oop:n2 | 1.176 / 1.172 | 1.176 / 1.168 | 1.20 | avx2 interleaved |
| f32:inv:ip:n2 | 1.055 / 1.095 | 1.054 / 1.095 | 2.64 | avx2 interleaved |
| f32:inv:oop:n2 | 1.177 / 1.168 | 1.179 / 1.170 | 1.20 | avx2 interleaved |
| f32:fwd:ip:n4 | 1.190 / 1.186 | 1.189 / 1.185 | 3.57 | avx2 interleaved |
| f32:fwd:oop:n4 | 1.435 / 1.432 | 1.435 / 1.432 | 1.40 | avx2 interleaved |
| f32:inv:ip:n4 | 1.187 / 1.183 | 1.189 / 1.183 | 3.57 | avx2 interleaved |
| f32:inv:oop:n4 | 1.573 / 1.566 | 1.577 / 1.567 | 1.40 | avx2 interleaved |
| f32:fwd:ip:n8 | 1.112 / 1.090 | 1.112 / 1.089 | 7.05 | avx2 interleaved |
| f32:fwd:oop:n8 | 1.224 / 1.213 | 1.224 / 1.210 | 1.80 | avx2 interleaved |
| f32:inv:ip:n8 | 1.112 / 1.090 | 1.112 / 1.090 | 7.05 | avx2 interleaved |
| f32:inv:oop:n8 | 1.224 / 1.215 | 1.224 / 1.209 | 1.80 | avx2 interleaved |
| f32:fwd:ip:n16 | 1.058 / 1.062 | 1.058 / 1.059 | 8.28 | avx2 interleaved |
| f32:fwd:oop:n16 | 1.114 / 1.112 | 1.128 / 1.125 | 3.27 | avx2 interleaved |
| f32:inv:ip:n16 | 1.058 / 1.060 | 1.058 / 1.065 | 8.28 | avx2 interleaved |
| f32:inv:oop:n16 | 1.130 / 1.126 | 1.127 / 1.127 | 3.27 | avx2 interleaved |
| f32:fwd:ip:n32 | 1.065 / 1.057 | 1.067 / 1.052 | 11.80 | avx2 interleaved |
| f32:fwd:oop:n32 | 1.142 / 1.119 | 1.139 / 1.131 | 8.41 | avx2 interleaved |
| f32:inv:ip:n32 | 1.065 / 1.065 | 1.065 / 1.064 | 11.81 | avx2 interleaved |
| f32:inv:oop:n32 | 1.141 / 1.112 | 1.143 / 1.114 | 8.38 | avx2 interleaved |
| f32:fwd:ip:n64 | 1.195 / 1.182 | 1.191 / 1.185 | 18.11 | avx512-ymm interleaved |
| f32:fwd:oop:n64 | 1.229 / 1.228 | 1.218 / 1.218 | 16.65 | avx512-ymm interleaved |
| f32:inv:ip:n64 | 1.194 / 1.182 | 1.191 / 1.181 | 18.07 | avx512-ymm interleaved |
| f32:inv:oop:n64 | 1.229 / 1.229 | 1.219 / 1.218 | 16.65 | avx512-ymm interleaved |
| f32:fwd:ip:n128 | 1.182 / 1.183 | 1.242 / 1.220 | 38.84 | avx512 interleaved |
| f32:fwd:oop:n128 | 1.157 / 1.156 | 1.238 / 1.218 | 38.08 | avx512 interleaved |
| f32:inv:ip:n128 | 1.183 / 1.185 | 1.240 / 1.218 | 38.81 | avx512 interleaved |
| f32:inv:oop:n128 | 1.155 / 1.154 | 1.236 / 1.218 | 38.13 | avx512 interleaved |
| f32:fwd:ip:n256 | 1.238 / 1.239 | 1.341 / 1.360 | 84.29 | avx512-ymm interleaved |
| f32:fwd:oop:n256 | 1.223 / 1.223 | 1.223 / 1.223 | 84.36 | avx512-ymm interleaved |
| f32:inv:ip:n256 | 1.238 / 1.239 | 1.262 / 1.287 | 84.37 | avx512-ymm interleaved |
| f32:inv:oop:n256 | 1.222 / 1.222 | 1.223 / 1.223 | 84.36 | avx512-ymm interleaved |
| f64:fwd:ip:n2 | 1.000 / 1.001 | 1.000 / 1.002 | 2.58 | avx2 interleaved |
| f64:fwd:oop:n2 | 1.172 / 1.170 | 1.172 / 1.167 | 1.20 | avx2 interleaved |
| f64:inv:ip:n2 | 1.000 / 1.002 | 1.000 / 1.001 | 2.58 | avx2 interleaved |
| f64:inv:oop:n2 | 1.175 / 1.170 | 1.174 / 1.166 | 1.20 | avx2 interleaved |
| f64:fwd:ip:n4 | 1.038 / 1.036 | 1.041 / 1.038 | 3.62 | avx2 interleaved |
| f64:fwd:oop:n4 | 1.255 / 1.250 | 1.258 / 1.249 | 1.60 | avx2 interleaved |
| f64:inv:ip:n4 | 1.038 / 1.036 | 1.037 / 1.034 | 3.66 | avx2 interleaved |
| f64:inv:oop:n4 | 1.375 / 1.374 | 1.376 / 1.371 | 1.60 | avx2 interleaved |
| f64:fwd:ip:n8 | 1.073 / 1.055 | 1.037 / 1.055 | 6.55 | avx2 interleaved |
| f64:fwd:oop:n8 | 1.186 / 1.179 | 1.186 / 1.180 | 2.20 | avx2 interleaved |
| f64:inv:ip:n8 | 1.069 / 1.061 | 1.049 / 1.067 | 6.65 | avx2 interleaved |
| f64:inv:oop:n8 | 1.187 / 1.180 | 1.186 / 1.182 | 2.20 | avx2 interleaved |
| f64:fwd:ip:n16 | 1.101 / 1.097 | 1.101 / 1.095 | 9.26 | avx2 interleaved |
| f64:fwd:oop:n16 | 1.407 / 1.411 | 1.385 / 1.389 | 4.98 | avx2 interleaved |
| f64:inv:ip:n16 | 1.101 / 1.097 | 1.104 / 1.097 | 9.26 | avx2 interleaved |
| f64:inv:oop:n16 | 1.401 / 1.408 | 1.401 / 1.406 | 4.98 | avx2 interleaved |
| f64:fwd:ip:n32 | 1.200 / 1.181 | 1.197 / 1.187 | 14.62 | avx512-ymm interleaved |
| f64:fwd:oop:n32 | 1.237 / 1.200 | 1.201 / 1.193 | 12.65 | avx512-ymm interleaved |
| f64:inv:ip:n32 | 1.197 / 1.184 | 1.210 / 1.202 | 14.64 | avx512-ymm interleaved |
| f64:inv:oop:n32 | 1.241 / 1.204 | 1.192 / 1.191 | 12.72 | avx512-ymm interleaved |
| f64:fwd:ip:n64 | 1.216 / 1.188 | 1.215 / 1.192 | 32.62 | avx512 interleaved |
| f64:fwd:oop:n64 | 1.253 / 1.222 | 1.246 / 1.222 | 31.24 | avx512 interleaved |
| f64:inv:ip:n64 | 1.213 / 1.189 | 1.213 / 1.189 | 32.60 | avx512 interleaved |
| f64:inv:oop:n64 | 1.249 / 1.223 | 1.247 / 1.223 | 31.26 | avx512 interleaved |
| f64:fwd:ip:n128 | 1.230 / 1.182 | 1.233 / 1.184 | 69.06 | avx512 interleaved |
| f64:fwd:oop:n128 | 1.216 / 1.174 | 1.226 / 1.170 | 68.36 | avx512 interleaved |
| f64:inv:ip:n128 | 1.225 / 1.179 | 1.259 / 1.191 | 67.93 | avx512 interleaved |
| f64:inv:oop:n128 | 1.215 / 1.172 | 1.218 / 1.177 | 69.23 | avx512 interleaved |
| f64:fwd:ip:n256 | 1.315 / 1.258 | 1.314 / 1.267 | 149.15 | avx512 interleaved |
| f64:fwd:oop:n256 | 1.293 / 1.232 | 1.296 / 1.232 | 148.56 | avx512 interleaved |
| f64:inv:ip:n256 | 1.313 / 1.251 | 1.317 / 1.262 | 148.64 | avx512 interleaved |
| f64:inv:oop:n256 | 1.292 / 1.234 | 1.283 / 1.234 | 149.89 | avx512 interleaved |

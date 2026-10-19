# Ticket 11: FMA-folded rotations

**Acceptance passes.** Both precisions clear 1.2× on p1 and on median, and no
cell is below the 0.95× floor.

| Precision | Statistic | Geomean | Worst | Cells below 0.95× | Previous checkpoint, same pipeline |
|---|---|---:|---:|---:|---:|
| f32 | p1 | 1.250 | 1.055 | 0 / 32 | 1.184 |
| f32 | median | 1.245 | 1.061 | 0 / 32 | 1.179 |
| f64 | p1 | 1.277 | 1.000 | 0 / 32 | 1.195 |
| f64 | median | 1.259 | 1.000 | 0 / 32 | 1.178 |

The run used the acceptance command below: 64 cells, both libraries
verified, zero child failures, maximum control drift 1.11% (unflagged). The
worst cell is f64 N=2 in place, where both libraries execute the same
instructions.

"Previous checkpoint, same pipeline" is the tested arena of
[small-fair](../2026-09-27-mini-ryzen-small-fair/checkpoint.md), run in this
pipeline straight after the tested arena
([acceptance-before.json](diagnostics/acceptance-before.json)). The arena
sources have not changed since, and both binaries were built the same way:
aligned, with the per-library loops.

## What changed in fastfft

- **FMA-folded rotations.** Each radix-4 rotated `a1 - a3` by ∓i (a swap and
  an xor) and then added it to `a0 - a2` and subtracted it: three operations
  on the add pipes. `add_rot` now forms both results as two FMAs on the
  swapped difference, with a (±1, ∓1) multiplier. Radix-8's −i term does the
  same. Radix-16 also folds its ω8, −i and ω8³ twiddles into the FMAs that
  form `a0 ± a2`. The leaves are bound by the FP scheduler, with the FMA
  pipes idle. See [diagnostics/fma-rotations.md](diagnostics/fma-rotations.md)
  for the traces, the counters and the A/B runs. `Row` gained `neg_mul_add`
  (`vfnmadd`).
- **The fused radix-4 only for single in-place calls** (bf19dd6, after the
  small-fair checkpoint). Leaves take a `LATENCY` flag, set only for a single
  in-place transform, where the next call waits on this one. f32 N=16 and
  N=32 use the fused rotation (`addsub` of swapped differences) only then.
  Out of place and in batches, the transforms overlap and the operation
  count matters more than the critical path.

The effect on each size, averaged over direction (rustfft / fastfft, p1 /
median):

| N | Placement | f32 before | f32 after | f64 before | f64 after |
|---|---|---:|---:|---:|---:|
| 2–8 | both | unchanged | unchanged | unchanged | unchanged |
| 16 | in place | 1.059 / 1.063 | 1.056 / 1.063 | 1.100 / 1.099 | 1.145 / 1.135 |
| 16 | out of place | 1.130 / 1.126 | 1.266 / 1.258 | 1.391 / 1.397 | 1.557 / 1.554 |
| 32 | in place | 1.064 / 1.060 | 1.096 / 1.076 | 1.192 / 1.185 | 1.235 / 1.230 |
| 32 | out of place | 1.145 / 1.120 | 1.324 / 1.321 | 1.191 / 1.196 | 1.368 / 1.356 |
| 64 | in place | 1.189 / 1.182 | 1.271 / 1.258 | 1.215 / 1.191 | 1.340 / 1.301 |
| 64 | out of place | 1.216 / 1.218 | 1.345 / 1.345 | 1.247 / 1.222 | 1.423 / 1.376 |
| 128 | in place | 1.239 / 1.218 | 1.279 / 1.261 | 1.230 / 1.190 | 1.382 / 1.325 |
| 128 | out of place | 1.235 / 1.217 | 1.401 / 1.372 | 1.225 / 1.183 | 1.388 / 1.328 |
| 256 | in place | 1.252 / 1.251 | 1.425 / 1.433 | 1.324 / 1.265 | 1.502 / 1.491 |
| 256 | out of place | 1.222 / 1.224 | 1.392 / 1.388 | 1.289 / 1.234 | 1.481 / 1.468 |

Dropped after measurement:

- The FMA rotation in place of the fused one for in-place f32 N=16 and
  N=32: 0.2–2.8% slower.
- Radix-8's ω8 and ω8³ products as four FMAs each: neutral overall (+0.15%
  p1, +0.02% median). f64 N=128 gains 1.5–4%, and in-place f64 N=32 and N=64
  lose 1.4–3.7%.

## Where the gap is

The cells closest to the floor are the in-place ones for N ≤ 16, which are
latency-bound: store-to-load forwarding plus the transform's critical path.

| Cells | f32 p1 / median | f64 p1 / median |
|---|---:|---:|
| in place N=2 | 1.055 / 1.097 | 1.000 / 1.000 |
| in place N=4 | 1.184 / 1.186 | 1.038 / 1.032 |
| in place N=8 | 1.112 / 1.090 | 1.073 / 1.060 |
| in place N=16 | 1.056 / 1.063 | 1.145 / 1.135 |

The f64 zmm leaves at N=64 and N=128 still run 4–5% above their own p1 on
median (rustfft: under 1%). At N=256 the spread fell from 5% to 1.5%
([fma-rotations.md](diagnostics/fma-rotations.md#after)).

## After publication

Two cleanups followed on the same branch, for the pull request:

- The unused split-layout AVX2 leaves (the `specialized` kernel, f32 N=8 and
  N=32) were removed. Estimate never chose them. In Measure mode they
  competed on the same tier with the interleaved leaves, which are faster.
- The diagnostic runs' plots (911 SVGs) were dropped. `fastfft-arena
  report` regenerates them from each run's results.

`validate.sh` passed again on the cleaned tree. The acceptance, re-run on its
rebuilt arena, still passes:

- f32: 1.251 (p1) and 1.245 (median);
- f64: 1.277 and 1.260;
- no cell below 0.95×.

The data is in [diagnostics/post-cleanup](diagnostics/post-cleanup/acceptance.json).
fastfft's times match the tested arena's within 0.02% on the geomean and
2.3% in any cell.

That run raised the control-drift flag (34.5%). The flag comes from one
cell, f32 N=32 out of place. On the arena's add-chain measure its start
clock read 13.2 against 20.1 at the end. This is the ramp-up artifact noted
in [regressions.md](regressions.md).

## Regressions

[regressions.md](regressions.md) covers the 180-cell matched audit and its
repeats.

## Validation and reproduction

[validation.md](validation.md) covers formatting, Clippy, codegen, the gate
analysis tests, every feature combination, all five ISA caps, the exhaustive
M3 checks, the leaf tests and the assembly check.

```sh
bash docs/benchmarks/2026-09-28-mini-ryzen-small-fma/diagnostics/pipeline.sh
bash docs/benchmarks/2026-09-28-mini-ryzen-small-fma/diagnostics/run-repeats.sh
```

`pipeline.sh` validates the source, snapshots the source and the three
executables, runs the acceptance on both arenas, then runs the broad audit.
The acceptance command is unchanged:

```sh
fastfft-arena run --suite pow2 --profile full --max-n 256 \
  --libs fastfft,rustfft --procs 3 --core 2 --label small-fma \
  --out target/small-fma/final
```

The tested arena's SHA-256 is `dd81262c...e2a1`; the baseline arena's is
`4d10be9d...69c9`, the small-fair tested arena
([provenance.json](provenance.json)). [source.patch](source.patch) and
[source.sha256](source.sha256) identify the tested tree against bf19dd6.

`diagnostics/fma-rotations-data.tar.gz` keeps the exploratory A/B runs, the
perf interval data, the traces and the temporary arena hook behind
[fma-rotations.md](diagnostics/fma-rotations.md).

## Per-cell ratios (rustfft / fastfft)

"Before" is the small-fair tested arena in this pipeline. Bold would mark
cells below 0.95×; there are none.

| Cell | Before p1 / median | After p1 / median | fastfft ns (after, p1) | After plan |
|---|---:|---:|---:|---|
| f32:fwd:ip:n2 | 1.054 / 1.096 | 1.055 / 1.097 | 2.64 | avx2 interleaved |
| f32:fwd:oop:n2 | 1.178 / 1.174 | 1.178 / 1.170 | 1.20 | avx2 interleaved |
| f32:inv:ip:n2 | 1.054 / 1.095 | 1.055 / 1.098 | 2.64 | avx2 interleaved |
| f32:inv:oop:n2 | 1.179 / 1.170 | 1.177 / 1.172 | 1.20 | avx2 interleaved |
| f32:fwd:ip:n4 | 1.188 / 1.193 | 1.189 / 1.190 | 3.57 | avx2 interleaved |
| f32:fwd:oop:n4 | 1.436 / 1.429 | 1.436 / 1.427 | 1.40 | avx2 interleaved |
| f32:inv:ip:n4 | 1.186 / 1.184 | 1.180 / 1.183 | 3.57 | avx2 interleaved |
| f32:inv:oop:n4 | 1.576 / 1.565 | 1.570 / 1.568 | 1.40 | avx2 interleaved |
| f32:fwd:ip:n8 | 1.112 / 1.089 | 1.112 / 1.090 | 7.05 | avx2 interleaved |
| f32:fwd:oop:n8 | 1.221 / 1.214 | 1.219 / 1.217 | 1.80 | avx2 interleaved |
| f32:inv:ip:n8 | 1.112 / 1.090 | 1.112 / 1.090 | 7.05 | avx2 interleaved |
| f32:inv:oop:n8 | 1.219 / 1.217 | 1.220 / 1.217 | 1.80 | avx2 interleaved |
| f32:fwd:ip:n16 | 1.057 / 1.062 | 1.055 / 1.061 | 8.28 | avx2 interleaved |
| f32:fwd:oop:n16 | 1.130 / 1.125 | 1.269 / 1.260 | 2.91 | avx2 interleaved |
| f32:inv:ip:n16 | 1.060 / 1.065 | 1.058 / 1.066 | 8.28 | avx2 interleaved |
| f32:inv:oop:n16 | 1.129 / 1.126 | 1.264 / 1.255 | 2.88 | avx2 interleaved |
| f32:fwd:ip:n32 | 1.065 / 1.057 | 1.106 / 1.074 | 11.38 | avx2 interleaved |
| f32:fwd:oop:n32 | 1.148 / 1.127 | 1.339 / 1.336 | 7.16 | avx2 interleaved |
| f32:inv:ip:n32 | 1.063 / 1.062 | 1.086 / 1.078 | 11.57 | avx2 interleaved |
| f32:inv:oop:n32 | 1.143 / 1.113 | 1.310 / 1.306 | 7.32 | avx2 interleaved |
| f32:fwd:ip:n64 | 1.190 / 1.182 | 1.271 / 1.258 | 16.88 | avx512-ymm interleaved |
| f32:fwd:oop:n64 | 1.215 / 1.219 | 1.330 / 1.347 | 14.99 | avx512-ymm interleaved |
| f32:inv:ip:n64 | 1.187 / 1.182 | 1.271 / 1.258 | 16.90 | avx512-ymm interleaved |
| f32:inv:oop:n64 | 1.216 / 1.218 | 1.360 / 1.344 | 14.88 | avx512-ymm interleaved |
| f32:fwd:ip:n128 | 1.238 / 1.217 | 1.279 / 1.263 | 37.53 | avx512 interleaved |
| f32:fwd:oop:n128 | 1.232 / 1.216 | 1.400 / 1.382 | 33.63 | avx512 interleaved |
| f32:inv:ip:n128 | 1.241 / 1.219 | 1.280 / 1.259 | 37.63 | avx512 interleaved |
| f32:inv:oop:n128 | 1.237 / 1.218 | 1.403 / 1.362 | 33.60 | avx512 interleaved |
| f32:fwd:ip:n256 | 1.246 / 1.245 | 1.411 / 1.406 | 73.93 | avx512-ymm interleaved |
| f32:fwd:oop:n256 | 1.223 / 1.224 | 1.392 / 1.388 | 73.81 | avx512-ymm interleaved |
| f32:inv:ip:n256 | 1.258 / 1.256 | 1.439 / 1.459 | 73.82 | avx512-ymm interleaved |
| f32:inv:oop:n256 | 1.221 / 1.223 | 1.392 / 1.388 | 73.83 | avx512-ymm interleaved |
| f64:fwd:ip:n2 | 1.000 / 1.000 | 1.000 / 1.000 | 2.58 | avx2 interleaved |
| f64:fwd:oop:n2 | 1.176 / 1.168 | 1.172 / 1.167 | 1.20 | avx2 interleaved |
| f64:inv:ip:n2 | 1.000 / 1.000 | 1.000 / 1.000 | 2.58 | avx2 interleaved |
| f64:inv:oop:n2 | 1.176 / 1.167 | 1.174 / 1.166 | 1.20 | avx2 interleaved |
| f64:fwd:ip:n4 | 1.037 / 1.036 | 1.037 / 1.032 | 3.66 | avx2 interleaved |
| f64:fwd:oop:n4 | 1.254 / 1.249 | 1.254 / 1.249 | 1.60 | avx2 interleaved |
| f64:inv:ip:n4 | 1.037 / 1.032 | 1.038 / 1.032 | 3.66 | avx2 interleaved |
| f64:inv:oop:n4 | 1.373 / 1.367 | 1.372 / 1.366 | 1.60 | avx2 interleaved |
| f64:fwd:ip:n8 | 1.073 / 1.057 | 1.073 / 1.057 | 6.56 | avx2 interleaved |
| f64:fwd:oop:n8 | 1.185 / 1.177 | 1.183 / 1.178 | 2.20 | avx2 interleaved |
| f64:inv:ip:n8 | 1.074 / 1.062 | 1.073 / 1.063 | 6.56 | avx2 interleaved |
| f64:inv:oop:n8 | 1.184 / 1.177 | 1.185 / 1.176 | 2.20 | avx2 interleaved |
| f64:fwd:ip:n16 | 1.101 / 1.103 | 1.149 / 1.135 | 8.87 | avx2 interleaved |
| f64:fwd:oop:n16 | 1.396 / 1.400 | 1.539 / 1.538 | 4.48 | avx2 interleaved |
| f64:inv:ip:n16 | 1.099 / 1.095 | 1.141 / 1.135 | 8.92 | avx2 interleaved |
| f64:inv:oop:n16 | 1.385 / 1.394 | 1.576 / 1.571 | 4.47 | avx2 interleaved |
| f64:fwd:ip:n32 | 1.193 / 1.185 | 1.235 / 1.230 | 14.10 | avx512-ymm interleaved |
| f64:fwd:oop:n32 | 1.182 / 1.201 | 1.367 / 1.357 | 11.18 | avx512-ymm interleaved |
| f64:inv:ip:n32 | 1.192 / 1.184 | 1.236 / 1.229 | 14.10 | avx512-ymm interleaved |
| f64:inv:oop:n32 | 1.199 / 1.192 | 1.368 / 1.356 | 11.17 | avx512-ymm interleaved |
| f64:fwd:ip:n64 | 1.216 / 1.191 | 1.338 / 1.297 | 29.52 | avx512 interleaved |
| f64:fwd:oop:n64 | 1.247 / 1.222 | 1.421 / 1.376 | 27.42 | avx512 interleaved |
| f64:inv:ip:n64 | 1.214 / 1.190 | 1.342 / 1.306 | 29.40 | avx512 interleaved |
| f64:inv:oop:n64 | 1.247 / 1.222 | 1.425 / 1.376 | 27.33 | avx512 interleaved |
| f64:fwd:ip:n128 | 1.230 / 1.191 | 1.389 / 1.329 | 61.41 | avx512 interleaved |
| f64:fwd:oop:n128 | 1.228 / 1.181 | 1.390 / 1.328 | 60.78 | avx512 interleaved |
| f64:inv:ip:n128 | 1.229 / 1.189 | 1.375 / 1.321 | 61.49 | avx512 interleaved |
| f64:inv:oop:n128 | 1.221 / 1.185 | 1.387 / 1.328 | 60.86 | avx512 interleaved |
| f64:fwd:ip:n256 | 1.318 / 1.257 | 1.486 / 1.472 | 129.51 | avx512 interleaved |
| f64:fwd:oop:n256 | 1.288 / 1.235 | 1.482 / 1.468 | 129.60 | avx512 interleaved |
| f64:inv:ip:n256 | 1.330 / 1.273 | 1.517 / 1.511 | 129.53 | avx512 interleaved |
| f64:inv:oop:n256 | 1.290 / 1.233 | 1.480 / 1.468 | 129.69 | avx512 interleaved |

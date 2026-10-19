# FMA-folded rotations

At the [small-fair](../../2026-09-27-mini-ryzen-small-fair/checkpoint.md)
checkpoint, fastfft's f64 zmm leaves (N=64–256) ran 3–7% above their own p1
on median, with batch times alternating
([f64-zmm-spread.md](../../2026-09-27-mini-ryzen-small-fair/diagnostics/f64-zmm-spread.md)).
Tracing the spread showed the leaves are bound by the FP scheduler, with the
add pipes loaded and the FMA pipes idle. The fix moves the ∓i rotations onto
the FMA pipes, and folds radix-16's ω8, −i and ω8³ twiddles the same way.
In the A/B runs below it made every leaf from N=16 up faster: 7–16% out of
place and 1–15% in place. (In-place f32 N=16 keeps its fused path and is
unchanged.) The spread itself is fixed at N=256 but not at N=64 and N=128.

## The slow state is a full FP scheduler

A temporary arena hook traced single calls: the TSC every call, or every 8
calls, over 10⁶ calls of f64 N=128 in place. In windows of 512 calls,
fastfft runs at one of three speeds: 69.5–70, 71.5–72.5 or 73.5–74 ns per
call. It holds each for 0.2–0.45 ms on average (up to 4 ms). rustfft,
traced the same way in the same process, stays within about 1 ns. In the
arena's batch loop the same leaf alternates between batches instead (period
2 or 4). Both look like several stable schedules, with the surroundings
deciding which one the leaf settles into.

`perf stat -I 2` over three seconds of fastfft-only calls gave 1,445–1,464
intervals per event set. Interval CPI ranged from 0.507 to 0.531 (p5–p95).
The table compares the fastest quarter of intervals with the slowest; every
figure is per 1,000 instructions. Each event set was a separate run; cycles
are from the first, and the others agree within 2 cycles.

| Event | Fast quarter | Slow quarter |
|---|---:|---:|
| cycles | 509.5 | 528.5 |
| dispatch stalled: FP scheduler full (`fp_sch_rsrc_stall`) | 221.8 | 244.7 |
| dispatch stalled: FP register file full | 109.4 | 99.6 |
| backend-stalled dispatch slots | 1955 | 2059 |
| retire stalled on an incomplete op (`ex_no_retire.not_complete`) | 233.1 | 249.4 |
| loads / stores dispatched | 199.0 / 187.8 | 200.9 / 189.3 |
| misaligned (64 B) loads | 224.9 | 223.6 |
| store-to-load forwards | 28.0 | 28.7 |

The slow state's extra 19 cycles per 1,000 instructions match the extra 23
cycles in which dispatch waits for room in the FP scheduler. The memory side
does not move. So FP operations wait longer for a pipe.

## The op mix

Zen 4 has two FP pipes for multiplies and FMAs and two for adds; shuffles
and logic ops share them, and a 512-bit op occupies its pipe for two cycles.
The fully unrolled f64 N=64 leaf issued:

| f64 N=64 leaf (static count) | add/sub | mul/FMA | shuffle | xor | total |
|---|---:|---:|---:|---:|---:|
| Before | 96 | 44 | 67 | 12 | 219 |
| After | 72 | 68 | 68 | 0 | 208 |

Each radix-4 rotated `a1 - a3` by ∓i with a swap and an xor, then added the
result to `a0 - a2` and subtracted it. As two FMAs on the swapped difference,
the rotation drops the xor and moves the add and the subtract onto the FMA
pipes. With m = (±1, ∓1) in every complex position:

    a + ∓i·x = fmadd(swap(x), m, a)
    a − ∓i·x = fnmadd(swap(x), m, a)

`add_rot` does this for every radix-4 and for radix-8's −i term. Radix-16
also folds its b = 2 twiddles (ω8, −i, ω8³) into the FMAs that form
`a0 ± a2` (`add_w8`, `add_rot`).

## Measurements

All A/B runs used arenas built the same way (64-byte function alignment,
arena profile). They differed only in these leaves and ran alternately on
CPU 2 with three processes per cell. Figures are fastfft's change in p1 and
median. rustfft's p1 moved by at most 1.7% per cell, except one cell at 3.8%
in the radix-16 comparison.

**f64 zmm rows only (R64z), two rounds:** −9.7% p1 and −11.0% median over
the 12 f64 N=64–256 cells, from −8.1% to −12.8% per cell. Every row verified.

**Every row type, one round** (averaged over direction):

| N | f32 in place | f32 out of place | f64 in place | f64 out of place |
|---|---:|---:|---:|---:|
| 16 | 0 (fused path) | −7.5 / −7.1% | −4.0 / −3.5% | −11.4 / −10.8% |
| 32 | −2.8 / −1.0% | −10.2 / −10.2% | −3.5 / −3.8% | −11.0 / −12.0% |
| 64 | −5.5 / −6.0% | −12.4 / −8.7% | −9.2 / −9.1% | −12.3 / −12.2% |
| 128 | −4.2 / −4.5% | −11.0 / −10.3% | −8.7 / −10.2% | −8.5 / −10.4% |
| 256 | −10.3 / −9.9% | −10.2 / −9.9% | −10.5 / −11.2% | −10.2 / −12.1% |

**Radix-16 twiddle fold on top, two rounds:** −2.85% p1 and −2.87% median
over the 16 N=128/256 cells. Per cell it ranges from +0.5% (f32 N=128 in
place) to −4.5%. One cell of the reference build, f64 N=256 in place
forward, ran 4% slow against an identical-code build, so its −6.4% overstates
the gain there.

Kept as they were:

- **The fused radix-4 for in-place f32 N=16 and N=32.** Replacing it with
  the FMA rotation made those cells 0.2–2.8% slower. It remains one step
  shorter on the critical path.
- **radix-8's ω8 and ω8³ products** (`mul_w8`, then an add and a subtract).
  Folding them into four FMAs was neutral overall (+0.15% p1, +0.02% median
  over 24 cells, two rounds). f64 N=128 gained 1.5–4%, and in-place f64 N=32
  and N=64 lost 1.4–3.7%.

## After

The checkpoint's two acceptance runs came from the same pipeline, so fastfft's
p1 and median can be compared directly (averaged over direction):

| Cell | p1, ns | median, ns | median over p1 | rustfft median over p1 |
|---|---:|---:|---:|---:|
| f64 N=64 in place | 32.59 → 29.46 | 33.47 → 30.60 | 2.7% → 3.9% | 0.9% |
| f64 N=64 out of place | 31.25 → 27.37 | 32.07 → 28.47 | 2.6% → 4.0% | 0.6% |
| f64 N=128 in place | 69.27 → 61.45 | 71.91 → 64.24 | 3.8% → 4.5% | 0.2% |
| f64 N=128 out of place | 68.90 → 60.82 | 71.73 → 63.94 | 4.1% → 5.1% | 0.6% |
| f64 N=256 in place | 148.50 → 129.52 | 156.68 → 131.48 | 5.5% → 1.5% | 0.8% |
| f64 N=256 out of place | 148.98 → 129.64 | 156.53 → 131.59 | 5.1% → 1.5% | 0.6% |

N=256 no longer spreads. At N=64 and N=128 both statistics dropped by about
the same 9–12%, and the leaves still spread 4–5%. Their slow schedules
remain. That is now worth about 1% of the f64 median geomean, which passes
without it.

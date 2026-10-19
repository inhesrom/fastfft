# Shorten the in-place small-N critical paths

Type: task
Status: open
Blocked by: 11
Roadmap: FFT-034

## Question

Can the in-place leaves for N ≤ 16 run faster? They are the weakest cells of the small-N gate. They are latency-bound: each call waits for the previous call's stores to forward (store-to-load forwarding), then runs the transform's critical path.

## Context

At the [small-fma checkpoint](../../../docs/benchmarks/2026-09-28-mini-ryzen-small-fma/checkpoint.md), rustfft / fastfft (p1 / median):

| Cells | f32 | f64 |
|---|---:|---:|
| in place N=2 | 1.055 / 1.097 | 1.000 / 1.000 |
| in place N=4 | 1.184 / 1.186 | 1.038 / 1.032 |
| in place N=8 | 1.112 / 1.090 | 1.073 / 1.060 |
| in place N=16 | 1.056 / 1.063 | 1.145 / 1.135 |

- At f64 N=2 both libraries execute the same instructions, so parity may be the floor there.
- The N ≤ 4 leaves use only SSE2, so they inline into `process` without a target-feature call.
- Already tried in [ticket 11](11-small-n-engine.md):
  - The fused radix-4 (`addsub` of swapped differences) was kept for in-place f32 N=16/32.
  - The fused form for f64 in place was mixed, so it was dropped.
  - The FMA rotation instead of the fused one for in-place f32 N=16/32 was 0.2–2.8% slower.
  - Reversing the load order in the N=2 leaf didn't help.

## Done when

- Each in-place cell for N ≤ 16 either gets faster in matched A/B runs on the aligned arena, or the ticket documents its critical path (instruction chain plus forwarding latency) against the measured cycles, showing what bounds it.
- The small-N gate still passes, and the matched audit shows no new regression.

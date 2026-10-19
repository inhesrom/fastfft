# Ticket 15 batch baseline

Before the batch engine, the full 32-cell batch suite measures **1.0828×
best / 1.0605× median** versus RustFFT. Every cell verifies and maximum
control drift is **1.65%**. This misses the M4 checkpoint of 1.3×.

The run covers f32/f64, forward direction, in-place/out-of-place, N=8…1024
and 2^20 total complex elements per batch. It uses core 2, three processes,
the default target CPU, boost enabled and 64-byte function alignment
(`-C llvm-args=-align-all-functions=6`). The saved executable comes from the
completed ticket 14 work; the starting commit for ticket 15 is `a4d8aae`.

Raw results, environment, metadata, plots and the executable hash are saved
alongside the [generated report](report.md). See the
[batch engine checkpoint](../2026-10-02-mini-ryzen-ticket15-batch/checkpoint.md)
for the final implementation and matching-build comparison.

# Diagnose the G9 clean release build cost

Type: task
Status: claimed
Blocked by: 23
Roadmap: FFT-061 / G9

## Context

The [ticket 23 evaluation](../../../docs/benchmarks/2026-10-11-mini-ryzen-ticket23-gates/README.md) retains CPU-2-pinned normal-release
build times of fastfft 44.4 s and RustFFT 3.4 s, with a printed ratio of
13.10× against G9's ≤2.0× threshold. Both use one job, prefetched
dependencies, clean targets, and empty RUSTFLAGS. The xtask returns zero
even when this gate fails; rounded printed durations do not reproduce the
unrounded ratio exactly.

## Work

- Attribute clean-build cost to build stages and generated/monomorphized
  code without assuming the cause or changing public behavior in advance.
- Compare only equivalent clean normal-release builds with the same job
  limit, affinity, dependency-fetch policy, and compiler version.
- Validate a justified remedy against execution/accuracy and supported ISA
  builds; record any code-size/runtime tradeoff for maintainer review.

## Done when

The dominant costs are explained, and a matched clean-build comparison
meets ≤2.0× or explicitly documents the remaining shortfall. Retain the
failed ticket 23 evidence; never infer a pass from the xtask exit status.

## 2026-10-14 measured progress

[Uncontaminated clean-build comparisons](../../../docs/benchmarks/2026-10-13-qualification-controls/README.md)
on `4332e48` confirm failure: Rust 1.95 takes 43.564670 / 3.344123 s
(13.027233×), and stable Rust 1.99 takes 33.960155 / 3.198190 s
(10.618555×). Each compiler uses identical normal release settings for both
libraries, empty flags, one job, core 2, prefetched dependencies and fresh
targets. Exact JSON verdicts and continuous monitor hashes are retained.

Compiler-stage diagnostics locate the dominant cost in LLVM optimization
and local ThinLTO. An isolated change moves direction dispatch ahead of
generic ISA entry points to avoid eager specialization. Consumer build
cost, runtime, correctness and native NEON validation are still required;
this experiment is not adopted and G9 is not resolved.

The [isolated candidate diagnostic](../../../docs/benchmarks/2026-10-13-qualification-controls/direction-dispatch-diagnostic.json)
now records one uncontaminated G9 pass: 2.843352 / 3.369397 s = 0.843876× on
Rust 1.95. The first consumer build was interrupted by the continuous CPU
guard, so there is no consumer-cost comparison or independent G9 confirmation.
A subsequent trace identifies a Paseo daemon burst despite pausing Pi and
vault sync. The candidate passes 126 active engine/tuning tests and Linux,
minimum-version and AArch64 library checks; public integration and runtime
confirmation remain pending. Native NEON is explicitly deferred by the
maintainer. The production dispatch is unchanged; the complete affected build
comparison must restart after resolving host interference.

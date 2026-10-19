# Establish repeatable native ARM and macOS baselines

Type: task
Labels: wayfinder:task
Status: open
Assignee: none
Blocked by: 01
Mode: AFK
Roadmap: FUT-01

## Question

What are the reproducible default-Estimate losses against default-feature
RustFFT on the local Apple Silicon Mac, and on an accessible AArch64 Linux
host, before changing the library?

## Work

- Port the minimum arena support onto current main: guard Linux affinity and
  x86-only kernel-lab adapters; record macOS CPU, AC power, unpinned state and
  consistent launcher QoS. Relevant seams are `bench/arena/src/main.rs`,
  `bench/arena/src/env.rs` and `bench/arena/src/adapters.rs`. Preserve Linux checks. Use
  fastfft/RustFFT only; FFTW and chart work are optional references.
- Keep current protocol, identical default-target builds and flags, warmed
  plans, preallocated scratch, verification and rotating row order. With two
  rows, use four processes for balanced construction order. Predeclare two
  independent captures and retain every trial. Build/test before timing;
  benchmark on a sustained quiet host with recorded controls. Keep macOS
  unofficial/unpinned and label the clock reading as a proxy.
- Capture pow2, smooth, rough, batch and realworld quick baselines through
  2²⁰ where the suite supports that limit. Focus the full-profile follow-up
  on N=2–256, the 16K/32K transition and N=2²⁰, both precisions/directions and
  public placements; include scalar-cap and misaligned samples. Record chosen
  engine/ISA, absolute best/p1/median, ratios and planning separately.
- Name and record the Linux CPU/OS/virtualization if existing access is
  available. If it is unavailable, record that missing evidence explicitly
  and proceed with the Mac baseline; do not provision paid machines or hold
  NEON implementation for access. The final validation ticket remains open
  until Linux evidence exists.

## Done when

The arena builds/runs natively on macOS; two complete, correctness-passing Mac
captures and a ranked loss table are archived with reproducible commands,
source/executable hashes, controls and repeatability. Linux evidence or its
availability gap is explicit. No historic drift-flagged capture is relabeled
as a fresh or official baseline. Run appropriate arena checks for the port;
hosted ARM correctness CI is not performance evidence.

# Validate on cloud machines

Type: task
Status: open
Blocked by: 24
Roadmap: FFT-080

## Question

How does fastfft do beyond Zen 4? Run full arena runs (pow2, smooth, batch, realworld) on:
- Intel Sapphire or Granite Rapids;
- AMD Zen 5 (EPYC 9005);
- an AVX2-only machine (e.g. EPYC 7003).

Record virtualization and publish the reports.

**HITL:** the maintainer provisions instances (cost). Use dedicated or bare metal where available.

## Done when

Three reports are published under `docs/benchmarks/`.

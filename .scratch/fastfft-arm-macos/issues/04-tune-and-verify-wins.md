# Tune ARM plans and demonstrate RustFFT wins

Type: task
Labels: wayfinder:task
Status: open
Assignee: none
Blocked by: 03
Mode: AFK
Roadmap: FUT-01

## Question

Which measured small-kernel and memory-traffic changes make default Estimate
beat RustFFT on each named Apple Silicon/macOS and AArch64/Linux target?

## Work

- Profile the largest public-call losses first. For N=2–256, compare current
  scalar, generic NEON and fused/interleaved/rectangular NEON leaves, including
  conversions, call overhead and spills. Preserve winning tiny scalar codelets;
  add only specializations supported by repeatable end-to-end gains.
- For in-cache and large transforms, measure radix4/8 and bounded radix16
  experiments, factor order, split-layout conversions, FourStep decomposition,
  transposes, panel sizes and coefficient traffic. Inspect actual arena
  assembly before adopting wider radix schedules; 32 architectural registers
  are not a proof that a radix16 kernel avoids spills.
- Replace ARM's placeholder cache assumptions with robust macOS per-performance-
  level topology and Linux cache discovery, retaining independent conservative
  fallbacks. A shared L2 is a shared capacity, not guaranteed per-thread space.
  Account for migration and sharing when choosing budgets; keep model-guarded
  Apple and Linux recipes/costs separate from Zen 4. Extend tuning/Estimate
  candidate plumbing so the measured winner is reachable in default mode.
- Tune smooth tails, Bluestein inner choices/products, batch and realworld
  paths only where the baseline identifies losses. Report planning cost
  separately. Leave FCMA/SVE/SME deferred unless profiling and a bounded
  experiment establish a necessary advantage.
- Execute the complete full-profile pow2 (through 2²⁴), smooth, rough, batch
  and realworld suites against default-feature RustFFT, covering the protocol's
  directions/placements and both precisions. Add immutable, misaligned and
  crossover checks. Use the baseline's fixed settings, four balanced processes
  and two predeclared independent captures; retain failures and all trials.

## Done when

The [accepted ARM gates](01-select-arm-performance-route.md#answer) pass in
both captures on each named target, with correctness, native selected-ISA
evidence, raw results, hashes, repeatability and source/build provenance.
Publish per-suite/per-precision best/p1/median and absolute times; no pooling
between machines or hiding losing cells. Keep macOS labeled unpinned and
unofficial under the Linux protocol even when it passes the separate ARM
acceptance criteria. Missing Linux hardware, unstable captures or missed
gates leave this ticket open; no claim of universal ARM superiority. Run
appropriate accuracy/tier/MSRV/codegen checks after production changes.

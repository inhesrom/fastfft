# Select the minimal ARM performance route

Type: research
Labels: wayfinder:research
Status: resolved
Assignee: Codex (for Ian Hersom)
Blocked by: none

## Question

What does fastfft's current ARM fallback actually cost, what does RustFFT's
AArch64 backend do, and which minimum sequence of changes is most likely to
beat it on Apple Silicon/macOS and AArch64/Linux without inheriting x86-only
assumptions? Select and accept the recommendation under the maintainer's
explicit delegation; retain primary-source evidence and benchmark limits.

## Context

Research used throwaway branch `research/arm-rustfft-route` from
`c99763735dd344257fd86963aa87fca9f2f6022e`.
Findings are integrated in `docs/research/arm-macos-performance.md` on
`arm-macos-performance`; the temporary research worktree/branch was removed
after integration.

## Answer

Resolved 2026-10-10. **Accepted by Codex under the maintainer's explicit
delegation**, without a grilling session or a claimed human review.

Select ordinary stable NEON through the existing engine abstractions, followed
by measured ARM-specific tuning. Establish the native benchmark first, then
implement complete dispatch, then optimize the actual losses. This is the
smallest credible route: RustFFT already uses NEON/FMA and specialized
butterflies, so SIMD parity alone is insufficient. Keep Rust 1.89, the public
API, scalar fallback and x86 behavior. Do not use RustFFT as an implementation
dependency or substitute a weaker scalar comparator.

The historical Mac capture has 80 verified cells but is unpinned and
5.21% proxy-drift-flagged. Recomputed median geomeans are 0.390× f32 / 0.621×
f64 versus RustFFT; N=32–256 and the large range are priority losses. All 73
fastfft files in the original capture's source manifest match the source
baseline. See the [investigation and primary sources](../../../docs/research/arm-macos-performance.md).
The original local capture informs this plan; fresh baseline evidence will
be produced by the first execution task.

**Accepted ARM performance gates.** Speedup is RustFFT execution time divided
by default-Estimate fastfft execution time, with planning excluded. Evaluate
each named machine and each precision independently. Across the existing
full-profile suite cells require geomeans ≥1.20× pow2, ≥1.10× smooth, ≥1.00×
rough and ≥1.20× batch; each realworld scenario must reach ≥1.10× throughput.
Require every measured comparison cell ≥0.95×, including immutable/misaligned
checks. These gates apply to both best and median; for N≤256 use p1 in place
of best, while retaining all three statistics. This defines suite-level
superiority with a 5% per-cell regression ceiling, not an every-cell win.

Use two predeclared independent captures, each with four balanced processes
for the two FFT rows. Both must pass the gates and all correctness checks;
per-suite speedup geomeans must agree within 3% relative between captures,
with control proxy drift <3% in each and sustained quiet-host evidence.
Do not sample until a passing minimum appears or discard failed contexts.
macOS remains unpinned/unofficial under the Linux protocol; this repeatability
rule is separate ARM acceptance, not a change to the Linux release protocol.

The first checkpoint is the local Apple Silicon Mac (reported Apple M6).
Linux ARM requires a separately named native AArch64 host and its own results;
no paid provisioning is authorized. Unknown Linux access does not block Mac
implementation but does block claiming the complete ARM outcome. Intel Macs,
ARM32, and generalization to all Apple/Linux CPUs are outside this effort.

Defer FCMA, SVE/SME, Accelerate/GPU, new prime algorithms and threading.
FCMA intrinsics are unstable at the existing MSRV; optional extensions require
both a named supported deployment and measured evidence before expanding scope.
The three AFK task children carry execution. Further layout/radix decisions
are evidence-driven choices inside tuning, not prerequisites for this plan.

# ARM and macOS performance investigation

Investigated 2026-10-10 from latest default branch `master`,
`c99763735dd344257fd86963aa87fca9f2f6022e`, in branch `arm-macos-performance`.
ARM here means AArch64; macOS here means Apple Silicon. The maintainer delegated
recommendation acceptance and requested no grilling sessions.

The accepted route and numeric acceptance gates live in
[Select the minimal ARM performance route](../../.scratch/fastfft-arm-macos/issues/01-select-arm-performance-route.md#answer).
The [wayfinder map](../../.scratch/fastfft-arm-macos/map.md) indexes the decision
and has three AFK implementation tickets. This investigation is planning and
source/evidence review; no library code was changed and no fresh performance
run was made.

## What the current Mac evidence establishes

The existing 2026-10-08 Mac mini capture reports an Apple M6. It has 80 pow2
in-place cells (N=2¹…2²⁰, both precisions/directions), with all 320 library
measurements passing verification. It uses default Estimate fastfft and
RustFFT 6.4.1, preallocated scratch and default-target arena builds. Every
fastfft plan reports scalar. Recomputed RustFFT/fastfft median geomeans are
**0.390× f32 and 0.621× f64**: approximately 2.57× and 1.61× slower.

The most useful priorities are the N=32–256 band (0.319× / 0.528×) and large
N=32,768–1,048,576 (0.238× / 0.398×). At forward f32 N=32, scalar Stockham
costs 68.929 ns versus 13.456 ns. Existing scalar small leaves win at N=4/8,
so blindly forcing vector execution for all lengths could lose good cases.
The widening large-size gap suggests memory traffic/plan policy deserves
investigation alongside arithmetic; the capture does not isolate that cause.

These are diagnostic observations: the capture is **unofficial, unpinned,
and flagged for 5.21% dependent-add-proxy drift**, with one measured process
per cell. It covers no smooth/rough lengths, batches, public placements other
than in-place, Linux ARM, or other Apple generations. It cannot certify an ARM
win or supply complete baseline coverage. All 73 captured fastfft source hashes
were independently checked against latest master and match, making its scalar
fallback diagnosis relevant to this branch; its harness includes uncommitted
Mac portability changes absent from main. The main Cargo.lock differs only by
an unrelated profiling dependency, not the RustFFT version.

The original capture remains in the original local worktree at
`docs/benchmarks/2026-10-08-mac-mini-four-library-comparison/`; this planning
PR does not add a benchmark archive or analysis tooling. The observations
above were checked locally and are recorded for prioritization, not as
reproducible performance acceptance evidence. The first execution task ports
minimal harness support and publishes fresh repeatable baselines with raw
results and provenance. Existing x86 cloud-validation tickets do not provide
Linux ARM coverage; native ARM correctness CI also cannot supply performance
evidence.

## Comparator version and audit

RustFFT is locked to 6.4.1. Its upstream tag `6.4.1`, commit
`4758ab0dd6f256c50ac8987c75c9cb96152dc2ca`, matches the cached crate's
`.cargo_vcs_info.json`. The audit below uses versioned primary sources and
separates implementation facts from hypotheses that need measurement.

## Verified comparator facts

- RustFFT 6.4.1 enables `avx`, `sse`, and `neon` by default. `FftPlanner::new` chooses its NEON planner on supported AArch64; `FftPlannerNeon::new` checks NEON and accepts both `f32` and `f64`. Comparing against `FftPlannerScalar` or disabling RustFFT defaults would weaken the comparator. [Cargo features](https://github.com/ejmahler/RustFFT/blob/6.4.1/Cargo.toml), [default planner](https://github.com/ejmahler/RustFFT/blob/6.4.1/src/plan.rs), [NEON planner](https://github.com/ejmahler/RustFFT/blob/6.4.1/src/neon/neon_planner.rs).
- It already supplies hand butterflies for 2, 3, 4, 5, 6, 8, 9, 10, 12, 15, 16, 24, and 32, plus generated prime butterflies for 7, 11, 13, 17, 19, 23, 29, and 31. Its planner selects radix-4 for suitable lengths with at least six factors of two, with bases 16/32 or 12/24. Other lengths use mixed radix, small Good–Thomas/mixed radix, Rader, or Bluestein. Merely adding small butterflies or radix-4 is not an unexplored advantage. [NEON recipe selection](https://github.com/ejmahler/RustFFT/blob/6.4.1/src/neon/neon_planner.rs#L442), [generated primes](https://github.com/ejmahler/RustFFT/blob/6.4.1/src/neon/neon_prime_butterflies.rs#L16).
- RustFFT's vector abstraction stores interleaved complex pairs: one NEON register holds two `f32` complex values or one `f64` complex value. Its complex multiplication uses lane rearrangements plus multiply/FMA; ordinary real FMA is already used. [Vector implementation](https://github.com/ejmahler/RustFFT/blob/6.4.1/src/neon/neon_vector.rs#L184).

## Local gaps and plausible advantages

These are verified local facts; the performance consequences are hypotheses to measure.

| Finding at baseline | Minimal action / inference |
| --- | --- |
| Non-x86 `detect_raw()` always returns `Scalar`; compiled tiers and Cargo defaults contain no NEON. [ISA](../../crates/fastfft/src/isa/mod.rs), [features](../../crates/fastfft/Cargo.toml) | Add a NEON tier, feature/detection/cap reporting, and `f32x4` / `f64x2` implementations. Audit enum ordering, `>=` comparisons, availability, shapes, and engine dispatch; NEON must not imply x86 availability. `pass_cost` indexes five-tier `COSTS` by `shape.isa as usize` before its calibration guard: update that indexing before adding a tier. [Cost lookup](../../crates/fastfft/src/plan/mod.rs#L93) |
| Generated codelets use `SimdReal`; engines use `Vector`, already split into separate real/imaginary registers with interleaved user buffers. [Traits](../../crates/fastfft/src/isa/mod.rs), [engine entries](../../crates/fastfft/src/engine/mod.rs) | Reuse these seams and existing scalar fallback. Map FMA/subtraction, loads/stores, zip and interleave operations to stable NEON. Split layout may reduce repeated complex shuffles, but uses two registers and pays conversion costs; it has no inherent 2× advantage. |
| Stockham, small/fixed/rectangular, four-step, Bluestein, and tuning entries are guarded for x86. AVX-specific direct/batch paths are separate. [Engine dispatch](../../crates/fastfft/src/engine/mod.rs), [planner](../../crates/fastfft/src/planner.rs) | Cover the existing generic production routes and bounded tails first; add ARM-specific direct/batch kernels only when public timings identify them as the remaining bottleneck. |
| `stockham_candidates` caps non-scalar radices at eight. AArch64 has 32 128-bit NEON registers. [Planner](../../crates/fastfft/src/planner.rs#L210), [Arm register description](https://developer.arm.com/community/arm-community-blogs/b/operating-systems-blog/posts/arm-neon-programming-quick-reference) | Radix16 and fused small schedules are candidates for reducing stages/traffic. Inspect generated assembly and spills, including function-call effects, then time them; register count alone does not justify enabling them. |
| ARM cache sizes fall back to 32 KiB L1, 1 MiB L2/last level. Existing measured Zen 4 selection is model-gated. [Cache policy](../../crates/fastfft/src/isa/cache.rs) | Measure ARM cache/transpose/blocking crossovers and calibrate ARM estimate/tuning paths. Preserve architecture/model gates; do not transfer Zen 4 timings or assume one Apple generation represents Linux ARM. |

For large transforms, prioritize fewer full-buffer passes, transpose/block dimensions, coefficient traffic, and the four-step/Stockham crossover. For small transforms, prioritize conversion/shuffle overhead, register spills, call overhead, and factor ordering. These priorities follow the source layouts and are recommendations, not measured bottleneck diagnoses.

## Stable Rust and deferred ISA extensions

Ordinary NEON FMA and structured loads are stable since Rust 1.59, below fastfft's Rust 1.89 minimum. [f32 FMA](https://doc.rust-lang.org/core/arch/aarch64/fn.vfmaq_f32.html), [f64 FMA](https://doc.rust-lang.org/core/arch/aarch64/fn.vfmaq_f64.html), [deinterleaving load](https://doc.rust-lang.org/core/arch/aarch64/fn.vld2q_f32.html).

FCMA intrinsics `vcmlaq_f32` and `vcmlaq_f64` are explicitly unstable in the stdarch revision shipped by Rust 1.89 (`8099c08d501ec80214d7bfe3f85002dec7d79655`), requiring `stdarch_neon_fcma` and target features `neon,fcma`. [Rust 1.89 gitlink](https://github.com/rust-lang/rust/tree/1.89.0/library/stdarch), [exact intrinsic definitions](https://github.com/rust-lang/stdarch/blob/8099c08d501ec80214d7bfe3f85002dec7d79655/crates/core_arch/src/aarch64/neon/generated.rs#L2954). Defer FCMA: revisit only if a supported machine's profile shows complex multiply/shuffle cost dominates and a bounded prototype proves an end-to-end win. It needs capability gating, numerical validation, and an explicit stable/MSRV-compatible implementation decision; current split-layout arithmetic also changes its economics.

SVE has implementation-dependent vector lengths, whereas fastfft's `Vector::LANES` is a compile-time constant with a maximum of 16 and the engines assume fixed shapes. [Arm extension comparison](https://developer.arm.com/community/arm-community-blogs/b/architectures-and-processors-blog/posts/matrix-matrix-multiplication-neon-sve-and-sme-compared), [local trait](../../crates/fastfft/src/isa/mod.rs). Defer SVE/SME until a named supported deployment, accessible hardware, compiler/API compatibility, and a demonstrated NEON limitation justify the extra backend. This audit does not establish support on any specific Apple or Linux chip.

## macOS measurement and cache policy

Apple says performance tuning requires separate runs on Apple Silicon and Intel, with actual hardware verification. QoS affects scheduling across heterogeneous cores; use one documented QoS policy for both FFTs, record it, and check run stability rather than claiming affinity guarantees. QoS belongs in the benchmark launcher; the library should leave caller scheduling alone. [Apple tuning guidance](https://developer.apple.com/documentation/apple-silicon/tuning-your-code-s-performance-for-apple-silicon).

Apple exposes cache and sharing information through `hw.nperflevels` and `hw.perflevelN.{l1dcachesize,l2cachesize,cpusperl2}`. Generic `hw.l1dcachesize` / `hw.l2cachesize` refer to the least performant core type. Therefore record per-level topology, retain conservative fallback behavior, and validate whichever cache policy is selected for a thread that can migrate. [Apple system capabilities](https://developer.apple.com/documentation/kernel/1387446-sysctlbyname/determining_system_capabilities).

## Remaining empirical questions

No source establishes a winning radix sequence, layout, transpose block, cache threshold, or speedup on the user's machines. Establish those with identical release flags, input/placement/direction/precision, warmed reused plans and scratch, isolated repeated runs, correctness checks, and observable chosen ISA/plan. Cover representative small/mixed/prime and large sizes plus surrounding crossover lengths. Report planning cost separately from steady-state execution, and distinguish default Estimate performance from Measure's best available candidate. Acceptance must cite native results per supported platform; an aggregate win must not conceal a severe workload regression.

# fastfft

Single-threaded, one-dimensional complex FFTs for `f32` and `f64`, with a
RustFFT-compatible API. SIMD tiers (AVX-512, AVX2+FMA, SSE2, AArch64 NEON) are selected at
runtime; a portable scalar implementation is always available.

Apple Silicon uses 128-bit NEON with fused multiply-add for both precisions.
The default `neon` feature enables it on AArch64; `--no-default-features`
builds the portable scalar implementation. `FASTFFT_ISA_CAP=scalar` or
`PlannerOptions::isa_cap` can select scalar at runtime. On AArch64, x86 caps
preserve the local tier. macOS cache sizes are detected with `sysctl`.

This crate is under development; release gates are tracked in the repository's
[`ROADMAP.md`](../../ROADMAP.md).

```rust
use fastfft::{FftPlanner, num_complex::Complex};

let mut planner = FftPlanner::<f32>::new();
let fft = planner.plan_fft_forward(1024);
let mut buffer = vec![Complex::new(1.0, 0.0); 1024];
fft.process(&mut buffer);
```

Transforms are unnormalized, with output in natural frequency order. A buffer
may contain consecutive transforms of the planned length. Mutable out-of-place
calls may overwrite their input; immutable calls preserve it.

## Inspecting a plan

`planner.describe_plan(n, direction)` describes the cached executable,
creating it first if needed. It reports the engine, selected ISA tier,
radices and caller scratch sizes in **complex elements**:

- `scratch` is the in-place requirement; `scratch_oop` and
  `scratch_immutable` cover the other placements.
- Small leaves report their decomposition. Stockham reports its pass
  radices and the final lane transform `L`. FourStep reports both panel
  schedules as `radices=columns/rows`.
- Bluestein reports its pointwise ISA and full workspace, with the
  convolution FFT's description in `inner=[...]`. Its inner ISA can differ.
- Identity plans have `radices=none` and zero scratch. A `batch` suffix
  identifies the optional batch tier and radices; `batch_radices=fallback`
  means it uses the main plan's FFT with streaming output copies.

Descriptions are diagnostic text, not a stable serialization format.

`PlannerOptions::with_mode(PlanMode::Measure { time_limit })` explores up to
eight candidates, including Estimate. It compares aligned single transforms
in all three placements, plus batches totaling 2^20 complex values for
power-of-two lengths 8 through 1024. Alternating measurements use the same
buffers for each candidate and Estimate, at three aligned buffer offsets.
A candidate must improve both the
minimum and median by at least 3% in every workload to replace Estimate;
small differences and incomplete measurements keep the original plan.
Each timed sample follows three untimed executions of that plan, so switching
coefficient tables does not substitute a cold-cache comparison for repeated
execution. Warm-up consumes the same overall search budget as construction
and timing; earlier promising candidates can use the remaining budget to
complete every workload before later candidates are considered.
This conservative selection margin is separate from benchmark acceptance.
The budget covers exploratory work, but an ongoing construction or FFT
cannot be interrupted. A zero budget selects Estimate directly.

## Alignment and scratch

**Prefer 64-byte-aligned input and output buffers for predictable performance.**
Only Rust's normal alignment for `Complex<T>` is required for correctness.
`Vec<Complex<T>>` does not guarantee 64-byte alignment, and slicing an aligned
allocation can lose it. In a batch, every chunk remains aligned only if its
byte length is also a multiple of 64.

For eligible Stockham plans, misaligned calls keep intermediate passes in
aligned scratch. The planner enables this only for three-or-more-pass plans
whose estimated working set (caller buffers, scratch and twiddle tables) fits
within 75% of the detected last-level data cache (a 1 MiB capacity fallback when
unavailable). Shorter plans retain their original execution: scratch-only
staging regressed on two-pass streaming batches. Larger transforms also use the
original buffer choreography rather than grow
their working set across the cache boundary. Small-N kernels retain their own
buffer strategies. Alignment can still help the first and final passes and
plans outside the gate; this mitigation does not make alignment irrelevant.

Always query the scratch length for the method you call:

```rust
# use fastfft::{FftPlanner, num_complex::Complex};
# let mut planner = FftPlanner::<f32>::new();
# let fft = planner.plan_fft_forward(1024);
# let mut buffer = vec![Complex::new(1.0, 0.0); 1024];
let mut scratch = vec![Complex::new(0.0, 0.0); fft.get_inplace_scratch_len()];
fft.process_with_scratch(&mut buffer, &mut scratch);
```

- Scratch lengths depend on the plan, CPU and placement, not the alignment of
  the buffers supplied later. Gated plans reserve enough for misaligned calls
  even when a particular call is aligned. The gated path reserves roughly
  `2N` complex values, plus 8 KiB of placement space and a small alignment
  allowance.
- Out-of-place scratch is **not necessarily zero**. Use
  `get_outofplace_scratch_len()` or `get_immutable_scratch_len()` as appropriate.
- Grouped FourStep plans reserve an `N`-value intermediate, two work panels,
  and a panel group bounded by one eighth of the detected last-level cache
  (at most 2 MiB, plus padding). A batch reuses this workspace for every
  transform. Large, aligned buffers also allow non-temporal stores.
- Scratch need not be SIMD-aligned by the caller; the reported length includes
  room for internal alignment and placement. Separate caller-supplied buffers
  must not overlap.
- `process()` manages reusable thread-local scratch automatically.
- Bluestein plans reserve alignment space for their inner FFT work buffer too.
  They consume input before writing output, so all three execution methods
  use the same scratch length, including in-place transforms.

The alignment measurements and their limitations are recorded in
[`ticket 12`](../../.scratch/fastfft-v1/issues/12-unaligned-user-buffers.md).

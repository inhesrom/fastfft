# Assembly review for FFT performance

The FFT API dispatches through a planned engine into SIMD passes and generated
codelets. The internal layout and engine decisions are recorded in
[ADR-0001](decisions/0001-internal-layout-and-engine.md). This checklist covers
instruction review of the actual executable, after sampling has identified a
hot function. The [profiling workflow](benchmarking.md#profiling-tools)
records source, build settings and the executable for each cell.

## Establish the loop and its caller

Record precision, length, direction, placement, ISA tier and the selected plan
from `cell.json`. Find the hot symbol in the exclusive report, then follow
the inclusive report and stacks to its caller. Identify loop boundaries,
trip counts, data streams and the operations performed once per pass versus
once per iteration. Fat LTO can inline helpers, merge symbols and change
register allocation; exploration with `cargo asm` is useful but the retained
arena executable is the authority. Use objdump and perf annotate on it.

## General-purpose registers and address generation

- Check stack-relative GPR stores and reloads inside the back edge. Separate
  induction-variable spills from stores in the prologue, constant table
  accesses and intentional stack buffers. Count dynamic stores per iteration.
- Inspect pointer arithmetic, shifts, multiplies and repeated address
  calculations. Check whether 2R stream pointers remain live throughout a
  radix-R pass. Prior work found that this can force LLVM to spill induction
  pointers; an indexed loop with invariant offsets is a candidate remedy.
- Check bounds/panic paths and aliasing assumptions. An instruction that looks
  redundant may enforce a required dependency or memory contract. Confirm
  source and control flow before proposing removal.

## Vector registers and dependencies

- Check vector stores/reloads to the stack in the hot loop. Determine live
  inputs, twiddles, intermediates and outputs at the pressure peak. Radix-16
  split data alone needs 32 vector registers, leaving no spare registers for
  twiddles or temporaries on AVX-512. Narrower tiers have fewer registers.
- Trace dependent FMA, add, multiply, shuffle and permutation chains. Look for
  independent butterflies that could overlap, and for instructions held back
  by load latency or earlier arithmetic. Static instruction count alone does
  not establish throughput.
- Compare vector widths and store demand. On the tested Zen 4 host, prior
  measurements found similar per-element throughput for 256- and 512-bit
  code; wider registers can increase store pressure. Verify on each target.

## Calls, layout conversion and transposes

- Check unexpected intrinsic/helper calls, allocation, copies and scalar
  fallback work in the loop. Distinguish deliberate dispatch and one-time
  setup from calls made for each butterfly or block.
- Attribute split/interleaved conversion, bit reversal and transpose costs
  separately from arithmetic. Check whether short transforms spend much of
  their time converting layouts or copying buffers.
- For four-step engines, inspect each transpose and partial-block path.
  Intentional stack staging is not automatically a register spill. Confirm
  padding, traversal order and reused data before changing it.

## Cache lines and alignment

- Determine actual base alignment, strides and offsets for user buffers,
  scratch and coefficient streams. A 16-byte-aligned base does not establish
  alignment for 32- or 64-byte accesses. Check offsets of every stream.
- Identify vector loads/stores that cross 64-byte cache-line boundaries.
  Aligned allocations can still produce split accesses through offsets;
  unaligned instruction mnemonics alone do not prove a split access.
- Consider working-set size, coefficient reuse, page crossings and stride
  patterns. Cache-miss counters cover the whole process and have event-specific
  meanings. They do not isolate a particular load or establish its latency.

## Test a hypothesis

Write one concrete prediction: which loop changes, which instructions or
memory accesses decrease, and which matched cells should improve. Retain the
before/after executable, source and evidence. Recheck correctness and compare
unprofiled arena runs on an idle machine with the same toolchain, flags, CPU,
ISA, input, allocation protocol and process count. Sampling skid, sparse
samples and incomplete stacks can misattribute cost. Use optional llvm-mca
estimates to guide exploration; use measured results to accept a change.

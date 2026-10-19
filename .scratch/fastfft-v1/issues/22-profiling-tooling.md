# Set up profiling tooling and the asm checklist

Type: task
Status: resolved
Roadmap: FFT-060

## Question

What tooling and checklist should performance work use on this machine?

## Work

- The former permissions blocker is stale: `kernel.perf_event_paranoid = 1` on 2026-10-08. Check permissions for each capture; do not change sysctl settings.
- Install cargo-show-asm.
- Write the asm/spill checklist in `docs/architecture.md`. Items learned so far:
  - GPR spill *stores* in pass loops;
  - vector spills (radix-16 split needs 32 registers);
  - leftover intrinsic calls;
  - split-cache-line accesses.

## Done when

`perf-cell` works (or the blocker is documented) and the checklist is committed.

## Answer

The workflow and checklist are committed with this ticket's resolution.
Raw evidence is retained locally outside source control; the committed
findings, manifest and replay helper describe and verify it.

Added a repeatable `cargo xtask perf-cell --mode stat|record` workflow with
stat as the default and the existing cell selection options preserved.
Recording requires a fresh `--out` directory and defaults to `cycles:u`,
999 Hz and DWARF call graphs with 16 KiB stack dumps. Builds precede
profiling. The workflow checks affinity and library success in cell JSON,
retains the executable/hash, raw samples, source/revision/diff, commands,
versions, flags, CPU and permissions, and preserves partial failures.
Exclusive reports, caller reports, inline and dynamic stacks, report warnings,
sample counts and interactive report/annotation commands are retained.

Installed cargo-show-asm 0.2.63 with `--locked` under
`target/profiling-tools`. Added `docs/architecture.md` with checks for GPR
spill stores and address generation, vector pressure and dependency chains,
helper calls and transposes, and alignment/split cache lines. Updated
`docs/benchmarking.md` with counter, sampling and assembly recipes. Whole-child
counters include planning, warm-up, clock probes and harness work; they are
not per-transform counters. Sampling identifies candidates, while matched
unprofiled benchmarks establish improvements. llvm-mca remains optional and
is absent on this host.

The idle-gated f32 forward in-place N=4096 captures pass for fastfft and
RustFFT with CPU 2 confirmed. The final recordings contain 967 and 962 samples
respectively, with no reported losses. fastfft's two Stockham passes account
for 58.99% of sampled cycles and its finish function for 33.15%. RustFFT's
column butterflies/transpose, column butterflies, row butterflies and
transpose account for 40.40%, 20.88%, 20.15% and 12.66%. Explicit harness clock
probes contribute 5.00% and 5.17%. FFT symbols, source inline frames and
instruction annotation resolve; the retained executable and raw profiles
replay with verified hashes on a temporary symbol tree.

Dynamic caller verification does not pass on this perf/libdw build. FFT
chains stop at the sampled function or continue through invalid unknown
addresses; none reaches a resolved arena runner or cell caller. Header
metadata also emits `Invalid HEADER_EVENT_DESC: nre=1 sz=144 (min 64)`.
The reports expose warnings and the retained evidence documents both limits.
A segment-bias mismatch is a plausible explanation, not a verified tool fix.
The ticket's workflow/checklist criterion is met with this caller-attribution
blocker documented. Complete dynamic caller attribution still needs a
compatible unwinder. No frame-pointer or native-CPU rebuild was substituted.

Concrete follow-up hypothesis: reuse twiddle vectors across groups in the
hot radix-8 pass to reduce its 14 per-iteration broadcasts. Register pressure
and locality may outweigh that reduction. Validate correctness and matched
unprofiled cells before accepting an optimization; no FFT implementation
changed in this ticket.

[Retained evidence](../../../docs/profiling/2026-10-08-ticket22/README.md)
documents the counters, sampled functions, limitations and portable replay
commands. Raw samples, the exact executable, assembly and provenance are
retained locally under ignored `target/profiling/ticket22-evidence/`, outside
source control. Formatting, six xtask tests, Clippy with warnings
denied, codegen freshness, artifact integrity and both libraries' report and
annotation replay pass. Actual CLI checks reject missing/existing output
directories and propagate an invalid event while preserving partial output.
Unrelated benchmark edits remain unstaged. No sysctl setting changed.

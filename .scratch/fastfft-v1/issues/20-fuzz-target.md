# Add a fuzz target

Type: task
Status: resolved
Roadmap: FFT-054

## Question

Does the library survive random lengths, buffer lengths, modes and directions?

## Work

Add a `cargo-fuzz` target: random N (1…~70000), random buffer lengths (including invalid ones, expecting panics), random mode and direction, checked against the testkit reference.

## Done when

The target is committed and runs clean for a bounded time (e.g. 10 minutes). Findings are fixed or ticketed.

## Answer

Added the isolated `fuzz/` crate, its lockfile, the `fft` cargo-fuzz target,
deterministic seed generation and replay instructions. It covers N=1…70000,
f32/f64, both directions, Estimate and bounded Measure modes, ISA caps, all
four public processing APIs, SIMD batch boundaries, element offsets, and
valid or deliberately invalid buffer/scratch lengths. Valid output is checked
per transform against the testkit's independent double-double reference using
both relative L2 and maximum-error bounds. Guards and immutable-input checks
protect the buffer contracts. Only expected validation messages may unwind;
unexpected panics still reach libFuzzer's aborting hook.

On 2026-10-08, the deterministic sweep passed 4,224 cases, including every
N=1…4096 in a rotating configuration and selected larger boundaries through
70000. The AddressSanitizer campaign completed 3,121 inputs in 601 seconds
with exit 0 and no findings. Contract/panic-hook tests, formatting and Clippy
with warnings denied pass. Astra's focused review found two harness coverage
gaps, fixed before the successful capture. There were no library findings to
fix or defer.

[Evidence](../../../docs/fuzz/2026-10-08-ticket20/README.md) retains logs,
tool versions, exact source and binary hashes, a source archive and final
corpus. The tested library includes the preserved ticket 19 working tree;
its accepted performance exception remains separate in ticket 40.

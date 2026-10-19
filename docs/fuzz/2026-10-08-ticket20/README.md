# Ticket 20: bounded FFT fuzzing

Accepted on 2026-10-08. The AddressSanitizer campaign completed **3,121 inputs
in 601 seconds**, exit 0, with no sanitizer, unexpected-panic, buffer-contract
or numerical-accuracy findings. Peak reported RSS was 1,248 MiB, below the
4,096 MiB campaign limit. There were 357 new corpus units.

The deterministic replay passed **4,224 valid cases**: every N=1…4096 in one
rotating configuration, plus 16 configurations at each of eight larger
boundaries through 70,000. This is length coverage, not the complete cross
product of every API, precision, direction, ISA and planning mode. The campaign
started from 440 generated valid and invalid seeds.

The contract tests passed, including subprocess checks that unexpected panics
still reach the original panic hook. The intentionally ignored probe test is
executed by those subprocess checks. Formatting and Clippy with warnings denied
also passed. Astra's review identified missing SIMD batch counts and a missing
maximum-error assertion; both were fixed before the recorded successful run.

`manifest.json` records commands, UTC times, tool versions, limits, the fuzz
binary hash and before/after source hashes. All source hashes match. The
campaign used cargo-fuzz 0.13.2, libfuzzer-sys 0.4.13 and nightly Rust
1.101.0-nightly (1d81eb4ad, 2026-10-07). The target and library dependencies
used AddressSanitizer; the prebuilt standard library was not rebuilt.

`source.tar.gz` retains the exact hashed source, and `corpus.tar.gz` retains
the final corpus. `checksums.json` covers the captured logs and archives.
`initial-replay-build/` retains the earlier replay integer-inference build
error, fixed before the successful validation. It contains no fuzz campaign.

The tested library includes existing ticket 19 working-tree changes. This
fuzz commit does not commit those changes; the source archive preserves the
tested combination. Ticket 19's explicit performance exception remains in
[ticket 40](../../../.scratch/fastfft-v1/issues/40-batch-f32-n32-measure-order.md).
This correctness campaign does not certify performance gates.

See [fuzz usage](../../../fuzz/README.md) for regeneration and replay. A clean
bounded campaign is evidence of the tested inputs, not a proof of bug absence.

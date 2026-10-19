# Ticket 31: retained findings and tooling

Ticket 31 remains open. The performance optimization was rejected and reverted;
this branch retains benchmark and developer tooling. Platform integration and
local validation are complete, with extraction-specific checks recorded in the
`ticket-31-keep` pull request. Native ARM/macOS runtime validation remains pending.
No optimization or new performance result is accepted here.

## Recorded result

The ordinary baseline passed 13/16 eligible equal-plan cells. Both precisions
at N32768 and f32 N65536 failed at least one 5% metric. The final candidate
passed 16/16, with absolute production gains of 5–9% on those original failures.
Its complete 31-command campaign also found eight AVX2 regression flags,
including +11.31% best / +11.01% median at f32 N8192. Seven flags were slower
in all three ordinal process pairs. Astra recommended rejection.

Correctness passed, but unexplained performance regressions block adoption.
Retained placement controls show virtual-address sensitivity; they do not prove
physical cache coloring. Matched public/engine routes do not establish an
unavoidable API exception. Isolated pass times are not additive accounting.
The clock-probe calibration caveat and profiling header warning remain.

## Immutable investigation checkpoint

All reports, compact summaries, manifests, frozen protocols, historical scripts
and the rejected patch remain at commit
[`08e485a4a388652566e4c384906b0420e1b0a75c`](https://github.com/inhesrom/fastfft-history/tree/08e485a4a388652566e4c384906b0420e1b0a75c)
on `military-bear` in the private development archive (`inhesrom/fastfft-history`). Read the
[complete outcome](https://github.com/inhesrom/fastfft-history/blob/08e485a4a388652566e4c384906b0420e1b0a75c/docs/benchmarks/2026-10-12-mini-ryzen-ticket31-stockham-parity/outcome.md),
[final candidate report](https://github.com/inhesrom/fastfft-history/blob/08e485a4a388652566e4c384906b0420e1b0a75c/docs/benchmarks/2026-10-12-mini-ryzen-ticket31-stockham-parity/candidate-v3.md),
[manifest](https://github.com/inhesrom/fastfft-history/blob/08e485a4a388652566e4c384906b0420e1b0a75c/docs/benchmarks/2026-10-12-mini-ryzen-ticket31-stockham-parity/final-manifest.json),
and [archive receipt](https://github.com/inhesrom/fastfft-history/blob/08e485a4a388652566e4c384906b0420e1b0a75c/docs/benchmarks/2026-10-12-mini-ryzen-ticket31-stockham-parity/checkpoint.md).
Those hashes describe historical snapshots, not the extracted branch.

Raw evidence is excluded from Git. A verified local archive lives outside the
original worktree at
`/home/ianhersom/.local/share/fastfft-checkpoints/military-bear-ticket31-20261012T202814Z.tar.zst`,
SHA-256 `8d1a4bb40ef6dae1591e1bba1a7e99f4b7291b5cf1bc30edd8c74e3fbe1bea3c`.
This is a same-machine archive, not an off-machine backup.

## Remaining performance question

A future investigation can test whether recurring AVX2 f32 N8192 slowness
follows coefficient/descriptor ownership through a retained swap/restore
experiment with a sham. That investigation is separate from this tooling
extraction; no further timing or candidate change is required for this branch.

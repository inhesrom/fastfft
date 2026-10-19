# Ticket 11 baseline provenance

Measured before engine edits, at commit `40d65034fed313a56e34b9c27e1aa088746067c6`. The only working-tree change when the baseline started was claiming ticket 11. The arena executable was retained at `target/arena/fastfft-arena-ticket10` for matched diagnostics.

Command: `cargo xtask arena run --suite pow2 --profile full --max-n 256 --libs fastfft,rustfft --procs 3 --core 2 --label small-before --out target/arena/small-before`.

All 64 target cells completed and verified; no child failures or abort, maximum recorded drift 1.32%. The published JSONL matches the run after decompression.

The existing `clock_ghz` probe is an uncalibrated throughput proxy (ticket 32). Its compiler folds four intended additions into one. FFT timings use `Instant` independently; this run retains the existing drift policy and original probe readings. The report's general G1 gate uses 1.5× and is not ticket 11's 1.2× per-precision gate.

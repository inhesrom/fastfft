# Benchmark records

Each dated directory holds the raw results, logs, and diagnostics for one
benchmark run. See [docs/benchmarking.md](../benchmarking.md) for the
measurement protocol.

## Licensing of archived source snapshots

Some records include copies of the workspace as it was built for that run:
`source/` directories under
`2026-10-04-mini-ryzen-ticket19-measure/diagnostics/selection-fix/`, and source
tarballs such as `2026-10-10-mac-neon/source-{before,after}.tar.gz`,
`2026-10-10-mac-neon/x86-source-check/baseline-input.tar.gz`, and
`../fuzz/2026-10-08-ticket20/source.tar.gz`. Like the rest of this repository,
they are licensed under the [Mozilla Public License 2.0](../../LICENSE); the
vendored oxifft code under `vendor/oxifft` keeps its own Apache-2.0 license.

When fastfft was relicensed from MIT to MPL-2.0, the `license` line in each
snapshot's root `Cargo.toml` was changed to `license = "MPL-2.0"`, and the
affected tarballs were repacked with only that line changed. Hashes recorded
for these snapshots (for example in `source-sha256.json`, `retention.json`,
`archive-manifest.json`, some `provenance.json` files, and
`2026-10-10-mac-neon/source-hashes.json`) refer to the original bytes and no
longer match those files. Hashes in other runs' `source.sha256` files describe
the source tree at that run's commit and are unaffected.

# Apple M6 Stockham placement follow-up

Diagnostic measurements, not release qualification. macOS cannot provide the
Linux affinity, boost or continuous interference controls used for the Zen 4
gates. Results apply to this Apple M6, not all AArch64 cores.

## Policy

The x86 policy from `e4b9ed8` is unchanged. For aligned AArch64 out-of-place
calls with an even pass count, use the placed scratch-only route only for
transforms of at least 128 KiB (f32 N=16384 / f64 N=8192). Below that boundary,
keep the legacy schedule: its caller-offset sensitivity was small while the
extra scratch choreography cost up to 12%. At the boundary the scratch-only
route also won at the tested 512- and 2048-byte distances, so AArch64 uses a
size threshold rather than x86's distance guard.

The existing cache-budget and minimum-pass gates still apply. Misaligned
calls retain their prior routing. In-place placement, public scratch lengths
and plan selection are unchanged. Other AArch64 cores share this policy but
remain unmeasured; rerun the diagnostic before claiming gains there.

## Placement protocol

`capture.py` builds `placement.rs` against three source trees:

- `base`: `66d463c`, before the placement change;
- `pr`: `e4b9ed8`, the reviewed PR;
- `fixed`: this commit's source (recorded by per-file hashes, including dirty
  changes, rather than retrospectively equating a run with a commit SHA).

All variants use release, fat LTO, one codegen unit, default features. Builds
finish before timing. Four rounds run base/pr/fixed/fixed/pr/base, giving eight
process medians per row. Each process uses 21 timing samples per row, with a
calibrated batch lasting at least approximately 300 microseconds. The summary
uses the median of those eight process medians; ratios are time ratios, so
less than 1 is faster. All variants must describe identical plans.

Both precisions, forward direction, N=1024 through 131072. Each buffer starts
at an exact offset from a 16 KiB-aligned allocation. In place, input offset 0
and scratch offsets 0/64/512/2048/4096/8192. Out of place, input offset 0,
output offsets 0/64/448/512/2048/4096/8192, scratch offset 1024. The default
allocator row calls `process()` on a Vec, including its per-call scratch
allocation. All timed data is zero: repeated unnormalized transforms on
nonzero input overflow to NaN. Earlier exploratory nonzero-data timings are
not used as the retained result. Separate public-contract tests check finite
random inputs against RustFFT in both directions, at page distances
0/512/2048 and with scratch/buffer canaries.

Reproduce with distinct repository trees and a new output path:

```sh
git worktree add --detach /tmp/fastfft-review-base 66d463c
git worktree add --detach /tmp/fastfft-review-pr e4b9ed8
python3 docs/benchmarks/2026-10-15-mac-stockham-review/capture.py \
  --base /tmp/fastfft-review-base --pr /tmp/fastfft-review-pr \
  --fixed "$PWD" --out "$PWD/target/mac-stockham-review" --rounds 4
```

The capture retains raw TSV, medians, compiler/host identity, executable
hashes, lockfile hashes and source hashes. These identify the measured
artifacts; they do not attest an idle host or independent frequency control.

## Retained placement results

`summary.tsv` contains all 224 rows (8 sizes × 2 precisions × 14 placements),
not just the selections below. `raw.tsv.gz` retains all 5,376 process rows;
`manifest.json` records hashes for the uncompressed raw TSV, summary and
measured fastfft sources. `placement.Cargo.lock` pins the four dependencies
used by all three builds. The fixed source hashes were checked against the
final working tree. These are diagnostic timing medians, not gate results.

| Precision / N / mode / offset bytes | PR / base | Fixed / base |
|---|---:|---:|
| f64 / 2048 / out of place / 0 | 1.1187 | 0.9982 |
| f32 / 4096 / out of place / 0 | 1.0080 | 0.9995 |
| f32 / 8192 / out of place / 4096 | 1.0365 | 1.0033 |
| f32 / 16384 / out of place / 0 | 0.7520 | 0.7360 |
| f32 / 16384 / out of place / 512 | 1.0019 | 0.8795 |
| f64 / 8192 / out of place / 0 | 0.7569 | 0.7552 |
| f64 / 8192 / out of place / 2048 | 0.9973 | 0.9466 |
| f32 / 65536 / default Vec | 0.7500 | 0.7696 |
| f32 / 131072 / default Vec | 0.7099 | 0.7163 |
| f64 / 65536 / default Vec | 0.7406 | 0.7467 |

At f64 N=2048 the fixed out-of-place time is 0.9969–0.9995 of base across
all seven offsets, removing the 10–12% regression without sacrificing the
large-size wins. This does not prove every cell is unchanged or faster:
the worst fixed/base row is 1.0312 (f32 N=65536 in place, offset 2048), and
the size-only rule gives up a small-offset win at f64 N=4096 (offset 0:
PR/base 0.9561, fixed/base 0.9903). All rows are retained so these tradeoffs
and uncontrolled run-to-run variation remain visible.

## Comparator scope

The follow-up leaves oxifft sources and patch metadata unchanged. Maintainer
requested focus on RustFFT and FFTW; no new oxifft timing or correctness claim
is made. Any comparator timings below are an unofficial current-tree snapshot,
not an old/new speedup or a release-gate verdict.

The ordinary quick-profile arena attempt requested 14 forward in-place
cells (both precisions, N=1024…65536), RustFFT 6.4.1 and FFTW 3.3.11 NEON,
with two processes and `--allow-dirty-env`. It **aborted after the first cell**
on 37.22% throughput-probe drift. It exited zero despite the abort; retained
`rejected-arena-meta.json`, `rejected-arena-env.json`, results and trials are
the verdict evidence. This attempt is rejected for performance comparison;
no complete cross-library speedup is claimed and no drift threshold changed.
The matched placement capture above did not implement this drift control and
must not be presented as having passed it.

Separate direct `run-cell` diagnostic spot checks cover forward f32/f64,
N=2048/8192/16384, in/out of place, two trials each, with the same three
libraries, quick profile, zero timing data, verification enabled and seed
1592590338. All 24 trials / 72 library rows returned `status=ok` and passed
verification. `comparator-spots.jsonl.gz` retains the raw rows and
`comparator-spots.json` their protocol and hashes. Direct cells do not apply
the driver's cross-cell drift gate: these establish successful execution and
verification, not trustworthy complete cross-library speed ratios.

## Verification

On native aarch64 macOS:

- `cargo fmt --all -- --check`.
- `cargo test -p fastfft --release`: 90 unit tests passed, 3 ignored;
  integration and doc tests passed (4 existing ignored integration tests).
- `cargo test -p fastfft --release --features tuning stockham`: 40 passed,
  including the new large-buffer public API/canary checks.
- `cargo test -p fastfft-arena --release spec::tests` and the same command
  with `--features measure-diagnostics`: 4 passed in each configuration.
- Clippy with `-D warnings`, all targets, for fastfft with tuning and for
  the default arena.
- `cargo xtask codegen --check`.
- `python3 -B -m unittest discover -s scripts -p 'test_*.py'`: 104 run,
  103 passed, 1 Linux-only process snapshot test skipped on macOS.
- The new unknown-engine relative G7 regression fails against the HEAD
  auditor and passes with the fix. Unknown profiles are rejected for new
  requests while historical results retain permissive deserialization.
- `cargo xtask fftw-build --jobs 2`: pinned FFTW 3.3.11, static f32/f64,
  NEON, `CFLAGS=-O3 -fPIC -std=gnu17`.
- `cargo build --profile arena -p fastfft-arena --features fftw`.

Linux/x86 runtime tests were not rerun for this follow-up. The x86 routing
policy is unchanged and both architecture policies are covered by unit tests;
normal x86 CI remains required before merge. This is not a claim that the
project's outstanding release gates now pass.

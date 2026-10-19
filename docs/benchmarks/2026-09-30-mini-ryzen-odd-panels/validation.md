# Ticket 13: initial panel implementation

Branch: `ticket-13-odd-smooth-simd`, based on `861f1bf` (resolved ticket 12).
The measurement uses an uncommitted working tree. `source.patch` reproduces
the library changes from that base, including new files; `source.sha256` and
`executable.sha256` identify the measured sources and arena executable.

The new four-step engine decomposes `N = A × B` without requiring SIMD width
to divide N. Column panels use the existing generated codelets and Stockham
passes, then fuse cross twiddles with a register transpose into an intermediate
matrix. Row panels write the final interleaved result in natural order. Partial
panels use zero-filled local arrays and bounded copies, following the current
Stockham tail approach. Scratch holds the matrix and two padded panel buffers.

`Measure` can select these candidates for odd and weakly-even smooth sizes
above 16. `Estimate` retains its current selections. Balanced dimensions are
provisional; the large-N cache policy and recursive decomposition remain part
of tickets 14 and 16.

## Correctness and checks

All checks below passed on the Zen 4 Ryzen 7 7840HS, Rust 1.95.0:

```sh
cargo test --workspace --release
for tier in scalar sse2 avx2 avx512-ymm avx512; do
  FASTFFT_ISA_CAP="$tier" FASTFFT_REQUIRE_ISA="$tier" FASTFFT_TEST_QUICK=1 \
    cargo test -p fastfft --release
done
cargo check -p fastfft --no-default-features
cargo clippy --workspace --all-targets -- -D warnings
cargo fmt --all --check
cargo xtask codegen --check
git diff --check
```

New tests exercise the `Fft` interface against the independent double-double
reference in f32/f64 and both directions. They cover full and partial panels,
rectangular decompositions in both orientations, multi-pass dimensions, odd
radices through 13, and N=4725, 19683 and 165375. Buffer-contract checks cover
three-transform batches, caller buffers and scratch offset by one real,
exact scratch lengths and one-element-short rejection, guards around buffers,
immutable input, and thread-local scratch via `process()`.

The full workspace run includes the existing exhaustive N=1…4096 accuracy
sweep plus its larger cases; the explicitly ignored M3 checkpoint tests were
not run. A scalar `miri_fourstep_panels` smoke test was added for the existing
Miri CI filter, but Miri and non-x86 targets were not run locally.

## Remaining ticket work

The ticket is still claimed. It requires measured default-planner selection
and a complete quick smooth suite with no cell below 0.95× RustFFT. This first
implementation and focused measurement do not establish that acceptance gate.
Small odd codelets, panel decomposition, transpose/tail overhead and the
eventual default dispatch need separate measurement before resolving it.

# Oxifft 0.4.2 comparator correctness patch

This directory preserves the Apache-2.0 licensed crates.io release of
`oxifft` 0.4.2. It is used only by the unpublished benchmark arena.
The public fastfft library does not depend on oxifft.

- Registry checksum: `9d47858f0ced62828f8e665439079356e975cc0cc40c41d2202aeebd05a4b915`.
- Packaged upstream revision: `5d0e3c7ac41fe9ccc1d2058d03617f364e804ae5`;
  see `.cargo_vcs_info.json`.
- Upstream: <https://github.com/cool-japan/oxifft>.
- Release: <https://crates.io/crates/oxifft/0.4.2>.
- License: [LICENSE](LICENSE), retained verbatim.

The root `[patch.crates-io]` selects this source without changing the arena's
`MEASURE` planning flags, enabled features, supported lengths, verification
thresholds, or adapter placement behavior. Results must identify this patched
comparator; historical 0.4.2 results remain historical.

Three production repairs are confined to four source files:

1. `src/dft/solvers/simd_butterfly.rs` exposes the existing 65,536-element
   precomputed-table limit within the crate. `stockham/mod.rs` applies the
   existing DIT policy to Stockham: larger f64 transforms use the existing
   scalar implementation, whose twiddles are computed on demand. Before this
   guard, planning N=131,072 panicked while indexing stage 16 of a 16-entry
   offset table. The guard applies to both x86-64 and AArch64 dispatch.
2. `stockham/generic.rs` generates f32 Stockham twiddles using an f64
   recurrence, rounding each coefficient to f32. Other scalar types retain
   their native precision. The original millions-long f32 recurrence failed
   arena verification at N=8,388,608 (6,130.83 epsilon); an analytic shifted
   impulse regression reproduced 9,427.46 epsilon against the unchanged
   4,800-epsilon limit.
3. `ct.rs` bounds DIF twiddle recurrence drift by recomputing the phase every
   32 coefficients. Once the planner panic was repaired, the actual arena
   selected `CooleyTukey(Dif)` and exposed an f64 accuracy failure at N=524,288
   (21,125.38 epsilon). The analytic regression reproduced 36,202.10 epsilon
   against the unchanged 4,000-epsilon limit. Both directions and public
   in-place/out-of-place execution are covered.

Regression tests in `stockham/mod.rs` cover both transform directions,
the f64 table boundary (65,536 / 131,072 / 262,144), and the f32 long
recurrence. Their oracle is the analytic transform of a shifted impulse.

```sh
CARGO_BUILD_JOBS=1 CARGO_TARGET_DIR=target/oxifft-check \
  cargo test --manifest-path vendor/oxifft/Cargo.toml \
  --no-default-features --features std dft::solvers:: --release
```

All three regressions failed before their respective repairs; all 204 DFT
solver tests passed afterward on x86-64. Native NEON execution remains unverified.
Compiler and competitor runtime comparisons must be rerun with this source;
unit tests alone do not establish full comparator coverage or a release gate.

The packaged Cargo lockfile and registry installation marker are omitted.
The root workspace lockfile records dependencies; this standalone package's
locally generated lockfile and target directory are ignored.

# Set up the workspace, CI workflow and planning docs

Type: task
Status: resolved
Roadmap: FFT-001, FFT-002 (partial), FFT-003

## Question

Create the repository foundation the plan (ROADMAP.md, M0) calls for: workspace, toolchain pin, lint policy, benchmark profile, xtask, CI workflow, license policy and the planning/research docs.

## Answer

Done in commit e83fd99.

- Workspace members: `crates/fastfft`, `crates/fastfft-codegen`, `crates/fastfft-testkit`, `bench/arena`, `experiments/kernel-lab`, `xtask`. Edition 2024, `rust-version = 1.89`, `rust-toolchain.toml` pins 1.95.0. Workspace lints: `unsafe_op_in_unsafe_fn = deny`, `clippy::undocumented_unsafe_blocks = deny`. `[profile.arena]` = release + fat LTO + 1 codegen unit + line tables.
- `.github/workflows/ci.yml`: fmt, clippy, tests, MSRV, tier matrix, Intel SDE AVX-512, aarch64, wasm32, Miri subset, codegen check, docs, cargo-deny. **Never run on GitHub yet**, see [Get CI green on GitHub](21-ci-green-on-github.md).
- `deny.toml`: library deps MIT/Apache-compatible; `tfhe-fft` (BSD-3-Clause-Clear) excepted for the unpublished arena.
- Docs: `ROADMAP.md` (milestones, gates G1–G9, FFT-xxx ids, FUT tickets), `docs/research/rust-fft-landscape.md` (researcher-verified; its first table lists corrections to the original plan's claims), `docs/benchmarking.md`.

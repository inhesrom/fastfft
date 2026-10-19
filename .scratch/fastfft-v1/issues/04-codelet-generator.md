# Write the codelet generator

Type: task
Status: resolved
Roadmap: FFT-032

## Question

Generate the straight-line DFT codelets the engines use, instead of hand-writing them, with a drift check in CI.

## Answer

`crates/fastfft-codegen` (commit e83fd99):

- Pipeline: real-valued DAG with hash-consing and simplification.
- Builders: split radix (powers of two), symmetric odd primes, Good–Thomas (coprime) and Cooley–Tukey.
- Optimizations: FMA fusion, then add/FMA pipe balancing. The balancing distributes twiddle products over their consumers and uses `x*one + y` with an opaque `one`, because Zen 4 runs adds and FMAs on separate pipe pairs.
- Every graph is verified in f64 against a naive DFT (≤ 1e-14).
- Output: `crates/fastfft/src/codelets/generated/`, radices 2–16 and 32. Each radix has `n{r}` (no twiddles) and `t{r}` (DIT input twiddles), generic over `SimdReal` with split re/im arrays. Dispatch helpers `notw::<V, R>` and `tw::<V, R>`, plus an op-count table.
- Op counts: DFT-16 160 (FFTW 168), DFT-32 424 (FFTW 456).
- Commands: `cargo xtask codegen` regenerates (runs rustfmt); `cargo xtask codegen --check` detects stale files.

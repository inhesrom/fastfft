# Build the test reference kit

Type: task
Status: resolved
Roadmap: FFT-010

## Question

Provide trusted references for every correctness and accuracy check: seeded signals, a high-precision DFT, independent FFTs and error metrics.

## Answer

`crates/fastfft-testkit` (commit e83fd99):

- `Dd` double-double arithmetic with exact integer angle reduction (`Dd::unit_root`).
- Naive O(N²) DFT; recursive mixed-radix FFT with Bluestein for primes > 13, generic over f64 and `Dd`.
- Validated against the naive DFT for N ≤ 2048: ≤ 1e-28 relative (Dd) and ≤ 4ε·log2 N (f64).
- Metrics: relative L2 and max error (differences formed in Dd), fast-path bound `2 log2 N + 2` ε, Bluestein bound `8 log2 M + 8` ε.
- Seeded signals (SplitMix64) and a realistic I/Q stream for the real-world scenarios.

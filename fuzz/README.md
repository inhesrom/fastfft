# FFT fuzzing

`fft` checks the public FFT API against `fastfft-testkit`'s independent
double-double reference. This crate has its own workspace and lockfile;
fuzz dependencies do not enter the library's normal build.

The 24-byte input selects:

- N from 1 through 70,000, f32/f64, and either direction;
- Estimate or Measure with a zero, 50 µs, or 5 ms planning budget;
- the default ISA or one of the five ISA caps, subject to CPU support;
- `process`, explicit-scratch in-place, mutable out-of-place, or immutable input;
- batch counts around SIMD group boundaries, capped at 210,000 total elements;
- valid, empty, short, arbitrary, mismatched output, or insufficient-scratch buffers;
- element offsets, finite random data, zeros, an impulse, or an alternating signal.

Valid calls must meet the existing fast-path/Bluestein accuracy bounds for both
relative L2 error and maximum error. Every batch is checked separately. Guard
elements must remain intact, and immutable input must remain unchanged.
Invalid calls must panic with their expected entry-validation message. A
thread-local, scoped panic policy permits only that message to unwind;
unexpected panics still reach libFuzzer's aborting hook. Subprocess tests
verify that unexpected panics inside and outside the scope reach the original
hook, and that a missing expected panic fails.

Planning budgets limit candidate selection, not the duration of an individual
FFT or reference calculation. The runtime limits below bound each input and
the campaign. Measure fuzzing checks correctness; it does not certify timing
quality or performance thresholds.

## Run

Install [cargo-fuzz and nightly Rust](https://rust-fuzz.github.io/book/cargo-fuzz/setup.html)
without changing the repository's stable toolchain:

```sh
rustup toolchain install nightly --profile minimal
rustup component add rust-src --toolchain nightly
cargo install cargo-fuzz --locked
cargo test --release --manifest-path fuzz/Cargo.toml --lib
cargo run --release --manifest-path fuzz/Cargo.toml --bin replay -- --seeds fuzz/corpus/fft
cargo +nightly fuzz run fft --features libfuzzer --codegen-units 16 -- \
  -max_total_time=600 -timeout=120 -rss_limit_mb=4096 -max_len=24 \
  -seed=20261008 -print_final_stats=1
```

AddressSanitizer is cargo-fuzz's default sanitizer. These instructions use
cargo-fuzz 0.13.2 and instrument the target and its library dependencies;
no ISA tier is disabled. Add `--build-std` to rebuild and instrument Rust's
standard library as well.

For deterministic coverage or replay of a saved finding:

```sh
cargo run --release --manifest-path fuzz/Cargo.toml --bin replay -- --sweep
cargo run --release --manifest-path fuzz/Cargo.toml --bin replay -- fuzz/artifacts/fft/crash-INPUT
```

The sweep checks every N=1…4096 in a rotating configuration and 16 configurations
at each selected larger boundary. It does not enumerate the full cross product
of precision, direction, ISA, API and mode. The seed generator creates 440
cases, including valid transforms and deliberate contract violations. Corpus
and artifacts are ignored by Git; retain campaign logs and findings with the
ticket evidence. A clean bounded run is evidence, not a proof of bug absence.

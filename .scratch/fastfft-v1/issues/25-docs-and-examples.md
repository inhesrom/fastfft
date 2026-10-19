# Write the README, examples, CHANGELOG and architecture doc

Type: task
Status: open
Blocked by: 23
Roadmap: FFT-070

## Question

What does a user need?

- README: usage, migrating from RustFFT, the interleaved I/Q note (bytemuck view of `&mut [f32]`), alignment advice, results.
- Crate docs.
- Examples: I/Q spectrogram, overlap-save.
- CHANGELOG.
- Final `docs/architecture.md`.

## Existing foundation

Ticket 12 starts `crates/fastfft/README.md` with basic usage and alignment/scratch
advice. Preserve the distinction between normal Rust alignment (correctness)
and preferred 64-byte alignment (performance), and tell callers to query the
scratch length for their chosen placement. The rest of the documentation above
remains this ticket's work.

## Done when

Docs build with `-D warnings` and the examples run.

# Add ISA tokens to the SIMD layer

Type: task
Status: open
Roadmap: FFT-031

## Question

The plan's locked decision says kernels require zero-sized ISA tokens that can only be created after detection succeeds, so the `unsafe` contract stays local. Today safety rests on the planner only choosing tiers that `isa::available()` confirmed, with `unsafe` dispatch in `fft.rs` and `engine/mod.rs`.

How should tokens be introduced? For example, an `IsaToken` created only by detection, stored in plans, and required by the `engine::stockham_f32`/`stockham_f64` entry points. The goal is to remove the implicit invariant without runtime cost.

## Done when

- The engine entry points take a token.
- A plan cannot hold a tier without one.
- Tests and the tier matrix pass.
- The asm of hot loops is unchanged.

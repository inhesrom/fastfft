//! # fastfft
//!
//! Fast single-threaded 1-D complex FFTs for `f32` and `f64`, with a
//! RustFFT-compatible API and a SIMD-first engine: AVX-512 (512-bit and
//! 256-bit with 32 registers), AVX2+FMA, SSE2, AArch64 NEON and portable scalar code,
//! selected at runtime.
//!
//! ```
//! use fastfft::{FftPlanner, num_complex::Complex};
//!
//! let mut planner = FftPlanner::<f32>::new();
//! let fft = planner.plan_fft_forward(1024);
//! let mut buffer = vec![Complex::new(1.0f32, 0.0); 1024];
//! fft.process(&mut buffer);
//! assert!((buffer[0].re - 1024.0).abs() < 1e-3);
//! ```
//!
//! ## Conventions (same as RustFFT)
//!
//! - Data is interleaved `Complex<T>` (`#[repr(C)]`, the same layout as
//!   `[T; 2]`), e.g. interleaved I/Q samples.
//! - Output is unnormalized and in natural order (zero frequency first).
//! - Buffers are processed as consecutive chunks of `len` elements.
//! - `process_outofplace_with_scratch` may overwrite its input;
//!   `process_immutable_with_scratch` never does.
//! - Length 0 does nothing; length 1 is the identity.
//!
//! Consecutive small power-of-two transforms can use SIMD across transforms.
//! Pass the whole batch in one call to expose this parallelism. Full groups
//! use one transform per lane; any remainder uses the single-transform plan.
//! The batch path reuses a bounded stack tile and keeps the reported scratch
//! lengths independent of the number of transforms.
//!
//! Migrating from RustFFT means changing the crate path: `FftPlanner`,
//! `Fft`, `FftDirection`, `Length` and `Direction` have the same names and
//! behavior (scratch lengths are implementation-defined in both crates).
//!
//! ## Alignment and scratch
//!
//! Normal Rust alignment is sufficient for correctness. Prefer 64-byte-aligned
//! input/output allocations for performance; `Vec<Complex<T>>` and subslices do
//! not guarantee this. In-cache Stockham plans can keep misaligned intermediate
//! passes in aligned scratch, but larger Stockham plans avoid that extra
//! working set. Large FourStep plans reserve an intermediate and bounded
//! panel workspaces, reused across a batch.
//! Always query the scratch length for the chosen placement: even out-of-place
//! calls may need scratch, and lengths can depend on the CPU. Caller scratch
//! itself needs no SIMD alignment; the reported length includes alignment space.
//! [`Fft::process`] manages reusable thread-local scratch automatically.
//!
//! ## Instruction sets
//!
//! The highest supported tier is detected once at runtime ([`detected_isa`]).
//! [`PlannerOptions::isa_cap`] or the `FASTFFT_ISA_CAP` environment
//! variable (`scalar`, `neon` on AArch64, `sse2`, `avx2`, `avx512-ymm`,
//! `avx512`) can only lower it. Cargo features `avx512`, `avx2`, `sse2` and
//! `neon` (default on) choose which tiers are compiled in on their respective
//! architectures. An x86 cap on AArch64 preserves the local detected tier.

pub use num_complex;
pub use num_traits;

mod api;
mod codelets;
mod engine;
mod fft;
mod isa;
mod large_dispatch;
mod measure;
mod plan;
mod planner;
mod scratch;
mod small_dispatch;
mod smooth_dispatch;
mod twiddle;

#[cfg(feature = "tuning")]
#[doc(hidden)]
pub mod tuning;

pub use api::{Direction, Fft, FftDirection, FftNum, Length};
pub use isa::{Isa, detected_isa};
pub use planner::{FftPlanner, PlanMode, PlannerOptions};

#[cfg(test)]
mod diagnostic;
#[cfg(test)]
mod specialized_tests;
#[cfg(test)]
mod tests;

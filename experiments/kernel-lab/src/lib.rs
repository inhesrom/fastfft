//! kernel-lab: throwaway M2 experiments comparing internal layouts, vector
//! widths and radices for a power-of-two Stockham engine (x86_64 only).
//! The winning design is rebuilt through the codelet generator in M3.

#![cfg(target_arch = "x86_64")]
#![allow(
    clippy::all,
    clippy::undocumented_unsafe_blocks,
    unsafe_op_in_unsafe_fn,
    missing_debug_implementations
)]

pub mod codelets;
pub mod cplx;
pub mod dit;
pub mod engine;
pub mod isa;
pub mod simd;

/// The library's generated codelets, shared with the lab.
#[path = "../../../crates/fastfft/src/codelets/generated/mod.rs"]
#[allow(dead_code)]
pub(crate) mod generated;

pub use engine::{LabFloat, Layout, Plan, Tier};

/// All variants: (name, layout, tier, max radix).
pub fn variants() -> Vec<(String, Layout, Tier, usize)> {
    let mut v = Vec::new();
    for (ln, l) in [("inter", Layout::Inter), ("split", Layout::Split)] {
        for (tn, t) in [
            ("avx512", Tier::Avx512),
            ("avx512ymm", Tier::Avx512Ymm),
            ("avx2", Tier::Avx2),
        ] {
            for r in [8usize, 16] {
                v.push((format!("{ln}-{tn}-r{r}"), l, t, r));
            }
        }
    }
    v
}

/// Parses `lab/<layout>-<tier>-r<radix>`.
pub fn parse_variant(name: &str) -> Option<(Layout, Tier, usize)> {
    let name = name.strip_prefix("lab/").unwrap_or(name);
    variants()
        .into_iter()
        .find(|(n, ..)| n == name)
        .map(|(_, l, t, r)| (l, t, r))
}

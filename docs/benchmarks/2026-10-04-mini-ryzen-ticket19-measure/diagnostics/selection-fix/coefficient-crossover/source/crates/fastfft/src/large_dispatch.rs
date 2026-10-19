//! Cache-scaled large power-of-two choices, calibrated on Zen 4 (tickets 14/16).
//! Per-family tuning and the general cost model remain tickets 18 and 27.
use crate::engine::Shape;
use crate::isa::Isa;
use crate::isa::cache::CacheSizes;
use crate::planner::{Candidate, CandidateKernel};

pub(super) fn preferred(n: usize, cap: Isa, f64_: bool, cache: CacheSizes) -> Option<Candidate> {
    // The ticket 14 arena crossover was eight L2 capacities (8 MiB on Zen 4),
    // well beyond the provisional L2/4 candidate threshold. Scale in bytes
    // so f32 and f64 switch at the same working-set size.
    let complex_bytes = if f64_ { 16 } else { 8 };
    let bytes = n.saturating_mul(complex_bytes);
    let threshold = cache.l2.saturating_mul(8);
    if !n.is_power_of_two() || n <= 16 || bytes < threshold || cap < Isa::Avx512Ymm {
        return None;
    }
    let isa = if cap >= Isa::Avx512 && (f64_ || n >= 1 << 21) {
        Isa::Avx512
    } else {
        Isa::Avx512Ymm
    };
    if !crate::isa::available(isa) {
        return None;
    }
    let bits = n.ilog2() as usize;
    let mut a_bits = bits / 2;
    // A balanced split sometimes adds an entire radix-8 panel pass. Move
    // one dimension to a multiple of three bits only when it saves a pass:
    // 2^20 -> 512 x 2048; 2^21 -> 512 x 4096.
    if a_bits.div_ceil(3) + (bits - a_bits).div_ceil(3) > bits.div_ceil(3) {
        a_bits -= a_bits % 3;
    }
    let a = 1 << a_bits;
    let lanes = match (isa, f64_) {
        (Isa::Avx512, false) => 16,
        (Isa::Avx512, true) | (Isa::Avx512Ymm, false) => 8,
        _ => 4,
    };
    Some(Candidate {
        kernel: CandidateKernel::FourStep,
        shape: Shape { isa, lanes },
        radices: vec![a, n / a],
        cost: 0.0,
    })
}

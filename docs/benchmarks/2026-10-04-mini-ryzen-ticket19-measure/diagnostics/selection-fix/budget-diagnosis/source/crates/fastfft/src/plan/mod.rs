//! Measured production-kernel costs and compact Estimate recipes.
mod tables {
    pub(super) mod zen4;
}

use crate::engine::Shape;
use crate::isa::Isa;
use crate::planner::{Candidate, CandidateKernel};

/// Nanoseconds per complex element, including the production pass entry point.
#[derive(Clone, Copy)]
pub(crate) struct PassCost {
    pub f64_: bool,
    pub isa: Isa,
    /// 0 = first (interleaved input), 1 = twiddled, 2 = final transpose.
    pub kind: u8,
    pub radix: usize,
    pub ns: f64,
}

/// Whole-transform calibration accounts for fixed leaves, tails and cache effects
/// that a sum of isolated passes cannot predict accurately.
#[derive(Clone, Copy)]
pub(crate) struct Recipe {
    pub n: usize,
    pub f64_: bool,
    pub cap: Isa,
    pub kernel: CandidateKernel,
    pub isa: Isa,
    pub lanes: usize,
    pub radices: &'static [usize],
    pub ns: f64,
}

/// Whole-Stockham / isolated-pass cost ratio at a measured cache footprint.
#[derive(Clone, Copy)]
pub(crate) struct StockhamScale {
    pub n: usize,
    pub f64_: bool,
    pub isa: Isa,
    pub lanes: usize,
    pub scale: f64,
}

pub(crate) fn calibrated() -> bool {
    crate::isa::cache::is_calibrated_zen4()
}

fn lookup(n: usize, cap: Isa, f64_: bool) -> Option<&'static Recipe> {
    if !calibrated() {
        return None;
    }
    tables::zen4::RECIPES
        .binary_search_by_key(&(f64_, n, cap), |r| (r.f64_, r.n, r.cap))
        .ok()
        .map(|i| &tables::zen4::RECIPES[i])
        .filter(|r| {
            crate::isa::available(r.isa)
                && (r.kernel != CandidateKernel::InterleavedSmall || cfg!(feature = "avx2"))
        })
}

pub(crate) fn execution_ns(n: usize, cap: Isa, f64_: bool) -> Option<f64> {
    lookup(n, cap, f64_).map(|r| r.ns)
}

pub(crate) fn recipe(n: usize, cap: Isa, f64_: bool) -> Option<Candidate> {
    lookup(n, cap, f64_).map(|r| Candidate {
        kernel: r.kernel,
        shape: Shape {
            isa: r.isa,
            lanes: r.lanes,
        },
        radices: r.radices.to_vec(),
        cost: r.ns / n as f64,
    })
}

// Compile sparse measurements into direct indices: no table scan or mutable
// process-wide plan cache on Estimate's dynamic-programming path.
type Costs = [[[[f64; 17]; 3]; 5]; 2];
const COSTS: Costs = {
    let mut costs = [[[[0.0; 17]; 3]; 5]; 2];
    let mut i = 0;
    while i < tables::zen4::PASSES.len() {
        let p = tables::zen4::PASSES[i];
        costs[p.f64_ as usize][p.isa as usize][p.kind as usize][p.radix] = p.ns;
        i += 1;
    }
    costs
};

pub(crate) fn pass_cost(shape: Shape, f64_: bool, radix: usize, kind: u8) -> f64 {
    let measured = COSTS[f64_ as usize][shape.isa as usize][kind as usize][radix];
    if measured > 0.0 && calibrated() {
        return measured;
    }
    // Portable fallback: arithmetic plus memory traffic, discounted by width.
    // No Zen 4 width bias is applied to unmeasured CPU families.
    let ops = crate::codelets::op_count(radix, kind != 0) as f64 / radix as f64;
    (ops * 0.5 + 3.0) / (shape.lanes as f64).sqrt()
        + if kind == 2 {
            (shape.lanes as f64).log2()
        } else {
            0.0
        }
}

pub(crate) fn predict(n: usize, shape: Shape, f64_: bool, radices: &[usize]) -> f64 {
    let mut cost = radices
        .iter()
        .enumerate()
        .map(|(i, &r)| pass_cost(shape, f64_, r, u8::from(i != 0)))
        .sum::<f64>();
    if shape.lanes > 1 {
        let m = n / shape.lanes;
        let waste = m.div_ceil(shape.lanes) as f64 * shape.lanes as f64 / m.max(1) as f64;
        cost += pass_cost(shape, f64_, shape.lanes, 2) * waste;
    }
    (cost + 4.0 / n as f64) * stockham_scale(n, shape, f64_)
}

fn stockham_scale(n: usize, shape: Shape, f64_: bool) -> f64 {
    let bytes = n.saturating_mul(if f64_ { 16 } else { 8 });
    if n == 0 || !calibrated() || bytes < crate::isa::cache::sizes().l2 / 4 {
        return 1.0;
    }
    let lookup = |n| {
        tables::zen4::SCALES
            .binary_search_by_key(&(f64_, n, shape.isa), |r| (r.f64_, r.n, r.isa))
            .ok()
            .map(|i| &tables::zen4::SCALES[i])
            .filter(|r| r.lanes == shape.lanes)
            .map(|r| r.scale)
    };
    let lower = 1usize << n.ilog2();
    let low = lookup(lower);
    if lower == n {
        return low.unwrap_or(1.0).max(1.0);
    }
    let high = lower.checked_mul(2).and_then(lookup);
    let scale = match (low, high) {
        (Some(a), Some(b)) => a + (b - a) * (n - lower) as f64 / lower as f64,
        (Some(a), None) | (None, Some(a)) => a,
        _ => 1.0,
    };
    // Power-of-two specializations can beat the pass sum in cache, but that
    // discount does not transfer to an untabulated odd-radix decomposition.
    // Transfer only the additional whole-transform memory cost.
    scale.max(1.0)
}

/// Dynamic programming over divisors stores only a cost and the next radix.
/// Reconstruct once, instead of cloning a vector at every search edge.
pub(crate) fn radices(m: usize, shape: Shape, f64_: bool, max_pow2: usize) -> Option<Vec<usize>> {
    fn solve(
        m: usize,
        first: bool,
        shape: Shape,
        f64_: bool,
        max: usize,
        memo: &mut Vec<(usize, f64, usize)>,
    ) -> (f64, usize) {
        if m == 1 {
            return (0.0, 0);
        }
        if !first && let Some(&(_, cost, r)) = memo.iter().find(|x| x.0 == m) {
            return (cost, r);
        }
        let mut best = (f64::INFINITY, 0);
        for r in 2usize..=16 {
            if !m.is_multiple_of(r) || (r.is_power_of_two() && r > max) {
                continue;
            }
            let tail = solve(m / r, false, shape, f64_, max, memo).0;
            let cost = pass_cost(shape, f64_, r, u8::from(!first)) + tail;
            if cost < best.0 {
                best = (cost, r);
            }
        }
        if !first {
            memo.push((m, best.0, best.1));
        }
        best
    }
    let mut memo = Vec::new();
    let (_, mut r) = solve(m, true, shape, f64_, max_pow2, &mut memo);
    let mut remaining = m;
    let mut result = Vec::new();
    while remaining > 1 {
        if r == 0 {
            return None;
        }
        result.push(r);
        remaining /= r;
        r = memo.iter().find(|x| x.0 == remaining).map_or(0, |x| x.2);
    }
    Some(result)
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn calibrated_recipes_are_ordered_and_have_valid_decompositions() {
        let mut previous = None;
        for r in tables::zen4::RECIPES {
            let key = (r.f64_, r.n, r.cap);
            assert!(
                previous.is_none_or(|p| p < key),
                "duplicate or unsorted recipe"
            );
            previous = Some(key);
            assert!(r.ns.is_finite() && r.ns > 0.0);
            assert!(r.isa <= r.cap);
            let shape = Shape {
                isa: r.isa,
                lanes: r.lanes,
            };
            let product: usize = r.radices.iter().product();
            match r.kernel {
                CandidateKernel::Stockham => {
                    assert_eq!(product * r.lanes, r.n);
                    assert!(r.radices.iter().all(|&r| (2..=16).contains(&r)));
                }
                CandidateKernel::FourStep | CandidateKernel::RectangularSmall => {
                    assert_eq!(product, r.n);
                    assert_eq!(r.radices.len(), 2);
                }
                CandidateKernel::GenericSmall => {
                    assert!(crate::engine::small::eligible(r.n, shape));
                }
                CandidateKernel::InterleavedSmall => assert_eq!(product * r.lanes, r.n),
            }
        }
        let mut previous = None;
        for s in tables::zen4::SCALES {
            let key = (s.f64_, s.n, s.isa);
            assert!(previous.is_none_or(|p| p < key));
            previous = Some(key);
            assert!(s.n.is_power_of_two());
            assert!(s.scale.is_finite() && s.scale > 0.0);
        }
    }

    #[test]
    fn radix_search_rejects_rough_lengths_and_preserves_smooth_lengths() {
        for f64_ in [false, true] {
            for shape in crate::engine::shapes(crate::isa::effective_isa(None), f64_) {
                for m in [1, 2, 6, 24, 125, 143, 210, 1000, 16384, 65536, 17, 31, 1031] {
                    let result = radices(
                        m,
                        shape,
                        f64_,
                        if shape.isa == Isa::Scalar { 16 } else { 8 },
                    );
                    assert_eq!(result.is_some(), crate::planner::is_smooth(m));
                    if let Some(rs) = result {
                        assert_eq!(rs.iter().product::<usize>(), m);
                    }
                }
            }
        }
    }
}

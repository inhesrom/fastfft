//! `FftPlanner`: chooses engine, tier, vector width and radices.

use crate::api::{Fft, FftDirection, FftNum};
use crate::engine::bluestein::BluesteinPlan;
use crate::engine::stockham::StockhamPlan;
use crate::engine::{Shape, fixed, fourstep, shapes, small};
use crate::fft::{FftImpl, Kernel};
use crate::isa::{Isa, Precision, effective_isa};
use std::collections::HashMap;
use std::sync::Arc;
use std::time::Duration;

/// How much effort planning spends.
#[non_exhaustive]
#[derive(Clone, Copy, Debug, Default, PartialEq, Eq)]
pub enum PlanMode {
    /// Pick the plan with the lowest predicted cost (fast, deterministic).
    #[default]
    Estimate,
    /// Compare up to eight candidates with Estimate using aligned buffers,
    /// all three placements, and representative batches for small powers of
    /// two. Keep Estimate unless another candidate clearly improves every
    /// measured workload. Choices are cached just like Estimate plans.
    Measure {
        /// Search budget for one plan. Zero selects Estimate. An in-progress
        /// construction or transform cannot be interrupted; a short budget
        /// can leave too few complete measurements to change the choice.
        time_limit: Duration,
    },
}

/// Planner configuration.
#[non_exhaustive]
#[derive(Clone, Copy, Debug, Default, PartialEq, Eq)]
pub struct PlannerOptions {
    /// Planning effort.
    pub mode: PlanMode,
    /// Highest instruction-set tier to use. Can only lower the detected tier
    /// (as can the `FASTFFT_ISA_CAP` environment variable).
    pub isa_cap: Option<Isa>,
}

impl PlannerOptions {
    /// Options with the given instruction-set cap.
    pub fn with_isa_cap(mut self, isa: Isa) -> Self {
        self.isa_cap = Some(isa);
        self
    }

    /// Options with the given plan mode.
    pub fn with_mode(mut self, mode: PlanMode) -> Self {
        self.mode = mode;
        self
    }
}

/// Plans FFTs and caches them by length and direction, like RustFFT's
/// `FftPlanner`.
pub struct FftPlanner<T: FftNum> {
    options: PlannerOptions,
    isa: Isa,
    cache: HashMap<(usize, FftDirection), CachedPlan<T>>,
}

struct CachedPlan<T: FftNum> {
    fft: Arc<dyn Fft<T>>,
    description: Description,
    batch: Option<Shape>,
}

enum Description {
    Identity,
    Candidate(Candidate),
    Bluestein { m: usize, isa: Isa },
}

impl<T: FftNum> std::fmt::Debug for FftPlanner<T> {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        f.debug_struct("FftPlanner")
            .field("options", &self.options)
            .field("isa", &self.isa)
            .field("cached", &self.cache.len())
            .finish()
    }
}

impl<T: FftNum> Default for FftPlanner<T> {
    fn default() -> Self {
        Self::new()
    }
}

/// Largest prime handled by codelets; larger prime factors use Bluestein.
const MAX_CODELET_PRIME: usize = 13;
/// Radices with generated codelets usable in Stockham passes.
const PASS_RADICES: &[usize] = &[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16];

pub(crate) fn factorize(mut n: usize) -> Vec<usize> {
    let mut f = Vec::new();
    let mut p = 2;
    while p * p <= n {
        while n.is_multiple_of(p) {
            f.push(p);
            n /= p;
        }
        p += 1;
    }
    if n > 1 {
        f.push(n);
    }
    f
}

pub(crate) fn is_smooth(n: usize) -> bool {
    factorize(n).iter().all(|&p| p <= MAX_CODELET_PRIME)
}

/// Relative cost per element of one pass of radix `r` (FP ops per element
/// from the generated codelets plus a memory term).
fn pass_cost(r: usize, twiddled: bool) -> f64 {
    let ops = crate::codelets::op_count(r, twiddled) as f64 / r as f64;
    // split layout: loads/stores of 2 reals per element per pass, weighted
    ops * 0.5 + 3.0
}

/// Splits `m` into codelet radices (each <= `max_pow2` for powers of two),
/// minimizing passes first and estimated arithmetic second.
pub(crate) fn choose_radices(m: usize, max_pow2: usize) -> Option<Vec<usize>> {
    if m == 1 {
        return Some(Vec::new());
    }
    // Dynamic programming over divisors: best[(d)] = (passes, cost, radices)
    type Best = Option<(usize, f64, Vec<usize>)>;
    let mut memo: HashMap<usize, Best> = HashMap::new();
    fn go(m: usize, max_pow2: usize, first: bool, memo: &mut HashMap<usize, Best>) -> Best {
        if m == 1 {
            return Some((0, 0.0, Vec::new()));
        }
        if !first && let Some(v) = memo.get(&m) {
            return v.clone();
        }
        let mut best: Best = None;
        for &r in PASS_RADICES {
            if !m.is_multiple_of(r) || (r.is_power_of_two() && r > max_pow2) {
                continue;
            }
            if let Some((p, c, rs)) = go(m / r, max_pow2, false, memo) {
                let cand = (p + 1, c + pass_cost(r, !first), {
                    let mut v = vec![r];
                    v.extend(rs);
                    v
                });
                let better = match &best {
                    None => true,
                    Some(b) => cand.0 < b.0 || (cand.0 == b.0 && cand.1 < b.1),
                };
                if better {
                    best = Some(cand);
                }
            }
        }
        if !first {
            memo.insert(m, best.clone());
        }
        best
    }
    go(m, max_pow2, true, &mut memo).map(|b| b.2)
}

/// Private engine identity; narrow Small shapes never enter Stockham enumeration.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub(crate) enum CandidateKernel {
    Stockham,
    FourStep,
    GenericSmall,
    InterleavedSmall,
    RectangularSmall,
}

impl CandidateKernel {
    pub(crate) fn name(self) -> &'static str {
        match self {
            Self::Stockham => "stockham",
            Self::FourStep => "fourstep",
            Self::GenericSmall => "generic",
            Self::InterleavedSmall => "interleaved",
            Self::RectangularSmall => "rectangular",
        }
    }
    pub(crate) fn is_small(self) -> bool {
        matches!(
            self,
            Self::GenericSmall | Self::InterleavedSmall | Self::RectangularSmall
        )
    }
    /// Fixed-size leaves kept inside Measure's candidate window.
    pub(crate) fn is_leaf(self) -> bool {
        self == Self::InterleavedSmall
    }
}

/// A candidate configuration with its predicted cost.
#[derive(Clone, Debug)]
pub(crate) struct Candidate {
    pub kernel: CandidateKernel,
    pub shape: Shape,
    pub radices: Vec<usize>,
    pub cost: f64,
}

pub(crate) fn stockham_candidates(n: usize, isa: Isa, f64_: bool) -> Vec<Candidate> {
    let mut v = Vec::new();
    let mut all_shapes = shapes(isa, f64_);
    if isa >= Isa::Avx2 && crate::isa::available(Isa::Avx2) {
        let avx2 = Shape {
            isa: Isa::Avx2,
            lanes: if f64_ { 4 } else { 8 },
        };
        if !all_shapes.contains(&avx2) {
            all_shapes.push(avx2);
        }
    }
    for shape in all_shapes {
        let l = shape.lanes;
        if !n.is_multiple_of(l) || (l > 1 && n < 2 * l) {
            continue;
        }
        // 16 split data registers fit only with 32 architectural registers.
        let max_pow2 = match shape.isa {
            Isa::Scalar => 16,
            _ => 8,
        };
        let m = n / l;
        if let Some(r) = crate::plan::radices(m, shape, f64_, max_pow2) {
            let cost = crate::plan::predict(n, shape, f64_, &r);
            v.push(Candidate {
                kernel: CandidateKernel::Stockham,
                shape,
                radices: r,
                cost,
            });
        }
    }
    v.sort_by(|a, b| a.cost.total_cmp(&b.cost));
    v
}

/// Price two inner FFTs and a pointwise pass over `2^a * {1, 3, 5, 9}`
/// candidates. Kernel symmetry permits M=2N-2: the only wrapped collision
/// is between -(N-1) and N-1, whose chirp values are identical.
fn bluestein_inner(n: usize, isa: Isa, f64_: bool) -> usize {
    let min = (n - 1).checked_mul(2).expect("FFT length is too large");
    [1usize, 3, 5, 9]
        .iter()
        .filter_map(|&mult| {
            let mut m = mult;
            while m < min {
                m = m.checked_mul(2)?;
            }
            let inner = crate::plan::execution_ns(m, isa, f64_).unwrap_or_else(|| {
                let c = estimate(m, isa, f64_).expect("smooth inner candidate");
                let per_element = if c.cost > 0.0 {
                    c.cost
                } else {
                    let radices = choose_radices(m / c.shape.lanes, 8).unwrap_or_default();
                    crate::plan::predict(m, c.shape, f64_, &radices)
                        * if c.kernel.is_small() { 0.5 } else { 1.0 }
                };
                m as f64 * per_element
            });
            // Three products and their buffer traffic, in the same ns units
            // as the pass/whole-transform tables. Scalar has no SIMD overlap.
            let product = if isa == Isa::Scalar {
                2.0
            } else if f64_ {
                0.5
            } else {
                0.25
            };
            Some((m, 2.0 * inner + product * m as f64))
        })
        .min_by(|a, b| a.1.total_cmp(&b.1).then(a.0.cmp(&b.0)))
        .expect("FFT length is too large")
        .0
}

impl<T: FftNum> FftPlanner<T> {
    /// A planner with default options (`Estimate`, detected tier).
    pub fn new() -> Self {
        Self::with_options(PlannerOptions::default())
    }

    /// A planner with the given options.
    pub fn with_options(options: PlannerOptions) -> Self {
        FftPlanner {
            options,
            isa: effective_isa(options.isa_cap),
            cache: HashMap::new(),
        }
    }

    /// The instruction-set tier this planner uses.
    pub fn isa(&self) -> Isa {
        self.isa
    }

    /// Plans an FFT of `len` in `direction`.
    pub fn plan_fft(&mut self, len: usize, direction: FftDirection) -> Arc<dyn Fft<T>> {
        self.plan_impl(len, direction)
    }

    /// Plans a forward FFT.
    pub fn plan_fft_forward(&mut self, len: usize) -> Arc<dyn Fft<T>> {
        self.plan_fft(len, FftDirection::Forward)
    }

    /// Plans an inverse (unnormalized) FFT.
    pub fn plan_fft_inverse(&mut self, len: usize) -> Arc<dyn Fft<T>> {
        self.plan_fft(len, FftDirection::Inverse)
    }

    /// Describes the cached plan's engine, actual ISA, radix decomposition and
    /// scratch requirements in complex elements. `scratch` is in-place;
    /// `scratch_oop` and `scratch_immutable` describe the other placements.
    /// Stockham's `radices` are followed by its lane transform (`L`). FourStep
    /// lists the two panel schedules separated by `/`. Bluestein reports its
    /// pointwise ISA and includes the inner FFT's complete description.
    ///
    /// Creates the plan if necessary. The human-readable format is diagnostic
    /// and may be extended; it is not a stable serialization format.
    pub fn describe_plan(&mut self, len: usize, direction: FftDirection) -> String {
        self.plan_impl(len, direction);
        self.describe_cached(len, direction)
    }

    fn describe_cached(&self, len: usize, dir: FftDirection) -> String {
        let p = &self.cache[&(len, dir)];
        let scratch = format!(
            "scratch={} scratch_oop={} scratch_immutable={}",
            p.fft.get_inplace_scratch_len(),
            p.fft.get_outofplace_scratch_len(),
            p.fft.get_immutable_scratch_len(),
        );
        let radices = |rs: &[usize]| {
            if rs.is_empty() {
                "none".to_string()
            } else {
                rs.iter()
                    .map(usize::to_string)
                    .collect::<Vec<_>>()
                    .join("x")
            }
        };
        let mut text = match &p.description {
            Description::Identity => format!("identity scalar n={len} radices=none {scratch}"),
            Description::Bluestein { m, isa } => format!(
                "bluestein {isa} n={len} m={m} radices=inner {scratch} inner=[{}]",
                self.describe_cached(*m, FftDirection::Forward)
            ),
            Description::Candidate(c) if c.kernel.is_small() => {
                let (a, b) = if c.kernel == CandidateKernel::RectangularSmall {
                    (c.radices[0], c.radices[1])
                } else if c.kernel == CandidateKernel::InterleavedSmall {
                    small::interleaved_decomposition(len)
                } else {
                    (len / c.shape.lanes, c.shape.lanes)
                };
                format!(
                    "small {} n={len} decomposition={a}x{b} radices={a}x{b} {scratch} kernel={}",
                    c.shape.isa,
                    c.kernel.name()
                )
            }
            Description::Candidate(c) if c.kernel == CandidateKernel::FourStep => format!(
                "fourstep {} split L={} decomposition={}x{} radices={}/{} {scratch}",
                c.shape.isa,
                c.shape.lanes,
                c.radices[0],
                c.radices[1],
                radices(&choose_radices(c.radices[0], 8).expect("smooth panel")),
                radices(&choose_radices(c.radices[1], 8).expect("smooth panel")),
            ),
            Description::Candidate(c) => format!(
                "stockham {} split L={} radices={} {scratch}",
                c.shape.isa,
                c.shape.lanes,
                radices(&c.radices)
            ),
        };
        if let Some(shape) = p.batch {
            let stages = if len == 8 {
                "8".to_string()
            } else if len <= 256 {
                let (a, b) = small::interleaved_decomposition(len);
                format!("{a}x{b}")
            } else {
                "fallback".to_string()
            };
            text.push_str(&format!(
                " batch={} lanes={} batch_radices={stages}",
                shape.isa, shape.lanes
            ));
        }
        text
    }

    fn plan_impl(&mut self, len: usize, dir: FftDirection) -> Arc<dyn Fft<T>> {
        if let Some(p) = self.cache.get(&(len, dir)) {
            return Arc::clone(&p.fft);
        }
        let plan = self.build(len, dir);
        let fft = Arc::clone(&plan.fft);
        self.cache.insert((len, dir), plan);
        fft
    }

    fn build(&mut self, len: usize, dir: FftDirection) -> CachedPlan<T> {
        if len <= 1 {
            return CachedPlan {
                fft: Arc::new(FftImpl::new(len, dir, Kernel::Identity)),
                description: Description::Identity,
                batch: None,
            };
        }

        let f64_ = T::precision() == Precision::F64;
        if is_smooth(len)
            && let Some(c) = estimate(len, self.isa, f64_)
        {
            // Construct the incumbent before exploratory allocations.
            // Even an unchanged recipe can otherwise acquire different
            // coefficient placement and lose to the Estimate executable.
            let (fft, batch) = crate::engine::batch::wrap(build_candidate(len, dir, &c), self.isa);
            let (c, fft) = if let PlanMode::Measure { time_limit } = self.options.mode
                && !time_limit.is_zero()
            {
                let cands = candidates(len, self.isa, f64_);
                crate::measure::pick::<T>(len, dir, self.isa, fft, &cands, time_limit)
                    .expect("Estimate is included")
            } else {
                (c, fft)
            };
            return CachedPlan {
                fft,
                description: Description::Candidate(c),
                batch,
            };
        }
        // Bluestein over a fast inner length.
        let m = bluestein_inner(len, self.isa, f64_);
        let inner = self.plan_impl(m, FftDirection::Forward);
        let b = BluesteinPlan::new(len, inner, self.isa);
        let isa = b.isa();
        CachedPlan {
            fft: Arc::new(FftImpl::new(len, dir, Kernel::Bluestein(b))),
            description: Description::Bluestein { m, isa },
            batch: None,
        }
    }
}

/// Builds a Stockham plan for an explicit candidate (used by Measure mode).
pub(crate) fn build_candidate<T: FftNum>(
    len: usize,
    dir: FftDirection,
    c: &Candidate,
) -> Arc<dyn Fft<T>> {
    match c.kernel {
        CandidateKernel::FourStep => return Arc::new(fourstep_candidate(len, dir, c)),
        CandidateKernel::GenericSmall => return small::build(len, dir, c.shape),
        CandidateKernel::InterleavedSmall => return small::build_interleaved(len, dir, c.shape),
        CandidateKernel::RectangularSmall => {
            return small::build_rectangular(dir, c.shape, c.radices[0], c.radices[1]);
        }
        CandidateKernel::Stockham => {}
    }
    if let Some(fft) = fixed::build(len, dir, c.shape, &c.radices) {
        return fft;
    }
    let plan = StockhamPlan::<T>::new(len, c.shape.lanes, c.radices.clone());
    Arc::new(FftImpl::new(
        len,
        dir,
        Kernel::Stockham {
            shape: c.shape,
            plan,
        },
    ))
}

fn fourstep_candidate<T: FftNum>(len: usize, dir: FftDirection, c: &Candidate) -> FftImpl<T> {
    let plan = fourstep::FourStepPlan::new(len, c.radices[0], c.shape.lanes);
    FftImpl::new(
        len,
        dir,
        Kernel::FourStep {
            shape: c.shape,
            plan,
        },
    )
}

/// Estimate never enumerates alternatives when a calibrated recipe is known.
pub(crate) fn estimate(n: usize, isa: Isa, f64_: bool) -> Option<Candidate> {
    if let Some(c) = crate::plan::recipe(n, isa, f64_) {
        return Some(c);
    }
    if let Some(c) = crate::large_dispatch::preferred(n, isa, f64_, crate::isa::cache::sizes()) {
        return Some(c);
    }
    if let Some((kernel, shape, radices)) = crate::smooth_dispatch::preferred(n, isa, f64_)
        && (kernel != CandidateKernel::InterleavedSmall || cfg!(feature = "avx2"))
    {
        return Some(Candidate {
            kernel,
            shape,
            radices: radices.to_vec(),
            cost: 0.0,
        });
    }
    if let Some((kernel, shape)) = crate::small_dispatch::preferred(n, isa, f64_)
        && kernel.is_small()
        && crate::isa::available(shape.isa)
        && (kernel != CandidateKernel::GenericSmall || small::eligible(n, shape))
    {
        return Some(Candidate {
            kernel,
            shape,
            radices: vec![n / shape.lanes],
            cost: 0.0,
        });
    }
    let cs = stockham_candidates(n, isa, f64_);
    cs.into_iter().next()
}

/// Keep the actual Estimate first, including on uncalibrated CPUs and when
/// features omit a measured kernel. Measure always times this candidate.
pub(crate) fn candidates(n: usize, isa: Isa, f64_: bool) -> Vec<Candidate> {
    let mut result = candidates_with_cache(n, isa, f64_, crate::isa::cache::sizes());
    if let Some(c) = estimate(n, isa, f64_) {
        result.retain(|x| !(x.kernel == c.kernel && x.shape == c.shape && x.radices == c.radices));
        result.insert(0, c);
    }
    result
}

fn candidates_with_cache(
    n: usize,
    isa: Isa,
    f64_: bool,
    cache: crate::isa::cache::CacheSizes,
) -> Vec<Candidate> {
    let mut stockham = stockham_candidates(n, isa, f64_);
    let direct = [Isa::Avx2, Isa::Avx512Ymm]
        .into_iter()
        .filter(|&i| i <= isa && crate::isa::available(i))
        .map(|isa| Shape { isa, lanes: 1 });
    let mut smalls: Vec<_> = shapes(isa, f64_)
        .into_iter()
        .chain(direct)
        .filter(|&shape| small::eligible(n, shape))
        .map(|shape| Candidate {
            kernel: CandidateKernel::GenericSmall,
            shape,
            radices: vec![n / shape.lanes],
            cost: 0.0,
        })
        .collect();
    // Seed with the existing Stockham choice; only the small-range table
    // changes Estimate. Keep the opposite engine among Measure's first eight.
    let mut result = Vec::new();
    result.append(&mut stockham);
    result.append(&mut smalls);
    result.extend(
        small::interleaved_shapes(n, isa, f64_)
            .into_iter()
            .map(|shape| Candidate {
                kernel: CandidateKernel::InterleavedSmall,
                shape,
                radices: vec![n / shape.lanes],
                cost: 0.0,
            }),
    );
    if let Some((kernel, shape)) = crate::small_dispatch::preferred(n, isa, f64_)
        && let Some(index) = result
            .iter()
            .position(|c| c.kernel == kernel && c.shape == shape)
    {
        let chosen = result.remove(index);
        result.insert(0, chosen);
    }
    // Offer panels once two transform buffers occupy half of L2. This is
    // the original plan's exploration threshold; the measured Estimate
    // crossover below is later. Odd dimensions still need SIMD panels at
    // smaller sizes, independently of cache capacity.
    let ss = shapes(isa, f64_);
    let bytes = n.saturating_mul(if f64_ { 16 } else { 8 });
    if !result.is_empty()
        && n > 16
        && (bytes >= cache.l2 / 4 || ss.first().is_some_and(|s| !n.is_multiple_of(s.lanes)))
        && let Some(a) = fourstep::decomposition(n)
    {
        for (offset, shape) in ss.into_iter().filter(|s| s.lanes > 1).enumerate() {
            result.insert(
                1 + offset,
                Candidate {
                    kernel: CandidateKernel::FourStep,
                    shape,
                    radices: vec![a, n / a],
                    cost: 0.0,
                },
            );
        }
    }
    result.splice(
        2.min(result.len())..2.min(result.len()),
        small::rectangular_candidates(n, isa, f64_),
    );
    // Keep the incumbent first while exposing two-pass orderings for the
    // transition sizes. The original cost model does not price register spills.
    if matches!(n, 108 | 120 | 240 | 504 | 720) {
        for shape in shapes(isa, f64_) {
            if !n.is_multiple_of(shape.lanes) {
                continue;
            }
            let m = n / shape.lanes;
            for &a in PASS_RADICES {
                if !m.is_multiple_of(a) {
                    continue;
                }
                let b = m / a;
                if !PASS_RADICES.contains(&b)
                    || (shape.isa != Isa::Scalar
                        && [a, b].iter().any(|r| r.is_power_of_two() && *r > 8))
                {
                    continue;
                }
                let radices = vec![a, b];
                if !result.iter().any(|c| {
                    c.kernel == CandidateKernel::Stockham
                        && c.shape == shape
                        && c.radices == radices
                }) {
                    result.push(Candidate {
                        kernel: CandidateKernel::Stockham,
                        shape,
                        radices,
                        cost: f64::INFINITY,
                    });
                }
            }
        }
    }
    if let Some((kernel, shape, radices)) = crate::smooth_dispatch::preferred(n, isa, f64_)
        && let Some(index) = result
            .iter()
            .position(|c| c.kernel == kernel && c.shape == shape && c.radices == radices)
    {
        let chosen = result.remove(index);
        result.insert(0, chosen);
    }
    if let Some(first) = result.first()
        && let Some(index) = result
            .iter()
            .position(|c| c.kernel.is_small() != first.kernel.is_small())
    {
        let alternative = result.remove(index);
        result.insert(1, alternative);
    }
    // Retain the original Stockham estimate immediately behind the measured
    // large-N choice, so Measure can still compare the two engines.
    if let Some(chosen) = crate::large_dispatch::preferred(n, isa, f64_, cache) {
        if let Some(index) = result.iter().position(|c| {
            c.kernel == chosen.kernel && c.shape == chosen.shape && c.radices == chosen.radices
        }) {
            result.remove(index);
        }
        result.insert(0, chosen);
    }
    // Specializations and the incumbent must fit in Measure's unchanged
    // eight-candidate window. Never evict Estimate or the opposite engine.
    let mut slot = 2.min(result.len());
    while let Some(index) = result
        .iter()
        .enumerate()
        .skip(slot)
        .find_map(|(i, c)| c.kernel.is_leaf().then_some(i))
    {
        let candidate = result.remove(index);
        result.insert(slot, candidate);
        slot += 1;
    }
    if let Some((kernel, shape)) = crate::small_dispatch::incumbent(n, isa, f64_)
        && let Some(index) = result
            .iter()
            .position(|c| c.kernel == kernel && c.shape == shape)
        && index >= 8
    {
        let candidate = result.remove(index);
        result.insert(slot.min(7), candidate);
    }
    result
}

#[cfg(test)]
mod cache_tests {
    use super::*;
    use crate::isa::cache::CacheSizes;

    #[test]
    fn descriptions_cover_candidate_engines_without_dispatch_assumptions() {
        fn check<T: FftNum>() {
            let isa = effective_isa(None);
            let f64_ = T::precision() == Precision::F64;
            let mut forced = vec![
                (
                    3,
                    Candidate {
                        kernel: CandidateKernel::GenericSmall,
                        shape: Shape {
                            isa: Isa::Scalar,
                            lanes: 1,
                        },
                        radices: vec![3],
                        cost: 0.0,
                    },
                    "small scalar n=3 decomposition=3x1 radices=3x1",
                ),
                (
                    256,
                    Candidate {
                        kernel: CandidateKernel::Stockham,
                        shape: Shape {
                            isa: Isa::Scalar,
                            lanes: 1,
                        },
                        radices: vec![16, 16],
                        cost: 0.0,
                    },
                    "stockham scalar split L=1 radices=16x16",
                ),
                (
                    48,
                    Candidate {
                        kernel: CandidateKernel::FourStep,
                        shape: Shape {
                            isa: Isa::Scalar,
                            lanes: 1,
                        },
                        radices: vec![6, 8],
                        cost: 0.0,
                    },
                    "fourstep scalar split L=1 decomposition=6x8 radices=6/8",
                ),
            ];
            for n in [2, 4, 6, 8, 9, 16, 18, 24, 32, 36, 48, 64, 128, 256] {
                for shape in small::interleaved_shapes(n, isa, f64_) {
                    forced.push((
                        n,
                        Candidate {
                            kernel: CandidateKernel::InterleavedSmall,
                            shape,
                            radices: vec![n / shape.lanes],
                            cost: 0.0,
                        },
                        "small",
                    ));
                }
            }
            for c in small::rectangular_candidates(48, isa, f64_) {
                forced.push((48, c, "small"));
            }
            for (n, c, prefix) in forced {
                for dir in [FftDirection::Forward, FftDirection::Inverse] {
                    let fft = build_candidate::<T>(n, dir, &c);
                    let mut p = FftPlanner::<T>::new();
                    p.cache.insert(
                        (n, dir),
                        CachedPlan {
                            fft: Arc::clone(&fft),
                            description: Description::Candidate(c.clone()),
                            batch: None,
                        },
                    );
                    let text = p.describe_plan(n, dir);
                    assert!(text.starts_with(prefix), "{text}");
                    assert!(text.contains("radices="), "{text}");
                    if c.kernel.is_small() {
                        assert!(
                            text.contains(&format!("kernel={}", c.kernel.name())),
                            "{text}"
                        );
                    }
                    if c.kernel == CandidateKernel::InterleavedSmall {
                        let expected = match n {
                            64 => Some("radices=8x8"),
                            128 => Some("radices=8x16"),
                            256 => Some("radices=16x16"),
                            _ => None,
                        };
                        if let Some(expected) = expected {
                            assert!(text.split_whitespace().any(|x| x == expected), "{text}");
                        }
                    }
                    for (name, need) in [
                        ("scratch", fft.get_inplace_scratch_len()),
                        ("scratch_oop", fft.get_outofplace_scratch_len()),
                        ("scratch_immutable", fft.get_immutable_scratch_len()),
                    ] {
                        assert!(
                            text.split_whitespace()
                                .any(|x| x == format!("{name}={need}")),
                            "{text}"
                        );
                    }
                }
            }
        }
        check::<f32>();
        check::<f64>();
    }

    #[test]
    fn cache_sizes_move_both_candidate_and_estimate_boundaries() {
        let isa = effective_isa(None);
        if isa < Isa::Avx512Ymm {
            return;
        }
        for l2 in [512 * 1024, 1024 * 1024, 2 * 1024 * 1024] {
            let cache = CacheSizes {
                l2,
                ..CacheSizes::default()
            };
            for f64_ in [false, true] {
                let bytes = if f64_ { 16 } else { 8 };
                let explore = l2 / (4 * bytes);
                let before = candidates_with_cache(explore / 2, isa, f64_, cache);
                assert!(before.iter().all(|c| c.kernel != CandidateKernel::FourStep));
                let at = candidates_with_cache(explore, isa, f64_, cache);
                assert_eq!(at[0].kernel, CandidateKernel::Stockham);
                assert!(
                    at[..8.min(at.len())]
                        .iter()
                        .any(|c| c.kernel == CandidateKernel::FourStep)
                );

                let crossover = l2 * 8 / bytes;
                let before = candidates_with_cache(crossover / 2, isa, f64_, cache);
                assert_eq!(before[0].kernel, CandidateKernel::Stockham);
                let at = candidates_with_cache(crossover, isa, f64_, cache);
                assert_eq!(at[0].kernel, CandidateKernel::FourStep);
                assert_eq!(at[1].kernel, CandidateKernel::Stockham);
                assert_eq!(at[0].radices.iter().product::<usize>(), crossover);
                assert!(at.iter().all(|c| c.shape.isa <= isa));
            }
        }
    }

    #[test]
    fn cache_policy_preserves_zen4_splits_and_lower_tier_estimates() {
        let cache = CacheSizes {
            last_level: 16 * 1024 * 1024,
            ..CacheSizes::default()
        };
        let isa = effective_isa(None);
        for f64_ in [false, true] {
            for cap in [Isa::Scalar, Isa::Sse2, Isa::Avx2]
                .into_iter()
                .filter(|&cap| cap <= isa)
            {
                let c = candidates_with_cache(1 << 20, cap, f64_, cache);
                assert_eq!(c[0].kernel, CandidateKernel::Stockham);
                assert!(c.iter().all(|c| c.shape.isa <= cap));
            }
            if isa >= Isa::Avx512Ymm {
                for (n, a) in [(1 << 20, 512), (1 << 21, 512), (1 << 24, 4096)] {
                    let c = candidates_with_cache(n, isa, f64_, cache);
                    assert_eq!(c[0].kernel, CandidateKernel::FourStep);
                    assert_eq!(c[0].radices, [a, n / a]);
                }
            }
        }
    }

    #[test]
    fn odd_simd_panels_do_not_depend_on_cache_thresholds() {
        let isa = effective_isa(None);
        if isa == Isa::Scalar {
            return;
        }
        let c = candidates_with_cache(
            1331,
            isa,
            false,
            CacheSizes {
                l2: usize::MAX,
                ..CacheSizes::default()
            },
        );
        assert!(c.iter().any(|c| c.kernel == CandidateKernel::FourStep));
    }
}

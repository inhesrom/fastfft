//! Measure candidates against Estimate on identical public execution paths.

use crate::api::{Fft, FftDirection, FftNum};
use crate::isa::Isa;
use crate::planner::{Candidate, build_candidate};
use num_complex::Complex;
use std::sync::Arc;
use std::time::{Duration, Instant};

/// The first candidate is always the actual Estimate choice.
const MAX_CANDIDATES: usize = 8;
const ROUNDS: usize = 7;
const MIN_SAMPLE: Duration = Duration::from_micros(50);
/// Close calls keep Estimate. The margin protects against timing noise and
/// placement tradeoffs; it does not relax the external 2% regression gate.
const PROMOTION_RATIO: f64 = 0.97;
const PLACEMENT_BYTES: usize = 4096;
const OFFSETS: [[usize; 3]; 3] = [[0, 0, 0], [1024, 2048, 3072], [2048, 3072, 1024]];

type Choice<T> = (Candidate, Arc<dyn Fft<T>>);

#[derive(Clone, Copy)]
enum Placement {
    InPlace,
    OutOfPlace,
    Immutable,
}

impl Placement {
    fn scratch<T: FftNum>(self, fft: &dyn Fft<T>) -> usize {
        match self {
            Self::InPlace => fft.get_inplace_scratch_len(),
            Self::OutOfPlace => fft.get_outofplace_scratch_len(),
            Self::Immutable => fft.get_immutable_scratch_len(),
        }
    }
}

const PLACEMENTS: [Placement; 3] = [
    Placement::InPlace,
    Placement::OutOfPlace,
    Placement::Immutable,
];

struct Buffers<T> {
    input: Vec<Complex<T>>,
    output: Vec<Complex<T>>,
    scratch: Vec<Complex<T>>,
    offsets: [usize; 3],
}

impl<T: FftNum> Buffers<T> {
    fn new(len: usize) -> Self {
        let zero = Complex::new(T::zero(), T::zero());
        let count =
            len + crate::fft::align_slack::<T>() + PLACEMENT_BYTES / size_of::<Complex<T>>();
        Self {
            input: vec![zero; count],
            output: vec![zero; count],
            scratch: Vec::new(),
            offsets: [0; 3],
        }
    }

    fn reserve_scratch(&mut self, a: &dyn Fft<T>, b: &dyn Fft<T>) {
        let need = PLACEMENTS
            .iter()
            .map(|p| p.scratch(a).max(p.scratch(b)))
            .max()
            .unwrap();
        self.scratch.resize(
            need + crate::fft::align_slack::<T>() + PLACEMENT_BYTES / size_of::<Complex<T>>(),
            Complex::new(T::zero(), T::zero()),
        );
    }

    fn sample(
        &mut self,
        fft: &dyn Fft<T>,
        len: usize,
        placement: Placement,
        calls: usize,
    ) -> Duration {
        let [i, o, s] = self.offsets;
        let input = &mut crate::scratch::aligned(&mut self.input)[i..i + len];
        let output = &mut crate::scratch::aligned(&mut self.output)[o..o + len];
        let scratch =
            &mut crate::scratch::aligned(&mut self.scratch)[s..s + placement.scratch(fft)];
        let start = Instant::now();
        match placement {
            Placement::InPlace => {
                for _ in 0..calls {
                    fft.process_with_scratch(input, scratch);
                }
            }
            Placement::OutOfPlace => {
                for _ in 0..calls {
                    fft.process_outofplace_with_scratch(input, output, scratch);
                }
            }
            Placement::Immutable => {
                for _ in 0..calls {
                    fft.process_immutable_with_scratch(input, output, scratch);
                }
            }
        }
        start.elapsed()
    }

    fn calibrate(
        &mut self,
        fft: &dyn Fft<T>,
        len: usize,
        placement: Placement,
        budget: &Budget,
    ) -> Option<usize> {
        let mut calls = 1;
        loop {
            if budget.expired() {
                return None;
            }
            let elapsed = self.sample(fft, len, placement, calls);
            if elapsed >= MIN_SAMPLE || calls == 1 << 20 {
                return Some(calls);
            }
            calls *= 2;
        }
    }
}

struct Budget {
    start: Instant,
    limit: Duration,
}
impl Budget {
    fn expired(&self) -> bool {
        self.start.elapsed() >= self.limit
    }
}

#[derive(Clone, Copy, Debug)]
struct Statistics {
    best: f64,
    median: f64,
}
impl Statistics {
    fn from_samples(mut samples: [f64; ROUNDS]) -> Self {
        samples.sort_by(f64::total_cmp);
        Self {
            best: samples[0],
            median: samples[ROUNDS / 2],
        }
    }
    fn ratio(self, baseline: Self) -> f64 {
        (self.best / baseline.best).max(self.median / baseline.median)
    }
}

/// Returns a score only after every workload has complete, improving data.
fn improvement(samples: &[(Statistics, Statistics)], expected: usize) -> Option<f64> {
    if samples.len() != expected || expected == 0 {
        return None;
    }
    let mut worst = 0.0f64;
    for &(baseline, contender) in samples {
        let ratio = contender.ratio(baseline);
        if !ratio.is_finite() || ratio <= 0.0 || ratio > PROMOTION_RATIO {
            return None;
        }
        worst = worst.max(ratio);
    }
    Some(worst)
}

fn compare<T: FftNum>(
    baseline: &dyn Fft<T>,
    contender: &dyn Fft<T>,
    buffers: &mut Buffers<T>,
    lengths: &[usize],
    budget: &Budget,
) -> Option<f64> {
    let mut results = Vec::new();
    // A plan must win at several page offsets, not just one accidental
    // alias between the caller buffers, scratch and coefficient tables.
    for offsets in OFFSETS {
        buffers.offsets = offsets.map(|bytes| bytes / size_of::<Complex<T>>());
        for &len in lengths {
            for placement in PLACEMENTS {
                let plans = [baseline, contender];
                let calls = [
                    buffers.calibrate(baseline, len, placement, budget)?,
                    buffers.calibrate(contender, len, placement, budget)?,
                ];
                let mut samples = [[0.0; 2]; ROUNDS];
                for (round, pair) in samples.iter_mut().enumerate() {
                    // Alternation reduces clock and cache-order bias. Both plans
                    // see the same aligned input/output and scratch addresses.
                    for offset in 0..2 {
                        if budget.expired() {
                            return None;
                        }
                        let index = (round + offset) % 2;
                        pair[index] = buffers
                            .sample(plans[index], len, placement, calls[index])
                            .as_secs_f64()
                            / calls[index] as f64;
                    }
                }
                results.push((
                    Statistics::from_samples(samples.map(|pair| pair[0])),
                    Statistics::from_samples(samples.map(|pair| pair[1])),
                ));
                // A losing workload already disqualifies this candidate.
                improvement(&results, results.len())?;
            }
        }
    }
    improvement(&results, OFFSETS.len() * lengths.len() * PLACEMENTS.len())
}

/// `baseline` is the complete public plan, including its batch wrapper.
/// Return that same executable if no contender earns promotion.
pub(crate) fn pick<T: FftNum>(
    len: usize,
    dir: FftDirection,
    isa: Isa,
    baseline: Arc<dyn Fft<T>>,
    cands: &[Candidate],
    limit: Duration,
) -> Option<Choice<T>> {
    let cands = &cands[..cands.len().min(MAX_CANDIDATES)];
    let incumbent = cands.first()?.clone();
    let start = Instant::now();
    // Retain the original plan rather than rebuilding after exploratory
    // allocations, which can change table placement even when Estimate wins.
    let mut chosen = (incumbent, Arc::clone(&baseline));
    if cands.len() == 1 || start.elapsed() >= limit {
        return Some(chosen);
    }
    let timed_baseline = baseline;
    let mut lengths = vec![len];
    if (8..=1024).contains(&len) && len.is_power_of_two() {
        // Exercise the public batch wrapper and its streaming crossover.
        lengths.push(1 << 20);
    }
    let mut buffers = Buffers::new(*lengths.last().unwrap());
    let mut best = 1.0;
    for (index, candidate) in cands.iter().enumerate().skip(1) {
        let Some(remaining) = limit.checked_sub(start.elapsed()) else {
            break;
        };
        let budget = Budget {
            start: Instant::now(),
            limit: remaining / (cands.len() - index) as u32,
        };
        let fft = crate::engine::batch::wrap(build_candidate::<T>(len, dir, candidate), isa).0;
        buffers.reserve_scratch(timed_baseline.as_ref(), fft.as_ref());
        if let Some(score) = compare(
            timed_baseline.as_ref(),
            fft.as_ref(),
            &mut buffers,
            &lengths,
            &budget,
        ) && score < best
        {
            best = score;
            chosen = (candidate.clone(), fft);
        }
    }
    Some(chosen)
}

#[cfg(test)]
mod tests {
    use super::*;

    fn stats(best: f64, median: f64) -> Statistics {
        Statistics { best, median }
    }

    #[test]
    fn promotion_requires_both_statistics_and_every_workload() {
        let good = (stats(100.0, 100.0), stats(90.0, 90.0));
        assert_eq!(improvement(&[good; 6], 6), Some(0.9));
        for bad in [stats(103.0, 90.0), stats(90.0, 103.0), stats(99.0, 99.0)] {
            let mut samples = [good; 6];
            // A batch/immutable loss cannot be hidden by a fast in-place FFT.
            samples[5].1 = bad;
            assert_eq!(improvement(&samples, 6), None);
        }
        assert_eq!(improvement(&[good; 5], 6), None);
        assert_eq!(improvement(&[], 0), None);
    }

    #[test]
    fn zero_budget_retains_estimate() {
        let isa = crate::isa::effective_isa(None);
        let cands = crate::planner::candidates(64, isa, false);
        let baseline = crate::engine::batch::wrap(
            build_candidate::<f32>(64, FftDirection::Forward, &cands[0]),
            isa,
        )
        .0;
        let (chosen, fft) = pick::<f32>(
            64,
            FftDirection::Forward,
            isa,
            Arc::clone(&baseline),
            &cands,
            Duration::ZERO,
        )
        .unwrap();
        assert!(Arc::ptr_eq(&fft, &baseline));
        assert_eq!(chosen.kernel, cands[0].kernel);
        assert_eq!(chosen.shape, cands[0].shape);
        assert_eq!(chosen.radices, cands[0].radices);
        assert_eq!(fft.len(), 64);
    }

    #[test]
    fn measurement_can_promote_a_faster_public_plan() {
        let isa = crate::isa::effective_isa(None);
        if isa < Isa::Avx2 {
            return;
        }
        let slow = crate::planner::estimate(4096, Isa::Scalar, false).unwrap();
        let fast = crate::planner::estimate(4096, isa, false).unwrap();
        if fast.shape.isa == Isa::Scalar {
            return;
        }
        let (chosen, fft) = pick::<f32>(
            4096,
            FftDirection::Forward,
            isa,
            build_candidate::<f32>(4096, FftDirection::Forward, &slow),
            &[slow, fast.clone()],
            Duration::from_secs(1),
        )
        .unwrap();
        assert_eq!(chosen.kernel, fast.kernel);
        assert_eq!(chosen.shape, fast.shape);
        assert_eq!(chosen.radices, fast.radices);
        // The returned executable, not a subsequently reconstructed candidate,
        // must implement the selected transform correctly.
        let mut input = vec![Complex::new(0.0f32, 0.0); 4096];
        input[0].re = 1.0;
        fft.process(&mut input);
        assert!(
            input
                .iter()
                .all(|x| (x.re - 1.0).abs() < 1e-5 && x.im.abs() < 1e-5)
        );
    }
}

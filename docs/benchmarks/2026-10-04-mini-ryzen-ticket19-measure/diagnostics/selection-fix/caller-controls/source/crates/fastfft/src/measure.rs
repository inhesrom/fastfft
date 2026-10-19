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
/// Switching large coefficient tables can exceed the last-level cache even
/// when repeated execution of either plan fits. Prime the current plan before
/// timing so the comparison represents consecutive public executions.
const WARMUP_CALLS: usize = 3;
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
    #[cfg(feature = "tuning")]
    fn diagnostic(self) -> crate::tuning::SamplePlacement {
        match self {
            Self::InPlace => crate::tuning::SamplePlacement::InPlace,
            Self::OutOfPlace => crate::tuning::SamplePlacement::OutOfPlace,
            Self::Immutable => crate::tuning::SamplePlacement::Immutable,
        }
    }

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
        #[cfg(feature = "tuning")]
        {
            crate::tuning::sample_public_slices(
                fft,
                input,
                output,
                scratch,
                placement.diagnostic(),
                calls,
            )
        }
        #[cfg(not(feature = "tuning"))]
        {
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

/// Warm-up is excluded from statistics, but consumes the planning budget.
/// Check before every invocation; an in-progress warm-up call or timed batch
/// may overrun the deadline.
fn warmed_sample(
    calls: usize,
    mut sample: impl FnMut(usize) -> Duration,
    mut expired: impl FnMut() -> bool,
) -> Option<Duration> {
    for _ in 0..WARMUP_CALLS {
        if expired() {
            return None;
        }
        sample(1);
    }
    if expired() {
        return None;
    }
    Some(sample(calls))
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
                        let index = (round + offset) % 2;
                        pair[index] = warmed_sample(
                            calls[index],
                            |calls| buffers.sample(plans[index], len, placement, calls),
                            || budget.expired(),
                        )?
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
    #[cfg(feature = "tuning")]
    if let Some(trace) = crate::tuning::start_measure_trace() {
        return pick_traced(len, dir, isa, baseline, cands, limit, trace);
    }
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
    // A promising candidate needs complete evidence across every workload.
    // Equal slices can expire during that evidence even with most of the
    // overall budget unused. Obvious losers still exit after one workload.
    let budget = Budget { start, limit };
    let mut best = 1.0;
    for candidate in cands.iter().skip(1) {
        if budget.expired() {
            break;
        }
        let fft = crate::engine::batch::wrap(build_candidate::<T>(len, dir, candidate), isa).0;
        if budget.expired() {
            break;
        }
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

// Optional diagnostic versions preserve the decision rules and early exits.
// The default-feature selector above has no trace branches or storage.
#[cfg(feature = "tuning")]
fn compare_traced<T: FftNum>(
    baseline: &dyn Fft<T>,
    contender: &dyn Fft<T>,
    buffers: &mut Buffers<T>,
    lengths: &[usize],
    budget: &Budget,
    candidate_index: usize,
    trace: &mut crate::tuning::MeasureTraceData,
) -> Option<f64> {
    use crate::tuning::{WorkloadOutcome, WorkloadTrace};
    let mut results = Vec::new();
    for (offset_index, offsets) in OFFSETS.into_iter().enumerate() {
        buffers.offsets = offsets.map(|bytes| bytes / size_of::<Complex<T>>());
        for &len in lengths {
            for placement in PLACEMENTS {
                let [i, o, s] = buffers.offsets;
                let input_ptr = crate::scratch::aligned(&mut buffers.input)[i..].as_ptr() as usize;
                let output_ptr = if matches!(placement, Placement::InPlace) {
                    input_ptr
                } else {
                    crate::scratch::aligned(&mut buffers.output)[o..].as_ptr() as usize
                };
                let mut record = WorkloadTrace {
                    candidate_index,
                    offset_index,
                    placement: placement.diagnostic(),
                    len,
                    plan_ptrs: [
                        baseline as *const dyn Fft<T> as *const () as usize,
                        contender as *const dyn Fft<T> as *const () as usize,
                    ],
                    input_ptr,
                    output_ptr,
                    scratch_ptr: crate::scratch::aligned(&mut buffers.scratch)[s..].as_ptr()
                        as usize,
                    scratch_lens: [placement.scratch(baseline), placement.scratch(contender)],
                    outcome: WorkloadOutcome::Calibrating,
                    ..WorkloadTrace::default()
                };
                let completed = (|| {
                    let plans = [baseline, contender];
                    record.calls[0] = buffers.calibrate(baseline, len, placement, budget)?;
                    record.calls[1] = buffers.calibrate(contender, len, placement, budget)?;
                    let mut samples = [[0.0; 2]; ROUNDS];
                    for (round, pair) in samples.iter_mut().enumerate() {
                        for offset in 0..2 {
                            let index = (round + offset) % 2;
                            pair[index] = warmed_sample(
                                record.calls[index],
                                |calls| buffers.sample(plans[index], len, placement, calls),
                                || budget.expired(),
                            )?
                            .as_secs_f64()
                                / record.calls[index] as f64;
                            record.samples_ns[round][index] = pair[index] * 1e9;
                            record.valid_mask |= 1 << (2 * round + index);
                        }
                    }
                    let a = Statistics::from_samples(samples.map(|pair| pair[0]));
                    let b = Statistics::from_samples(samples.map(|pair| pair[1]));
                    record.best_ns = [a.best * 1e9, b.best * 1e9];
                    record.median_ns = [a.median * 1e9, b.median * 1e9];
                    results.push((a, b));
                    Some(())
                })();
                record.outcome = if completed.is_none() {
                    WorkloadOutcome::Deadline
                } else if improvement(&results, results.len()).is_some() {
                    WorkloadOutcome::Passed
                } else {
                    WorkloadOutcome::Rejected
                };
                if let Some(slot) = trace.workloads.get_mut(trace.workload_count) {
                    *slot = record;
                    trace.workload_count += 1;
                } else {
                    trace.overflow = true;
                }
                completed?;
                improvement(&results, results.len())?;
            }
        }
    }
    improvement(&results, OFFSETS.len() * lengths.len() * PLACEMENTS.len())
}

#[cfg(feature = "tuning")]
fn planning_control_eligible<T: FftNum>(
    len: usize,
    dir: FftDirection,
    cands: &[Candidate],
) -> bool {
    use crate::planner::CandidateKernel;
    len == 96
        && size_of::<T>() == 4
        && dir == FftDirection::Inverse
        && cands.len() >= 2
        && cands[..2].iter().all(|c| {
            c.kernel == CandidateKernel::RectangularSmall
                && c.shape.isa == Isa::Avx512Ymm
                && c.shape.lanes == 8
        })
        && cands[0].radices == [8, 12]
        && cands[1].radices == [16, 6]
}

// The direct route and helper share an ABI and target the same real sampler.
// A black-boxed return prevents this helper becoming a tail jump to that
// sampler: the extra caller frame is the deliberate diagnostic intervention.
#[cfg(feature = "tuning")]
#[inline(never)]
fn planning_sample_helper<T: FftNum>(
    buffers: &mut Buffers<T>,
    fft: &dyn Fft<T>,
    len: usize,
    placement: Placement,
    calls: usize,
) -> Duration {
    let sample: fn(&mut Buffers<T>, &dyn Fft<T>, usize, Placement, usize) -> Duration =
        Buffers::<T>::sample;
    let elapsed = std::hint::black_box(sample)(buffers, fft, len, placement, calls);
    std::hint::black_box(elapsed)
}

#[cfg(feature = "tuning")]
#[inline(never)]
fn planning_warmed_sample<T: FftNum>(
    buffers: &mut Buffers<T>,
    fft: &dyn Fft<T>,
    path: usize,
    calls: usize,
) -> u64 {
    // One parent frame and dispatch point for both routes. Neither indirect
    // dispatch nor the helper's return barrier lies in the returned Duration.
    let sample: fn(&mut Buffers<T>, &dyn Fft<T>, usize, Placement, usize) -> Duration = if path == 0
    {
        Buffers::<T>::sample
    } else {
        planning_sample_helper::<T>
    };
    let sample = std::hint::black_box(sample);
    let mut elapsed = Duration::ZERO;
    for invocation in 0..=WARMUP_CALLS {
        elapsed = sample(
            buffers,
            fft,
            96,
            Placement::InPlace,
            if invocation == WARMUP_CALLS { calls } else { 1 },
        );
    }
    u64::try_from(elapsed.as_nanos()).expect("diagnostic timed batch exceeds u64 nanoseconds")
}

#[cfg(feature = "tuning")]
fn planning_addresses<T: FftNum>(
    buffers: &mut Buffers<T>,
    plans: [&dyn Fft<T>; 2],
) -> [[usize; 3]; 2] {
    let [i, _, s] = buffers.offsets;
    let input = crate::scratch::aligned(&mut buffers.input)[i..i + 96].as_ptr() as usize;
    plans.map(|fft| {
        let need = fft.get_inplace_scratch_len();
        let scratch = if need == 0 {
            0
        } else {
            crate::scratch::aligned(&mut buffers.scratch)[s..s + need].as_ptr() as usize
        };
        [input, input, scratch]
    })
}

#[cfg(feature = "tuning")]
fn planning_allocations<T: FftNum>(buffers: &Buffers<T>) -> [[usize; 3]; 3] {
    [&buffers.input, &buffers.output, &buffers.scratch]
        .map(|v| [v.as_ptr() as usize, v.len(), v.capacity()])
}

#[cfg(feature = "tuning")]
fn run_planning_control<T: FftNum>(
    buffers: &mut Buffers<T>,
    plans: [&dyn Fft<T>; 2],
    process_index: usize,
    original_chosen_index: usize,
    original_selection_elapsed_ns: u128,
) -> crate::tuning::PlanningControl {
    use crate::tuning::PlanningControl;
    // Offset zero of the original allocations, without resetting their data.
    // All storage for evidence is allocated before any control samples.
    buffers.offsets = [0; 3];
    let storage_before = plans.map(|fft| {
        let mut regions = Vec::new();
        fft.diagnostic_regions(&mut |region| regions.push(region));
        regions
    });
    let storage_after = storage_before
        .each_ref()
        .map(|regions| Vec::with_capacity(regions.len()));
    let mut record = PlanningControl {
        process_index,
        plan_ptrs: plans.map(|fft| fft as *const dyn Fft<T> as *const () as usize),
        calls: [1024, 2048],
        original_chosen_index,
        original_selection_elapsed_ns,
        path_names: ["buffers_sample_direct", "buffers_sample_helper"],
        path_start: process_index % 2,
        member_start: (process_index / 2) % 2,
        exposure_member_start: (process_index / 4) % 2,
        exposure_path: 0,
        phase_batch_ns: [[[[0; 2]; 2]; ROUNDS]; 2],
        exposure_elapsed_ns: 0,
        exposure_batch_ns: Vec::with_capacity(16384),
        exposure_truncated: false,
        addresses_before: planning_addresses(buffers, plans),
        addresses_after: [[0; 3]; 2],
        allocations_before: planning_allocations(buffers),
        allocations_after: [[0; 3]; 3],
        storage_before,
        storage_after,
    };
    // Preserve a single warmed-dispatcher entry across paired blocks and
    // exposure; do not let a known path=0 specialize the exposure caller.
    let warmed: fn(&mut Buffers<T>, &dyn Fft<T>, usize, usize) -> u64 = planning_warmed_sample::<T>;
    let warmed = std::hint::black_box(warmed);
    for phase in 0..2 {
        if phase == 1 {
            let start = Instant::now();
            while start.elapsed() < Duration::from_millis(100)
                || record.exposure_batch_ns.len() < ROUNDS
            {
                if record.exposure_batch_ns.len() == record.exposure_batch_ns.capacity() {
                    record.exposure_truncated = true;
                    break;
                }
                let round = record.exposure_batch_ns.len();
                let mut pair = [0; 2];
                for turn in 0..2 {
                    let member = (record.exposure_member_start + round + turn) % 2;
                    pair[member] = warmed(
                        buffers,
                        plans[member],
                        record.exposure_path,
                        record.calls[member],
                    );
                }
                record.exposure_batch_ns.push(pair);
            }
            record.exposure_elapsed_ns = start.elapsed().as_nanos();
        }
        for round in 0..ROUNDS {
            for path_turn in 0..2 {
                let path = (record.path_start + round + path_turn) % 2;
                for member_turn in 0..2 {
                    let member = (record.member_start + round + member_turn) % 2;
                    record.phase_batch_ns[phase][round][path][member] =
                        warmed(buffers, plans[member], path, record.calls[member]);
                }
            }
        }
    }
    record.addresses_after = planning_addresses(buffers, plans);
    record.allocations_after = planning_allocations(buffers);
    for (fft, regions) in plans.into_iter().zip(&mut record.storage_after) {
        fft.diagnostic_regions(&mut |region| regions.push(region));
    }
    record
}

#[cfg(feature = "tuning")]
fn pick_traced<T: FftNum>(
    len: usize,
    dir: FftDirection,
    isa: Isa,
    baseline: Arc<dyn Fft<T>>,
    cands: &[Candidate],
    limit: Duration,
    mut trace: Box<crate::tuning::MeasureTraceData>,
) -> Option<Choice<T>> {
    use crate::tuning::{CandidateOutcome, WorkloadOutcome};
    let cands = &cands[..cands.len().min(MAX_CANDIDATES)];
    let incumbent = cands.first()?.clone();
    let start = Instant::now();
    let mut chosen = (incumbent, Arc::clone(&baseline));
    let mut chosen_index = 0;
    let mut selector_buffers = None;
    let mut nominated_contender = None;
    let mut planning_control = None;
    let mut selection_elapsed_ns = None;
    trace.candidate_outcomes[0] = CandidateOutcome::Incumbent;
    if cands.len() > 1 && start.elapsed() < limit {
        let mut lengths = vec![len];
        if (8..=1024).contains(&len) && len.is_power_of_two() {
            lengths.push(1 << 20);
        }
        let mut buffers = Buffers::new(*lengths.last().unwrap());
        let budget = Budget { start, limit };
        let mut best = 1.0;
        for (candidate_index, candidate) in cands.iter().enumerate().skip(1) {
            if budget.expired() {
                break;
            }
            let fft = crate::engine::batch::wrap(build_candidate::<T>(len, dir, candidate), isa).0;
            if budget.expired() {
                trace.candidate_outcomes[candidate_index] = CandidateOutcome::BuildDeadline;
                break;
            }
            buffers.reserve_scratch(baseline.as_ref(), fft.as_ref());
            let score = compare_traced(
                baseline.as_ref(),
                fft.as_ref(),
                &mut buffers,
                &lengths,
                &budget,
                candidate_index,
                &mut trace,
            );
            trace.candidate_scores[candidate_index] = score;
            trace.candidate_outcomes[candidate_index] = if score.is_some() {
                CandidateOutcome::Qualified
            } else if trace.workload_count > 0
                && trace.workloads[trace.workload_count - 1].outcome == WorkloadOutcome::Deadline
            {
                CandidateOutcome::Incomplete
            } else {
                CandidateOutcome::Rejected
            };
            if trace.nominated_index == Some(candidate_index)
                && trace.candidate_outcomes[candidate_index] != CandidateOutcome::Incomplete
            {
                nominated_contender = Some((candidate_index, Arc::clone(&fft)));
            }
            if let Some(score) = score
                && score < best
            {
                best = score;
                chosen = (candidate.clone(), fft);
                chosen_index = candidate_index;
            }
        }
        if let Some(process_index) = trace.planning_control_process {
            // Freeze after ALL candidates, before any diagnostic allocation or
            // execution. Never recompute scores, budget outcomes or the choice.
            let elapsed_ns = start.elapsed().as_nanos();
            selection_elapsed_ns = Some(elapsed_ns);
            if planning_control_eligible::<T>(len, dir, cands)
                && let Some((1, nominee)) = nominated_contender.as_ref()
            {
                planning_control = Some(run_planning_control(
                    &mut buffers,
                    [baseline.as_ref(), nominee.as_ref()],
                    process_index,
                    chosen_index,
                    elapsed_ns,
                ));
            }
        }
        if trace.retain_buffers {
            selector_buffers = Some(crate::tuning::SelectorBuffers::from_parts(
                buffers.input,
                buffers.output,
                buffers.scratch,
                *lengths.last().unwrap(),
                OFFSETS.map(|row| row.map(|bytes| bytes / size_of::<Complex<T>>())),
            ));
        }
    }
    // Only now allocate publication/configuration metadata. No rejected plan
    // is retained unless explicitly nominated for this diagnostic. Keeping
    // the baseline, nominated contender and optional buffers alive changes
    // their normal drop times; the decision and actual chosen Arc are intact.
    let elapsed_ns = selection_elapsed_ns.unwrap_or_else(|| start.elapsed().as_nanos());
    crate::tuning::publish_measure_trace(crate::tuning::MeasureTrace {
        baseline,
        chosen: Arc::clone(&chosen.1),
        configurations: cands
            .iter()
            .cloned()
            .map(|candidate| {
                crate::tuning::trace_configuration(candidate, len, size_of::<T>() == 8)
            })
            .collect(),
        chosen_index,
        len,
        direction: dir,
        elapsed_ns,
        budget_ns: limit.as_nanos(),
        data: trace,
        selector_buffers,
        nominated_contender,
        planning_control,
    });
    Some(chosen)
}

#[cfg(test)]
mod tests {
    use super::*;

    #[cfg(feature = "tuning")]
    #[test]
    fn planning_control_is_opt_in_and_narrowly_eligible() {
        use crate::planner::CandidateKernel;
        let data = crate::tuning::MeasureTraceData::default();
        assert_eq!(data.planning_control_process, None);
        assert!(!data.retain_buffers);
        let mut candidates = vec![
            Candidate {
                kernel: CandidateKernel::RectangularSmall,
                shape: crate::engine::Shape {
                    isa: Isa::Avx512Ymm,
                    lanes: 8,
                },
                radices: vec![8, 12],
                cost: 0.0,
            },
            Candidate {
                kernel: CandidateKernel::RectangularSmall,
                shape: crate::engine::Shape {
                    isa: Isa::Avx512Ymm,
                    lanes: 8,
                },
                radices: vec![16, 6],
                cost: 0.0,
            },
        ];
        assert!(planning_control_eligible::<f32>(
            96,
            FftDirection::Inverse,
            &candidates
        ));
        assert!(!planning_control_eligible::<f64>(
            96,
            FftDirection::Inverse,
            &candidates
        ));
        assert!(!planning_control_eligible::<f32>(
            96,
            FftDirection::Forward,
            &candidates
        ));
        assert!(!planning_control_eligible::<f32>(
            48,
            FftDirection::Inverse,
            &candidates
        ));
        assert!(!planning_control_eligible::<f32>(
            96,
            FftDirection::Inverse,
            &[]
        ));
        candidates[1].radices = vec![12, 8];
        assert!(!planning_control_eligible::<f32>(
            96,
            FftDirection::Inverse,
            &candidates
        ));
    }

    #[cfg(feature = "tuning")]
    #[test]
    fn retained_selector_buffers_preserve_offsets_and_immutable_input() {
        use crate::tuning::{SamplePlacement, SelectorBuffers, WorkloadTrace};
        let candidate = crate::planner::estimate(16, Isa::Scalar, false).unwrap();
        let fft = build_candidate::<f32>(16, FftDirection::Forward, &candidate);
        let mut buffers = Buffers::new(16);
        buffers.reserve_scratch(fft.as_ref(), fft.as_ref());
        let offsets = OFFSETS.map(|row| row.map(|bytes| bytes / size_of::<Complex<f32>>()));
        let expected = offsets.map(|[i, o, _]| {
            [
                crate::scratch::aligned(&mut buffers.input)[i..].as_ptr() as usize,
                crate::scratch::aligned(&mut buffers.output)[o..].as_ptr() as usize,
            ]
        });
        let allocation_layout = [&buffers.input, &buffers.output, &buffers.scratch]
            .map(|v| [v.as_ptr() as usize, v.len(), v.capacity()]);
        let mut retained = SelectorBuffers::from_parts(
            buffers.input,
            buffers.output,
            buffers.scratch,
            16,
            offsets,
        );
        assert_eq!(retained.allocation_layout(), allocation_layout);
        for (index, [input_ptr, output_ptr]) in expected.into_iter().enumerate() {
            for placement in [
                SamplePlacement::InPlace,
                SamplePlacement::OutOfPlace,
                SamplePlacement::Immutable,
            ] {
                let slices = retained
                    .slices_mut(fft.as_ref(), index, placement, 16)
                    .unwrap();
                let record = WorkloadTrace {
                    input_ptr,
                    output_ptr: if placement == SamplePlacement::InPlace {
                        input_ptr
                    } else {
                        output_ptr
                    },
                    ..Default::default()
                };
                assert_eq!(
                    slices.address_matches(&record),
                    [Some(true), Some(true), None]
                );
                assert!(slices.scratch.is_empty());
                assert_ne!(slices.input.as_ptr(), slices.output.as_ptr());
                slices.input.fill(Complex::new(0.0, 0.0));
                slices.input[0] = Complex::new(1.0, 0.0);
                if placement == SamplePlacement::Immutable {
                    let before = slices.input.to_vec();
                    let _ = crate::tuning::sample_public_slices(
                        fft.as_ref(),
                        slices.input,
                        slices.output,
                        slices.scratch,
                        placement,
                        1,
                    );
                    assert_eq!(slices.input, before.as_slice());
                    assert!(slices.output.iter().all(|&v| v == Complex::new(1.0, 0.0)));
                }
            }
        }
        assert!(
            retained
                .slices_mut(fft.as_ref(), 3, SamplePlacement::InPlace, 16)
                .is_err()
        );
        assert!(
            retained
                .slices_mut(fft.as_ref(), 0, SamplePlacement::InPlace, 0)
                .is_err()
        );
        assert!(
            retained
                .slices_mut(fft.as_ref(), 0, SamplePlacement::InPlace, 15)
                .is_err()
        );
        assert!(
            retained
                .slices_mut(fft.as_ref(), 0, SamplePlacement::InPlace, 32)
                .is_err()
        );
    }

    #[cfg(feature = "tuning")]
    #[test]
    fn retained_selector_checked_ranges_do_not_panic_or_resize() {
        use crate::tuning::{SamplePlacement, SelectorBuffers};
        let candidate = crate::planner::estimate(16, Isa::Scalar, false).unwrap();
        let fft = build_candidate::<f32>(16, FftDirection::Forward, &candidate);
        let buffers = Buffers::<f32>::new(16);
        let mut retained = SelectorBuffers::from_parts(
            buffers.input,
            buffers.output,
            buffers.scratch,
            16,
            [[usize::MAX, 0, 0], [0, usize::MAX, 0], [10000, 0, 0]],
        );
        let before = retained.allocation_layout();
        for index in 0..3 {
            assert!(
                retained
                    .slices_mut(fft.as_ref(), index, SamplePlacement::InPlace, 16)
                    .is_err()
            );
        }
        assert_eq!(retained.allocation_layout(), before);
    }

    #[cfg(feature = "tuning")]
    #[test]
    fn retained_selector_reports_only_final_scratch_and_checks_its_extent() {
        use crate::tuning::{SamplePlacement, SelectorBuffers, WorkloadTrace};
        let candidate = crate::planner::estimate(4096, Isa::Scalar, false).unwrap();
        let fft = build_candidate::<f32>(4096, FftDirection::Forward, &candidate);
        let need = fft.get_inplace_scratch_len();
        assert!(need > 0);
        let mut buffers = Buffers::new(4096);
        buffers.reserve_scratch(fft.as_ref(), fft.as_ref());
        // Keeping the old allocation alive makes a different final allocation
        // deterministic, without relying on realloc's allocator decisions.
        let mut old_scratch = std::mem::replace(
            &mut buffers.scratch,
            vec![Complex::new(0.0, 0.0); need + 16],
        );
        let old_address = crate::scratch::aligned(&mut old_scratch).as_ptr() as usize;
        let mut retained = SelectorBuffers::from_parts(
            buffers.input,
            buffers.output,
            buffers.scratch,
            4096,
            [[0; 3]; 3],
        );
        let slices = retained
            .slices_mut(fft.as_ref(), 0, SamplePlacement::InPlace, 4096)
            .unwrap();
        assert_eq!(slices.scratch.len(), need);
        let [input_ptr, output_ptr, _] = slices.addresses();
        let record = WorkloadTrace {
            input_ptr,
            output_ptr,
            scratch_ptr: old_address,
            ..Default::default()
        };
        assert_eq!(
            slices.address_matches(&record),
            [Some(true), Some(true), Some(false)]
        );

        let buffers = Buffers::new(4096);
        let mut absent = SelectorBuffers::from_parts(
            buffers.input,
            buffers.output,
            buffers.scratch,
            4096,
            [[0; 3]; 3],
        );
        let before = absent.allocation_layout();
        assert!(
            absent
                .slices_mut(fft.as_ref(), 0, SamplePlacement::InPlace, 4096)
                .is_err()
        );
        assert_eq!(absent.allocation_layout(), before);

        let buffers = Buffers::new(4096);
        let mut overflow = SelectorBuffers::from_parts(
            buffers.input,
            buffers.output,
            buffers.scratch,
            4096,
            [[0, 0, usize::MAX]; 3],
        );
        assert!(
            overflow
                .slices_mut(fft.as_ref(), 0, SamplePlacement::InPlace, 4096)
                .is_err()
        );
    }

    #[cfg(feature = "tuning")]
    #[test]
    fn expired_trace_records_partial_workload_without_inventing_samples() {
        let candidate = crate::planner::estimate(16, Isa::Scalar, false).unwrap();
        let fft = build_candidate::<f32>(16, FftDirection::Forward, &candidate);
        let mut buffers = Buffers::new(16);
        buffers.reserve_scratch(fft.as_ref(), fft.as_ref());
        let budget = Budget {
            start: Instant::now(),
            limit: Duration::ZERO,
        };
        let mut trace = crate::tuning::MeasureTraceData::default();
        assert!(
            compare_traced(
                fft.as_ref(),
                fft.as_ref(),
                &mut buffers,
                &[16],
                &budget,
                1,
                &mut trace
            )
            .is_none()
        );
        assert_eq!(trace.workload_count, 1);
        let record = trace.workloads[0];
        assert_eq!(record.outcome, crate::tuning::WorkloadOutcome::Deadline);
        assert_eq!(record.calls, [0, 0]);
        assert_eq!(record.valid_mask, 0);
        assert_eq!(record.input_ptr, record.output_ptr);
        assert_eq!(record.plan_ptrs[0], record.plan_ptrs[1]);
    }

    fn stats(best: f64, median: f64) -> Statistics {
        Statistics { best, median }
    }

    #[test]
    fn warmup_does_not_enter_timing_statistics() {
        let mut invocations = Vec::new();
        let elapsed = warmed_sample(
            8,
            |calls| {
                invocations.push(calls);
                if calls == 1 {
                    Duration::from_secs(1)
                } else {
                    Duration::from_micros(50)
                }
            },
            || false,
        );
        assert_eq!(elapsed, Some(Duration::from_micros(50)));
        assert_eq!(invocations, [1, 1, 1, 8]);
    }

    #[test]
    fn deadline_during_warmup_prevents_a_timed_sample() {
        for limit in 1..=WARMUP_CALLS {
            let invocations = std::cell::Cell::new(0);
            let elapsed = warmed_sample(
                8,
                |_| {
                    invocations.set(invocations.get() + 1);
                    Duration::from_micros(50)
                },
                || invocations.get() >= limit,
            );
            assert_eq!(elapsed, None);
            assert_eq!(invocations.get(), limit);
        }

        let elapsed = warmed_sample(8, |_| panic!("expired budget executed an FFT"), || true);
        assert_eq!(elapsed, None);
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

    #[test]
    #[ignore = "performance control: run on a quiet host"]
    fn large_promotion_can_use_the_remaining_global_budget() {
        let isa = crate::isa::effective_isa(None);
        if isa < Isa::Avx2 {
            return;
        }
        let len = 524288;
        let slow = crate::planner::estimate(len, Isa::Sse2, false).unwrap();
        let mut cands = crate::planner::candidates(len, isa, false);
        let fast = cands[0].clone();
        if fast.shape.isa <= Isa::Sse2 {
            return;
        }
        cands.insert(0, slow.clone());
        assert!(cands.len() >= MAX_CANDIDATES);
        let baseline = build_candidate::<f32>(len, FftDirection::Forward, &slow);
        let (chosen, fft) = pick::<f32>(
            len,
            FftDirection::Forward,
            isa,
            Arc::clone(&baseline),
            &cands,
            Duration::from_secs(1),
        )
        .unwrap();
        assert!(!Arc::ptr_eq(&fft, &baseline));
        assert!(chosen.shape.isa > Isa::Sse2);
        let mut input = vec![Complex::new(0.0f32, 0.0); len];
        input[0].re = 1.0;
        fft.process(&mut input);
        assert!(
            input
                .iter()
                .all(|x| (x.re - 1.0).abs() < 1e-5 && x.im.abs() < 1e-5)
        );
    }
}

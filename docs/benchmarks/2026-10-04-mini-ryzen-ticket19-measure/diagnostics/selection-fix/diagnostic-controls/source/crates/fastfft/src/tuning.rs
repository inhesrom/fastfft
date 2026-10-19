//! Developer-only tuning API. Not part of the supported FFT API.
use crate::api::{Fft, FftDirection, FftNum};
use crate::engine::Shape;
use crate::isa::Isa;
use crate::planner::{Candidate, CandidateKernel};
use std::sync::Arc;

/// Public execution placement used by the optional measurement diagnostics.
#[derive(Clone, Copy, Debug, Default, PartialEq, Eq)]
pub enum SamplePlacement {
    #[default]
    InPlace,
    OutOfPlace,
    Immutable,
}

/// A workload may stop during calibration or between either plan's samples.
#[derive(Clone, Copy, Debug, Default, PartialEq, Eq)]
pub enum WorkloadOutcome {
    #[default]
    Unused,
    Calibrating,
    Deadline,
    Rejected,
    Passed,
}

/// Numerical evidence only; sample values are ns per whole-buffer public call.
#[derive(Clone, Copy, Debug, Default)]
pub struct WorkloadTrace {
    pub candidate_index: usize,
    pub offset_index: usize,
    pub placement: SamplePlacement,
    pub len: usize,
    pub plan_ptrs: [usize; 2],
    pub input_ptr: usize,
    /// Effective output: equals input_ptr for in-place execution.
    pub output_ptr: usize,
    /// Inactive for a plan whose corresponding scratch_lens entry is zero.
    pub scratch_ptr: usize,
    pub scratch_lens: [usize; 2],
    pub calls: [usize; 2],
    /// [round][baseline, contender]; execution starts with round % 2.
    pub samples_ns: [[f64; 2]; 7],
    /// Bit 2*round+plan marks a completed sample. Zero values are not evidence.
    pub valid_mask: u16,
    pub best_ns: [f64; 2],
    pub median_ns: [f64; 2],
    pub outcome: WorkloadOutcome,
}

/// Seven contenders, three offsets, two lengths and three placements.
pub const MEASURE_TRACE_CAPACITY: usize = 126;

#[derive(Clone, Copy, Debug, Default, PartialEq, Eq)]
pub enum CandidateOutcome {
    #[default]
    Unvisited,
    Incumbent,
    BuildDeadline,
    Incomplete,
    Rejected,
    Qualified,
}

#[derive(Debug)]
pub struct MeasureTraceData {
    pub workloads: [WorkloadTrace; MEASURE_TRACE_CAPACITY],
    pub workload_count: usize,
    pub overflow: bool,
    pub candidate_outcomes: [CandidateOutcome; 8],
    pub candidate_scores: [Option<f64>; 8],
}

impl Default for MeasureTraceData {
    fn default() -> Self {
        Self {
            workloads: [WorkloadTrace::default(); MEASURE_TRACE_CAPACITY],
            workload_count: 0,
            overflow: false,
            candidate_outcomes: [CandidateOutcome::Unvisited; 8],
            candidate_scores: [None; 8],
        }
    }
}

/// Captured after selection, before the original baseline could be dropped.
/// Keeping that baseline alive perturbs subsequent allocation lifetimes. This
/// is diagnostic evidence, not an uninstrumented acceptance measurement.
pub struct MeasureTrace<T: FftNum> {
    pub baseline: Arc<dyn Fft<T>>,
    pub chosen: Arc<dyn Fft<T>>,
    pub configurations: Vec<Configuration>,
    pub chosen_index: usize,
    pub len: usize,
    pub direction: FftDirection,
    pub elapsed_ns: u128,
    pub budget_ns: u128,
    pub data: Box<MeasureTraceData>,
}

impl<T: FftNum> core::fmt::Debug for MeasureTrace<T> {
    fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
        f.debug_struct("MeasureTrace")
            .field("baseline", &Arc::as_ptr(&self.baseline))
            .field("chosen", &Arc::as_ptr(&self.chosen))
            .field("configurations", &self.configurations)
            .field("chosen_index", &self.chosen_index)
            .field("len", &self.len)
            .field("direction", &self.direction)
            .field("elapsed_ns", &self.elapsed_ns)
            .field("budget_ns", &self.budget_ns)
            .field("data", &self.data)
            .finish()
    }
}

#[derive(Default)]
struct TraceSlot {
    armed: Option<Box<MeasureTraceData>>,
    completed: Option<Box<dyn std::any::Any>>,
}

thread_local! {
    static TRACE: std::cell::RefCell<TraceSlot> = const {
        std::cell::RefCell::new(TraceSlot { armed: None, completed: None })
    };
}

/// Arms one selection on this thread. Allocates before planning, never in a
/// timed call. Drain even when planning fails or does not invoke Measure.
pub fn begin_measure_trace() -> Result<(), &'static str> {
    TRACE.with(|slot| {
        let mut slot = slot.borrow_mut();
        if slot.armed.is_some() || slot.completed.is_some() {
            return Err("previous measure trace must be drained first");
        }
        slot.armed = Some(Box::default());
        Ok(())
    })
}

/// Drains and disarms before verification or secondary planning can occur.
/// A wrong scalar type is an error and consumes the capture rather than
/// leaving stale evidence for a subsequent cell.
pub fn take_measure_trace<T: FftNum>() -> Result<Option<MeasureTrace<T>>, &'static str> {
    TRACE.with(|slot| {
        let mut slot = slot.borrow_mut();
        slot.armed = None;
        slot.completed.take().map_or(Ok(None), |trace| {
            trace
                .downcast::<MeasureTrace<T>>()
                .map(|trace| Some(*trace))
                .map_err(|_| "measure trace scalar type mismatch")
        })
    })
}

pub(crate) fn start_measure_trace() -> Option<Box<MeasureTraceData>> {
    TRACE.with(|slot| slot.borrow_mut().armed.take())
}

pub(crate) fn publish_measure_trace<T: FftNum>(trace: MeasureTrace<T>) {
    TRACE.with(|slot| slot.borrow_mut().completed = Some(Box::new(trace)));
}

pub(crate) fn trace_configuration(c: Candidate, n: usize, f64_: bool) -> Configuration {
    Configuration(c, n, f64_)
}

/// The same timed slice loop used by the selector in tuning builds. Buffer
/// preparation and warm-up are the caller's responsibility. This does not
/// normalize by FFT count; its result covers `calls` whole-buffer executions.
pub fn sample_public_slices<T: FftNum>(
    fft: &dyn Fft<T>,
    input: &mut [num_complex::Complex<T>],
    output: &mut [num_complex::Complex<T>],
    scratch: &mut [num_complex::Complex<T>],
    placement: SamplePlacement,
    calls: usize,
) -> std::time::Duration {
    let start = std::time::Instant::now();
    match placement {
        SamplePlacement::InPlace => {
            for _ in 0..calls {
                fft.process_with_scratch(input, scratch);
            }
        }
        SamplePlacement::OutOfPlace => {
            for _ in 0..calls {
                fft.process_outofplace_with_scratch(input, output, scratch);
            }
        }
        SamplePlacement::Immutable => {
            for _ in 0..calls {
                fft.process_immutable_with_scratch(input, output, scratch);
            }
        }
    }
    start.elapsed()
}

/// Address used by Stockham/FourStep after public scratch alignment. Zero
/// means no active caller scratch. Query outside timing on the required slice.
pub fn aligned_scratch_address<T: FftNum>(scratch: &mut [num_complex::Complex<T>]) -> usize {
    if scratch.is_empty() {
        0
    } else {
        crate::scratch::aligned(scratch).as_ptr() as usize
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum RegionKind {
    Object,
    EmbeddedPlan,
    Radices,
    VectorDescriptors,
    Twiddles,
    PhaseBTwiddles,
    CrossTwiddles,
    FineTwiddles,
    ColumnRadices,
    RowRadices,
    ColumnTwiddles,
    RowTwiddles,
    BatchLeafTwiddles,
    Fallback,
    Entry,
    CopyEntry,
    /// index 0=lanes, 1=stream threshold in bytes, 2=unobserved stack storage;
    /// FourStep: 3=matrix_len, 4=work_len, 5=groups, 6=group_stride,
    /// 7=blocked, 8=streaming, 9=twiddle_step. Lengths count complex values.
    /// Stockham: 10/11/12=misaligned scratch length for IP/OOP/immutable.
    /// The numeric value is in len; ptr/capacity/element_bytes are zero.
    Metadata,
}

/// Virtual addresses only: these do not establish physical cache coloring.
/// For storage, len/capacity are element counts. Unallocated vectors use ptr=0.
/// Object records identify data, not the allocator/Arc header base. Fallback
/// records are edges from owner (wrapper) to ptr (child object).
#[derive(Clone, Copy, Debug)]
pub struct DiagnosticRegion {
    pub owner: usize,
    pub kind: RegionKind,
    pub index: usize,
    pub ptr: usize,
    pub element_bytes: usize,
    pub len: usize,
    pub capacity: usize,
}

impl DiagnosticRegion {
    pub(crate) fn object<T>(value: &T) -> Self {
        let ptr = value as *const T as usize;
        Self {
            owner: ptr,
            kind: RegionKind::Object,
            index: 0,
            ptr,
            element_bytes: size_of::<T>(),
            len: 1,
            capacity: 0,
        }
    }

    pub(crate) fn vector<T>(owner: usize, kind: RegionKind, index: usize, v: &Vec<T>) -> Self {
        Self {
            owner,
            kind,
            index,
            ptr: if v.capacity() == 0 {
                0
            } else {
                v.as_ptr() as usize
            },
            element_bytes: size_of::<T>(),
            len: v.len(),
            capacity: v.capacity(),
        }
    }

    pub(crate) fn metadata(owner: usize, index: usize, value: usize) -> Self {
        Self {
            owner,
            kind: RegionKind::Metadata,
            index,
            ptr: 0,
            element_bytes: 0,
            len: value,
            capacity: 0,
        }
    }
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum BatchPath {
    Invalid,
    Fallback,
    AcrossEight,
    StreamingEntry,
    StreamingTiles,
}

#[derive(Clone, Copy, Debug)]
pub struct BatchExecution {
    pub path: BatchPath,
    pub lanes: usize,
    pub stream_threshold_bytes: usize,
    pub streaming: bool,
    /// Complex values covered by the wrapper and by fallback, respectively.
    pub wrapper_values: usize,
    pub fallback_values: usize,
    /// Wrapper-local temporary/spill addresses are not captured. Fallback
    /// storage, when used, is described separately by its diagnostic regions.
    pub stack_temporary_unobserved: bool,
}

/// An opaque, validated production candidate. Constructed only by enumeration.
#[derive(Clone, Debug)]
pub struct Configuration(Candidate, usize, bool);

impl Configuration {
    pub fn kernel(&self) -> &'static str {
        self.0.kernel.name()
    }
    pub fn isa(&self) -> Isa {
        self.0.shape.isa
    }
    pub fn lanes(&self) -> usize {
        self.0.shape.lanes
    }
    pub fn radices(&self) -> &[usize] {
        &self.0.radices
    }
    pub fn build<T: FftNum>(&self, n: usize, dir: FftDirection) -> Arc<dyn Fft<T>> {
        // Enumeration is length/precision-specific; callers cannot substitute
        // another shape, size or precision through this safe diagnostic API.
        assert_eq!((n, core::mem::size_of::<T>() == 8), (self.1, self.2));
        crate::planner::build_candidate(n, dir, &self.0)
    }
    pub fn same(&self, other: &Self) -> bool {
        self.0.kernel == other.0.kernel
            && self.0.shape == other.0.shape
            && self.0.radices == other.0.radices
    }
    pub fn rust_kernel(&self) -> &'static str {
        match self.0.kernel {
            CandidateKernel::Stockham => "Stockham",
            CandidateKernel::FourStep => "FourStep",
            CandidateKernel::GenericSmall => "GenericSmall",
            CandidateKernel::InterleavedSmall => "InterleavedSmall",
            CandidateKernel::RectangularSmall => "RectangularSmall",
        }
    }
}

/// Incumbents plus alternate radix orders, AVX2 schedules and panel splits.
pub fn configurations(n: usize, f64_: bool) -> Vec<Configuration> {
    if n < 2 || !crate::planner::is_smooth(n) {
        return Vec::new();
    }
    let cap = crate::isa::effective_isa(None);
    let mut result = Vec::<Configuration>::new();
    let mut add = |c: Candidate| {
        let c = Configuration(c, n, f64_);
        if !result.iter().any(|r| r.same(&c)) {
            result.push(c);
        }
    };
    for tier in [
        Isa::Scalar,
        Isa::Sse2,
        Isa::Avx2,
        Isa::Avx512Ymm,
        Isa::Avx512,
    ] {
        if tier > cap || !crate::isa::available(tier) {
            continue;
        }
        for c in crate::planner::candidates(n, tier, f64_) {
            add(c);
        }
        let lanes = match tier {
            Isa::Scalar => 1,
            Isa::Sse2 => {
                if f64_ {
                    2
                } else {
                    4
                }
            }
            Isa::Avx512 => {
                if f64_ {
                    8
                } else {
                    16
                }
            }
            _ => {
                if f64_ {
                    4
                } else {
                    8
                }
            }
        };
        if !n.is_multiple_of(lanes) || (lanes > 1 && n < 2 * lanes) {
            continue;
        }
        let shape = Shape { isa: tier, lanes };
        for max in [4, 8] {
            for rs in [
                crate::planner::choose_radices(n / lanes, max),
                crate::plan::radices(n / lanes, shape, f64_, max),
            ]
            .into_iter()
            .flatten()
            {
                for shift in 0..rs.len().max(1) {
                    let mut radices = rs.clone();
                    radices.rotate_left(shift);
                    add(Candidate {
                        kernel: CandidateKernel::Stockham,
                        shape,
                        cost: 0.0,
                        radices: radices.clone(),
                    });
                    radices.reverse();
                    add(Candidate {
                        kernel: CandidateKernel::Stockham,
                        shape,
                        cost: 0.0,
                        radices,
                    });
                }
            }
        }
    }
    result
}

/// Isolated production pass samples: precision, ISA, kind, radix, ns/element.
pub fn passes(f64_: bool, milliseconds: u64) -> Vec<(Isa, u8, usize, f64)> {
    crate::engine::tuning::passes(f64_, milliseconds)
}

/// The actual Estimate configuration, for independent candidate audits.
pub fn estimated(n: usize, cap: Isa, f64_: bool) -> Option<Configuration> {
    if n < 2 || !crate::planner::is_smooth(n) {
        return None;
    }
    crate::planner::estimate(n, crate::isa::effective_isa(Some(cap)), f64_)
        .map(|c| Configuration(c, n, f64_))
}

#[cfg(test)]
mod trace_tests {
    use super::*;

    fn capture_retained_scalar() -> Arc<dyn Fft<f32>> {
        begin_measure_trace().unwrap();
        let candidate = crate::planner::estimate(16, Isa::Scalar, false).unwrap();
        let baseline = crate::planner::build_candidate(16, FftDirection::Forward, &candidate);
        let (_, selected) = crate::measure::pick(
            16,
            FftDirection::Forward,
            Isa::Scalar,
            Arc::clone(&baseline),
            &[candidate],
            std::time::Duration::ZERO,
        )
        .unwrap();
        assert!(Arc::ptr_eq(&baseline, &selected));
        selected
    }

    #[test]
    fn trace_drain_disarms_an_unused_request() {
        begin_measure_trace().unwrap();
        assert!(begin_measure_trace().is_err());
        assert!(take_measure_trace::<f32>().unwrap().is_none());
        begin_measure_trace().unwrap();
        assert!(take_measure_trace::<f32>().unwrap().is_none());
    }

    #[test]
    fn retained_trace_preserves_identity_and_blocks_overwrite() {
        let selected = capture_retained_scalar();
        assert!(begin_measure_trace().is_err());
        let trace = take_measure_trace::<f32>().unwrap().unwrap();
        assert!(Arc::ptr_eq(&selected, &trace.chosen));
        assert!(Arc::ptr_eq(&trace.baseline, &trace.chosen));
        assert_eq!(trace.chosen_index, 0);
        assert_eq!(trace.data.workload_count, 0);
        assert!(!trace.data.overflow);
        assert_eq!(
            trace.data.candidate_outcomes[0],
            CandidateOutcome::Incumbent
        );
        assert!(take_measure_trace::<f32>().unwrap().is_none());
    }

    #[test]
    fn wrong_precision_consumes_the_capture() {
        let _selected = capture_retained_scalar();
        assert!(take_measure_trace::<f64>().is_err());
        assert!(take_measure_trace::<f32>().unwrap().is_none());
        begin_measure_trace().unwrap();
        assert!(take_measure_trace::<f32>().unwrap().is_none());
    }

    #[test]
    fn batch_path_query_preserves_wrapper_and_fallback_roles() {
        let mut planner = crate::FftPlanner::<f64>::new();
        let fft = planner.plan_fft_forward(32);
        let Some(initial) =
            fft.diagnostic_batch_path(32, 0x1000, 0x2000, SamplePlacement::OutOfPlace)
        else {
            return; // Hosts without a compiled/available batch ISA.
        };
        assert_eq!(initial.path, BatchPath::Fallback);
        let len = (initial.stream_threshold_bytes / size_of::<num_complex::Complex<f64>>() / 128
            + 1)
            * 128;
        let streamed = fft
            .diagnostic_batch_path(len, 0x1000, 0x2000, SamplePlacement::OutOfPlace)
            .unwrap();
        assert_eq!(streamed.path, BatchPath::StreamingEntry);
        assert_eq!(streamed.wrapper_values, len);
        assert_eq!(streamed.fallback_values, 0);
        let inplace = fft
            .diagnostic_batch_path(len, 0x1000, 0x1000, SamplePlacement::InPlace)
            .unwrap();
        assert_eq!(inplace.path, BatchPath::Fallback);
        assert_eq!(inplace.fallback_values, len);
        let mut regions = Vec::new();
        fft.diagnostic_regions(&mut |region| regions.push(region));
        let owner = Arc::as_ptr(&fft) as *const () as usize;
        let child = regions
            .iter()
            .find(|r| r.owner == owner && r.kind == RegionKind::Fallback)
            .unwrap()
            .ptr;
        assert_ne!(owner, child);
        assert!(
            regions
                .iter()
                .any(|r| r.owner == child && r.kind == RegionKind::Object)
        );
        assert!(
            regions
                .iter()
                .any(|r| r.owner == owner && r.kind == RegionKind::BatchLeafTwiddles)
        );
    }
}

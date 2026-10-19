//! Developer-only tuning API. Not part of the supported FFT API.
use crate::api::{Fft, FftDirection, FftNum};
use crate::engine::Shape;
use crate::isa::Isa;
use crate::planner::{Candidate, CandidateKernel};
use std::sync::Arc;

/// Exchange two existing, equal-valued Stockham Phase-B coefficient allocations.
///
/// Both Arcs must be uniquely owned, with no Weak references, and point directly
/// to matching Stockham implementations. Wrappers and custom FFTs are rejected.
/// Length, direction, shape, execution metadata and all coefficient values must
/// match; every table capacity must match and Phase-B must be nonempty. Every
/// check precedes mutation. Success swaps Vec ownership without allocating,
/// copying values, moving the FFT objects or changing any other region. Calling
/// this again restores the original ownership. Errors leave both plans intact.
///
/// This is an untimed causal diagnostic, not a planner or alignment policy.
/// Equality scans touch coefficient memory: use the same reset/rewarm procedure
/// in original, exchanged and restored timing blocks. Record diagnostic_regions
/// before and after each exchange, and restore before finishing the experiment.
pub fn swap_stockham_phase_b_storage<T: FftNum>(
    a: &mut Arc<dyn Fft<T>>,
    b: &mut Arc<dyn Fft<T>>,
) -> Result<(), &'static str> {
    swap_stockham_storage(a, b, true, false)
}

/// Reversibly exchange selected parts of two equal-valued Stockham storage graphs.
///
/// `phase_b` exchanges the Phase-B Vec. `remaining_tables` exchanges the radices
/// Vec and the complete pass-table Vec<Vec<T>>, including ownership of its inner
/// allocations. FFT/embedded-plan object addresses and execution metadata stay
/// fixed. All masks perform the same unique-ownership, shape, bitwise-value and
/// capacity checks before any mutation; `(false, false)` is a validating no-op.
/// Applying the same mask twice restores every original allocation owner.
///
/// No allocation, value copy or FFT execution occurs. The experimental lifetime,
/// warm-up and snapshot requirements of [`swap_stockham_phase_b_storage`] apply.
pub fn swap_stockham_storage<T: FftNum>(
    a: &mut Arc<dyn Fft<T>>,
    b: &mut Arc<dyn Fft<T>>,
    phase_b: bool,
    remaining_tables: bool,
) -> Result<(), &'static str> {
    let a = Arc::get_mut(a).ok_or("first plan is not uniquely owned")?;
    let b = Arc::get_mut(b).ok_or("second plan is not uniquely owned")?;
    let a = a
        .diagnostic_as_any_mut()
        .and_then(|v| v.downcast_mut::<crate::fft::FftImpl<T>>())
        .ok_or("first plan is not a direct FftImpl")?;
    let b = b
        .diagnostic_as_any_mut()
        .and_then(|v| v.downcast_mut::<crate::fft::FftImpl<T>>())
        .ok_or("second plan is not a direct FftImpl")?;
    a.diagnostic_swap_storage(b, phase_b, remaining_tables)
}

/// FftNum is sealed to f32/f64. Safe downcasts preserve signed zero and NaN bits;
/// numeric equality or conversion to f64 would not provide that guarantee.
pub(crate) fn diagnostic_values_equal<T: FftNum>(a: &[T], b: &[T]) -> bool {
    a.len() == b.len()
        && a.iter().zip(b).all(|(a, b)| {
            let a: &dyn std::any::Any = a;
            let b: &dyn std::any::Any = b;
            if let (Some(a), Some(b)) = (a.downcast_ref::<f32>(), b.downcast_ref::<f32>()) {
                a.to_bits() == b.to_bits()
            } else if let (Some(a), Some(b)) = (a.downcast_ref::<f64>(), b.downcast_ref::<f64>()) {
                a.to_bits() == b.to_bits()
            } else {
                false
            }
        })
}

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
    /// 0 directly reaches Buffers::sample at every workload; 1 adds the
    /// non-tail helper frame at offset_index=0 for every placement/length.
    pub caller_route: usize,
    pub placement: SamplePlacement,
    pub len: usize,
    pub plan_ptrs: [usize; 2],
    pub input_ptr: usize,
    /// Effective output: equals input_ptr for in-place execution.
    pub output_ptr: usize,
    /// Inactive for a plan whose corresponding scratch_lens entry is zero.
    pub scratch_ptr: usize,
    pub scratch_lens: [usize; 2],
    /// Required routes share this per-plan maximum calibrated call count.
    pub calls: [usize; 2],
    /// [round][baseline, contender]. At dual-route workloads, route starts
    /// rotate with round/workload; member starts use round/2 + workload/2 +
    /// caller_route modulo two. Primary-only workloads alternate round % 2.
    pub samples_ns: [[f64; 2]; 7],
    /// Bit 2*round+plan marks a completed sample. Zero values are not evidence.
    pub valid_mask: u16,
    pub best_ns: [f64; 2],
    pub median_ns: [f64; 2],
    pub outcome: WorkloadOutcome,
}

/// Primary route at all offsets plus helper at canonical offset zero, for
/// seven contenders, two lengths and three placements: 7 * (3 + 1) * 2 * 3.
pub const MEASURE_TRACE_CAPACITY: usize = 168;

/// Emit alongside caller_routes=2 to distinguish historical full Cartesian
/// coverage from the canonical-offset supplemental guard.
pub const MEASURE_CALLER_ROUTE_COVERAGE: &str = "canonical-offset";

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
    pub(crate) retain_buffers: bool,
    pub(crate) nominated_index: Option<usize>,
    pub(crate) planning_control_process: Option<usize>,
}

impl Default for MeasureTraceData {
    fn default() -> Self {
        Self {
            workloads: [WorkloadTrace::default(); MEASURE_TRACE_CAPACITY],
            workload_count: 0,
            overflow: false,
            candidate_outcomes: [CandidateOutcome::Unvisited; 8],
            candidate_scores: [None; 8],
            retain_buffers: false,
            nominated_index: None,
            planning_control_process: None,
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
    /// Present only when buffer retention was explicitly armed and selection
    /// allocated buffers. These are the original allocations, not copies.
    pub selector_buffers: Option<SelectorBuffers<T>>,
    /// Independent of `chosen`: only the explicitly nominated, actually built
    /// contender, retained after a completed qualifying or rejecting compare.
    /// None when unvisited, unavailable, or interrupted by the deadline.
    pub nominated_contender: Option<(usize, Arc<dyn Fft<T>>)>,
    /// Optional post-decision planning-stack intervention. This is not a
    /// production selection measurement; code layout and stack are perturbed.
    pub planning_control: Option<PlanningControl>,
}

/// Paired caller paths, before and after 100 ms of direct-route exposure.
/// All durations are actual integer ns for `calls[member]` whole-buffer calls.
/// Phase 0 precedes exposure, phase 1 follows it. Path 0 directly dispatches
/// to the real Buffers::sample entry; path 1 adds a non-inlined helper frame
/// before reaching that SAME entry. Both use one shared warmed dispatcher,
/// with indirect dispatch outside the sampler's returned Duration. Generated
/// routes must be verified before treating this as a caller-route control.
/// Member 0 is baseline, 1 is nominee. Input is not reset by this control.
/// The already completed selection is never rescored by this intervention.
#[derive(Debug)]
pub struct PlanningControl {
    pub process_index: usize,
    pub plan_ptrs: [usize; 2],
    pub calls: [usize; 2],
    pub original_chosen_index: usize,
    pub original_selection_elapsed_ns: u128,
    pub path_names: [&'static str; 2],
    /// For each phase/round: path=(path_start+round+turn)%2;
    /// member=(member_start+round+turn)%2 inside each path.
    pub path_start: usize,
    pub member_start: usize,
    pub exposure_member_start: usize,
    /// Always path 0: buffers_sample_direct, through the shared dispatcher.
    pub exposure_path: usize,
    pub phase_batch_ns: [[[[u64; 2]; 2]; 7]; 2],
    pub exposure_elapsed_ns: u128,
    /// Chronological pairs, indexed [round][baseline, nominee].
    pub exposure_batch_ns: Vec<[u64; 2]>,
    pub exposure_truncated: bool,
    /// [member][effective input, effective output, active scratch].
    pub addresses_before: [[usize; 3]; 2],
    pub addresses_after: [[usize; 3]; 2],
    /// [input/output/scratch allocation][base pointer, len, capacity].
    pub allocations_before: [[usize; 3]; 3],
    pub allocations_after: [[usize; 3]; 3],
    pub storage_before: [Vec<DiagnosticRegion>; 2],
    pub storage_after: [Vec<DiagnosticRegion>; 2],
}

/// Original selector allocations retained for controlled replay. Keeping them
/// alive changes subsequent allocation history. Only the FINAL scratch Vec
/// survives: a later contender may have replaced its earlier allocation or
/// shortened its initialized length. Input/output storage is never resized.
/// No method here grows, copies, resets or executes these buffers.
#[derive(Debug)]
pub struct SelectorBuffers<T: FftNum> {
    input: Vec<num_complex::Complex<T>>,
    output: Vec<num_complex::Complex<T>>,
    scratch: Vec<num_complex::Complex<T>>,
    max_len: usize,
    offsets: [[usize; 3]; 3],
}

/// Disjoint backing slices, including a separate unused output for in-place
/// calls. Pass these to `sample_public_slices` with the requested placement;
/// do not manufacture overlapping mutable references for in-place execution.
#[derive(Debug)]
pub struct SelectorSlices<'a, T: FftNum> {
    pub input: &'a mut [num_complex::Complex<T>],
    pub output: &'a mut [num_complex::Complex<T>],
    pub scratch: &'a mut [num_complex::Complex<T>],
    placement: SamplePlacement,
}

impl<T: FftNum> SelectorSlices<'_, T> {
    /// Effective input/output/scratch addresses. Output aliases input for
    /// InPlace; inactive scratch is zero regardless of its backing allocation.
    pub fn addresses(&self) -> [usize; 3] {
        let input = self.input.as_ptr() as usize;
        [
            input,
            if self.placement == SamplePlacement::InPlace {
                input
            } else {
                self.output.as_ptr() as usize
            },
            if self.scratch.is_empty() {
                0
            } else {
                self.scratch.as_ptr() as usize
            },
        ]
    }

    /// Compare effective addresses with a historical workload. Inactive
    /// scratch returns None: it makes no claim about allocation continuity.
    /// A true scratch result proves equal addresses, not unchanged contents
    /// or uninterrupted allocation lifetime across earlier Vec resizing.
    pub fn address_matches(&self, workload: &WorkloadTrace) -> [Option<bool>; 3] {
        let [input, output, scratch] = self.addresses();
        [
            Some(input == workload.input_ptr),
            Some(output == workload.output_ptr),
            (!self.scratch.is_empty()).then_some(scratch == workload.scratch_ptr),
        ]
    }
}

impl<T: FftNum> SelectorBuffers<T> {
    pub(crate) fn from_parts(
        input: Vec<num_complex::Complex<T>>,
        output: Vec<num_complex::Complex<T>>,
        scratch: Vec<num_complex::Complex<T>>,
        max_len: usize,
        offsets: [[usize; 3]; 3],
    ) -> Self {
        Self {
            input,
            output,
            scratch,
            max_len,
            offsets,
        }
    }

    /// Base pointer, initialized length and capacity for input/output/scratch,
    /// in that order. Lengths/capacities count Complex<T>, not scalar values.
    /// Empty allocation pointers are reported as zero.
    pub fn allocation_layout(&self) -> [[usize; 3]; 3] {
        [&self.input, &self.output, &self.scratch].map(|v| {
            [
                if v.capacity() == 0 {
                    0
                } else {
                    v.as_ptr() as usize
                },
                v.len(),
                v.capacity(),
            ]
        })
    }

    /// Borrow one of the selector's original offset triples, without any FFT
    /// invocation or allocation. `len` must hold complete transforms and fit
    /// the selector's original maximum workload. Scratch is sized for `fft`
    /// and placement; unavailable FINAL scratch returns an error, never grows.
    ///
    /// Example: take `trace.selector_buffers.as_mut()`, call this with
    /// `trace.baseline.as_ref(), 0, SamplePlacement::InPlace, trace.len`, then
    /// pass the three slice fields to `sample_public_slices`. Before claiming
    /// original-location replay, compare `address_matches` with the recorded
    /// workload. InPlace and Immutable preserve the same public API semantics
    /// as that sampler; requesting slices alone does not modify their contents.
    pub fn slices_mut(
        &mut self,
        fft: &dyn Fft<T>,
        offset_index: usize,
        placement: SamplePlacement,
        len: usize,
    ) -> Result<SelectorSlices<'_, T>, &'static str> {
        let [i, o, s] = *self
            .offsets
            .get(offset_index)
            .ok_or("invalid selector offset index")?;
        if len == 0 || fft.len() == 0 || !len.is_multiple_of(fft.len()) {
            return Err("selector replay length must contain complete transforms");
        }
        if len > self.max_len {
            return Err("selector replay exceeds original maximum workload");
        }
        let input_end = i.checked_add(len).ok_or("selector input range overflow")?;
        let output_end = o.checked_add(len).ok_or("selector output range overflow")?;
        let need = match placement {
            SamplePlacement::InPlace => fft.get_inplace_scratch_len(),
            SamplePlacement::OutOfPlace => fft.get_outofplace_scratch_len(),
            SamplePlacement::Immutable => fft.get_immutable_scratch_len(),
        };
        let scratch_end = s
            .checked_add(need)
            .ok_or("selector scratch range overflow")?;
        fn aligned_checked<T: FftNum>(
            values: &mut [num_complex::Complex<T>],
        ) -> Result<&mut [num_complex::Complex<T>], &'static str> {
            if !values.is_empty() {
                let skip = values.as_ptr().cast::<T>().align_offset(64);
                if skip == usize::MAX || skip.div_ceil(2) > values.len() {
                    return Err("selector allocation lacks alignment slack");
                }
            }
            Ok(crate::scratch::aligned(values))
        }
        let input = aligned_checked(&mut self.input)?
            .get_mut(i..input_end)
            .ok_or("selector input range unavailable")?;
        let output = aligned_checked(&mut self.output)?
            .get_mut(o..output_end)
            .ok_or("selector output range unavailable")?;
        let scratch = if need == 0 {
            &mut self.scratch[..0]
        } else {
            aligned_checked(&mut self.scratch)?
                .get_mut(s..scratch_end)
                .ok_or("selector final scratch range unavailable")?
        };
        Ok(SelectorSlices {
            input,
            output,
            scratch,
            placement,
        })
    }
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
            .field("planning_control", &self.planning_control)
            .field(
                "selector_buffers",
                &self
                    .selector_buffers
                    .as_ref()
                    .map(SelectorBuffers::allocation_layout),
            )
            .field(
                "nominated_contender",
                &self
                    .nominated_contender
                    .as_ref()
                    .map(|(i, p)| (*i, Arc::as_ptr(p))),
            )
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
    arm_measure_trace(None, None)
}

/// Also retain the original selector input/output and final scratch allocation
/// after selection, plus one nominated contender (index 1..=7) after its compare
/// completes, even if rejected. This explicitly changes subsequent allocator
/// lifetimes. Decision rules and `chosen` semantics remain unchanged; the
/// nomination does not require a promotion or force an incomplete comparison.
pub fn begin_measure_trace_with_buffers(candidate_index: usize) -> Result<(), &'static str> {
    if !(1..8).contains(&candidate_index) {
        return Err("nominated contender index must be in 1..=7");
    }
    arm_measure_trace(Some(candidate_index), None)
}

/// Retain nominee 1 and the selector allocations, then run a fixed diagnostic
/// only for f32 inverse N=96 with the expected YMM 8x12/16x6 pair. The original
/// choice and elapsed selection time are frozen before the intervention;
/// total public planning latency still includes its cost. No eligible pair
/// (including an unvisited nominee) produces `planning_control: None`.
/// Both crossover routes reach Buffers::sample, directly or through an extra
/// helper frame. This deliberately perturbs code, stack and later history.
pub fn begin_measure_trace_with_planning_control(process_index: usize) -> Result<(), &'static str> {
    arm_measure_trace(Some(1), Some(process_index))
}

fn arm_measure_trace(
    nominated_index: Option<usize>,
    planning_control_process: Option<usize>,
) -> Result<(), &'static str> {
    TRACE.with(|slot| {
        let mut slot = slot.borrow_mut();
        if slot.armed.is_some() || slot.completed.is_some() {
            return Err("previous measure trace must be drained first");
        }
        let mut data = Box::<MeasureTraceData>::default();
        data.retain_buffers = nominated_index.is_some();
        data.nominated_index = nominated_index;
        data.planning_control_process = planning_control_process;
        slot.armed = Some(data);
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
mod storage_swap_tests {
    use super::*;
    use crate::engine::stockham::StockhamPlan;
    use crate::fft::{FftImpl, Kernel};

    fn plan<T: FftNum>(dir: FftDirection) -> Arc<dyn Fft<T>> {
        Arc::new(FftImpl::new(
            16,
            dir,
            Kernel::Stockham {
                shape: Shape {
                    isa: Isa::Scalar,
                    lanes: 1,
                },
                plan: StockhamPlan::with_cache(16, 1, vec![4, 4], 0),
            },
        ))
    }

    fn regions<T: FftNum>(fft: &Arc<dyn Fft<T>>) -> Vec<(RegionKind, [usize; 6])> {
        let mut result = Vec::new();
        fft.diagnostic_regions(&mut |r| {
            result.push((
                r.kind,
                [r.owner, r.index, r.ptr, r.element_bytes, r.len, r.capacity],
            ))
        });
        result
    }

    fn phase_b(v: &[(RegionKind, [usize; 6])]) -> usize {
        v.iter()
            .find(|r| r.0 == RegionKind::PhaseBTwiddles)
            .unwrap()
            .1[2]
    }

    fn check_swap<T: FftNum>() {
        let mut a = plan::<T>(FftDirection::Forward);
        let mut b = plan::<T>(FftDirection::Forward);
        let original_a = regions(&a);
        let original_b = regions(&b);
        assert_ne!(phase_b(&original_a), phase_b(&original_b));
        swap_stockham_phase_b_storage(&mut a, &mut b).unwrap();
        let mut expected_a = original_a.clone();
        let mut expected_b = original_b.clone();
        for r in &mut expected_a {
            if r.0 == RegionKind::PhaseBTwiddles {
                r.1[2] = phase_b(&original_b);
            }
        }
        for r in &mut expected_b {
            if r.0 == RegionKind::PhaseBTwiddles {
                r.1[2] = phase_b(&original_a);
            }
        }
        assert_eq!(regions(&a), expected_a);
        assert_eq!(regions(&b), expected_b);
        for fft in [&a, &b] {
            let zero = num_complex::Complex::new(T::zero(), T::zero());
            let mut input = vec![zero; 16];
            input[0].re = T::one();
            let mut scratch = vec![zero; fft.get_inplace_scratch_len()];
            fft.process_with_scratch(&mut input, &mut scratch);
            assert!(input.iter().all(|x| x.re == T::one() && x.im == T::zero()));
        }
        swap_stockham_phase_b_storage(&mut a, &mut b).unwrap();
        assert_eq!(regions(&a), original_a);
        assert_eq!(regions(&b), original_b);
    }

    #[test]
    fn phase_b_exchange_preserves_objects_other_regions_and_output_f32_f64() {
        check_swap::<f32>();
        check_swap::<f64>();
    }

    fn check_graph_swap<T: FftNum>(phase_b: bool, remaining: bool) {
        let mut a = plan::<T>(FftDirection::Forward);
        let mut b = plan::<T>(FftDirection::Forward);
        let original_a = regions(&a);
        let original_b = regions(&b);
        swap_stockham_storage(&mut a, &mut b, phase_b, remaining).unwrap();
        let mut expected_a = original_a.clone();
        let mut expected_b = original_b.clone();
        for (expected, other) in [
            (&mut expected_a, &original_b),
            (&mut expected_b, &original_a),
        ] {
            for (r, original) in expected.iter_mut().zip(other) {
                let exchanged = (phase_b && r.0 == RegionKind::PhaseBTwiddles)
                    || (remaining
                        && matches!(
                            r.0,
                            RegionKind::Radices
                                | RegionKind::VectorDescriptors
                                | RegionKind::Twiddles
                        ));
                if exchanged {
                    assert_ne!(r.1[2], original.1[2]);
                    r.1[2] = original.1[2];
                }
            }
        }
        assert_eq!(regions(&a), expected_a);
        assert_eq!(regions(&b), expected_b);
        for fft in [&a, &b] {
            let zero = num_complex::Complex::new(T::zero(), T::zero());
            let mut input = vec![zero; 16];
            input[0].re = T::one();
            let mut scratch = vec![zero; fft.get_inplace_scratch_len()];
            fft.process_with_scratch(&mut input, &mut scratch);
            assert!(input.iter().all(|x| x.re == T::one() && x.im == T::zero()));
        }
        swap_stockham_storage(&mut a, &mut b, phase_b, remaining).unwrap();
        assert_eq!(regions(&a), original_a);
        assert_eq!(regions(&b), original_b);
    }

    #[test]
    fn remaining_and_joint_graph_exchange_preserve_untargeted_regions_and_output() {
        for mask in [(false, true), (true, true)] {
            check_graph_swap::<f32>(mask.0, mask.1);
            check_graph_swap::<f64>(mask.0, mask.1);
        }
    }

    #[test]
    fn graph_noop_preserves_all_regions_and_requires_unique_ownership() {
        check_graph_swap::<f32>(false, false);
        check_graph_swap::<f64>(false, false);
        let mut a = plan::<f32>(FftDirection::Forward);
        let mut b = plan::<f32>(FftDirection::Forward);
        let before = (regions(&a), regions(&b));
        let _alias = Arc::clone(&a);
        assert!(swap_stockham_storage(&mut a, &mut b, false, false).is_err());
        assert_eq!((regions(&a), regions(&b)), before);
    }

    #[test]
    fn graph_masks_compose_and_joint_exchange_restores_both_factors() {
        let mut a = plan::<f32>(FftDirection::Forward);
        let mut b = plan::<f32>(FftDirection::Forward);
        let before = (regions(&a), regions(&b));
        swap_stockham_storage(&mut a, &mut b, false, true).unwrap();
        swap_stockham_phase_b_storage(&mut a, &mut b).unwrap();
        let both = (regions(&a), regions(&b));
        swap_stockham_storage(&mut a, &mut b, true, true).unwrap();
        assert_eq!((regions(&a), regions(&b)), before);
        swap_stockham_storage(&mut a, &mut b, true, true).unwrap();
        assert_eq!((regions(&a), regions(&b)), both);
        swap_stockham_storage(&mut a, &mut b, true, true).unwrap();
        assert_eq!((regions(&a), regions(&b)), before);
    }

    #[test]
    fn phase_b_exchange_rejects_strong_and_weak_aliases_without_mutation() {
        let mut a = plan::<f32>(FftDirection::Forward);
        let mut b = plan::<f32>(FftDirection::Forward);
        let before = (regions(&a), regions(&b));
        let alias = Arc::clone(&b);
        assert!(swap_stockham_phase_b_storage(&mut a, &mut b).is_err());
        assert_eq!((regions(&a), regions(&b)), before);
        drop(alias);
        let weak = Arc::downgrade(&a);
        assert!(swap_stockham_phase_b_storage(&mut a, &mut b).is_err());
        assert_eq!((regions(&a), regions(&b)), before);
        drop(weak);
        swap_stockham_phase_b_storage(&mut a, &mut b).unwrap();
        swap_stockham_phase_b_storage(&mut a, &mut b).unwrap();
        assert_eq!((regions(&a), regions(&b)), before);
    }

    #[test]
    fn phase_b_exchange_rejects_direction_and_non_stockham_without_mutation() {
        let mut a = plan::<f32>(FftDirection::Forward);
        let mut b = plan::<f32>(FftDirection::Inverse);
        let before = (regions(&a), regions(&b));
        assert!(swap_stockham_phase_b_storage(&mut a, &mut b).is_err());
        assert_eq!((regions(&a), regions(&b)), before);
        let mut a: Arc<dyn Fft<f32>> =
            Arc::new(FftImpl::new(1, FftDirection::Forward, Kernel::Identity));
        let mut b: Arc<dyn Fft<f32>> =
            Arc::new(FftImpl::new(1, FftDirection::Forward, Kernel::Identity));
        let before = (regions(&a), regions(&b));
        assert!(swap_stockham_phase_b_storage(&mut a, &mut b).is_err());
        assert_eq!((regions(&a), regions(&b)), before);
    }

    #[test]
    fn diagnostic_equality_is_bitwise_in_both_precisions() {
        assert!(!diagnostic_values_equal(&[0.0f32], &[-0.0]));
        assert!(!diagnostic_values_equal(&[0.0f64], &[-0.0]));
        let a = f32::from_bits(0x7fc0_0001);
        let b = f32::from_bits(0x7fc0_0002);
        assert!(diagnostic_values_equal(&[a], &[a]));
        assert!(!diagnostic_values_equal(&[a], &[b]));
        let a = f64::from_bits(0x7ff8_0000_0000_0001);
        let b = f64::from_bits(0x7ff8_0000_0000_0002);
        assert!(diagnostic_values_equal(&[a], &[a]));
        assert!(!diagnostic_values_equal(&[a], &[b]));
        assert!(!diagnostic_values_equal(&[1.0f64], &[]));
    }
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
        assert!(trace.selector_buffers.is_none());
        assert!(trace.nominated_contender.is_none());
        assert!(!trace.data.overflow);
        assert_eq!(
            trace.data.candidate_outcomes[0],
            CandidateOutcome::Incumbent
        );
        assert!(take_measure_trace::<f32>().unwrap().is_none());
    }

    #[test]
    fn buffer_capture_is_explicit_and_zero_budget_does_not_invent_a_contender() {
        assert!(begin_measure_trace_with_buffers(0).is_err());
        assert!(begin_measure_trace_with_buffers(8).is_err());
        begin_measure_trace_with_buffers(1).unwrap();
        assert!(begin_measure_trace().is_err());
        let candidate = crate::planner::estimate(16, Isa::Scalar, false).unwrap();
        let baseline =
            crate::planner::build_candidate::<f32>(16, FftDirection::Forward, &candidate);
        let (_, chosen) = crate::measure::pick(
            16,
            FftDirection::Forward,
            Isa::Scalar,
            Arc::clone(&baseline),
            &[candidate.clone(), candidate],
            std::time::Duration::ZERO,
        )
        .unwrap();
        let trace = take_measure_trace::<f32>().unwrap().unwrap();
        assert!(Arc::ptr_eq(&chosen, &baseline));
        assert!(Arc::ptr_eq(&trace.baseline, &trace.chosen));
        assert!(trace.selector_buffers.is_none());
        assert!(trace.nominated_contender.is_none());
        assert_eq!(
            trace.data.candidate_outcomes[1],
            CandidateOutcome::Unvisited
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

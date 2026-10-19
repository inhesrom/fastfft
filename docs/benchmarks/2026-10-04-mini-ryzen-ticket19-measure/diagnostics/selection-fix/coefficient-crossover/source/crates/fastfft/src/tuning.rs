//! Developer-only tuning API. Not part of the supported FFT API.
use crate::api::{Fft, FftDirection, FftNum};
use crate::engine::Shape;
use crate::isa::Isa;
use crate::planner::{Candidate, CandidateKernel};
use std::sync::Arc;

/// A rejected coefficient-ownership intervention leaves both plans unchanged.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum CoefficientSwapError {
    SharedOwnership,
    UnsupportedPlan,
    TypeMismatch,
    ConfigurationMismatch,
    StorageMismatch,
    ValuesMismatch,
}

/// Exchange only existing, bitwise-equal coefficient owners of two direct
/// Stockham or Small plans. No allocation, copying, rebuilding or execution.
///
/// Both Arcs must have exactly one strong owner and no Weak owners. Wrappers
/// are not traversed. `exchange=false` performs the identical full validation
/// without mutation. A second successful exchange restores original ownership.
/// This intervention is diagnostic only, outside all timed execution.
pub fn swap_coefficient_storage<T: FftNum>(
    a: &mut Arc<dyn Fft<T>>,
    b: &mut Arc<dyn Fft<T>>,
    exchange: bool,
) -> Result<(), CoefficientSwapError> {
    if Arc::strong_count(a) != 1
        || Arc::weak_count(a) != 0
        || Arc::strong_count(b) != 1
        || Arc::weak_count(b) != 0
    {
        return Err(CoefficientSwapError::SharedOwnership);
    }
    let a = Arc::get_mut(a).ok_or(CoefficientSwapError::SharedOwnership)?;
    let b = Arc::get_mut(b).ok_or(CoefficientSwapError::SharedOwnership)?;
    a.diagnostic_swap_coefficients(b, exchange)
}

/// FftNum is sealed to f32/f64: every byte is initialized and has no padding.
/// Compare representations rather than floating equality (NaNs and signed zero).
pub(crate) fn coefficient_bits_equal<T: FftNum>(a: &[T], b: &[T]) -> bool {
    if a.len() != b.len() {
        return false;
    }
    // SAFETY: both slices contain initialized f32/f64 values. Their allocation
    // bounds imply the byte lengths fit; u8 imposes no additional alignment.
    unsafe {
        let a = std::slice::from_raw_parts(a.as_ptr().cast::<u8>(), std::mem::size_of_val(a));
        let b = std::slice::from_raw_parts(b.as_ptr().cast::<u8>(), std::mem::size_of_val(b));
        a == b
    }
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
    /// Owned canonical Stockham backing allocation, counted in 64-byte blocks.
    CoefficientStorage,
    /// Borrowed compact pass descriptors within the coefficient backing.
    PassDescriptors,
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
/// Borrowed views have capacity=0 and may overlap their owning allocation;
/// their pointer and length still identify the actual initialized range.
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

#[cfg(test)]
mod coefficient_swap_tests {
    use super::*;
    use crate::engine::stockham::StockhamPlan;
    use crate::fft::{FftImpl, Kernel};
    use num_complex::Complex;

    fn stockham<T: FftNum>(dir: FftDirection) -> Arc<dyn Fft<T>> {
        Arc::new(FftImpl::new(
            16,
            dir,
            Kernel::Stockham {
                shape: Shape {
                    isa: Isa::Scalar,
                    lanes: 1,
                },
                plan: StockhamPlan::new(16, 1, vec![4, 4]),
            },
        ))
    }

    fn small<T: FftNum>(dir: FftDirection) -> Arc<dyn Fft<T>> {
        let shape = Shape {
            isa: Isa::Scalar,
            lanes: 1,
        };
        #[cfg(all(target_arch = "x86_64", feature = "sse2"))]
        let shape = if crate::isa::available(Isa::Sse2) {
            Shape {
                isa: Isa::Sse2,
                lanes: 16 / size_of::<T>(),
            }
        } else {
            shape
        };
        crate::engine::small::build(4, dir, shape)
    }

    fn regions<T: FftNum>(p: &dyn Fft<T>) -> Vec<[usize; 7]> {
        let mut out = Vec::new();
        p.diagnostic_regions(&mut |r| {
            out.push([
                r.owner,
                r.kind as usize,
                r.index,
                r.ptr,
                r.element_bytes,
                r.len,
                r.capacity,
            ])
        });
        out
    }

    fn coefficient_owner<T: FftNum>(p: &dyn Fft<T>) -> usize {
        let mut ptr = 0;
        p.diagnostic_regions(&mut |r| {
            if (r.kind == RegionKind::CoefficientStorage || r.kind == RegionKind::Twiddles)
                && r.capacity != 0
            {
                ptr = r.ptr;
            }
        });
        ptr
    }

    fn check_output<T: FftNum>(p: &dyn Fft<T>) -> Vec<Complex<T>> {
        let n = p.len();
        let mut data = vec![Complex::new(T::zero(), T::zero()); n];
        data[1] = Complex::new(T::one(), T::from_f64(0.25).unwrap());
        let mut scratch = vec![Complex::new(T::zero(), T::zero()); p.get_inplace_scratch_len()];
        p.process_with_scratch(&mut data, &mut scratch);
        let sign = if p.fft_direction() == FftDirection::Inverse {
            1.0
        } else {
            -1.0
        };
        for (k, v) in data.iter().enumerate() {
            let angle = sign * std::f64::consts::TAU * k as f64 / n as f64;
            let (s, c) = angle.sin_cos();
            let tol = T::epsilon().to_f64().unwrap() * 200.0 * n as f64;
            assert!((v.re.to_f64().unwrap() - (c - 0.25 * s)).abs() < tol);
            assert!((v.im.to_f64().unwrap() - (s + 0.25 * c)).abs() < tol);
        }
        data
    }

    fn numeric<T: FftNum>(make: fn(FftDirection) -> Arc<dyn Fft<T>>) {
        for dir in [FftDirection::Forward, FftDirection::Inverse] {
            let mut a = make(dir);
            let mut b = make(dir);
            let before = (regions(a.as_ref()), regions(b.as_ref()));
            let ptrs = (coefficient_owner(a.as_ref()), coefficient_owner(b.as_ref()));
            let expected = check_output(a.as_ref());
            swap_coefficient_storage(&mut a, &mut b, false).unwrap();
            assert_eq!((regions(a.as_ref()), regions(b.as_ref())), before);
            swap_coefficient_storage(&mut a, &mut b, true).unwrap();
            assert_eq!(
                (coefficient_owner(a.as_ref()), coefficient_owner(b.as_ref())),
                (ptrs.1, ptrs.0)
            );
            assert_eq!(check_output(a.as_ref()), expected);
            assert_eq!(check_output(b.as_ref()), expected);
            swap_coefficient_storage(&mut a, &mut b, true).unwrap();
            assert_eq!((regions(a.as_ref()), regions(b.as_ref())), before);
            assert_eq!(check_output(a.as_ref()), expected);
        }
    }

    #[test]
    fn coefficient_swap_stockham_output_and_restoration_both_precisions() {
        numeric::<f32>(stockham::<f32>);
        numeric::<f64>(stockham::<f64>);
    }

    #[test]
    fn coefficient_swap_small_output_and_restoration_both_precisions() {
        numeric::<f32>(small::<f32>);
        numeric::<f64>(small::<f64>);
    }

    #[cfg(all(target_arch = "x86_64", feature = "sse2"))]
    #[test]
    fn coefficient_swap_rectangular_output_and_restoration_both_precisions() {
        if !crate::isa::available(Isa::Sse2) {
            return;
        }
        fn rectangular<T: FftNum>(dir: FftDirection) -> Arc<dyn Fft<T>> {
            let shape = Shape {
                isa: Isa::Sse2,
                lanes: 16 / size_of::<T>(),
            };
            #[cfg(feature = "avx512")]
            let shape = if crate::isa::available(Isa::Avx512Ymm) {
                Shape {
                    isa: Isa::Avx512Ymm,
                    lanes: 32 / size_of::<T>(),
                }
            } else {
                shape
            };
            crate::engine::small::build_rectangular(dir, shape, 8, 12)
        }
        numeric::<f32>(rectangular::<f32>);
        numeric::<f64>(rectangular::<f64>);
    }

    #[test]
    fn coefficient_swap_shared_and_weak_owners_are_rejected_without_mutation() {
        for exchange in [false, true] {
            for side in 0..2 {
                let mut a = stockham::<f32>(FftDirection::Forward);
                let mut b = stockham::<f32>(FftDirection::Forward);
                let before = (regions(a.as_ref()), regions(b.as_ref()));
                let extra = Arc::clone(if side == 0 { &a } else { &b });
                assert_eq!(
                    swap_coefficient_storage(&mut a, &mut b, exchange),
                    Err(CoefficientSwapError::SharedOwnership)
                );
                assert_eq!((regions(a.as_ref()), regions(b.as_ref())), before);
                drop(extra);
                let weak = Arc::downgrade(if side == 0 { &a } else { &b });
                assert_eq!(
                    swap_coefficient_storage(&mut a, &mut b, exchange),
                    Err(CoefficientSwapError::SharedOwnership)
                );
                assert_eq!((regions(a.as_ref()), regions(b.as_ref())), before);
                assert!(weak.upgrade().is_some());
            }
        }
    }

    #[test]
    fn coefficient_swap_rejects_configuration_type_and_kernel_without_mutation() {
        use CoefficientSwapError as E;
        for exchange in [false, true] {
            for fault in 0..6 {
                let mut a = stockham::<f32>(FftDirection::Forward);
                let (mut b, expected): (Arc<dyn Fft<f32>>, E) = match fault {
                    0 => (stockham(FftDirection::Inverse), E::ConfigurationMismatch),
                    1 => (small(FftDirection::Forward), E::TypeMismatch),
                    2 => (
                        Arc::new(FftImpl::new(16, FftDirection::Forward, Kernel::Identity)),
                        E::UnsupportedPlan,
                    ),
                    3 => (
                        Arc::new(FftImpl::new(
                            16,
                            FftDirection::Forward,
                            Kernel::Stockham {
                                shape: Shape {
                                    isa: Isa::Scalar,
                                    lanes: 1,
                                },
                                plan: StockhamPlan::new(16, 1, vec![2, 8]),
                            },
                        )),
                        E::StorageMismatch,
                    ),
                    4 => (
                        Arc::new(FftImpl::new(
                            32,
                            FftDirection::Forward,
                            Kernel::Stockham {
                                shape: Shape {
                                    isa: Isa::Scalar,
                                    lanes: 1,
                                },
                                plan: StockhamPlan::new(32, 1, vec![4, 8]),
                            },
                        )),
                        E::ConfigurationMismatch,
                    ),
                    _ => (
                        Arc::new(FftImpl::new(
                            16,
                            FftDirection::Forward,
                            Kernel::Stockham {
                                shape: Shape {
                                    isa: Isa::Sse2,
                                    lanes: 2,
                                },
                                plan: StockhamPlan::new(16, 2, vec![8]),
                            },
                        )),
                        E::ConfigurationMismatch,
                    ),
                };
                let before = (regions(a.as_ref()), regions(b.as_ref()));
                assert_eq!(
                    swap_coefficient_storage(&mut a, &mut b, exchange),
                    Err(expected)
                );
                assert_eq!((regions(a.as_ref()), regions(b.as_ref())), before);
            }
            let mut a = small::<f32>(FftDirection::Forward);
            let mut b = small::<f32>(FftDirection::Inverse);
            let before = (regions(a.as_ref()), regions(b.as_ref()));
            assert_eq!(
                swap_coefficient_storage(&mut a, &mut b, exchange),
                Err(E::TypeMismatch)
            );
            assert_eq!((regions(a.as_ref()), regions(b.as_ref())), before);
        }
    }
}

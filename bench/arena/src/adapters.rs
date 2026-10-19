//! Library adapters. Each library is driven through its documented fastest
//! API; unsupported cells return `Err(reason)`.

use crate::buffers::{AlignedVec, Buffers, fill_zero};
use crate::spec::{CellSpec, Direction, Placement, Precision};
use crate::timing::{turn, warmup_and_calibrate};
use fastfft_testkit::metrics::ToDd;
use num_complex::Complex;
use std::sync::Arc;
use std::time::Duration;

/// Precision-specific glue.
pub trait ArenaFloat:
    rustfft::FftNum + ToDd + Default + Copy + Send + Sync + core::fmt::Debug + 'static
{
    #[allow(dead_code)]
    const PREC: Precision;
    /// Rounds an `f64` to this type.
    fn lit(x: f64) -> Self;
    /// Widens exactly to `f64`.
    fn val(self) -> f64;
    /// Builds the runner for `lib`, or explains why the cell is unsupported.
    fn make_runner(
        lib: &str,
        cell: &CellSpec,
        bufs: &mut Buffers<Self>,
    ) -> Result<Box<dyn Runner<Self>>, String>;
}

/// One library prepared for one cell.
pub trait Runner<T: ArenaFloat> {
    fn placement(&self) -> Placement;
    /// Loads input data (not timed). The default copies into `bufs.input`.
    fn load(&mut self, bufs: &mut Buffers<T>, data: &[Complex<T>]) {
        bufs.input.as_mut_slice().copy_from_slice(data);
    }
    /// One timed call: transforms every chunk of the buffer.
    fn run(&mut self, bufs: &mut Buffers<T>);
    /// Warm-up and calibration; returns the calls per timed batch.
    ///
    /// This and `turn` are provided methods so that each runner type gets its
    /// own copy of the timing loop, with a direct call to `run`. A loop shared
    /// by all libraries has one indirect call site; the branch predictor keeps
    /// the first library's target there and the others pay a few cycles per
    /// call. Rows with the same runner type (the fastfft ISA rows) still share
    /// one copy.
    fn calibrate(&mut self, bufs: &mut Buffers<T>, warmup: Duration, min_batch: Duration) -> usize {
        warmup_and_calibrate(&mut || self.run(bufs), warmup, min_batch)
    }
    /// One timed turn after a short re-warm (see `timing::turn`).
    fn turn(&mut self, bufs: &mut Buffers<T>, k: usize, time: Duration, out: &mut Vec<f64>) {
        // Short re-warm so the previous library's state is flushed.
        for _ in 0..k.min(8) {
            self.run(bufs);
        }
        turn(&mut || self.run(bufs), k, time, out);
    }
    /// Reads the output after `run` (not timed).
    fn read(&self, bufs: &Buffers<T>) -> Vec<Complex<T>> {
        match self.placement() {
            Placement::InPlace => bufs.input.as_slice().to_vec(),
            _ => bufs.output.as_slice().to_vec(),
        }
    }
    /// Resets all data to zero (timing state).
    fn zero(&mut self, bufs: &mut Buffers<T>) {
        fill_zero(bufs.input.as_mut_slice());
        fill_zero(bufs.output.as_mut_slice());
    }
    /// Multiply this library's output by this to get the unnormalized DFT.
    fn output_scale(&self) -> f64 {
        1.0
    }
    fn notes(&self) -> Vec<String> {
        Vec::new()
    }
    /// Optional plan description (e.g. fastfft's `describe_plan`).
    fn describe(&self) -> Option<String> {
        None
    }
    /// Optional address evidence, captured after all retained planning.
    fn execution_storage(&self, _bufs: &mut Buffers<T>) -> Option<serde_json::Value> {
        None
    }
    #[cfg(any(feature = "measure-diagnostics", feature = "stockham-diagnostics"))]
    #[cfg_attr(
        not(all(target_arch = "x86_64", target_os = "linux")),
        allow(dead_code)
    )]
    fn diagnostic_plan(&self) -> Option<Arc<dyn fastfft::Fft<T>>>
    where
        T: fastfft::FftNum,
    {
        None
    }
    #[cfg(feature = "measure-diagnostics")]
    fn diagnostic_plan_mut(&mut self) -> Option<&mut Arc<dyn fastfft::Fft<T>>>
    where
        T: fastfft::FftNum,
    {
        None
    }
    /// Retained DIT scratch crossover. Selects the scratch view before the batch
    /// loop; unsupported runners return false without executing anything.
    #[cfg(feature = "stockham-diagnostics")]
    #[cfg_attr(
        not(all(target_arch = "x86_64", target_os = "linux")),
        allow(dead_code)
    )]
    fn diagnostic_dit_calls(
        &mut self,
        _bufs: &mut Buffers<T>,
        _shared: bool,
        _calls: usize,
    ) -> bool {
        false
    }

    /// Split-layout libraries expose their own re/im work arrays so real-world
    /// scenarios can write windowed data straight into them.
    fn split_arrays(&mut self) -> Option<(&mut [T], &mut [T])> {
        None
    }
}

// ---------------------------------------------------------------- rustfft

/// Workspace sizing in the parent process; other adapters own their workspace.
pub fn estimate_workspace<T: ArenaFloat + fastfft::FftNum>(
    lib: &str,
    cell: &CellSpec,
) -> Result<usize, String> {
    if lib.starts_with("lab/dit-") && lib.contains("-radices-") {
        let recipe = crate::stockham_reference::Recipe::parse(lib)?;
        return if recipe.shared {
            cell.n
                .checked_add(recipe.shared_offset_bytes / size_of::<Complex<T>>())
                .ok_or_else(|| "shared scratch size overflows".into())
        } else {
            Ok(0)
        };
    }
    if lib.starts_with("fastfft") {
        return crate::fastfft_adapter::estimate_workspace::<T>(lib, cell);
    }
    if lib != "rustfft" {
        return Ok(0);
    }
    let mut planner = rustfft::FftPlanner::<T>::new();
    let fft = match cell.direction {
        Direction::Forward => planner.plan_fft_forward(cell.n),
        Direction::Inverse => planner.plan_fft_inverse(cell.n),
    };
    Ok(match cell.placement {
        Placement::InPlace => fft.get_inplace_scratch_len(),
        Placement::OutOfPlace => fft.get_outofplace_scratch_len(),
        Placement::Immutable => fft.get_immutable_scratch_len(),
    })
}

struct RustFftRunner<T: ArenaFloat> {
    fft: Arc<dyn rustfft::Fft<T>>,
    placement: Placement,
}

impl<T: ArenaFloat> Runner<T> for RustFftRunner<T> {
    fn placement(&self) -> Placement {
        self.placement
    }
    fn run(&mut self, bufs: &mut Buffers<T>) {
        let (input, output, scratch) = bufs.io_scratch_mut();
        match self.placement {
            Placement::InPlace => self.fft.process_with_scratch(input, scratch),
            Placement::OutOfPlace => self
                .fft
                .process_outofplace_with_scratch(input, output, scratch),
            Placement::Immutable => self
                .fft
                .process_immutable_with_scratch(input, output, scratch),
        }
    }
}

fn rustfft_runner<T: ArenaFloat>(
    cell: &CellSpec,
    bufs: &mut Buffers<T>,
) -> Result<Box<dyn Runner<T>>, String> {
    let mut planner = rustfft::FftPlanner::<T>::new();
    let fft = match cell.direction {
        Direction::Forward => planner.plan_fft_forward(cell.n),
        Direction::Inverse => planner.plan_fft_inverse(cell.n),
    };
    let len = match cell.placement {
        Placement::InPlace => fft.get_inplace_scratch_len(),
        Placement::OutOfPlace => fft.get_outofplace_scratch_len(),
        Placement::Immutable => fft.get_immutable_scratch_len(),
    };
    bufs.reserve_scratch(len);
    Ok(Box::new(RustFftRunner {
        fft,
        placement: cell.placement,
    }))
}

// ---------------------------------------------------------------- phastft

fn phastft_check(cell: &CellSpec) -> Result<(), String> {
    if !cell.n.is_power_of_two() {
        return Err("powers of two only".into());
    }
    if cell.placement != Placement::InPlace {
        return Err("in-place only".into());
    }
    Ok(())
}

fn phastft_dir(d: Direction) -> phastft::planner::Direction {
    match d {
        Direction::Forward => phastft::planner::Direction::Forward,
        Direction::Inverse => phastft::planner::Direction::Inverse,
    }
}

macro_rules! phastft_runners {
    ($split:ident, $inter:ident, $t:ty, $planner:ty, $fft:path, $fft_i:path) => {
        struct $split {
            planner: $planner,
            re: AlignedVec<$t>,
            im: AlignedVec<$t>,
            n: usize,
            dir: Direction,
        }
        impl Runner<$t> for $split {
            fn placement(&self) -> Placement {
                Placement::InPlace
            }
            fn load(&mut self, _bufs: &mut Buffers<$t>, data: &[Complex<$t>]) {
                for (i, c) in data.iter().enumerate() {
                    self.re.as_mut_slice()[i] = c.re;
                    self.im.as_mut_slice()[i] = c.im;
                }
            }
            fn run(&mut self, _bufs: &mut Buffers<$t>) {
                let d = phastft_dir(self.dir);
                for (re, im) in self
                    .re
                    .as_mut_slice()
                    .chunks_exact_mut(self.n)
                    .zip(self.im.as_mut_slice().chunks_exact_mut(self.n))
                {
                    $fft(re, im, d, &self.planner);
                }
            }
            fn read(&self, _bufs: &Buffers<$t>) -> Vec<Complex<$t>> {
                self.re
                    .as_slice()
                    .iter()
                    .zip(self.im.as_slice())
                    .map(|(&r, &i)| Complex::new(r, i))
                    .collect()
            }
            fn split_arrays(&mut self) -> Option<(&mut [$t], &mut [$t])> {
                Some((self.re.as_mut_slice(), self.im.as_mut_slice()))
            }
            fn zero(&mut self, bufs: &mut Buffers<$t>) {
                self.re.as_mut_slice().fill(0.0);
                self.im.as_mut_slice().fill(0.0);
                fill_zero(bufs.input.as_mut_slice());
            }
            fn output_scale(&self) -> f64 {
                if self.dir == Direction::Inverse {
                    self.n as f64
                } else {
                    1.0
                }
            }
            fn notes(&self) -> Vec<String> {
                if self.dir == Direction::Inverse {
                    vec!["normalizes inverse by 1/N".into()]
                } else {
                    Vec::new()
                }
            }
        }

        struct $inter {
            planner: $planner,
            n: usize,
            dir: Direction,
        }
        impl Runner<$t> for $inter {
            fn placement(&self) -> Placement {
                Placement::InPlace
            }
            fn run(&mut self, bufs: &mut Buffers<$t>) {
                let d = phastft_dir(self.dir);
                for chunk in bufs.input.as_mut_slice().chunks_exact_mut(self.n) {
                    $fft_i(chunk, d, &self.planner);
                }
            }
            fn output_scale(&self) -> f64 {
                if self.dir == Direction::Inverse {
                    self.n as f64
                } else {
                    1.0
                }
            }
            fn notes(&self) -> Vec<String> {
                let mut v = vec!["interleaved API deinterleaves into temporary Vecs".to_string()];
                if self.dir == Direction::Inverse {
                    v.push("normalizes inverse by 1/N".into());
                }
                v
            }
        }
    };
}

phastft_runners!(
    PhastSplit32,
    PhastInter32,
    f32,
    phastft::planner::PlannerDit32,
    phastft::fft_f32_dit_with_planner,
    phastft::fft_f32_dit_interleaved_with_planner
);
phastft_runners!(
    PhastSplit64,
    PhastInter64,
    f64,
    phastft::planner::PlannerDit64,
    phastft::fft_f64_dit_with_planner,
    phastft::fft_f64_dit_interleaved_with_planner
);

// ---------------------------------------------------------------- tfhe-fft

struct TfheRunner {
    plan: tfhe_fft::ordered::Plan,
    mem: dyn_stack::PodBuffer,
    n: usize,
    dir: Direction,
}

impl Runner<f64> for TfheRunner {
    fn placement(&self) -> Placement {
        Placement::InPlace
    }
    fn run(&mut self, bufs: &mut Buffers<f64>) {
        for chunk in bufs.input.as_mut_slice().chunks_exact_mut(self.n) {
            let stack = dyn_stack::PodStack::new(&mut self.mem);
            match self.dir {
                Direction::Forward => self.plan.fwd(chunk, stack),
                Direction::Inverse => self.plan.inv(chunk, stack),
            }
        }
    }
    fn describe(&self) -> Option<String> {
        Some(format!("{:?}", self.plan.algo()))
    }
}

fn tfhe_runner(cell: &CellSpec) -> Result<Box<dyn Runner<f64>>, String> {
    if !cell.n.is_power_of_two() || cell.n > 1024 {
        return Err("ordered plans support powers of two <= 1024 only".into());
    }
    if cell.n < 2 {
        return Err("n < 2".into());
    }
    if cell.placement != Placement::InPlace {
        return Err("in-place only".into());
    }
    let n = cell.n;
    let plan = std::panic::catch_unwind(|| {
        tfhe_fft::ordered::Plan::new(
            n,
            tfhe_fft::ordered::Method::Measure(std::time::Duration::from_millis(50)),
        )
    })
    .map_err(|_| "planner panicked".to_string())?;
    let mem = dyn_stack::PodBuffer::try_new(plan.fft_scratch()).map_err(|e| format!("{e:?}"))?;
    Ok(Box::new(TfheRunner {
        plan,
        mem,
        n,
        dir: cell.direction,
    }))
}

// ---------------------------------------------------------------- oxifft

struct OxiRunner<T: oxifft::Float> {
    plan: oxifft::Plan<T>,
    n: usize,
    placement: Placement,
}

fn as_oxi<T: oxifft::Float>(x: &[Complex<T>]) -> &[oxifft::Complex<T>] {
    // SAFETY: both types are #[repr(C)] { re: T, im: T }.
    unsafe { std::slice::from_raw_parts(x.as_ptr().cast(), x.len()) }
}

fn as_oxi_mut<T: oxifft::Float>(x: &mut [Complex<T>]) -> &mut [oxifft::Complex<T>] {
    // SAFETY: both types are #[repr(C)] { re: T, im: T }.
    unsafe { std::slice::from_raw_parts_mut(x.as_mut_ptr().cast(), x.len()) }
}

impl<T: oxifft::Float + ArenaFloat> Runner<T> for OxiRunner<T> {
    fn placement(&self) -> Placement {
        self.placement
    }
    fn run(&mut self, bufs: &mut Buffers<T>) {
        let n = self.n;
        let (input, output) = bufs.io_mut();
        match self.placement {
            Placement::InPlace => {
                for c in input.chunks_exact_mut(n) {
                    self.plan.execute_inplace(as_oxi_mut(c));
                }
            }
            _ => {
                for (i, o) in input.chunks_exact(n).zip(output.chunks_exact_mut(n)) {
                    self.plan.execute(as_oxi(i), as_oxi_mut(o));
                }
            }
        }
    }
    fn describe(&self) -> Option<String> {
        Some(self.plan.algorithm_name().to_string())
    }
}

fn oxi_runner<T: oxifft::Float + ArenaFloat>(
    cell: &CellSpec,
) -> Result<Box<dyn Runner<T>>, String> {
    let dir = match cell.direction {
        Direction::Forward => oxifft::Direction::Forward,
        Direction::Inverse => oxifft::Direction::Backward,
    };
    let plan = oxifft::Plan::<T>::dft_1d(cell.n, dir, oxifft::Flags::MEASURE)
        .ok_or_else(|| "plan construction failed".to_string())?;
    Ok(Box::new(OxiRunner {
        plan,
        n: cell.n,
        placement: cell.placement,
    }))
}

// ---------------------------------------------------------------- kernel-lab (M2)

// Lab scratch is 64-byte aligned like the library's: a 16-byte-aligned `Vec`
// splits 256-bit accesses across cache lines whenever the heap layout shifts
// (~20% at N >= 4096, ADR-0001 §7), which made lab rows depend on which other
// libraries shared the process.
#[cfg(target_arch = "x86_64")]
fn lab_scratch<T: Copy>(n: usize) -> AlignedVec<Complex<T>> {
    AlignedVec::zeroed(n, 0)
}

#[cfg(target_arch = "x86_64")]
struct LabRunner<T: ArenaFloat + kernel_lab::LabFloat> {
    plan: kernel_lab::Plan<T>,
    scratch: AlignedVec<Complex<T>>,
    n: usize,
}

#[cfg(target_arch = "x86_64")]
impl<T: ArenaFloat + kernel_lab::LabFloat> Runner<T> for LabRunner<T> {
    fn placement(&self) -> Placement {
        Placement::InPlace
    }
    fn run(&mut self, bufs: &mut Buffers<T>) {
        for c in bufs.input.as_mut_slice().chunks_exact_mut(self.n) {
            T::run(&self.plan, c, self.scratch.as_mut_slice());
        }
    }
    fn describe(&self) -> Option<String> {
        Some(format!("radices={:?} L={}", self.plan.radices, self.plan.l))
    }
}

#[cfg(target_arch = "x86_64")]
struct DitRunner<T: ArenaFloat + kernel_lab::dit::DitFloat> {
    plan: kernel_lab::dit::DitPlan<T>,
    s1: AlignedVec<Complex<T>>,
    s2: AlignedVec<Complex<T>>,
    n: usize,
}

#[cfg(target_arch = "x86_64")]
impl<T: ArenaFloat + kernel_lab::dit::DitFloat> Runner<T> for DitRunner<T> {
    fn placement(&self) -> Placement {
        Placement::InPlace
    }
    fn run(&mut self, bufs: &mut Buffers<T>) {
        for c in bufs.input.as_mut_slice().chunks_exact_mut(self.n) {
            T::run_dit(
                &self.plan,
                c,
                self.s1.as_mut_slice(),
                self.s2.as_mut_slice(),
            );
        }
    }
    fn describe(&self) -> Option<String> {
        Some(format!(
            "dit radices={:?} L={}",
            self.plan.radices, self.plan.l
        ))
    }
    fn execution_storage(&self, bufs: &mut Buffers<T>) -> Option<serde_json::Value> {
        Some(self.storage(bufs, false))
    }
    #[cfg(feature = "stockham-diagnostics")]
    fn diagnostic_dit_calls(&mut self, bufs: &mut Buffers<T>, shared: bool, calls: usize) -> bool {
        self.crossover_calls(bufs, shared, calls);
        true
    }
}

#[cfg(target_arch = "x86_64")]
impl<T: ArenaFloat + kernel_lab::dit::DitFloat> DitRunner<T> {
    #[cfg(feature = "stockham-diagnostics")]
    #[inline(never)]
    fn crossover_calls(&mut self, bufs: &mut Buffers<T>, shared: bool, calls: usize) {
        let (input, _, caller_scratch) = bufs.io_scratch_mut();
        let scratch = if shared {
            &mut caller_scratch[..self.n]
        } else {
            self.s1.as_mut_slice()
        };
        for _ in 0..calls {
            for chunk in input.chunks_exact_mut(self.n) {
                T::run_dit(&self.plan, chunk, scratch, self.s2.as_mut_slice());
            }
        }
    }

    fn storage(&self, bufs: &mut Buffers<T>, shared: bool) -> serde_json::Value {
        let (input, output, scratch) = bufs.io_scratch_mut();
        let active = if shared {
            &scratch[..self.n]
        } else {
            self.s1.as_slice()
        };
        let value = serde_json::json!({
            "route": if shared { "shared-caller-scratch" } else { "private-scratch" },
            "runner": self as *const Self as usize,
            "input": crate::stockham_reference::view(input),
            "output": crate::stockham_reference::view(output),
            "reserved_caller_scratch": crate::stockham_reference::view(scratch),
            "active_scratch": crate::stockham_reference::view(active),
            "retained_s1": crate::stockham_reference::view(self.s1.as_slice()),
            "retained_unused_s2": crate::stockham_reference::view(self.s2.as_slice()),
        });
        #[cfg(feature = "stockham-diagnostics")]
        let value = {
            let mut value = value;
            let (passes, phase_b, phase_b_capacity) = self.plan.coefficient_storage();
            value["plan"] = serde_json::json!(std::ptr::from_ref(&self.plan) as usize);
            value["crossover_batch_entry"] =
                serde_json::json!(Self::crossover_calls as *const () as usize);
            value["pass_descriptors"] = crate::stockham_reference::view(passes);
            value["coefficients"] = serde_json::json!({
                "phase_a":passes.iter().map(|p|serde_json::json!({
                    "view":crate::stockham_reference::view(p.as_slice()),"capacity":p.capacity()
                })).collect::<Vec<_>>(),
                "phase_b":{"view":crate::stockham_reference::view(phase_b),"capacity":phase_b_capacity}
            });
            value
        };
        value
    }
}

/// Separate timing entry keeps the original adapter's private-scratch loop.
/// Both original allocations remain alive throughout the shared intervention.
#[cfg(target_arch = "x86_64")]
struct SharedDitRunner<T: ArenaFloat + kernel_lab::dit::DitFloat>(DitRunner<T>);

#[cfg(target_arch = "x86_64")]
impl<T: ArenaFloat + kernel_lab::dit::DitFloat> Runner<T> for SharedDitRunner<T> {
    fn placement(&self) -> Placement {
        Placement::InPlace
    }
    fn run(&mut self, bufs: &mut Buffers<T>) {
        let (input, _, scratch) = bufs.io_scratch_mut();
        for c in input.chunks_exact_mut(self.0.n) {
            T::run_dit(
                &self.0.plan,
                c,
                &mut scratch[..self.0.n],
                self.0.s2.as_mut_slice(),
            );
        }
    }
    fn describe(&self) -> Option<String> {
        self.0.describe()
    }
    fn execution_storage(&self, bufs: &mut Buffers<T>) -> Option<serde_json::Value> {
        Some(self.0.storage(bufs, true))
    }
    #[cfg(feature = "stockham-diagnostics")]
    fn diagnostic_dit_calls(&mut self, bufs: &mut Buffers<T>, shared: bool, calls: usize) -> bool {
        self.0.crossover_calls(bufs, shared, calls);
        true
    }
}

/// Fixed-offset control; never changes its displacement to match a result.
/// The original private and shared-base timing entries remain separate.
#[cfg(target_arch = "x86_64")]
struct OffsetSharedDitRunner<T: ArenaFloat + kernel_lab::dit::DitFloat> {
    runner: DitRunner<T>,
    offset: usize,
}

#[cfg(target_arch = "x86_64")]
impl<T: ArenaFloat + kernel_lab::dit::DitFloat> OffsetSharedDitRunner<T> {
    #[inline(never)]
    fn calls(&mut self, bufs: &mut Buffers<T>, calls: usize) {
        let (input, _, scratch) = bufs.io_scratch_mut();
        let scratch = &mut scratch[self.offset..self.offset + self.runner.n];
        for _ in 0..calls {
            for chunk in input.chunks_exact_mut(self.runner.n) {
                T::run_dit(
                    &self.runner.plan,
                    chunk,
                    scratch,
                    self.runner.s2.as_mut_slice(),
                );
            }
        }
    }
}

#[cfg(target_arch = "x86_64")]
impl<T: ArenaFloat + kernel_lab::dit::DitFloat> Runner<T> for OffsetSharedDitRunner<T> {
    fn placement(&self) -> Placement {
        Placement::InPlace
    }
    fn run(&mut self, bufs: &mut Buffers<T>) {
        self.calls(bufs, 1);
    }
    fn turn(&mut self, bufs: &mut Buffers<T>, k: usize, time: Duration, out: &mut Vec<f64>) {
        self.calls(bufs, k.min(8));
        let start = std::time::Instant::now();
        loop {
            let batch = std::time::Instant::now();
            self.calls(bufs, k);
            out.push(batch.elapsed().as_nanos() as f64 / k as f64);
            if start.elapsed() >= time {
                break;
            }
        }
    }
    fn describe(&self) -> Option<String> {
        self.runner.describe()
    }
    fn execution_storage(&self, bufs: &mut Buffers<T>) -> Option<serde_json::Value> {
        let mut value = self.runner.storage(bufs, true);
        let (_, _, scratch) = bufs.io_scratch_mut();
        value["active_scratch"] =
            crate::stockham_reference::view(&scratch[self.offset..self.offset + self.runner.n]);
        value["route"] = serde_json::json!("shared-caller-scratch-offset1024");
        value["scratch_offset_bytes"] = serde_json::json!(self.offset * size_of::<Complex<T>>());
        Some(value)
    }
}

/// `lab/dit-<zmm|ymm>-r<radix>`: the M3-design prototype.
#[cfg(target_arch = "x86_64")]
fn dit_runner<T: ArenaFloat + kernel_lab::dit::DitFloat + kernel_lab::cplx::FromF64>(
    lib: &str,
    cell: &CellSpec,
    bufs: &mut Buffers<T>,
) -> Result<Box<dyn Runner<T>>, String> {
    if cell.direction != Direction::Forward || cell.placement != Placement::InPlace {
        return Err("lab kernels: forward in-place only".into());
    }
    if !kernel_lab::Tier::Avx512.detected() {
        return Err("needs AVX-512".into());
    }
    let (mut plan, w, shared, offset_bytes) = if lib.contains("-radices-") {
        let recipe = crate::stockham_reference::Recipe::parse(lib)?;
        let plan = kernel_lab::dit::DitPlan::<T>::with_radices(
            cell.n,
            recipe.width == "zmm",
            recipe.radices,
        )
        .ok_or("recipe product must equal N/L, with full Phase-B blocks")?;
        (
            plan,
            recipe.width,
            recipe.shared,
            recipe.shared_offset_bytes,
        )
    } else {
        let rest = lib.strip_prefix("lab/dit-").ok_or("bad dit name")?;
        let (w, r) = rest.split_once("-r").ok_or("bad dit name")?;
        if !matches!(w, "ymm" | "zmm" | "avx2") {
            return Err("dit width must be ymm, zmm or avx2".into());
        }
        let r: usize = r.parse().map_err(|_| "bad radix")?;
        if !matches!(r, 2 | 4 | 8 | 16) {
            return Err("unsupported maximum radix".into());
        }
        let plan = kernel_lab::dit::DitPlan::<T>::new(cell.n, w == "zmm", r)
            .ok_or("size not supported")?;
        (plan, w.into(), false, 0)
    };
    plan.avx2_only = w == "avx2";
    if shared {
        bufs.reserve_scratch(
            cell.n
                .checked_add(offset_bytes / size_of::<Complex<T>>())
                .ok_or("shared scratch size overflows")?,
        );
    }
    let runner = DitRunner {
        plan,
        s1: lab_scratch(cell.n),
        s2: lab_scratch(cell.n),
        n: cell.n,
    };
    if offset_bytes != 0 {
        Ok(Box::new(OffsetSharedDitRunner {
            runner,
            offset: offset_bytes / size_of::<Complex<T>>(),
        }))
    } else if shared {
        Ok(Box::new(SharedDitRunner(runner)))
    } else {
        Ok(Box::new(runner))
    }
}

#[cfg(target_arch = "x86_64")]
fn lab_runner<T: ArenaFloat + kernel_lab::LabFloat + kernel_lab::dit::DitFloat>(
    lib: &str,
    cell: &CellSpec,
    bufs: &mut Buffers<T>,
) -> Result<Box<dyn Runner<T>>, String> {
    if lib.starts_with("lab/dit-") {
        return dit_runner::<T>(lib, cell, bufs);
    }
    let (layout, tier, r) = kernel_lab::parse_variant(lib).ok_or("unknown lab variant")?;
    if cell.direction != Direction::Forward || cell.placement != Placement::InPlace {
        return Err("lab kernels: forward in-place only".into());
    }
    if !tier.detected() {
        return Err("tier not available on this CPU".into());
    }
    let plan = kernel_lab::Plan::<T>::new(cell.n, layout, tier, r).ok_or("size not supported")?;
    Ok(Box::new(LabRunner {
        plan,
        scratch: lab_scratch(cell.n),
        n: cell.n,
    }))
}

// ---------------------------------------------------------------- dispatch

#[cfg(not(target_arch = "x86_64"))]
fn lab_runner<T: ArenaFloat>(
    _lib: &str,
    _cell: &CellSpec,
    _bufs: &mut Buffers<T>,
) -> Result<Box<dyn Runner<T>>, String> {
    Err("kernel-lab requires x86_64".into())
}

fn unknown(lib: &str) -> String {
    format!("unknown library `{lib}`")
}

impl ArenaFloat for f32 {
    const PREC: Precision = Precision::F32;
    fn lit(x: f64) -> Self {
        x as f32
    }
    fn val(self) -> f64 {
        f64::from(self)
    }
    fn make_runner(
        lib: &str,
        cell: &CellSpec,
        bufs: &mut Buffers<f32>,
    ) -> Result<Box<dyn Runner<f32>>, String> {
        match lib {
            "rustfft" => rustfft_runner(cell, bufs),
            "phastft/split" => {
                phastft_check(cell)?;
                let len = cell.n * cell.batch;
                Ok(Box::new(PhastSplit32 {
                    planner: phastft::planner::PlannerDit32::new(cell.n),
                    re: AlignedVec::zeroed(len, cell.misalign),
                    im: AlignedVec::zeroed(len, cell.misalign),
                    n: cell.n,
                    dir: cell.direction,
                }))
            }
            "phastft/interleaved" => {
                phastft_check(cell)?;
                Ok(Box::new(PhastInter32 {
                    planner: phastft::planner::PlannerDit32::new(cell.n),
                    n: cell.n,
                    dir: cell.direction,
                }))
            }
            "tfhe-fft" => Err("f64 only".into()),
            "oxifft" => oxi_runner::<f32>(cell),
            "fftw" => crate::fftw::runner_f32(cell, bufs),
            l if l.starts_with("fastfft") => crate::fastfft_adapter::runner::<f32>(l, cell, bufs),
            l if l.starts_with("lab/") => lab_runner::<f32>(l, cell, bufs),
            other => Err(unknown(other)),
        }
    }
}

impl ArenaFloat for f64 {
    const PREC: Precision = Precision::F64;
    fn lit(x: f64) -> Self {
        x
    }
    fn val(self) -> f64 {
        self
    }
    fn make_runner(
        lib: &str,
        cell: &CellSpec,
        bufs: &mut Buffers<f64>,
    ) -> Result<Box<dyn Runner<f64>>, String> {
        match lib {
            "rustfft" => rustfft_runner(cell, bufs),
            "phastft/split" => {
                phastft_check(cell)?;
                let len = cell.n * cell.batch;
                Ok(Box::new(PhastSplit64 {
                    planner: phastft::planner::PlannerDit64::new(cell.n),
                    re: AlignedVec::zeroed(len, cell.misalign),
                    im: AlignedVec::zeroed(len, cell.misalign),
                    n: cell.n,
                    dir: cell.direction,
                }))
            }
            "phastft/interleaved" => {
                phastft_check(cell)?;
                Ok(Box::new(PhastInter64 {
                    planner: phastft::planner::PlannerDit64::new(cell.n),
                    n: cell.n,
                    dir: cell.direction,
                }))
            }
            "tfhe-fft" => tfhe_runner(cell),
            "oxifft" => oxi_runner::<f64>(cell),
            "fftw" => crate::fftw::runner_f64(cell, bufs),
            l if l.starts_with("fastfft") => crate::fastfft_adapter::runner::<f64>(l, cell, bufs),
            l if l.starts_with("lab/") => lab_runner::<f64>(l, cell, bufs),
            other => Err(unknown(other)),
        }
    }
}

#[cfg(all(test, feature = "stockham-diagnostics", target_arch = "x86_64"))]
mod stockham_crossover_tests {
    use super::*;

    fn exercise<T: ArenaFloat + fastfft::FftNum>(width: &str) {
        if !kernel_lab::Tier::Avx512.detected() {
            return;
        }
        for suffix in ["", "-shared"] {
            let row = format!("lab/dit-{width}-radices-8x8x8{suffix}");
            let mut spec =
                crate::spec::control_cell(std::slice::from_ref(&row), &crate::spec::Profile::QUICK);
            spec.precision = T::PREC;
            let mut buffers = Buffers::<T>::new(spec.n, 0);
            buffers.reserve_scratch(spec.n);
            let mut runner = T::make_runner(&row, &spec, &mut buffers).unwrap();
            let data: Vec<_> = fastfft_testkit::random_c64(spec.n, 31)
                .iter()
                .map(|c| Complex::new(T::lit(c.re), T::lit(c.im)))
                .collect();
            runner.load(&mut buffers, &data);
            runner.run(&mut buffers);
            let expected = runner.read(&buffers);
            let before = runner.execution_storage(&mut buffers).unwrap();
            let sentinel = Complex::new(T::lit(0.123), T::lit(-0.234));
            for shared in [false, true, false] {
                buffers.io_scratch_mut().2.fill(sentinel);
                runner.load(&mut buffers, &data);
                assert!(runner.diagnostic_dit_calls(&mut buffers, shared, 1));
                assert_eq!(runner.read(&buffers), expected);
                let changed = buffers.io_scratch_mut().2.iter().any(|&v| v != sentinel);
                assert_eq!(
                    changed, shared,
                    "only shared route may touch caller scratch"
                );
                assert_eq!(runner.execution_storage(&mut buffers).unwrap(), before);
            }
        }
    }

    #[test]
    fn retained_crossover_preserves_owners_and_selects_scratch_f32() {
        exercise::<f32>("ymm");
    }
    #[test]
    fn retained_crossover_preserves_owners_and_selects_scratch_f64() {
        exercise::<f64>("zmm");
    }
}

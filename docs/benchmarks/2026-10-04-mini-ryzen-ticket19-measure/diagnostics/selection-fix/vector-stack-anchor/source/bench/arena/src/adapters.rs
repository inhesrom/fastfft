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
    #[cfg(feature = "measure-diagnostics")]
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
fn lab_scratch<T: Copy>(n: usize) -> AlignedVec<Complex<T>> {
    AlignedVec::zeroed(n, 0)
}

struct LabRunner<T: ArenaFloat + kernel_lab::LabFloat> {
    plan: kernel_lab::Plan<T>,
    scratch: AlignedVec<Complex<T>>,
    n: usize,
}

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

struct DitRunner<T: ArenaFloat + kernel_lab::dit::DitFloat> {
    plan: kernel_lab::dit::DitPlan<T>,
    s1: AlignedVec<Complex<T>>,
    s2: AlignedVec<Complex<T>>,
    n: usize,
}

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
}

/// `lab/dit-<zmm|ymm>-r<radix>`: the M3-design prototype.
fn dit_runner<T: ArenaFloat + kernel_lab::dit::DitFloat + kernel_lab::cplx::FromF64>(
    lib: &str,
    cell: &CellSpec,
) -> Result<Box<dyn Runner<T>>, String> {
    let rest = lib.strip_prefix("lab/dit-").ok_or("bad dit name")?;
    let (w, r) = rest.split_once("-r").ok_or("bad dit name")?;
    let r: usize = r.parse().map_err(|_| "bad radix")?;
    if cell.direction != Direction::Forward || cell.placement != Placement::InPlace {
        return Err("lab kernels: forward in-place only".into());
    }
    if !kernel_lab::Tier::Avx512.detected() {
        return Err("needs AVX-512".into());
    }
    let mut plan =
        kernel_lab::dit::DitPlan::<T>::new(cell.n, w == "zmm", r).ok_or("size not supported")?;
    plan.avx2_only = w == "avx2";
    Ok(Box::new(DitRunner {
        plan,
        s1: lab_scratch(cell.n),
        s2: lab_scratch(cell.n),
        n: cell.n,
    }))
}

fn lab_runner<T: ArenaFloat + kernel_lab::LabFloat + kernel_lab::dit::DitFloat>(
    lib: &str,
    cell: &CellSpec,
) -> Result<Box<dyn Runner<T>>, String> {
    if lib.starts_with("lab/dit-") {
        return dit_runner::<T>(lib, cell);
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
            l if l.starts_with("lab/") => lab_runner::<f32>(l, cell),
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
            l if l.starts_with("lab/") => lab_runner::<f64>(l, cell),
            other => Err(unknown(other)),
        }
    }
}

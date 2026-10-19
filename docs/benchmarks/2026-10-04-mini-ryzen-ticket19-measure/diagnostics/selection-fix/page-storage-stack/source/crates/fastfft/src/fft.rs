//! The planned FFT object: validation, chunking, scratch and dispatch.

use crate::api::{Direction, Fft, FftDirection, FftNum, Length};
use crate::engine::bluestein::BluesteinPlan;
use crate::engine::fourstep::FourStepPlan;
use crate::engine::stockham::{Mode, StockhamPlan};
use crate::engine::{self, Shape};
use crate::isa::Precision;
use num_complex::Complex;

/// Extra complex elements of scratch so internal buffers can be 64-byte aligned.
pub(crate) const fn align_slack<T>() -> usize {
    64 / core::mem::size_of::<Complex<T>>()
}

pub(crate) enum Kernel<T: FftNum> {
    /// Length 0 or 1.
    Identity,
    Stockham {
        shape: Shape,
        plan: StockhamPlan<T>,
    },
    FourStep {
        shape: Shape,
        plan: FourStepPlan<T>,
    },
    Bluestein(BluesteinPlan<T>),
}

/// A planned transform returned by `FftPlanner`.
pub(crate) struct FftImpl<T: FftNum> {
    len: usize,
    dir: FftDirection,
    kernel: Kernel<T>,
}

impl<T: FftNum> FftImpl<T> {
    pub(crate) fn new(len: usize, dir: FftDirection, kernel: Kernel<T>) -> Self {
        FftImpl { len, dir, kernel }
    }

    #[cfg(test)]
    pub(crate) fn into_kernel(self) -> Kernel<T> {
        self.kernel
    }

    fn scratch_for(&self, mode: Mode) -> usize {
        match &self.kernel {
            Kernel::Identity => 0,
            Kernel::Stockham { plan, .. } => {
                let s = plan.scratch_len(mode);
                if s == 0 { 0 } else { s + align_slack::<T>() }
            }
            Kernel::FourStep { plan, .. } => plan.scratch_len() + align_slack::<T>(),
            Kernel::Bluestein(b) => b.scratch_len(),
        }
    }

    /// Runs one chunk. `input`/`output` are the same pointer for `InPlace`.
    ///
    /// # Safety
    ///
    /// `input` and `output` are valid for `len` complex values (and
    /// distinct unless `mode == InPlace`); `scratch` for `scratch_for(mode)`.
    unsafe fn run_chunk(
        &self,
        input: *mut Complex<T>,
        output: *mut Complex<T>,
        scratch: &mut [Complex<T>],
        mode: Mode,
    ) {
        let inverse = self.dir == FftDirection::Inverse;
        match &self.kernel {
            Kernel::Identity => {
                if mode != Mode::InPlace {
                    // SAFETY: both valid for len (0 or 1) elements, distinct.
                    unsafe { core::ptr::copy_nonoverlapping(input, output, self.len) };
                }
            }
            Kernel::Stockham { shape, plan } => {
                // The aligned tail handles scalar-offset Complex slices too.
                let sp = crate::scratch::aligned(scratch).as_mut_ptr();
                let (i, o, s) = (input.cast::<T>(), output.cast::<T>(), sp.cast::<T>());
                // SAFETY: the planner only builds Stockham kernels for
                // available tiers with matching lanes; pointer validity per
                // this function's contract. T is f32 (resp. f64) exactly when
                // the precision says so (FftNum is sealed).
                unsafe {
                    match T::precision() {
                        Precision::F32 => engine::stockham_f32(
                            *shape,
                            &*(plan as *const StockhamPlan<T>).cast::<StockhamPlan<f32>>(),
                            i.cast(),
                            o.cast(),
                            s.cast(),
                            mode,
                            inverse,
                        ),
                        Precision::F64 => engine::stockham_f64(
                            *shape,
                            &*(plan as *const StockhamPlan<T>).cast::<StockhamPlan<f64>>(),
                            i.cast(),
                            o.cast(),
                            s.cast(),
                            mode,
                            inverse,
                        ),
                    }
                }
            }
            Kernel::FourStep { shape, plan } => {
                debug_assert_eq!(self.len, plan.n);
                let sp = crate::scratch::aligned(scratch).as_mut_ptr();
                // SAFETY: planner validates the available shape. The public
                // wrapper validated n values and the advertised scratch; all
                // input is read before any output store, including in place.
                unsafe {
                    engine::fourstep::run(
                        *shape,
                        plan,
                        input.cast(),
                        output.cast(),
                        sp.cast(),
                        inverse,
                    );
                }
            }
            Kernel::Bluestein(b) => {
                // SAFETY: n readable/writable values, identical or disjoint;
                // validated scratch is disjoint. Bluestein consumes all input
                // before writing output, so in-place needs no separate copy.
                unsafe { b.process(input, output, scratch, inverse) };
            }
        }
    }
}

#[cold]
#[inline(never)]
pub(crate) fn fail_inplace(len: usize, buf: usize, need: usize, got: usize) -> ! {
    assert!(
        got >= need,
        "Provided scratch buffer was too small: expected {need}, got {got}"
    );
    panic!(
        "Provided FFT buffer was not a multiple of FFT length: expected a multiple of {len}, got {buf}"
    );
}

#[cold]
#[inline(never)]
pub(crate) fn fail_outofplace(len: usize, inp: usize, out: usize, need: usize, got: usize) -> ! {
    assert_eq!(
        inp, out,
        "Provided FFT input and output buffers must have the same length"
    );
    assert!(
        got >= need,
        "Provided scratch buffer was too small: expected {need}, got {got}"
    );
    panic!(
        "Provided FFT buffer was not a multiple of FFT length: expected a multiple of {len}, got {inp}"
    );
}

impl<T: FftNum> Length for FftImpl<T> {
    fn len(&self) -> usize {
        self.len
    }
}

impl<T: FftNum> Direction for FftImpl<T> {
    fn fft_direction(&self) -> FftDirection {
        self.dir
    }
}

impl<T: FftNum> Fft<T> for FftImpl<T> {
    #[cfg(feature = "tuning")]
    fn diagnostic_as_any_mut(&mut self) -> Option<&mut dyn std::any::Any> {
        Some(self)
    }

    #[cfg(feature = "tuning")]
    fn diagnostic_swap_coefficients(
        &mut self,
        other: &mut dyn Fft<T>,
        exchange: bool,
    ) -> Result<(), crate::tuning::CoefficientSwapError> {
        use crate::tuning::CoefficientSwapError as E;
        let other = other
            .diagnostic_as_any_mut()
            .ok_or(E::UnsupportedPlan)?
            .downcast_mut::<Self>()
            .ok_or(E::TypeMismatch)?;
        if self.len != other.len || self.dir != other.dir {
            return Err(E::ConfigurationMismatch);
        }
        match (&mut self.kernel, &mut other.kernel) {
            (Kernel::Stockham { shape: a, plan: x }, Kernel::Stockham { shape: b, plan: y }) => {
                if a != b {
                    return Err(E::ConfigurationMismatch);
                }
                x.diagnostic_swap_coefficients(y, exchange)
            }
            _ => Err(E::UnsupportedPlan),
        }
    }

    #[cfg(feature = "tuning")]
    fn diagnostic_regions(&self, sink: &mut dyn FnMut(crate::tuning::DiagnosticRegion)) {
        let object = crate::tuning::DiagnosticRegion::object(self);
        sink(object);
        match &self.kernel {
            Kernel::Stockham { plan, .. } => plan.diagnostic_regions(object.owner, sink),
            Kernel::FourStep { plan, .. } => plan.diagnostic_regions(object.owner, sink),
            _ => {}
        }
    }

    fn process_with_scratch(&self, buffer: &mut [Complex<T>], scratch: &mut [Complex<T>]) {
        let n = self.len;
        if n == 0 {
            return;
        }
        let need = self.get_inplace_scratch_len();
        if !buffer.len().is_multiple_of(n) || buffer.len() < n || scratch.len() < need {
            fail_inplace(n, buffer.len(), need, scratch.len());
        }
        let scratch = &mut scratch[..need];
        for chunk in buffer.chunks_exact_mut(n) {
            let p = chunk.as_mut_ptr();
            // SAFETY: chunk valid for n elements; scratch sized above.
            unsafe { self.run_chunk(p, p, scratch, Mode::InPlace) };
        }
    }

    fn process_outofplace_with_scratch(
        &self,
        input: &mut [Complex<T>],
        output: &mut [Complex<T>],
        scratch: &mut [Complex<T>],
    ) {
        let n = self.len;
        if n == 0 {
            return;
        }
        let need = self.get_outofplace_scratch_len();
        if input.len() != output.len()
            || !input.len().is_multiple_of(n)
            || input.len() < n
            || scratch.len() < need
        {
            fail_outofplace(n, input.len(), output.len(), need, scratch.len());
        }
        let scratch = &mut scratch[..need];
        for (i, o) in input.chunks_exact_mut(n).zip(output.chunks_exact_mut(n)) {
            // SAFETY: distinct chunks valid for n elements; scratch sized above.
            unsafe { self.run_chunk(i.as_mut_ptr(), o.as_mut_ptr(), scratch, Mode::OutOfPlace) };
        }
    }

    fn process_immutable_with_scratch(
        &self,
        input: &[Complex<T>],
        output: &mut [Complex<T>],
        scratch: &mut [Complex<T>],
    ) {
        let n = self.len;
        if n == 0 {
            return;
        }
        let need = self.get_immutable_scratch_len();
        if input.len() != output.len()
            || !input.len().is_multiple_of(n)
            || input.len() < n
            || scratch.len() < need
        {
            fail_outofplace(n, input.len(), output.len(), need, scratch.len());
        }
        let scratch = &mut scratch[..need];
        for (i, o) in input.chunks_exact(n).zip(output.chunks_exact_mut(n)) {
            // SAFETY: `Mode::Immutable` never writes through the input
            // pointer; chunks valid for n elements; scratch sized above.
            unsafe {
                self.run_chunk(
                    i.as_ptr().cast_mut(),
                    o.as_mut_ptr(),
                    scratch,
                    Mode::Immutable,
                )
            };
        }
    }

    fn get_inplace_scratch_len(&self) -> usize {
        self.scratch_for(Mode::InPlace)
    }

    fn get_outofplace_scratch_len(&self) -> usize {
        self.scratch_for(Mode::OutOfPlace)
    }

    fn get_immutable_scratch_len(&self) -> usize {
        self.scratch_for(Mode::Immutable)
    }
}

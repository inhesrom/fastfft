//! Public traits and types, mirroring RustFFT 6.4's API.

use num_complex::Complex;
use std::fmt::Display;

mod sealed {
    pub trait Sealed {}
    impl Sealed for f32 {}
    impl Sealed for f64 {}
}

/// Scalar types fastfft can transform: `f32` and `f64`.
pub trait FftNum:
    sealed::Sealed
    + num_traits::Float
    + num_traits::FromPrimitive
    + Default
    + Send
    + Sync
    + core::fmt::Debug
    + 'static
{
    /// Internal dispatch hook (not part of the public API contract).
    #[doc(hidden)]
    fn precision() -> crate::isa::Precision;
}

impl FftNum for f32 {
    fn precision() -> crate::isa::Precision {
        crate::isa::Precision::F32
    }
}

impl FftNum for f64 {
    fn precision() -> crate::isa::Precision {
        crate::isa::Precision::F64
    }
}

/// Direction of a transform. `Forward` uses `exp(-2 pi i n k / N)`.
/// Neither direction is normalized.
#[derive(Copy, Clone, PartialEq, Eq, Debug, Hash)]
pub enum FftDirection {
    /// `X[k] = sum_n x[n] exp(-2 pi i n k / N)`.
    Forward,
    /// `x[n] = sum_k X[k] exp(+2 pi i n k / N)` (unnormalized).
    Inverse,
}

impl FftDirection {
    /// The other direction.
    #[inline]
    pub fn opposite_direction(&self) -> FftDirection {
        match self {
            Self::Forward => Self::Inverse,
            Self::Inverse => Self::Forward,
        }
    }
}

impl Display for FftDirection {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        match self {
            Self::Forward => f.write_str("Forward"),
            Self::Inverse => f.write_str("Inverse"),
        }
    }
}

/// Reports the transform length an algorithm processes.
// Mirrors `rustfft::Length`, which has no `is_empty`.
#[allow(clippy::len_without_is_empty)]
pub trait Length {
    /// The FFT size.
    fn len(&self) -> usize;
}

/// Reports the direction of an algorithm.
pub trait Direction {
    /// Forward or inverse.
    fn fft_direction(&self) -> FftDirection;
}

/// A planned FFT of a fixed length and direction.
///
/// Every method processes the buffer as consecutive chunks of `self.len()`
/// elements, one transform per chunk, exactly like RustFFT.
pub trait Fft<T: FftNum>: Length + Direction + Sync + Send {
    /// Developer-only checked downcast for reversible storage experiments.
    /// This does not grant mutable access through a shared plan reference.
    #[cfg(feature = "tuning")]
    fn diagnostic_as_any_mut(&mut self) -> Option<&mut dyn std::any::Any> {
        None
    }

    /// Developer-only numerical allocation query. Call outside execution.
    #[cfg(feature = "tuning")]
    fn diagnostic_regions(&self, sink: &mut dyn FnMut(crate::tuning::DiagnosticRegion)) {
        let ptr = self as *const Self as *const () as usize;
        sink(crate::tuning::DiagnosticRegion {
            owner: ptr,
            kind: crate::tuning::RegionKind::Object,
            index: 0,
            ptr,
            element_bytes: core::mem::size_of_val(self),
            len: 1,
            capacity: 0,
        });
    }

    /// Developer-only path prediction; does not execute or dereference buffers.
    /// Length counts complex values, and in-place output is treated as input.
    #[cfg(feature = "tuning")]
    fn diagnostic_batch_path(
        &self,
        _input_len: usize,
        _input_ptr: usize,
        _output_ptr: usize,
        _placement: crate::tuning::SamplePlacement,
    ) -> Option<crate::tuning::BatchExecution> {
        None
    }

    /// Computes the FFT of every chunk of `buffer` in place.
    ///
    /// Uses a per-thread scratch buffer that only grows (so repeated calls
    /// do not allocate once warmed up). Use [`Fft::process_with_scratch`] to
    /// manage scratch yourself.
    ///
    /// # Panics
    ///
    /// Panics if `buffer.len() % self.len() > 0` or `buffer.len() < self.len()`.
    fn process(&self, buffer: &mut [Complex<T>]) {
        crate::scratch::with_scratch(self.get_inplace_scratch_len(), |scratch| {
            self.process_with_scratch(buffer, scratch)
        });
    }

    /// Computes the FFT of every chunk of `buffer` in place, using `scratch`
    /// as scratch space (its contents are garbage afterwards).
    ///
    /// # Panics
    ///
    /// Panics if `buffer.len() % self.len() > 0`, `buffer.len() < self.len()`
    /// or `scratch.len() < self.get_inplace_scratch_len()`.
    fn process_with_scratch(&self, buffer: &mut [Complex<T>], scratch: &mut [Complex<T>]);

    /// Computes the FFT of every chunk of `input` into `output`. `input` is
    /// also used as scratch space and holds garbage afterwards.
    ///
    /// # Panics
    ///
    /// Panics if `output.len() != input.len()`, `input.len() % self.len() > 0`,
    /// `input.len() < self.len()` or
    /// `scratch.len() < self.get_outofplace_scratch_len()`.
    fn process_outofplace_with_scratch(
        &self,
        input: &mut [Complex<T>],
        output: &mut [Complex<T>],
        scratch: &mut [Complex<T>],
    );

    /// Computes the FFT of every chunk of `input` into `output`, leaving
    /// `input` untouched.
    ///
    /// # Panics
    ///
    /// Panics if `output.len() != input.len()`, `input.len() % self.len() > 0`,
    /// `input.len() < self.len()` or
    /// `scratch.len() < self.get_immutable_scratch_len()`.
    fn process_immutable_with_scratch(
        &self,
        input: &[Complex<T>],
        output: &mut [Complex<T>],
        scratch: &mut [Complex<T>],
    );

    /// Scratch length required by [`Fft::process_with_scratch`].
    fn get_inplace_scratch_len(&self) -> usize;

    /// Scratch length required by [`Fft::process_outofplace_with_scratch`].
    fn get_outofplace_scratch_len(&self) -> usize;

    /// Scratch length required by [`Fft::process_immutable_with_scratch`].
    fn get_immutable_scratch_len(&self) -> usize;
}

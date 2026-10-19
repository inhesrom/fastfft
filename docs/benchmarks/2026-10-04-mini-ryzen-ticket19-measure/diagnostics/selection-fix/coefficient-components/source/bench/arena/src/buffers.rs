//! 64-byte aligned buffers with an optional misalignment offset.

use num_complex::Complex;
use std::alloc::{Layout, alloc_zeroed, dealloc};
use std::marker::PhantomData;

/// Heap buffer of `len` zero-initialized `T`s starting `misalign` bytes after
/// a 64-byte boundary. `T` must be a plain float or complex float type.
pub struct AlignedVec<T: Copy> {
    base: *mut u8,
    layout: Layout,
    ptr: *mut T,
    len: usize,
    _t: PhantomData<T>,
}

// SAFETY: AlignedVec owns its allocation exclusively, like Vec<T>.
unsafe impl<T: Copy + Send> Send for AlignedVec<T> {}
// SAFETY: shared access only hands out `&[T]`.
unsafe impl<T: Copy + Sync> Sync for AlignedVec<T> {}

impl<T: Copy> AlignedVec<T> {
    pub fn zeroed(len: usize, misalign: usize) -> Self {
        assert!(misalign.is_multiple_of(std::mem::align_of::<T>()) && misalign < 64);
        let bytes = len
            .checked_mul(std::mem::size_of::<T>())
            .and_then(|b| b.checked_add(128))
            .expect("buffer too large");
        let layout = Layout::from_size_align(bytes, 64).expect("bad layout");
        // SAFETY: layout has non-zero size (>= 128 bytes).
        let base = unsafe { alloc_zeroed(layout) };
        assert!(!base.is_null(), "allocation of {bytes} bytes failed");
        // SAFETY: misalign < 64 < 128 extra bytes, so the offset stays inside the allocation.
        let ptr = unsafe { base.add(misalign) }.cast::<T>();
        AlignedVec {
            base,
            layout,
            ptr,
            len,
            _t: PhantomData,
        }
    }

    #[allow(dead_code)]
    pub fn len(&self) -> usize {
        self.len
    }

    pub fn as_slice(&self) -> &[T] {
        // SAFETY: ptr is valid for len initialized (zeroed) elements for the lifetime of self.
        unsafe { std::slice::from_raw_parts(self.ptr, self.len) }
    }

    pub fn as_mut_slice(&mut self) -> &mut [T] {
        // SAFETY: as above, and &mut self guarantees uniqueness.
        unsafe { std::slice::from_raw_parts_mut(self.ptr, self.len) }
    }

    #[cfg_attr(not(feature = "fftw"), allow(dead_code))]
    pub fn as_mut_ptr(&mut self) -> *mut T {
        self.ptr
    }
}

impl<T: Copy> Drop for AlignedVec<T> {
    fn drop(&mut self) {
        // SAFETY: base/layout come from alloc_zeroed in `zeroed`.
        unsafe { dealloc(self.base, self.layout) }
    }
}

/// Caller buffers for sequential runners of one cell. Sharing scratch keeps
/// a planner's temporary allocation history out of workspace placement.
pub struct Buffers<T: Copy> {
    pub input: AlignedVec<Complex<T>>,
    pub output: AlignedVec<Complex<T>>,
    scratch: AlignedVec<Complex<T>>,
}

/// Mutable I/O and workspace views from disjoint allocations.
pub type WorkSlices<'a, T> = (
    &'a mut [Complex<T>],
    &'a mut [Complex<T>],
    &'a mut [Complex<T>],
);

impl<T: Copy> Buffers<T> {
    pub fn new(len: usize, misalign: usize) -> Self {
        Buffers {
            input: AlignedVec::zeroed(len, misalign),
            output: AlignedVec::zeroed(len, misalign),
            scratch: AlignedVec::zeroed(0, 0),
        }
    }

    pub fn io_mut(&mut self) -> (&mut [Complex<T>], &mut [Complex<T>]) {
        (self.input.as_mut_slice(), self.output.as_mut_slice())
    }

    /// Called only during planning. Growing workspace preserves I/O addresses,
    /// including those retained by foreign-library plans.
    pub fn reserve_scratch(&mut self, len: usize) {
        if self.scratch.len() < len {
            self.scratch = AlignedVec::zeroed(len, 0);
        }
    }

    pub fn io_scratch_mut(&mut self) -> WorkSlices<'_, T> {
        (
            self.input.as_mut_slice(),
            self.output.as_mut_slice(),
            self.scratch.as_mut_slice(),
        )
    }
}

/// Zero-sets a complex slice.
pub fn fill_zero<T: Copy + Default>(x: &mut [Complex<T>]) {
    for v in x {
        *v = Complex::new(T::default(), T::default());
    }
}

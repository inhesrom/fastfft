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
    #[cfg(all(
        feature = "stockham-diagnostics",
        any(test, all(target_arch = "x86_64", target_os = "linux"))
    ))]
    fn diagnostic_owned(len: usize) -> Self {
        let extra = 4096 / std::mem::size_of::<T>() + 1;
        let mut owner = Self::zeroed(len.checked_add(extra).expect("diagnostic capacity"), 0);
        // Fault the entire oversized backing before any planning or measurement.
        for value in owner.as_mut_slice() {
            // SAFETY: this diagnostic is instantiated only with plain complex floats.
            unsafe { std::ptr::write_volatile(value, *value) };
        }
        owner.len = len;
        owner.diagnostic_select(0);
        owner
    }

    #[cfg(all(
        feature = "stockham-diagnostics",
        any(test, all(target_arch = "x86_64", target_os = "linux"))
    ))]
    fn diagnostic_select(&mut self, page_offset: usize) {
        assert!(page_offset < 4096 && page_offset.is_multiple_of(64));
        let offset = (page_offset + 4096 - self.base as usize % 4096) % 4096;
        let end = offset
            .checked_add(self.len.checked_mul(std::mem::size_of::<T>()).unwrap())
            .unwrap();
        assert!(
            end <= self.layout.size() - 128,
            "view exceeds original backing"
        );
        // SAFETY: checked bounds within the original allocation, all elements initialized.
        self.ptr = unsafe { self.base.add(offset) }.cast::<T>();
    }

    #[cfg(all(
        feature = "stockham-diagnostics",
        any(test, all(target_arch = "x86_64", target_os = "linux"))
    ))]
    fn diagnostic_backing(&self) -> serde_json::Value {
        serde_json::json!({"base":self.base as usize,"bytes":self.layout.size(),
            "capacity_elements":(self.layout.size()-128)/std::mem::size_of::<T>(),
            "alignment":self.layout.align()})
    }

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
    #[cfg(all(
        feature = "stockham-diagnostics",
        any(test, all(target_arch = "x86_64", target_os = "linux"))
    ))]
    pub fn stockham_diagnostic(len: usize, scratch: usize) -> Self {
        Self {
            input: AlignedVec::diagnostic_owned(len),
            output: AlignedVec::diagnostic_owned(len),
            scratch: AlignedVec::diagnostic_owned(scratch),
        }
    }

    #[cfg(all(
        feature = "stockham-diagnostics",
        any(test, all(target_arch = "x86_64", target_os = "linux"))
    ))]
    pub fn diagnostic_select(&mut self, input: usize, scratch: usize) {
        self.input.diagnostic_select(input);
        self.scratch.diagnostic_select(scratch);
    }

    #[cfg(all(
        feature = "stockham-diagnostics",
        any(test, all(target_arch = "x86_64", target_os = "linux"))
    ))]
    pub fn diagnostic_backings(&self) -> serde_json::Value {
        serde_json::json!({"allocations":[self.input.diagnostic_backing(),
            self.output.diagnostic_backing(),self.scratch.diagnostic_backing()],
            "views":[crate::stockham_reference::view(self.input.as_slice()),
            crate::stockham_reference::view(self.output.as_slice()),
            crate::stockham_reference::view(self.scratch.as_slice())]})
    }

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

#[cfg(all(test, feature = "stockham-diagnostics"))]
mod stockham_diagnostic_tests {
    use super::*;

    fn views_restore<T: Copy + Default + PartialEq + std::fmt::Debug>() {
        let mut buffers = Buffers::<T>::stockham_diagnostic(4096, 9232);
        let initial = buffers.diagnostic_backings();
        for (input, scratch) in [(0, 1024), (1024, 0), (1024, 2048), (0, 0)] {
            buffers.diagnostic_select(input, scratch);
            let evidence = buffers.diagnostic_backings();
            assert_eq!(evidence["allocations"], initial["allocations"]);
            assert_eq!(evidence["views"][0]["mod4096"], input);
            assert_eq!(evidence["views"][2]["mod4096"], scratch);
            let (i, o, s) = buffers.io_scratch_mut();
            assert_eq!(i.len(), 4096);
            assert_eq!(o.len(), 4096);
            assert_eq!(s.len(), 9232);
            i.fill(Complex::default());
            o.fill(Complex::default());
            s.fill(Complex::default());
        }
        assert_eq!(buffers.diagnostic_backings(), initial);
    }

    #[test]
    fn retained_page_views_are_bounded_and_restore_exactly() {
        views_restore::<f32>();
        views_restore::<f64>();
    }
}

//! One owned allocation fixes the relative placement of Stockham metadata and
//! coefficients. Views store offsets, never pointers into their own owner.

use std::any::TypeId;
use std::marker::PhantomData;

const ALIGN: usize = 64;

#[repr(C, align(64))]
#[derive(Clone, Debug)]
struct Block([u8; ALIGN]);

/// All fields are usize, so repr(C) has no padding to become uninitialized when
/// written into the byte backing. Offsets count bytes from its allocation base.
#[repr(C)]
#[derive(Clone, Copy, Debug)]
pub(super) struct Pass {
    pub radix: usize,
    offset: usize,
    len: usize,
}

#[derive(Clone, Debug)]
pub(super) struct Storage<S> {
    blocks: Vec<Block>,
    pass_count: usize,
    phase_b_offset: usize,
    phase_b_len: usize,
    logical_len: usize,
    scalar: PhantomData<S>,
}

fn aligned(bytes: usize) -> usize {
    bytes
        .checked_add(ALIGN - 1)
        .expect("Stockham storage overflow")
        & !(ALIGN - 1)
}

fn pass_len(ns: usize, radix: usize) -> usize {
    ns.checked_mul(radix.checked_sub(1).expect("zero Stockham radix"))
        .and_then(|n| n.checked_mul(2))
        .expect("Stockham coefficient count overflow")
}

fn end<S>(offset: usize, len: usize) -> usize {
    len.checked_mul(size_of::<S>())
        .and_then(|bytes| offset.checked_add(bytes))
        .expect("Stockham storage overflow")
}

impl<S: Copy + Default + 'static> Storage<S> {
    pub(super) fn new(radices: &[usize], phase_b_len: usize) -> Self {
        // Vector::S's trait bounds are broader than the two actual scalar
        // types. Check the concrete type before making any typed byte views.
        assert!(
            TypeId::of::<S>() == TypeId::of::<f32>() || TypeId::of::<S>() == TypeId::of::<f64>()
        );
        assert!(matches!(size_of::<S>(), 4 | 8));
        assert!(align_of::<S>() <= ALIGN && ALIGN.is_multiple_of(align_of::<S>()));
        assert!(!std::mem::needs_drop::<S>());
        assert_eq!(size_of::<Pass>(), 3 * size_of::<usize>());
        assert!(align_of::<Pass>() <= ALIGN);

        let prefix = radices
            .len()
            .checked_mul(size_of::<Pass>())
            .expect("Stockham descriptor overflow");
        let mut offset = aligned(prefix);
        let mut logical_len = phase_b_len;
        let mut ns = 1usize;
        for &radix in radices {
            let len = pass_len(ns, radix);
            logical_len = logical_len
                .checked_add(len)
                .expect("Stockham coefficient count overflow");
            offset = aligned(end::<S>(offset, len));
            ns = ns
                .checked_mul(radix)
                .expect("Stockham radix product overflow");
        }
        let phase_b_offset = offset;
        let bytes = aligned(end::<S>(offset, phase_b_len));
        let count = (bytes / ALIGN).max(1);
        // Check the allocation's isize bound before allocating or deriving
        // pointers. Vec<Block> preserves both the required alignment and Drop.
        std::alloc::Layout::array::<Block>(count).expect("Stockham allocation too large");
        let mut result = Self {
            blocks: vec![Block([0; ALIGN]); count],
            pass_count: radices.len(),
            phase_b_offset,
            phase_b_len,
            logical_len,
            scalar: PhantomData,
        };
        let mut offset = aligned(prefix);
        let mut ns = 1usize;
        for (index, &radix) in radices.iter().enumerate() {
            let len = pass_len(ns, radix);
            // SAFETY: the prefix reserves pass_count * size_of::<Pass>()
            // bytes. Its base is 64-byte aligned. Pass contains only usize,
            // with no padding or destructor; all descriptor bytes are written.
            unsafe {
                result
                    .blocks
                    .as_mut_ptr()
                    .cast::<Pass>()
                    .add(index)
                    .write(Pass { radix, offset, len });
            }
            offset = aligned(end::<S>(offset, len));
            ns = ns
                .checked_mul(radix)
                .expect("Stockham radix product overflow");
        }
        // All coefficient regions remain all-zero, exactly f32/f64::default.
        // No typed view includes prefix bytes or padding between regions.
        result
    }
}

impl<S> Storage<S> {
    #[cfg(feature = "tuning")]
    pub(super) fn diagnostic_swap_backing(
        &mut self,
        other: &mut Self,
        exchange: bool,
    ) -> Result<(), crate::tuning::CoefficientSwapError> {
        use crate::tuning::CoefficientSwapError as E;
        if (
            self.pass_count,
            self.phase_b_offset,
            self.phase_b_len,
            self.logical_len,
            self.blocks.len(),
            self.blocks.capacity(),
        ) != (
            other.pass_count,
            other.phase_b_offset,
            other.phase_b_len,
            other.logical_len,
            other.blocks.len(),
            other.blocks.capacity(),
        ) || self
            .passes()
            .iter()
            .zip(other.passes())
            .any(|(a, b)| (a.radix, a.offset, a.len) != (b.radix, b.offset, b.len))
        {
            return Err(E::StorageMismatch);
        }
        // Block has no padding; the constructor and typed coefficient writes
        // leave every byte initialized, including descriptor and table padding.
        if self
            .blocks
            .iter()
            .zip(&other.blocks)
            .any(|(a, b)| a.0 != b.0)
        {
            return Err(E::ValuesMismatch);
        }
        if exchange {
            std::mem::swap(&mut self.blocks, &mut other.blocks);
        }
        Ok(())
    }

    #[inline(always)]
    pub(super) fn passes(&self) -> &[Pass] {
        // SAFETY: new initializes exactly this prefix to valid Pass values;
        // the allocation is aligned, immutably borrowed and never resized.
        unsafe { std::slice::from_raw_parts(self.blocks.as_ptr().cast::<Pass>(), self.pass_count) }
    }

    #[inline(always)]
    fn values(&self, offset: usize, len: usize) -> &[S] {
        // SAFETY: only validated private descriptor/Phase-B ranges reach here.
        // new checked bounds, alignment, and S=f32/f64. All coefficient bytes
        // start initialized and writes only use &mut [S]. Clone copies valid
        // bytes into another aligned owner; stored offsets need no fixups.
        unsafe {
            std::slice::from_raw_parts(
                self.blocks.as_ptr().cast::<u8>().add(offset).cast::<S>(),
                len,
            )
        }
    }

    fn values_mut(&mut self, offset: usize, len: usize) -> &mut [S] {
        // SAFETY: same private checked ranges as values, exclusively borrowed.
        // Descriptors and padding are disjoint from every returned slice.
        unsafe {
            std::slice::from_raw_parts_mut(
                self.blocks
                    .as_mut_ptr()
                    .cast::<u8>()
                    .add(offset)
                    .cast::<S>(),
                len,
            )
        }
    }

    #[inline(always)]
    pub(super) fn pass_tw(&self, index: usize) -> &[S] {
        let pass = self.passes()[index];
        self.values(pass.offset, pass.len)
    }

    pub(super) fn pass_tw_mut(&mut self, index: usize) -> &mut [S] {
        let pass = self.passes()[index];
        self.values_mut(pass.offset, pass.len)
    }

    #[inline(always)]
    pub(super) fn phase_b(&self) -> &[S] {
        self.values(self.phase_b_offset, self.phase_b_len)
    }

    pub(super) fn phase_b_mut(&mut self) -> &mut [S] {
        self.values_mut(self.phase_b_offset, self.phase_b_len)
    }

    /// Keep the cache policy's original logical coefficient count. The backing
    /// also contains descriptors and <64 bytes padding at each table boundary;
    /// counting that physical overhead here would change existing scratch gates.
    pub(super) fn logical_len(&self) -> usize {
        self.logical_len
    }

    #[cfg(feature = "tuning")]
    pub(super) fn diagnostic_regions(
        &self,
        owner: usize,
        sink: &mut dyn FnMut(crate::tuning::DiagnosticRegion),
    ) {
        use crate::tuning::{DiagnosticRegion, RegionKind};
        sink(DiagnosticRegion::vector(
            owner,
            RegionKind::CoefficientStorage,
            0,
            &self.blocks,
        ));
        let mut view = |kind, index, ptr, element_bytes, len| {
            sink(DiagnosticRegion {
                owner,
                kind,
                index,
                ptr,
                element_bytes,
                len,
                capacity: 0,
            })
        };
        view(
            RegionKind::PassDescriptors,
            0,
            self.passes().as_ptr() as usize,
            size_of::<Pass>(),
            self.pass_count,
        );
        for (index, pass) in self.passes().iter().enumerate() {
            view(
                RegionKind::Radices,
                index,
                &pass.radix as *const usize as usize,
                size_of::<usize>(),
                1,
            );
            let tw = self.pass_tw(index);
            view(
                RegionKind::Twiddles,
                index,
                tw.as_ptr() as usize,
                size_of::<S>(),
                tw.len(),
            );
        }
        let tw = self.phase_b();
        view(
            RegionKind::PhaseBTwiddles,
            0,
            tw.as_ptr() as usize,
            size_of::<S>(),
            tw.len(),
        );
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[cfg(feature = "tuning")]
    #[test]
    fn miri_coefficient_swap_validates_backing_and_restores_exact_owners() {
        let mut a = Storage::<f64>::new(&[2, 4], 16);
        a.pass_tw_mut(0)
            .copy_from_slice(&[-0.0, f64::from_bits(0x7ff8_0000_0000_0012)]);
        let mut b = a.clone();
        let pointers = (a.blocks.as_ptr(), b.blocks.as_ptr());
        a.diagnostic_swap_backing(&mut b, false).unwrap();
        assert_eq!((a.blocks.as_ptr(), b.blocks.as_ptr()), pointers);
        a.diagnostic_swap_backing(&mut b, true).unwrap();
        assert_eq!(
            (a.blocks.as_ptr(), b.blocks.as_ptr()),
            (pointers.1, pointers.0)
        );
        assert_eq!(a.pass_tw(0)[0].to_bits(), (-0.0f64).to_bits());
        a.diagnostic_swap_backing(&mut b, true).unwrap();
        assert_eq!((a.blocks.as_ptr(), b.blocks.as_ptr()), pointers);
    }

    #[cfg(feature = "tuning")]
    #[test]
    fn miri_coefficient_swap_rejects_capacity_layout_and_bits_without_mutation() {
        use crate::tuning::CoefficientSwapError as E;
        for exchange in [false, true] {
            for fault in 0..4 {
                let mut a = Storage::<f32>::new(&[2, 4], 16);
                let mut b = a.clone();
                let expected = match fault {
                    0 => {
                        b.blocks.reserve_exact(b.blocks.capacity() + 1);
                        E::StorageMismatch
                    }
                    1 => {
                        b.phase_b_offset += ALIGN;
                        E::StorageMismatch
                    }
                    2 => {
                        b.pass_tw_mut(0)[0] = -0.0;
                        E::ValuesMismatch
                    }
                    _ => {
                        b.phase_b_mut()[0] = 1.0;
                        E::ValuesMismatch
                    }
                };
                let pointers = (a.blocks.as_ptr(), b.blocks.as_ptr());
                let before_a = a.blocks.iter().map(|v| v.0).collect::<Vec<_>>();
                let before_b = b.blocks.iter().map(|v| v.0).collect::<Vec<_>>();
                assert_eq!(a.diagnostic_swap_backing(&mut b, exchange), Err(expected));
                assert_eq!((a.blocks.as_ptr(), b.blocks.as_ptr()), pointers);
                assert_eq!(a.blocks.iter().map(|v| v.0).collect::<Vec<_>>(), before_a);
                assert_eq!(b.blocks.iter().map(|v| v.0).collect::<Vec<_>>(), before_b);
            }
        }
    }

    fn layout<S: Copy + Default + 'static>() {
        let mut a = Storage::<S>::new(&[8, 8, 8], 8192);
        let b = Storage::<S>::new(&[8, 8, 8], 8192);
        assert_eq!(a.logical_len(), 14 + 112 + 896 + 8192);
        let base_a = a.blocks.as_ptr() as usize;
        let base_b = b.blocks.as_ptr() as usize;
        assert_eq!(base_a % ALIGN, 0);
        assert_eq!(base_b % ALIGN, 0);
        assert_ne!(base_a, base_b);
        let mut last = a.pass_count * size_of::<Pass>();
        for (index, len) in [14, 112, 896].into_iter().enumerate() {
            let x = a.pass_tw(index);
            let y = b.pass_tw(index);
            assert_eq!(x.len(), len);
            assert_eq!(x.as_ptr() as usize % ALIGN, 0);
            assert_eq!(x.as_ptr() as usize - base_a, y.as_ptr() as usize - base_b);
            assert!(x.as_ptr() as usize - base_a >= last);
            last = x.as_ptr() as usize - base_a + len * size_of::<S>();
        }
        assert!(a.phase_b().as_ptr() as usize - base_a >= last);
        assert_eq!(a.phase_b().as_ptr() as usize % ALIGN, 0);
        assert_eq!(
            a.phase_b().as_ptr() as usize - base_a,
            b.phase_b().as_ptr() as usize - base_b
        );
        let clone = a.clone();
        assert_ne!(clone.blocks.as_ptr(), a.blocks.as_ptr());
        assert_eq!(clone.blocks.as_ptr() as usize % ALIGN, 0);
        assert_eq!(
            clone.phase_b().as_ptr() as usize - clone.blocks.as_ptr() as usize,
            a.phase_b_offset
        );
        a.pass_tw_mut(0).fill(S::default());
    }

    #[test]
    fn miri_canonical_layout_is_aligned_disjoint_and_clone_relative_for_both_precisions() {
        layout::<f32>();
        layout::<f64>();
    }

    #[test]
    fn miri_clone_preserves_float_bits_and_owns_independent_storage() {
        let mut a = Storage::<f32>::new(&[2], 2);
        a.pass_tw_mut(0)
            .copy_from_slice(&[-0.0, f32::from_bits(0x7fc0_0012)]);
        a.phase_b_mut().copy_from_slice(&[1.25, -0.0]);
        let b = a.clone();
        assert_eq!(
            a.pass_tw(0).iter().map(|x| x.to_bits()).collect::<Vec<_>>(),
            b.pass_tw(0).iter().map(|x| x.to_bits()).collect::<Vec<_>>()
        );
        a.phase_b_mut()[0] = 2.5;
        assert_eq!(b.phase_b()[0], 1.25);
        assert_eq!(b.phase_b()[1].to_bits(), (-0.0f32).to_bits());
        let mut a = Storage::<f64>::new(&[2], 2);
        a.pass_tw_mut(0)
            .copy_from_slice(&[-0.0, f64::from_bits(0x7ff8_0000_0000_0012)]);
        a.phase_b_mut().copy_from_slice(&[1.25, -0.0]);
        let b = a.clone();
        assert_eq!(
            a.pass_tw(0).iter().map(|x| x.to_bits()).collect::<Vec<_>>(),
            b.pass_tw(0).iter().map(|x| x.to_bits()).collect::<Vec<_>>()
        );
        a.phase_b_mut()[0] = 2.5;
        assert_eq!(b.phase_b()[0], 1.25);
        assert_eq!(b.phase_b()[1].to_bits(), (-0.0f64).to_bits());
    }

    #[test]
    fn miri_empty_descriptor_prefix_and_empty_tables_are_valid() {
        let a = Storage::<f64>::new(&[], 16);
        assert!(a.passes().is_empty());
        assert_eq!(a.phase_b().len(), 16);
        let b = Storage::<f32>::new(&[1], 0);
        assert!(b.pass_tw(0).is_empty());
        assert!(b.phase_b().is_empty());
    }

    #[test]
    #[should_panic(expected = "Stockham storage overflow")]
    fn miri_coefficient_size_overflow_is_rejected_before_allocation() {
        let _ = Storage::<f64>::new(&[], usize::MAX);
    }

    #[test]
    #[should_panic]
    fn miri_non_float_scalar_is_rejected_before_typed_views() {
        let _ = Storage::<u32>::new(&[2], 2);
    }

    #[test]
    #[should_panic(expected = "Stockham coefficient count overflow")]
    fn miri_pass_length_overflow_is_rejected_before_allocation() {
        let _ = Storage::<f32>::new(&[usize::MAX], 0);
    }

    #[test]
    #[should_panic(expected = "Stockham storage overflow")]
    fn miri_alignment_rounding_overflow_is_rejected() {
        let _ = aligned(usize::MAX);
    }
}

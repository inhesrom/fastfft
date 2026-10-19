//! One owned allocation fixes the relative placement of Stockham metadata and
//! coefficients. Spans of at least 4 KiB also have a 4-KiB-aligned base. Views
//! store offsets, never pointers into their own owner.

use std::any::TypeId;
use std::marker::PhantomData;

use crate::engine::aligned_storage::{ALIGN, Backing};
#[cfg(test)]
use crate::engine::aligned_storage::{Block, PAGE_ALIGN};

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
    backing: Backing,
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
        let mut result = Self {
            // The backing checks its allocation/isize bound before allocating
            // and preserves alignment through ordinary Vec clone and drop.
            backing: Backing::new(bytes),
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
                    .backing
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
    pub(super) fn diagnostic_shift_phase_b(
        &mut self,
        requested: usize,
    ) -> Result<(), crate::tuning::CoefficientShiftError> {
        use crate::engine::aligned_storage::{checked_aligned, checked_table_end};
        use crate::tuning::CoefficientShiftError as E;
        if !requested.is_multiple_of(ALIGN) {
            return Err(E::InvalidShift);
        }
        if !matches!(size_of::<S>(), 4 | 8) {
            return Err(E::InvalidStorage);
        }
        let prefix = checked_aligned(
            self.pass_count
                .checked_mul(size_of::<Pass>())
                .ok_or(E::Overflow)?,
        )?;
        if prefix > self.backing.bytes().len() {
            return Err(E::InvalidStorage);
        }
        let mut end = prefix;
        let mut ns = 1usize;
        let mut logical_len = self.phase_b_len;
        // The validated descriptor prefix makes this slice safe even for
        // rejection tests. Requiring canonical offsets rejects mixed scopes.
        for p in self.passes() {
            let len = p
                .radix
                .checked_sub(1)
                .and_then(|r| ns.checked_mul(r))
                .and_then(|len| len.checked_mul(2))
                .ok_or(E::Overflow)?;
            if p.radix < 2 || p.len != len || p.offset != end {
                return Err(E::InvalidStorage);
            }
            end = checked_table_end::<S>(end, len)?;
            ns = ns.checked_mul(p.radix).ok_or(E::Overflow)?;
            logical_len = logical_len.checked_add(len).ok_or(E::Overflow)?;
        }
        if logical_len != self.logical_len {
            return Err(E::InvalidStorage);
        }
        let phase_start = end;
        let current = self
            .phase_b_offset
            .checked_sub(phase_start)
            .ok_or(E::InvalidStorage)?;
        let phase_end = checked_table_end::<S>(phase_start, self.phase_b_len)?;
        self.backing
            .shift_coefficient_slab(phase_start, phase_end, current, requested)?;
        // The successful target-end check bounds this addition. Nothing else
        // is modified: descriptor bytes and all Phase-A data remain untouched.
        self.phase_b_offset = phase_start + requested;
        Ok(())
    }

    #[cfg(feature = "tuning")]
    pub(super) fn diagnostic_shift_coefficients(
        &mut self,
        requested: usize,
    ) -> Result<(), crate::tuning::CoefficientShiftError> {
        use crate::engine::aligned_storage::{checked_aligned, checked_table_end};
        use crate::tuning::CoefficientShiftError as E;
        if !requested.is_multiple_of(ALIGN) {
            return Err(E::InvalidShift);
        }
        if !matches!(size_of::<S>(), 4 | 8) {
            return Err(E::InvalidStorage);
        }
        let prefix = checked_aligned(
            self.pass_count
                .checked_mul(size_of::<Pass>())
                .ok_or(E::Overflow)?,
        )?;
        if prefix > self.backing.bytes().len() {
            return Err(E::InvalidStorage);
        }
        // The descriptor prefix has been bounded before creating its view.
        let passes = self.passes();
        let current = passes
            .first()
            .map_or(self.phase_b_offset, |p| p.offset)
            .checked_sub(prefix)
            .ok_or(E::InvalidStorage)?;
        let mut end = prefix;
        let mut ns = 1usize;
        let mut logical_len = self.phase_b_len;
        for p in passes {
            let len = p
                .radix
                .checked_sub(1)
                .and_then(|r| ns.checked_mul(r))
                .and_then(|len| len.checked_mul(2))
                .ok_or(E::Overflow)?;
            if p.radix < 2
                || p.len != len
                || p.offset != end.checked_add(current).ok_or(E::Overflow)?
            {
                return Err(E::InvalidStorage);
            }
            end = checked_table_end::<S>(end, len)?;
            ns = ns.checked_mul(p.radix).ok_or(E::Overflow)?;
            logical_len = logical_len.checked_add(len).ok_or(E::Overflow)?;
        }
        if self.phase_b_offset != end.checked_add(current).ok_or(E::Overflow)?
            || self.logical_len != logical_len
        {
            return Err(E::InvalidStorage);
        }
        end = checked_table_end::<S>(end, self.phase_b_len)?;
        // All source/target ranges and incoming padding are checked before the
        // first mutation. Successful end checks also bound every offset below.
        self.backing
            .shift_coefficient_slab(prefix, end, current, requested)?;
        // SAFETY: the validated prefix is disjoint from the moved slab; no
        // borrowed views survive. Pass contains only initialized usize fields.
        let passes = unsafe {
            std::slice::from_raw_parts_mut(
                self.backing.as_mut_ptr().cast::<Pass>(),
                self.pass_count,
            )
        };
        for p in passes {
            p.offset = p.offset - current + requested;
        }
        self.phase_b_offset = self.phase_b_offset - current + requested;
        Ok(())
    }

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
            self.backing.layout(),
        ) != (
            other.pass_count,
            other.phase_b_offset,
            other.phase_b_len,
            other.logical_len,
            other.backing.layout(),
        ) || self
            .passes()
            .iter()
            .zip(other.passes())
            .any(|(a, b)| (a.radix, a.offset, a.len) != (b.radix, b.offset, b.len))
        {
            return Err(E::StorageMismatch);
        }
        // Neither backing element has padding; constructor and typed writes
        // leave every byte initialized, including descriptor and table padding.
        if self.backing.bytes() != other.backing.bytes() {
            return Err(E::ValuesMismatch);
        }
        if exchange {
            std::mem::swap(&mut self.backing, &mut other.backing);
        }
        Ok(())
    }

    #[inline(always)]
    pub(super) fn passes(&self) -> &[Pass] {
        // SAFETY: new initializes exactly this prefix to valid Pass values;
        // the allocation is aligned, immutably borrowed and never resized.
        unsafe { std::slice::from_raw_parts(self.backing.as_ptr().cast::<Pass>(), self.pass_count) }
    }

    #[inline(always)]
    fn values(&self, offset: usize, len: usize) -> &[S] {
        // SAFETY: only validated private descriptor/Phase-B ranges reach here.
        // new checked bounds, alignment, and S=f32/f64. All coefficient bytes
        // start initialized and writes only use &mut [S]. Clone copies valid
        // bytes into another aligned owner; stored offsets need no fixups.
        unsafe { std::slice::from_raw_parts(self.backing.as_ptr().add(offset).cast::<S>(), len) }
    }

    fn values_mut(&mut self, offset: usize, len: usize) -> &mut [S] {
        // SAFETY: same private checked ranges as values, exclusively borrowed.
        // Descriptors and padding are disjoint from every returned slice.
        unsafe {
            std::slice::from_raw_parts_mut(self.backing.as_mut_ptr().add(offset).cast::<S>(), len)
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
    /// also contains descriptors, <64 bytes padding at each table boundary and
    /// <4096 bytes tail padding for paged backing. Counting that physical
    /// overhead here would change existing scratch gates.
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
        match &self.backing {
            Backing::Small(v) => sink(DiagnosticRegion::vector(
                owner,
                RegionKind::CoefficientStorage,
                0,
                v,
            )),
            Backing::Paged(v) => sink(DiagnosticRegion::vector(
                owner,
                RegionKind::CoefficientStorage,
                0,
                v,
            )),
        }
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

#[cfg(all(test, feature = "tuning"))]
mod shift_tests {
    use super::*;
    use crate::api::FftNum;
    use crate::tuning::CoefficientShiftError as E;

    fn bits<T>(values: &[T]) -> Vec<u8> {
        // SAFETY: tests pass initialized f32/f64 coefficient slices only.
        unsafe { std::slice::from_raw_parts(values.as_ptr().cast(), std::mem::size_of_val(values)) }
            .to_vec()
    }

    fn roundtrip<T: FftNum>() {
        let mut s = Storage::<T>::new(&[8, 8, 8], 8192);
        for i in 0..3 {
            s.pass_tw_mut(i).fill(T::from_f64(i as f64 + 0.5).unwrap());
            s.pass_tw_mut(i)[0] = T::from_f64(-0.0).unwrap();
        }
        s.phase_b_mut().fill(T::from_f64(-3.25).unwrap());
        s.phase_b_mut()[0] = T::from_f64(f64::NAN).unwrap();
        let original = s.backing.bytes().to_vec();
        let tables: Vec<_> = (0..3).map(|i| bits(s.pass_tw(i))).collect();
        let phase = bits(s.phase_b());
        let descriptors = s.passes().as_ptr();
        let owner = s.backing.as_ptr();
        let layout = s.backing.layout();
        let offsets: Vec<_> = s.passes().iter().map(|p| p.offset).collect();
        for shift in [0, 64, 64, 1024, 0, 1024, 64, 0] {
            s.diagnostic_shift_coefficients(shift).unwrap();
            assert_eq!(s.backing.as_ptr(), owner);
            assert_eq!(s.backing.layout(), layout);
            assert_eq!(s.passes().as_ptr(), descriptors);
            for i in 0..3 {
                assert_eq!(bits(s.pass_tw(i)), tables[i]);
                assert_eq!(s.passes()[i].offset, offsets[i] + shift);
                assert_eq!(s.passes()[i].radix, 8);
            }
            assert_eq!(bits(s.phase_b()), phase);
            if shift == 0 {
                assert_eq!(s.backing.bytes(), original);
            }
        }
    }

    #[test]
    fn coefficient_shift_stockham_preserves_bits_owner_and_restore_both_precisions() {
        roundtrip::<f32>();
        roundtrip::<f64>();
    }

    fn phase_b_roundtrip<T: FftNum>() {
        let mut s = Storage::<T>::new(&[8, 8, 8], 8192);
        for i in 0..3 {
            s.pass_tw_mut(i).fill(T::from_f64(-0.0).unwrap());
        }
        s.phase_b_mut().fill(T::from_f64(f64::NAN).unwrap());
        let owner = s.backing.as_ptr();
        let layout = s.backing.layout();
        let original = s.backing.bytes().to_vec();
        let start = s.phase_b_offset;
        let phase = bits(s.phase_b());
        for shift in [0, 64, 1024, 1024, 64, 0] {
            s.diagnostic_shift_phase_b(shift).unwrap();
            assert_eq!(s.backing.as_ptr(), owner);
            assert_eq!(s.backing.layout(), layout);
            assert_eq!(&s.backing.bytes()[..start], &original[..start]);
            assert_eq!(bits(s.phase_b()), phase);
            assert_eq!(s.phase_b_offset, start + shift);
            if shift == 0 {
                assert_eq!(s.backing.bytes(), original);
            }
        }
    }

    #[test]
    fn coefficient_shift_phase_b_preserves_all_phase_a_bytes_both_precisions() {
        phase_b_roundtrip::<f32>();
        phase_b_roundtrip::<f64>();
    }

    #[test]
    fn coefficient_shift_phase_b_rejects_malformed_ranges_without_mutation() {
        for variant in 0..7 {
            let mut s = Storage::<f64>::new(&[8, 8, 8], 8192);
            match variant {
                0 => s.pass_count = usize::MAX,
                1 => s.phase_b_offset = 0,
                2 => s.phase_b_offset += 1,
                3 => s.phase_b_len = usize::MAX,
                4 => s.logical_len += 1,
                // SAFETY: prefix contains initialized Pass values; changing a
                // usize field is valid and the seam must reject this layout.
                5 => unsafe { (*s.backing.as_mut_ptr().cast::<Pass>()).len += 1 },
                _ => s.backing = Backing::new(64),
            }
            let before = s.backing.bytes().to_vec();
            let offset = s.phase_b_offset;
            assert!(s.diagnostic_shift_phase_b(1024).is_err());
            assert_eq!(s.backing.bytes(), before);
            assert_eq!(s.phase_b_offset, offset);
        }
        let mut s = Storage::<f32>::new(&[2], 2);
        let before = s.backing.bytes().to_vec();
        assert_eq!(s.diagnostic_shift_phase_b(64), Err(E::InsufficientCapacity));
        assert_eq!(s.backing.bytes(), before);
    }

    #[test]
    fn coefficient_shift_stockham_rejects_invalid_storage_atomically() {
        for variant in 0..8 {
            let mut s = Storage::<f64>::new(&[8, 8, 8], 8192);
            match variant {
                0 => s.pass_count = usize::MAX,
                1 => s.phase_b_offset += 64,
                2 => s.phase_b_len = usize::MAX,
                3 => s.logical_len += 1,
                // SAFETY: the owner starts with three initialized Pass values.
                // Corrupt only usize fields; the tested seam must reject them.
                4..=6 => unsafe {
                    let p = &mut *s.backing.as_mut_ptr().cast::<Pass>();
                    match variant {
                        4 => p.offset += 1,
                        5 => p.len += 1,
                        _ => p.radix = usize::MAX,
                    }
                },
                _ => s.backing = Backing::new(64),
            }
            let before = s.backing.bytes().to_vec();
            let state = (s.pass_count, s.phase_b_offset, s.phase_b_len, s.logical_len);
            assert!(s.diagnostic_shift_coefficients(64).is_err());
            assert_eq!(s.backing.bytes(), before);
            assert_eq!(
                (s.pass_count, s.phase_b_offset, s.phase_b_len, s.logical_len),
                state
            );
        }
        let mut s = Storage::<f32>::new(&[2], 0);
        let before = s.backing.bytes().to_vec();
        for (shift, error) in [
            (1, E::InvalidShift),
            (64, E::InsufficientCapacity),
            (usize::MAX & !63, E::Overflow),
        ] {
            assert_eq!(s.diagnostic_shift_coefficients(shift), Err(error));
            assert_eq!(s.backing.bytes(), before);
        }
        let mut empty = Storage::<f32>::new(&[], 0);
        empty.diagnostic_shift_coefficients(64).unwrap();
        empty.diagnostic_shift_coefficients(0).unwrap();
        assert!(empty.backing.bytes().iter().all(|&b| b == 0));
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[cfg(feature = "tuning")]
    #[test]
    fn miri_coefficient_swap_validates_backing_and_restores_exact_owners() {
        for phase_len in [16, 1024] {
            let mut a = Storage::<f64>::new(&[2, 4], phase_len);
            a.pass_tw_mut(0)
                .copy_from_slice(&[-0.0, f64::from_bits(0x7ff8_0000_0000_0012)]);
            let mut b = a.clone();
            let pointers = (a.backing.as_ptr(), b.backing.as_ptr());
            a.diagnostic_swap_backing(&mut b, false).unwrap();
            assert_eq!((a.backing.as_ptr(), b.backing.as_ptr()), pointers);
            a.diagnostic_swap_backing(&mut b, true).unwrap();
            assert_eq!(
                (a.backing.as_ptr(), b.backing.as_ptr()),
                (pointers.1, pointers.0)
            );
            assert_eq!(a.pass_tw(0)[0].to_bits(), (-0.0f64).to_bits());
            a.diagnostic_swap_backing(&mut b, true).unwrap();
            assert_eq!((a.backing.as_ptr(), b.backing.as_ptr()), pointers);
        }
    }

    #[cfg(feature = "tuning")]
    #[test]
    fn miri_coefficient_swap_rejects_capacity_layout_and_bits_without_mutation() {
        use crate::tuning::CoefficientSwapError as E;
        for exchange in [false, true] {
            for phase_len in [17, 1025] {
                for fault in 0..5 {
                    let mut a = Storage::<f32>::new(&[2, 4], phase_len);
                    let mut b = a.clone();
                    let expected = match fault {
                        0 => {
                            match &mut b.backing {
                                Backing::Small(v) => v.reserve_exact(v.capacity() + 1),
                                Backing::Paged(v) => v.reserve_exact(v.capacity() + 1),
                            }
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
                        3 => {
                            b.phase_b_mut()[0] = 1.0;
                            E::ValuesMismatch
                        }
                        _ => {
                            // Initialized tail padding participates in validation.
                            match &mut b.backing {
                                Backing::Small(v) => v.last_mut().unwrap().0[ALIGN - 1] = 1,
                                Backing::Paged(v) => v.last_mut().unwrap().0[PAGE_ALIGN - 1] = 1,
                            }
                            E::ValuesMismatch
                        }
                    };
                    let pointers = (a.backing.as_ptr(), b.backing.as_ptr());
                    let before_a = a.backing.bytes().to_vec();
                    let before_b = b.backing.bytes().to_vec();
                    assert_eq!(a.diagnostic_swap_backing(&mut b, exchange), Err(expected));
                    assert_eq!((a.backing.as_ptr(), b.backing.as_ptr()), pointers);
                    assert_eq!(a.backing.bytes().to_vec(), before_a);
                    assert_eq!(b.backing.bytes().to_vec(), before_b);
                }
            }
        }
    }

    #[cfg(feature = "tuning")]
    #[test]
    fn miri_coefficient_swap_rejects_different_backing_variants() {
        for exchange in [false, true] {
            let mut a = Storage::<f32>::new(&[], 1024);
            let mut b = Storage::<f32>::new(&[], 1024);
            // Same initialized bytes and valid typed views, different owner
            // alignment/layout. Production construction cannot create this.
            b.backing = Backing::Small(vec![Block([0; ALIGN]); PAGE_ALIGN / ALIGN]);
            assert_eq!(a.backing.bytes(), b.backing.bytes());
            let pointers = (a.backing.as_ptr(), b.backing.as_ptr());
            assert_eq!(
                a.diagnostic_swap_backing(&mut b, exchange),
                Err(crate::tuning::CoefficientSwapError::StorageMismatch)
            );
            assert_eq!((a.backing.as_ptr(), b.backing.as_ptr()), pointers);
        }
    }

    #[test]
    fn miri_backing_threshold_preserves_small_footprint_and_rounds_pages() {
        for (len, element_bytes, bytes) in [
            (0, ALIGN, ALIGN),
            (1, ALIGN, ALIGN),
            (1008, ALIGN, 4032),
            (1009, PAGE_ALIGN, PAGE_ALIGN),
            (1024, PAGE_ALIGN, PAGE_ALIGN),
            (1025, PAGE_ALIGN, 2 * PAGE_ALIGN),
        ] {
            let s = Storage::<f32>::new(&[], len);
            assert_eq!(s.backing.layout().0, element_bytes);
            assert_eq!(s.backing.bytes().len(), bytes);
            assert_eq!(s.backing.as_ptr() as usize % element_bytes, 0);
            assert_eq!(s.logical_len(), len);
            assert_eq!(s.phase_b().len(), len);
            assert!(s.backing.bytes().iter().all(|&v| v == 0));
        }
        // The page payload remains indirect; plan objects are not themselves
        // 4096-aligned or inflated by an inline page.
        assert_eq!(align_of::<Storage<f32>>(), align_of::<usize>());
        assert!(size_of::<Backing>() <= size_of::<Vec<Block>>() + size_of::<usize>());
    }

    #[test]
    fn miri_paged_clone_preserves_bits_and_alignment_both_precisions() {
        let mut a = Storage::<f32>::new(&[2], 1024);
        a.pass_tw_mut(0)
            .copy_from_slice(&[-0.0, f32::from_bits(0x7fc0_0012)]);
        a.phase_b_mut()[1023] = -0.0;
        let b = a.clone();
        assert_eq!(a.backing.bytes(), b.backing.bytes());
        assert_ne!(a.backing.as_ptr(), b.backing.as_ptr());
        assert_eq!(b.backing.as_ptr() as usize % PAGE_ALIGN, 0);
        a.phase_b_mut()[1023] = 2.0;
        assert_eq!(b.phase_b()[1023].to_bits(), (-0.0f32).to_bits());
        let mut a = Storage::<f64>::new(&[2], 512);
        a.pass_tw_mut(0)
            .copy_from_slice(&[-0.0, f64::from_bits(0x7ff8_0000_0000_0012)]);
        a.phase_b_mut()[511] = -0.0;
        let b = a.clone();
        assert_eq!(a.backing.bytes(), b.backing.bytes());
        assert_ne!(a.backing.as_ptr(), b.backing.as_ptr());
        assert_eq!(b.backing.as_ptr() as usize % PAGE_ALIGN, 0);
        a.phase_b_mut()[511] = 2.0;
        assert_eq!(b.phase_b()[511].to_bits(), (-0.0f64).to_bits());
    }

    #[test]
    #[should_panic(expected = "coefficient storage allocation too large")]
    fn miri_paged_allocation_layout_overflow_is_rejected_before_allocation() {
        let _ = Backing::new(usize::MAX);
    }

    fn layout<S: Copy + Default + 'static>() {
        let mut a = Storage::<S>::new(&[8, 8, 8], 8192);
        let b = Storage::<S>::new(&[8, 8, 8], 8192);
        assert_eq!(a.logical_len(), 14 + 112 + 896 + 8192);
        let base_a = a.backing.as_ptr() as usize;
        let base_b = b.backing.as_ptr() as usize;
        assert_eq!(base_a % PAGE_ALIGN, 0);
        assert_eq!(base_b % PAGE_ALIGN, 0);
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
        assert_ne!(clone.backing.as_ptr(), a.backing.as_ptr());
        assert_eq!(clone.backing.as_ptr() as usize % PAGE_ALIGN, 0);
        assert_eq!(
            clone.phase_b().as_ptr() as usize - clone.backing.as_ptr() as usize,
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

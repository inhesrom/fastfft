//! Checked, initialized backing shared by canonical engine coefficient stores.

pub(super) const ALIGN: usize = 64;
// Canonicalize the low 12 address bits for backing spans of at least 4 KiB.
// This is an allocation alignment, not a claim about the OS's physical pages.
pub(super) const PAGE_ALIGN: usize = 4096;

#[repr(C, align(64))]
#[derive(Clone, Debug)]
pub(super) struct Block(pub(super) [u8; ALIGN]);

#[repr(C, align(4096))]
#[derive(Clone, Debug)]
pub(super) struct Page(pub(super) [u8; PAGE_ALIGN]);

#[derive(Clone, Debug)]
pub(super) enum Backing {
    Small(Vec<Block>),
    Paged(Vec<Page>),
}

#[cfg(all(test, feature = "tuning"))]
mod shift_tests {
    use super::*;
    use crate::tuning::CoefficientShiftError as E;

    #[test]
    fn coefficient_shift_slab_overlap_disjoint_sham_and_restore() {
        for width in [0, 64, 128, 2048] {
            let mut owner = Backing::new(4096);
            // SAFETY: this is within the initialized byte-array allocation.
            unsafe {
                std::slice::from_raw_parts_mut(owner.as_mut_ptr().add(64), width).fill(0xa5);
            }
            let original = owner.bytes().to_vec();
            let pointer = owner.as_ptr();
            let mut current = 0;
            for target in [0, 64, 64, 1024, 64, 0, 0] {
                owner
                    .shift_coefficient_slab(64, 64 + width, current, target)
                    .unwrap();
                assert_eq!(owner.as_ptr(), pointer);
                assert_eq!(
                    &owner.bytes()[64 + target..64 + target + width],
                    &original[64..64 + width]
                );
                current = target;
            }
            assert_eq!(owner.bytes(), original);
        }
    }

    #[test]
    fn coefficient_shift_slab_rejections_do_not_mutate() {
        let mut owner = Backing::new(4096);
        for (start, end, current, target, error) in [
            (64, 128, 0, 1, E::InvalidShift),
            (64, 128, 1, 64, E::InvalidStorage),
            (128, 64, 0, 64, E::InvalidStorage),
            (64, 128, 4096, 0, E::InvalidStorage),
            (64, 128, 0, 4096, E::InsufficientCapacity),
            (64, 128, 0, usize::MAX & !63, E::Overflow),
        ] {
            let before = owner.bytes().to_vec();
            assert_eq!(
                owner.shift_coefficient_slab(start, end, current, target),
                Err(error)
            );
            assert_eq!(owner.bytes(), before);
        }
        // Nonzero incoming padding cannot be overwritten without a backup.
        // SAFETY: byte128 lies in this initialized4096-byte allocation.
        unsafe { owner.as_mut_ptr().add(128).write(1) };
        let before = owner.bytes().to_vec();
        assert_eq!(
            owner.shift_coefficient_slab(64, 128, 0, 64),
            Err(E::InvalidStorage)
        );
        assert_eq!(owner.bytes(), before);
    }
}

#[cfg(feature = "tuning")]
pub(super) fn checked_aligned(bytes: usize) -> Result<usize, crate::tuning::CoefficientShiftError> {
    bytes
        .checked_add(ALIGN - 1)
        .map(|v| v & !(ALIGN - 1))
        .ok_or(crate::tuning::CoefficientShiftError::Overflow)
}

#[cfg(feature = "tuning")]
pub(super) fn checked_table_end<S>(
    offset: usize,
    len: usize,
) -> Result<usize, crate::tuning::CoefficientShiftError> {
    let end = len
        .checked_mul(size_of::<S>())
        .and_then(|bytes| offset.checked_add(bytes))
        .ok_or(crate::tuning::CoefficientShiftError::Overflow)?;
    checked_aligned(end)
}

impl Backing {
    /// Move only the initialized coefficient slab. Callers first validate all
    /// descriptors against the canonical layout and fix offsets after success.
    #[cfg(feature = "tuning")]
    pub(super) fn shift_coefficient_slab(
        &mut self,
        prefix: usize,
        canonical_end: usize,
        current: usize,
        requested: usize,
    ) -> Result<(), crate::tuning::CoefficientShiftError> {
        use crate::tuning::CoefficientShiftError as E;
        if !requested.is_multiple_of(ALIGN) {
            return Err(E::InvalidShift);
        }
        if !current.is_multiple_of(ALIGN)
            || !prefix.is_multiple_of(ALIGN)
            || !canonical_end.is_multiple_of(ALIGN)
            || canonical_end < prefix
        {
            return Err(E::InvalidStorage);
        }
        let source = prefix.checked_add(current).ok_or(E::Overflow)?;
        let source_end = canonical_end.checked_add(current).ok_or(E::Overflow)?;
        let target = prefix.checked_add(requested).ok_or(E::Overflow)?;
        let target_end = canonical_end.checked_add(requested).ok_or(E::Overflow)?;
        let bytes = self.bytes();
        if source_end > bytes.len() {
            return Err(E::InvalidStorage);
        }
        if target_end > bytes.len() {
            return Err(E::InsufficientCapacity);
        }
        // Only overwrite zero padding outside the current slab. No backup is
        // needed, and clearing vacated bytes can later restore the exact owner.
        let incoming = if target < source {
            target..source.min(target_end)
        } else {
            source_end.max(target)..target_end
        };
        if bytes[incoming].iter().any(|&v| v != 0) {
            return Err(E::InvalidStorage);
        }
        let len = bytes.len();
        // SAFETY: Backing consists entirely of initialized byte-array elements
        // without padding; len is its initialized length, never spare capacity.
        let bytes = unsafe { std::slice::from_raw_parts_mut(self.as_mut_ptr(), len) };
        bytes.copy_within(source..source_end, target);
        if target > source {
            bytes[source..target.min(source_end)].fill(0);
        } else {
            bytes[target_end.max(source)..source_end].fill(0);
        }
        Ok(())
    }

    pub(super) fn new(bytes: usize) -> Self {
        if bytes < PAGE_ALIGN {
            let count = bytes.div_ceil(ALIGN).max(1);
            std::alloc::Layout::array::<Block>(count)
                .expect("coefficient storage allocation too large");
            Self::Small(vec![Block([0; ALIGN]); count])
        } else {
            let count = bytes.div_ceil(PAGE_ALIGN);
            std::alloc::Layout::array::<Page>(count)
                .expect("coefficient storage allocation too large");
            Self::Paged(vec![Page([0; PAGE_ALIGN]); count])
        }
    }

    #[inline(always)]
    pub(super) fn as_ptr(&self) -> *const u8 {
        match self {
            Self::Small(v) => v.as_ptr().cast(),
            Self::Paged(v) => v.as_ptr().cast(),
        }
    }

    #[inline(always)]
    pub(super) fn as_mut_ptr(&mut self) -> *mut u8 {
        match self {
            Self::Small(v) => v.as_mut_ptr().cast(),
            Self::Paged(v) => v.as_mut_ptr().cast(),
        }
    }

    #[cfg(any(test, feature = "tuning"))]
    pub(super) fn layout(&self) -> (usize, usize, usize) {
        match self {
            Self::Small(v) => (ALIGN, v.len(), v.capacity()),
            Self::Paged(v) => (PAGE_ALIGN, v.len(), v.capacity()),
        }
    }

    #[cfg(any(test, feature = "tuning"))]
    pub(super) fn bytes(&self) -> &[u8] {
        let (element_bytes, len, _) = self.layout();
        // SAFETY: both owners have fully initialized byte-array elements and
        // no padding. The Vec's allocation bounds the product and the view.
        unsafe { std::slice::from_raw_parts(self.as_ptr(), len * element_bytes) }
    }
}

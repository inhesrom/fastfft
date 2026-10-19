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

impl Backing {
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

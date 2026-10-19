//! One canonical owner for panel descriptors and every FourStep coefficient.
//! Descriptors contain offsets, never self-references. Borrowed panels cannot
//! outlive the owner, including after cloning or diagnostic owner exchanges.

use crate::api::FftNum;
use crate::engine::aligned_storage::{ALIGN, Backing};
use crate::twiddle::omega;
use std::marker::PhantomData;

#[repr(C)]
#[derive(Clone, Copy, Debug)]
pub(super) struct Pass {
    pub radix: usize,
    offset: usize,
    len: usize,
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
struct Layout {
    counts: [usize; 2],
    cross_offset: usize,
    cross_len: usize,
    fine_offset: usize,
    fine_len: usize,
}

#[derive(Clone, Debug)]
pub(super) struct Storage<S> {
    backing: Backing,
    layout: Layout,
    scalar: PhantomData<S>,
}

/// One FFT per lane, with immutable descriptors and coefficients borrowed
/// together from the same owner. `rows` is the unchanged panel transform size.
#[derive(Clone, Copy, Debug)]
pub(super) struct Panel<'a, S> {
    pub rows: usize,
    pub passes: &'a [Pass],
    base: *const u8,
    scalar: PhantomData<&'a S>,
}

impl<S> Panel<'_, S> {
    #[inline(always)]
    pub fn twiddles(&self, pass: usize) -> &[S] {
        let p = &self.passes[pass];
        // SAFETY: panel() borrows the validated descriptor prefix from the
        // same owner as base. Its lifetime prevents owner replacement/drop;
        // new checked each aligned table range before creating descriptors.
        unsafe { std::slice::from_raw_parts(self.base.add(p.offset).cast::<S>(), p.len) }
    }
}

fn aligned(bytes: usize) -> usize {
    bytes
        .checked_add(ALIGN - 1)
        .expect("FourStep storage overflow")
        & !(ALIGN - 1)
}

fn table_end<S>(offset: usize, len: usize) -> usize {
    aligned(
        len.checked_mul(size_of::<S>())
            .and_then(|bytes| offset.checked_add(bytes))
            .expect("FourStep storage overflow"),
    )
}

fn pass_len(ns: usize, radix: usize) -> usize {
    ns.checked_mul(radix.checked_sub(1).expect("zero FourStep radix"))
        .and_then(|len| len.checked_mul(2))
        .expect("FourStep coefficient count overflow")
}

impl<S: FftNum> Storage<S> {
    pub fn new(columns: &[usize], rows: &[usize], cross_len: usize, fine_len: usize) -> Self {
        // FftNum is sealed to f32/f64, whose all-zero representation is +0.
        assert!(matches!(size_of::<S>(), 4 | 8));
        assert!(ALIGN.is_multiple_of(align_of::<S>()));
        assert_eq!(size_of::<Pass>(), 3 * size_of::<usize>());
        assert!(ALIGN.is_multiple_of(align_of::<Pass>()));
        let count = columns
            .len()
            .checked_add(rows.len())
            .expect("FourStep pass count overflow");
        let prefix = count
            .checked_mul(size_of::<Pass>())
            .expect("FourStep descriptor overflow");
        let mut end = aligned(prefix);
        for radices in [columns, rows] {
            let mut ns = 1usize;
            for &radix in radices {
                end = table_end::<S>(end, pass_len(ns, radix));
                ns = ns
                    .checked_mul(radix)
                    .expect("FourStep radix product overflow");
            }
        }
        let cross_offset = end;
        let fine_offset = table_end::<S>(cross_offset, cross_len);
        let end = table_end::<S>(fine_offset, fine_len);
        let mut result = Self {
            backing: Backing::new(end),
            layout: Layout {
                counts: [columns.len(), rows.len()],
                cross_offset,
                cross_len,
                fine_offset,
                fine_len,
            },
            scalar: PhantomData,
        };
        let mut offset = aligned(prefix);
        let mut index = 0;
        for radices in [columns, rows] {
            let mut ns = 1;
            for &radix in radices {
                let len = pass_len(ns, radix);
                // SAFETY: the checked prefix holds all descriptors, aligned
                // for Pass. Its three usize fields have no uninitialized padding.
                unsafe {
                    result
                        .backing
                        .as_mut_ptr()
                        .cast::<Pass>()
                        .add(index)
                        .write(Pass { radix, offset, len });
                }
                offset = table_end::<S>(offset, len);
                ns *= radix;
                index += 1;
            }
        }
        result
    }

    pub fn fill_panels(&mut self) {
        for panel in 0..2 {
            let mut ns = 1;
            for index in 0..self.layout.counts[panel] {
                let pass = self.panel(panel, 0).passes[index];
                let tw = self.values_mut(pass.offset, pass.len);
                for k in 0..ns {
                    for j in 1..pass.radix {
                        let (re, im) = omega(j * k, ns * pass.radix);
                        let at = 2 * (k * (pass.radix - 1) + j - 1);
                        tw[at] = S::from_f64(re).unwrap();
                        tw[at + 1] = S::from_f64(im).unwrap();
                    }
                }
                ns *= pass.radix;
            }
        }
    }
}

impl<S> Storage<S> {
    #[inline(always)]
    pub fn panel(&self, index: usize, rows: usize) -> Panel<'_, S> {
        let start = if index == 0 { 0 } else { self.layout.counts[0] };
        let count = self.layout.counts[index];
        let base = self.backing.as_ptr();
        // SAFETY: new initializes exactly this checked, aligned prefix. It is
        // immutable after construction and contains only valid usize fields.
        let passes = unsafe { std::slice::from_raw_parts(base.cast::<Pass>().add(start), count) };
        Panel {
            rows,
            passes,
            base,
            scalar: PhantomData,
        }
    }

    #[inline(always)]
    fn values(&self, offset: usize, len: usize) -> &[S] {
        // SAFETY: only constructor-validated regions reach this private method;
        // every byte is initialized and S is f32/f64. Empty regions are aligned
        // and may use the allocation's one-past pointer, with length zero.
        unsafe { std::slice::from_raw_parts(self.backing.as_ptr().add(offset).cast::<S>(), len) }
    }

    fn values_mut(&mut self, offset: usize, len: usize) -> &mut [S] {
        // SAFETY: same checked ranges as values, with exclusive owner access.
        unsafe {
            std::slice::from_raw_parts_mut(self.backing.as_mut_ptr().add(offset).cast::<S>(), len)
        }
    }

    #[inline(always)]
    pub fn cross(&self) -> &[S] {
        self.values(self.layout.cross_offset, self.layout.cross_len)
    }
    pub fn cross_mut(&mut self) -> &mut [S] {
        self.values_mut(self.layout.cross_offset, self.layout.cross_len)
    }
    #[inline(always)]
    pub fn fine(&self) -> &[S] {
        self.values(self.layout.fine_offset, self.layout.fine_len)
    }
    pub fn fine_mut(&mut self) -> &mut [S] {
        self.values_mut(self.layout.fine_offset, self.layout.fine_len)
    }

    #[cfg(feature = "tuning")]
    pub fn diagnostic_swap_backing(
        &mut self,
        other: &mut Self,
        exchange: bool,
    ) -> Result<(), crate::tuning::CoefficientSwapError> {
        use crate::tuning::CoefficientSwapError as E;
        if self.layout != other.layout || self.backing.layout() != other.backing.layout() {
            return Err(E::StorageMismatch);
        }
        // Includes descriptors, initialized tail lanes and allocation padding.
        // Never inspect spare capacity or construct views from exchanged bytes.
        if self.backing.bytes() != other.backing.bytes() {
            return Err(E::ValuesMismatch);
        }
        if exchange {
            std::mem::swap(&mut self.backing, &mut other.backing);
        }
        Ok(())
    }

    #[cfg(feature = "tuning")]
    pub fn diagnostic_regions(
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
        for (panel_index, radix_kind, twiddle_kind) in [
            (0, RegionKind::ColumnRadices, RegionKind::ColumnTwiddles),
            (1, RegionKind::RowRadices, RegionKind::RowTwiddles),
        ] {
            let panel = self.panel(panel_index, 0);
            view(
                RegionKind::PassDescriptors,
                panel_index,
                panel.passes.as_ptr() as usize,
                size_of::<Pass>(),
                panel.passes.len(),
            );
            for (index, pass) in panel.passes.iter().enumerate() {
                view(
                    radix_kind,
                    index,
                    &pass.radix as *const usize as usize,
                    size_of::<usize>(),
                    1,
                );
                let tw = panel.twiddles(index);
                view(
                    twiddle_kind,
                    index,
                    tw.as_ptr() as usize,
                    size_of::<S>(),
                    tw.len(),
                );
            }
        }
        for (kind, tw) in [
            (RegionKind::CrossTwiddles, self.cross()),
            (RegionKind::FineTwiddles, self.fine()),
        ] {
            view(
                kind,
                0,
                if tw.is_empty() {
                    0
                } else {
                    tw.as_ptr() as usize
                },
                size_of::<S>(),
                tw.len(),
            );
        }
    }
}

#[cfg(test)]
mod tests;

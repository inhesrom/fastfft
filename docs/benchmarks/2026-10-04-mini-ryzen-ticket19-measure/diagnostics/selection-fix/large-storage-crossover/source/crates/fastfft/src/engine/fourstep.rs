//! Four-step transforms with arbitrary smooth dimensions, independent of SIMD
//! width. For N = A * B, transform A rows across panels of B columns, apply
//! W_N^(kA*b) while transposing, then transform B rows across panels of A
//! columns. The second panel's stores are already in natural frequency order:
//! k = kA + A*kB. Power-of-two plans tile the intermediate in the second
//! stage's consumption order and group adjacent panels in bounded cache
//! workspace. Only workspaces are padded, never the transform.

use super::Shape;
use super::stockham::{self, StockhamVector};
use crate::api::FftNum;
use crate::isa::{Isa, Precision, Vector};
use crate::twiddle::omega;

#[cfg(all(test, feature = "tuning"))]
mod coefficient_swap_tests;
mod grouped;
#[cfg(test)]
mod tests;

/// One FFT per lane. This panel machinery is also usable for larger four-step
/// decompositions; no row count or stride must be divisible by the lane count.
#[derive(Debug)]
struct Panel<S> {
    rows: usize,
    radices: Vec<usize>,
    twiddles: Vec<Vec<S>>,
}

impl<S: FftNum> Panel<S> {
    fn new(rows: usize) -> Self {
        let radices = crate::planner::choose_radices(rows, 8).expect("smooth panel");
        let mut ns = 1;
        let twiddles = radices
            .iter()
            .map(|&r| {
                let mut tw = Vec::with_capacity(ns * (r - 1) * 2);
                for k in 0..ns {
                    for j in 1..r {
                        let (re, im) = omega(j * k, ns * r);
                        tw.extend([S::from_f64(re).unwrap(), S::from_f64(im).unwrap()]);
                    }
                }
                ns *= r;
                tw
            })
            .collect();
        Self {
            rows,
            radices,
            twiddles,
        }
    }
}

#[derive(Debug)]
pub(crate) struct FourStepPlan<S> {
    pub n: usize,
    pub a: usize,
    pub b: usize,
    pub lanes: usize,
    columns: Panel<S>,
    rows: Panel<S>,
    /// Per column panel: split cross twiddles. Power-of-two plans factor
    /// ka = coarse*twiddle_step + fine, reducing table space and planning.
    twiddles: Vec<S>,
    fine_twiddles: Vec<S>,
    twiddle_step: usize,
    matrix_len: usize,
    work_len: usize,
    blocked: bool,
    streaming: bool,
    groups: usize,
    group_stride: usize,
    #[cfg(test)]
    profile: bool,
}

impl<S: FftNum> FourStepPlan<S> {
    #[cfg(feature = "tuning")]
    pub(crate) fn diagnostic_swap_coefficients(
        &mut self,
        other: &mut Self,
        exchange: bool,
    ) -> Result<(), crate::tuning::CoefficientSwapError> {
        use crate::tuning::{CoefficientSwapError as E, coefficient_bits_equal};
        fn same_layout<T>(a: &Vec<T>, b: &Vec<T>) -> bool {
            (a.len(), a.capacity()) == (b.len(), b.capacity())
        }
        if (
            (self.n, self.a, self.b, self.lanes),
            (self.columns.rows, self.rows.rows, self.twiddle_step),
            (
                self.matrix_len,
                self.work_len,
                self.groups,
                self.group_stride,
            ),
            (self.blocked, self.streaming),
        ) != (
            (other.n, other.a, other.b, other.lanes),
            (other.columns.rows, other.rows.rows, other.twiddle_step),
            (
                other.matrix_len,
                other.work_len,
                other.groups,
                other.group_stride,
            ),
            (other.blocked, other.streaming),
        ) {
            return Err(E::ConfigurationMismatch);
        }
        #[cfg(test)]
        if self.profile != other.profile {
            return Err(E::ConfigurationMismatch);
        }
        // Validate the entire graph before exchanging any owner. Vec spare
        // capacity is uninitialized and is never read; initialized tail lanes
        // inside coefficient lengths are included in the bitwise comparisons.
        for (a, b) in [(&self.columns, &other.columns), (&self.rows, &other.rows)] {
            if !same_layout(&a.radices, &b.radices)
                || !same_layout(&a.twiddles, &b.twiddles)
                || a.twiddles
                    .iter()
                    .zip(&b.twiddles)
                    .any(|(x, y)| !same_layout(x, y))
            {
                return Err(E::StorageMismatch);
            }
            if a.radices != b.radices {
                return Err(E::ConfigurationMismatch);
            }
            if a.twiddles
                .iter()
                .zip(&b.twiddles)
                .any(|(x, y)| !coefficient_bits_equal(x, y))
            {
                return Err(E::ValuesMismatch);
            }
        }
        for (a, b) in [
            (&self.twiddles, &other.twiddles),
            (&self.fine_twiddles, &other.fine_twiddles),
        ] {
            if !same_layout(a, b) {
                return Err(E::StorageMismatch);
            }
            if !coefficient_bits_equal(a, b) {
                return Err(E::ValuesMismatch);
            }
        }
        if exchange {
            // Include radix and outer descriptor owners: their placement is
            // part of this diagnostic intervention, not just coefficient data.
            std::mem::swap(&mut self.columns.radices, &mut other.columns.radices);
            std::mem::swap(&mut self.rows.radices, &mut other.rows.radices);
            std::mem::swap(&mut self.columns.twiddles, &mut other.columns.twiddles);
            std::mem::swap(&mut self.rows.twiddles, &mut other.rows.twiddles);
            std::mem::swap(&mut self.twiddles, &mut other.twiddles);
            std::mem::swap(&mut self.fine_twiddles, &mut other.fine_twiddles);
        }
        Ok(())
    }

    #[cfg(feature = "tuning")]
    pub(crate) fn diagnostic_regions(
        &self,
        owner: usize,
        sink: &mut dyn FnMut(crate::tuning::DiagnosticRegion),
    ) {
        use crate::tuning::{DiagnosticRegion, RegionKind};
        let mut embedded = DiagnosticRegion::object(self);
        embedded.owner = owner;
        embedded.kind = RegionKind::EmbeddedPlan;
        sink(embedded);
        sink(DiagnosticRegion::vector(
            owner,
            RegionKind::ColumnRadices,
            0,
            &self.columns.radices,
        ));
        sink(DiagnosticRegion::vector(
            owner,
            RegionKind::RowRadices,
            0,
            &self.rows.radices,
        ));
        sink(DiagnosticRegion::vector(
            owner,
            RegionKind::VectorDescriptors,
            0,
            &self.columns.twiddles,
        ));
        sink(DiagnosticRegion::vector(
            owner,
            RegionKind::VectorDescriptors,
            1,
            &self.rows.twiddles,
        ));
        for (index, tw) in self.columns.twiddles.iter().enumerate() {
            sink(DiagnosticRegion::vector(
                owner,
                RegionKind::ColumnTwiddles,
                index,
                tw,
            ));
        }
        for (index, tw) in self.rows.twiddles.iter().enumerate() {
            sink(DiagnosticRegion::vector(
                owner,
                RegionKind::RowTwiddles,
                index,
                tw,
            ));
        }
        sink(DiagnosticRegion::vector(
            owner,
            RegionKind::CrossTwiddles,
            0,
            &self.twiddles,
        ));
        sink(DiagnosticRegion::vector(
            owner,
            RegionKind::FineTwiddles,
            0,
            &self.fine_twiddles,
        ));
        sink(DiagnosticRegion::metadata(owner, 0, self.lanes));
        sink(DiagnosticRegion::metadata(owner, 2, 1));
        for (index, value) in [
            self.matrix_len,
            self.work_len,
            self.groups,
            self.group_stride,
            usize::from(self.blocked),
            usize::from(self.streaming),
            self.twiddle_step,
        ]
        .into_iter()
        .enumerate()
        {
            sink(DiagnosticRegion::metadata(owner, 3 + index, value));
        }
    }

    pub(crate) fn new(n: usize, a: usize, lanes: usize) -> Self {
        Self::with_cache(n, a, lanes, crate::isa::cache::sizes())
    }

    fn with_cache(n: usize, a: usize, lanes: usize, cache: crate::isa::cache::CacheSizes) -> Self {
        assert!(a > 1 && n.is_multiple_of(a) && n / a > 1);
        assert!(lanes.is_power_of_two() && lanes <= 16);
        let b = n / a;
        let blocked = n.is_power_of_two() && a.is_multiple_of(lanes) && b.is_multiple_of(lanes);
        let twiddle_step = if blocked {
            (1 << (a.ilog2() / 2)).max(lanes)
        } else {
            1
        };
        let coarse_rows = a / twiddle_step;
        let mut twiddles = vec![S::zero(); b.div_ceil(lanes) * coarse_rows * 2 * lanes];
        for panel in 0..b.div_ceil(lanes) {
            for ka in 0..coarse_rows {
                for lane in 0..lanes.min(b - panel * lanes) {
                    let (re, im) = omega(ka * twiddle_step * (panel * lanes + lane), n);
                    let base = (panel * coarse_rows + ka) * 2 * lanes;
                    twiddles[base + lane] = S::from_f64(re).unwrap();
                    twiddles[base + lanes + lane] = S::from_f64(im).unwrap();
                }
            }
        }
        let mut fine_twiddles = Vec::new();
        if blocked {
            fine_twiddles.resize(b * twiddle_step * 2, S::zero());
            for panel in 0..b / lanes {
                for ka in 0..twiddle_step {
                    for lane in 0..lanes {
                        let (re, im) = omega(ka * (panel * lanes + lane), n);
                        let base = (panel * twiddle_step + ka) * 2 * lanes;
                        fine_twiddles[base + lane] = S::from_f64(re).unwrap();
                        fine_twiddles[base + lanes + lane] = S::from_f64(im).unwrap();
                    }
                }
            }
        }
        let alignment = crate::fft::align_slack::<S>();
        let work_len = (a.max(b) * lanes).next_multiple_of(alignment);
        let group_stride = work_len + alignment;
        // Power-of-two panel sizes otherwise repeat the same page offset
        // for the matrix and both work buffers. Space their bases by 1 KiB.
        let padding = if blocked {
            1024 / (2 * size_of::<S>())
        } else {
            0
        };
        #[cfg(test)]
        let padding = if std::env::var_os("FASTFFT_FOURSTEP_NO_PADDING").is_some() {
            0
        } else {
            padding
        };
        // Group adjacent panels once their ping-pong workspace fills L1D.
        // Ticket 14 measured a 2 MiB group budget on Zen 4: two L2 capacities,
        // bounded by an eighth of LLC to leave room for matrix/table traffic.
        // Padding is a small additional allowance, as in that checkpoint.
        let budget = (cache.last_level / 8).min(cache.l2.saturating_mul(2));
        let mut groups = 1;
        if blocked && work_len * 4 * size_of::<S>() >= cache.l1_data {
            while groups < 16
                && groups * 2 <= (a / lanes).min(b / lanes)
                && groups * 2 * work_len * 2 * size_of::<S>() <= budget
            {
                groups *= 2;
            }
        }
        #[cfg(test)]
        if let Ok(s) = std::env::var("FASTFFT_FOURSTEP_GROUPS")
            && blocked
        {
            groups = s.parse().expect("panel group count");
            assert!(groups.is_power_of_two() && groups <= (a / lanes).min(b / lanes));
        }
        // Input plus intermediate already span the last-level cache at
        // this point. Measurements favor bypassing it for complete lines.
        let streaming =
            n * 2 * size_of::<S>() >= cache.last_level / 2 && 2 * lanes * size_of::<S>() >= 64;
        #[cfg(test)]
        let streaming = std::env::var("FASTFFT_FOURSTEP_STREAMING").map_or(streaming, |s| s == "1");
        Self {
            n,
            a,
            b,
            lanes,
            columns: Panel::new(a),
            rows: Panel::new(b),
            twiddles,
            fine_twiddles,
            twiddle_step,
            matrix_len: n.next_multiple_of(alignment) + padding,
            work_len: work_len + padding,
            blocked,
            streaming,
            groups,
            group_stride,
            #[cfg(test)]
            profile: std::env::var_os("FASTFFT_FOURSTEP_PROFILE").is_some(),
        }
    }

    pub(crate) fn scratch_len(&self) -> usize {
        self.matrix_len
            + 2 * self.work_len
            + if self.groups > 1 {
                self.groups * self.group_stride
            } else {
                0
            }
    }
}

/// Balanced factorization is a starting point for panel measurements.
pub(crate) fn decomposition(n: usize) -> Option<usize> {
    (2..)
        .take_while(|a| *a <= n / *a)
        .filter(|a| n.is_multiple_of(*a))
        .last()
}

/// Load exactly `valid` complex values. Full panels use ordinary SIMD loads;
/// tail panels use bounded vector operations, so no user padding is needed.
#[inline(always)]
unsafe fn load<V: Vector, const PARTIAL: bool>(p: *const V::S, valid: usize) -> (V, V) {
    // SAFETY: p has valid complex values; a full panel has two vectors.
    unsafe {
        if PARTIAL {
            V::load_complex_prefix(p, valid)
        } else {
            V::deinterleave(V::load(p), V::load(p.add(V::LANES)))
        }
    }
}

#[inline(always)]
unsafe fn store<V: Vector>(p: *mut V::S, re: V, im: V, valid: usize) {
    // SAFETY: p has valid complex values; complete vectors or a bounded
    // prefix are written, never adjacent rows.
    unsafe {
        if valid == V::LANES {
            let (lo, hi) = V::interleave(re, im);
            V::store(p, lo);
            V::store(p.add(V::LANES), hi);
        } else {
            V::store_complex_prefix(p, re, im, valid);
        }
    }
}

/// First DIT pass reads a strided panel of interleaved caller data. Later
/// passes reuse Stockham's split-vector codelets and broadcast twiddles.
#[inline(always)]
#[allow(clippy::too_many_arguments)]
unsafe fn first<
    V: Vector,
    const R: usize,
    const SWAP: bool,
    const PARTIAL: bool,
    const SPLIT: bool,
>(
    input: *const V::S,
    output: *mut V::S,
    rows: usize,
    stride: usize,
    valid: usize,
    one: V,
) {
    // SAFETY: rows is divisible by R, input spans rows of stride complex
    // values, and output holds rows complete split vectors, without aliasing.
    unsafe {
        let seg = rows / R;
        for a in 0..seg {
            let a = core::hint::black_box(a);
            let mut re = [one; R];
            let mut im = [one; R];
            for j in 0..R {
                let p = input.add(2 * (a + j * seg) * stride);
                let (r, i) = if SPLIT {
                    (V::load(p), V::load(p.add(V::LANES)))
                } else {
                    load::<V, PARTIAL>(p, valid)
                };
                (re[j], im[j]) = if SWAP { (i, r) } else { (r, i) };
            }
            crate::codelets::generated::notw::<V, R>(&mut re, &mut im, one);
            for j in 0..R {
                let p = output.add(2 * V::LANES * (a * R + j));
                V::store(p, re[j]);
                V::store(p.add(V::LANES), im[j]);
            }
        }
    }
}

trait PanelVector: StockhamVector {
    unsafe fn first_group<const R: usize, const SWAP: bool>(
        input: *const Self::S,
        output: *mut Self::S,
        rows: usize,
        stride: usize,
        groups: usize,
        group_stride: usize,
        one: Self,
    );
    unsafe fn first<const R: usize, const SWAP: bool, const PARTIAL: bool, const SPLIT: bool>(
        input: *const Self::S,
        output: *mut Self::S,
        rows: usize,
        stride: usize,
        valid: usize,
        one: Self,
    );
    unsafe fn execute(
        plan: &FourStepPlan<Self::S>,
        input: *const Self::S,
        output: *mut Self::S,
        scratch: *mut Self::S,
        inverse: bool,
    ) where
        Self::S: FftNum;
}

#[inline(always)]
#[allow(clippy::too_many_arguments)]
unsafe fn transform<V: PanelVector, const SWAP: bool, const PARTIAL: bool, const SPLIT: bool>(
    panel: &Panel<V::S>,
    input: *const V::S,
    stride: usize,
    valid: usize,
    work1: *mut V::S,
    work2: *mut V::S,
    one: V,
) -> *mut V::S {
    macro_rules! go {
        ($r:literal) => {
            // SAFETY: validated panel dimensions and matching features.
            unsafe {
                V::first::<$r, SWAP, PARTIAL, SPLIT>(input, work1, panel.rows, stride, valid, one)
            }
        };
    }
    match panel.radices[0] {
        2 => go!(2),
        3 => go!(3),
        4 => go!(4),
        5 => go!(5),
        6 => go!(6),
        7 => go!(7),
        8 => go!(8),
        9 => go!(9),
        10 => go!(10),
        11 => go!(11),
        12 => go!(12),
        13 => go!(13),
        14 => go!(14),
        15 => go!(15),
        _ => unreachable!("unsupported panel radix"),
    }
    // SAFETY: the first pass initialized work1; work2 is disjoint.
    unsafe { complete::<V, false>(panel, work1, work2, one) }
}

#[inline(always)]
unsafe fn complete<V: PanelVector, const KEEP_FIRST: bool>(
    panel: &Panel<V::S>,
    mut src: *mut V::S,
    mut dst: *mut V::S,
    one: V,
) -> *mut V::S {
    let first = src;
    let mut ns = panel.radices[0];
    for (pass, &r) in panel.radices.iter().enumerate().skip(1) {
        let out = if KEEP_FIRST && pass + 1 == panel.radices.len() {
            first
        } else {
            dst
        };
        // SAFETY: complete split-vector panels and matching twiddles. Only
        // the last pass may alias: ns == rows/r, so each butterfly reads
        // and writes exactly the same indices, disjoint from other butterflies.
        unsafe {
            stockham::run_pass::<V>(
                r,
                false,
                false,
                src,
                out,
                panel.rows,
                ns,
                panel.twiddles[pass].as_ptr(),
                one,
            );
        }
        dst = src;
        src = out;
        ns *= r;
    }
    src
}

/// Store whole register tiles in the order the second-stage panels consume
/// them: [A/L][B][re x L, im x L]. This avoids a strided read of the large
/// intermediate and the second stage's deinterleaving.
#[inline(always)]
#[allow(clippy::too_many_arguments)]
unsafe fn transpose_blocked<V: Vector, const L: usize>(
    src: *const V::S,
    dst: *mut V::S,
    a: usize,
    b: usize,
    tw: *const V::S,
    fine: *const V::S,
    step: usize,
    streaming: bool,
) {
    // SAFETY: A and B are multiples of L; src contains A split vectors,
    // tw contains A/step and fine contains step vectors. step is a power of
    // two >= L. dst is the column tile in a complete aligned N-value matrix;
    // streaming writes are fenced before the second stage reads it.
    unsafe {
        let zero = V::splat(V::S::default());
        for base in (0..a).step_by(L) {
            let coarse_offset = 2 * L * (base >> step.trailing_zeros());
            let cr = V::load(tw.add(coarse_offset));
            let ci = V::load(tw.add(coarse_offset + L));
            let mut re = [zero; L];
            let mut im = [zero; L];
            for t in 0..L {
                let offset = 2 * L * (base + t);
                let r = V::load(src.add(offset));
                let i = V::load(src.add(offset + L));
                let fine_offset = 2 * L * ((base & (step - 1)) + t);
                let fr = V::load(fine.add(fine_offset));
                let fi = V::load(fine.add(fine_offset + L));
                let wr = V::fmsub(cr, fr, V::mul(ci, fi));
                let wi = V::fmadd(cr, fi, V::mul(ci, fr));
                re[t] = V::fmsub(r, wr, V::mul(i, wi));
                im[t] = V::fmadd(r, wi, V::mul(i, wr));
            }
            stockham::transpose::<V, L>(&mut re);
            stockham::transpose::<V, L>(&mut im);
            for t in 0..L {
                let p = dst.add(2 * (base * b + t * L));
                if streaming {
                    V::stream_store(p, re[t]);
                    V::stream_store(p.add(L), im[t]);
                } else {
                    V::store(p, re[t]);
                    V::store(p.add(L), im[t]);
                }
            }
        }
    }
}

/// Fuse cross twiddles and an LxL register transpose into the intermediate
/// stores. Both edges may be partial, including matrices smaller than LxL.
#[inline(always)]
unsafe fn transpose_panel<V: Vector, const L: usize>(
    src: *const V::S,
    dst: *mut V::S,
    rows: usize,
    valid: usize,
    tw: *const V::S,
) {
    // SAFETY: src/tw contain rows split vectors, dst spans valid rows of
    // stride rows. The register tile is padded with zeros at either edge.
    unsafe {
        let zero = V::splat(V::S::default());
        for base in (0..rows).step_by(L) {
            let count = L.min(rows - base);
            let mut re = [zero; L];
            let mut im = [zero; L];
            for t in 0..count {
                let offset = 2 * L * (base + t);
                let r = V::load(src.add(offset));
                let i = V::load(src.add(offset + L));
                let wr = V::load(tw.add(offset));
                let wi = V::load(tw.add(offset + L));
                re[t] = V::fmsub(r, wr, V::mul(i, wi));
                im[t] = V::fmadd(r, wi, V::mul(i, wr));
            }
            stockham::transpose::<V, L>(&mut re);
            stockham::transpose::<V, L>(&mut im);
            for t in 0..valid {
                store::<V>(dst.add(2 * (t * rows + base)), re[t], im[t], count);
            }
        }
    }
}

#[inline(always)]
unsafe fn execute<V: PanelVector, const L: usize, const INV: bool>(
    plan: &FourStepPlan<V::S>,
    input: *const V::S,
    output: *mut V::S,
    scratch: *mut V::S,
) where
    V::S: FftNum,
{
    debug_assert_eq!(L, V::LANES);
    debug_assert_eq!(L, plan.lanes);
    if plan.groups > 1 {
        // SAFETY: the same buffers and features, with the advertised group workspace.
        unsafe { grouped::execute::<V, L, INV>(plan, input, output, scratch) };
        return;
    }
    // SAFETY: scratch contains an intermediate matrix and two disjoint
    // padded panels. All input is consumed before any output is written, so
    // the same choreography also preserves in-place and immutable contracts.
    unsafe {
        let work1 = scratch.add(2 * plan.matrix_len);
        let work2 = work1.add(2 * plan.work_len);
        let one = V::splat_f64(core::ptr::read_volatile(&1.0f64));
        let stream_matrix = plan.blocked && plan.streaming;
        #[cfg(test)]
        let start = plan.profile.then(std::time::Instant::now);
        for col in (0..plan.b).step_by(L) {
            let valid = L.min(plan.b - col);
            let src = if valid == L {
                transform::<V, INV, false, false>(
                    &plan.columns,
                    input.add(2 * col),
                    plan.b,
                    valid,
                    work1,
                    work2,
                    one,
                )
            } else {
                transform::<V, INV, true, false>(
                    &plan.columns,
                    input.add(2 * col),
                    plan.b,
                    valid,
                    work1,
                    work2,
                    one,
                )
            };
            if plan.blocked {
                transpose_blocked::<V, L>(
                    src,
                    scratch.add(2 * col * L),
                    plan.a,
                    plan.b,
                    plan.twiddles
                        .as_ptr()
                        .add(2 * col * (plan.a / plan.twiddle_step)),
                    plan.fine_twiddles.as_ptr().add(2 * col * plan.twiddle_step),
                    plan.twiddle_step,
                    stream_matrix,
                );
            } else {
                transpose_panel::<V, L>(
                    src,
                    scratch.add(2 * col * plan.a),
                    plan.a,
                    valid,
                    plan.twiddles.as_ptr().add(2 * col * plan.a),
                );
            }
        }
        if stream_matrix {
            V::stream_fence();
        }
        #[cfg(test)]
        let columns_ns = start.map(|t| t.elapsed().as_nanos());
        let streaming = plan.blocked && plan.streaming && (output as usize).is_multiple_of(64);
        for col in (0..plan.a).step_by(L) {
            let valid = L.min(plan.a - col);
            let src = if plan.blocked {
                transform::<V, false, false, true>(
                    &plan.rows,
                    scratch.add(2 * col * plan.b),
                    L,
                    L,
                    work1,
                    work2,
                    one,
                )
            } else if valid == L {
                transform::<V, false, false, false>(
                    &plan.rows,
                    scratch.add(2 * col),
                    plan.a,
                    valid,
                    work1,
                    work2,
                    one,
                )
            } else {
                transform::<V, false, true, false>(
                    &plan.rows,
                    scratch.add(2 * col),
                    plan.a,
                    valid,
                    work1,
                    work2,
                    one,
                )
            };
            for row in 0..plan.b {
                let r = V::load(src.add(2 * L * row));
                let i = V::load(src.add(2 * L * row + L));
                let (r, i) = if INV { (i, r) } else { (r, i) };
                let p = output.add(2 * (row * plan.a + col));
                if streaming {
                    let (lo, hi) = V::interleave(r, i);
                    V::stream_store(p, lo);
                    V::stream_store(p.add(L), hi);
                } else {
                    store::<V>(p, r, i, valid);
                }
            }
        }
        if streaming {
            V::stream_fence();
        }
        #[cfg(test)]
        if let Some(start) = start {
            let columns_ns = columns_ns.unwrap();
            eprintln!(
                "phases,{},{},{},{},{},{},{},{}",
                plan.n,
                plan.a,
                plan.b,
                L,
                size_of::<V::S>(),
                streaming,
                columns_ns,
                start.elapsed().as_nanos() - columns_ns
            );
        }
    }
}

macro_rules! vector {
    ($v:ty, $l:literal $(, $features:literal)?) => {
        impl PanelVector for $v {
            $(#[target_feature(enable = $features)])?
            #[inline(never)]
            unsafe fn first_group<const R: usize, const SWAP: bool>(
                input: *const Self::S, output: *mut Self::S, rows: usize, stride: usize,
                groups: usize, group_stride: usize, one: Self,
            ) {
                // SAFETY: complete power-of-two panels and matching features.
                unsafe { grouped::first::<Self, R, SWAP>(input, output, rows, stride, groups, group_stride, one) }
            }
            $(#[target_feature(enable = $features)])?
            #[inline(never)]
            unsafe fn first<const R: usize, const SWAP: bool, const PARTIAL: bool, const SPLIT: bool>(
                input: *const Self::S, output: *mut Self::S, rows: usize, stride: usize,
                valid: usize, one: Self,
            ) {
                // SAFETY: forwarded panel contract under matching features.
                unsafe { first::<Self, R, SWAP, PARTIAL, SPLIT>(input, output, rows, stride, valid, one) }
            }
            $(#[target_feature(enable = $features)])?
            unsafe fn execute(
                plan: &FourStepPlan<Self::S>, input: *const Self::S, output: *mut Self::S,
                scratch: *mut Self::S, inverse: bool,
            ) {
                // SAFETY: caller validates buffers, plan shape and ISA.
                unsafe {
                    if inverse { execute::<Self, $l, true>(plan, input, output, scratch); }
                    else { execute::<Self, $l, false>(plan, input, output, scratch); }
                }
            }
        }
    };
}
vector!(crate::isa::scalar::S32, 1);
vector!(crate::isa::scalar::S64, 1);
#[cfg(all(target_arch = "x86_64", feature = "sse2"))]
vector!(crate::isa::x86::F32x4, 4, "sse2");
#[cfg(all(target_arch = "x86_64", feature = "sse2"))]
vector!(crate::isa::x86::F64x2, 2, "sse2");
#[cfg(all(target_arch = "x86_64", feature = "avx2"))]
vector!(crate::isa::x86::F32x8, 8, "avx2,fma");
#[cfg(all(target_arch = "x86_64", feature = "avx2"))]
vector!(crate::isa::x86::F64x4, 4, "avx2,fma");
#[cfg(all(target_arch = "x86_64", feature = "avx512"))]
vector!(
    crate::isa::x86::F32x8v,
    8,
    "avx512f,avx512vl,avx512dq,avx512bw,avx512cd,avx2,fma"
);
#[cfg(all(target_arch = "x86_64", feature = "avx512"))]
vector!(
    crate::isa::x86::F64x4v,
    4,
    "avx512f,avx512vl,avx512dq,avx512bw,avx512cd,avx2,fma"
);
#[cfg(all(target_arch = "x86_64", feature = "avx512"))]
vector!(
    crate::isa::x86::F32x16,
    16,
    "avx512f,avx512vl,avx512dq,avx512bw,avx512cd,avx2,fma"
);
#[cfg(all(target_arch = "x86_64", feature = "avx512"))]
vector!(
    crate::isa::x86::F64x8,
    8,
    "avx512f,avx512vl,avx512dq,avx512bw,avx512cd,avx2,fma"
);

/// # Safety
/// The shape is available and matches the plan and scalar type. Input/output
/// contain n complex values (possibly aliased); scratch contains scratch_len()
/// complex values and is disjoint from both. Input is never written directly.
pub(crate) unsafe fn run<T: FftNum>(
    shape: Shape,
    plan: &FourStepPlan<T>,
    input: *const T,
    output: *mut T,
    scratch: *mut T,
    inverse: bool,
) {
    macro_rules! go {
        ($v:ty, $s:ty) => {{
            debug_assert_eq!(shape.lanes, <$v as Vector>::LANES);
            // SAFETY: FftNum is sealed; the precision match guarantees T=$s.
            // The caller checked matching shape, ISA and buffer sizes.
            unsafe {
                <$v>::execute(
                    &*(plan as *const FourStepPlan<T>).cast::<FourStepPlan<$s>>(),
                    input.cast(),
                    output.cast(),
                    scratch.cast(),
                    inverse,
                )
            }
        }};
    }
    match (T::precision(), shape.isa) {
        (Precision::F32, Isa::Scalar) => go!(crate::isa::scalar::S32, f32),
        (Precision::F64, Isa::Scalar) => go!(crate::isa::scalar::S64, f64),
        #[cfg(all(target_arch = "x86_64", feature = "sse2"))]
        (Precision::F32, Isa::Sse2) => go!(crate::isa::x86::F32x4, f32),
        #[cfg(all(target_arch = "x86_64", feature = "sse2"))]
        (Precision::F64, Isa::Sse2) => go!(crate::isa::x86::F64x2, f64),
        #[cfg(all(target_arch = "x86_64", feature = "avx2"))]
        (Precision::F32, Isa::Avx2) => go!(crate::isa::x86::F32x8, f32),
        #[cfg(all(target_arch = "x86_64", feature = "avx2"))]
        (Precision::F64, Isa::Avx2) => go!(crate::isa::x86::F64x4, f64),
        #[cfg(all(target_arch = "x86_64", feature = "avx512"))]
        (Precision::F32, Isa::Avx512Ymm) => go!(crate::isa::x86::F32x8v, f32),
        #[cfg(all(target_arch = "x86_64", feature = "avx512"))]
        (Precision::F64, Isa::Avx512Ymm) => go!(crate::isa::x86::F64x4v, f64),
        #[cfg(all(target_arch = "x86_64", feature = "avx512"))]
        (Precision::F32, Isa::Avx512) => go!(crate::isa::x86::F32x16, f32),
        #[cfg(all(target_arch = "x86_64", feature = "avx512"))]
        (Precision::F64, Isa::Avx512) => go!(crate::isa::x86::F64x8, f64),
        #[allow(unreachable_patterns)]
        _ => unreachable!("unavailable four-step shape"),
    }
}

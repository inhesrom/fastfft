//! Engines and their per-tier `#[target_feature]` entry points.
//!
//! Each engine is generic over [`crate::isa::Vector`]; the entry points below
//! instantiate it once per tier and precision inside a `#[target_feature]`
//! function, which is where the intrinsics get inlined. Plans only select a
//! tier that [`crate::isa::available`] confirmed, which upholds the safety
//! contract of the SIMD traits.

pub(crate) mod batch;
pub(crate) mod bluestein;
pub(crate) mod fixed;
pub(crate) mod fourstep;
pub(crate) mod small;
pub(crate) mod stockham;
#[cfg(test)]
pub(crate) mod timing;
#[cfg(feature = "tuning")]
pub(crate) mod tuning;

use crate::isa::{Isa, scalar};
use stockham::{Mode, StockhamPlan};

/// Planned vector shape: tier plus lanes per vector. Small-only narrow shapes
/// are enumerated separately from the general Stockham shapes below.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub(crate) struct Shape {
    pub isa: Isa,
    /// Complex lanes (`L`).
    pub lanes: usize,
}

/// The vector shapes a tier can use for f32 / f64, widest first.
pub(crate) fn shapes(isa: Isa, f64_: bool) -> Vec<Shape> {
    let mut v = Vec::new();
    let w = |bits: usize| if f64_ { bits / 64 } else { bits / 32 };
    if isa >= Isa::Avx512 {
        v.push(Shape {
            isa: Isa::Avx512,
            lanes: w(512),
        });
    }
    if isa >= Isa::Avx512Ymm {
        v.push(Shape {
            isa: Isa::Avx512Ymm,
            lanes: w(256),
        });
    } else if isa >= Isa::Avx2 {
        v.push(Shape {
            isa: Isa::Avx2,
            lanes: w(256),
        });
    }
    if isa >= Isa::Sse2 && crate::isa::available(Isa::Sse2) {
        v.push(Shape {
            isa: Isa::Sse2,
            lanes: w(128),
        });
    }
    v.push(Shape {
        isa: Isa::Scalar,
        lanes: 1,
    });
    v.retain(|s| crate::isa::available(s.isa));
    v
}

#[allow(unused_macros)]
macro_rules! entry {
    ($name:ident, $feat:literal, $v:ty, $s:ty) => {
        impl stockham::StockhamVector for $v {
            #[target_feature(enable = $feat)]
            #[inline(never)]
            unsafe fn pass<const R: usize, const USER: bool, const SWAP: bool>(
                x: *const $s,
                y: *mut $s,
                m: usize,
                ns: usize,
                tw: *const $s,
                one: Self,
            ) {
                // SAFETY: forwarded pass contract; this entry point enables
                // every instruction-set feature required by the vector type.
                unsafe { stockham::pass::<Self, R, USER, SWAP>(x, y, m, ns, tw, one) }
            }

            #[target_feature(enable = $feat)]
            #[inline(never)]
            unsafe fn finish<
                const L: usize,
                const USER: bool,
                const SWAP_LOAD: bool,
                const SWAP: bool,
                const PARTIAL: bool,
            >(
                y: *const $s,
                x: *mut $s,
                m: usize,
                vtw: *const $s,
                one: Self,
            ) {
                // SAFETY: forwarded Phase B contract with the matching features.
                unsafe {
                    stockham::phase_b_blocks::<Self, L, USER, SWAP_LOAD, SWAP, PARTIAL>(
                        y, x, m, vtw, one,
                    )
                }
            }
        }

        #[target_feature(enable = $feat)]
        pub(super) unsafe fn $name(
            plan: &StockhamPlan<$s>,
            i: *mut $s,
            o: *mut $s,
            s: *mut $s,
            mode: Mode,
            inv: bool,
        ) {
            // SAFETY: forwarded contract of `stockham::execute`; the tier's
            // features are enabled on this function.
            unsafe { stockham::execute::<$v>(plan, i, o, s, mode, inv) }
        }
    };
}

impl stockham::StockhamVector for scalar::S32 {}
impl stockham::StockhamVector for scalar::S64 {}

#[cfg(all(target_arch = "x86_64", feature = "avx512"))]
mod x86_avx512 {
    use super::*;
    use crate::isa::x86::{F32x8v, F32x16, F64x4v, F64x8};
    entry!(
        zmm_f32,
        "avx512f,avx512vl,avx512dq,avx512bw,avx512cd,avx2,fma",
        F32x16,
        f32
    );
    entry!(
        zmm_f64,
        "avx512f,avx512vl,avx512dq,avx512bw,avx512cd,avx2,fma",
        F64x8,
        f64
    );
    entry!(
        ymm_f32,
        "avx512f,avx512vl,avx512dq,avx512bw,avx512cd,avx2,fma",
        F32x8v,
        f32
    );
    entry!(
        ymm_f64,
        "avx512f,avx512vl,avx512dq,avx512bw,avx512cd,avx2,fma",
        F64x4v,
        f64
    );
}

#[cfg(all(target_arch = "x86_64", feature = "avx2"))]
mod x86_avx2 {
    use super::*;
    use crate::isa::x86::{F32x8, F64x4};
    entry!(ymm_f32, "avx2,fma", F32x8, f32);
    entry!(ymm_f64, "avx2,fma", F64x4, f64);
}

#[cfg(all(target_arch = "x86_64", feature = "sse2"))]
mod x86_sse2 {
    use super::*;
    use crate::isa::x86::{F32x4, F64x2};
    entry!(xmm_f32, "sse2", F32x4, f32);
    entry!(xmm_f64, "sse2", F64x2, f64);
}

/// Runs a Stockham plan on the given tier (f32).
///
/// # Safety
///
/// `shape.isa` is available, `plan.l == shape.lanes`, and the pointers
/// satisfy `stockham::execute`'s contract.
pub(crate) unsafe fn stockham_f32(
    shape: Shape,
    plan: &StockhamPlan<f32>,
    i: *mut f32,
    o: *mut f32,
    s: *mut f32,
    mode: Mode,
    inv: bool,
) {
    // SAFETY: see the function contract.
    unsafe {
        match (shape.isa, shape.lanes) {
            #[cfg(all(target_arch = "x86_64", feature = "avx512"))]
            (Isa::Avx512, 16) => x86_avx512::zmm_f32(plan, i, o, s, mode, inv),
            #[cfg(all(target_arch = "x86_64", feature = "avx512"))]
            (Isa::Avx512Ymm, 8) => x86_avx512::ymm_f32(plan, i, o, s, mode, inv),
            #[cfg(all(target_arch = "x86_64", feature = "avx2"))]
            (Isa::Avx2, 8) => x86_avx2::ymm_f32(plan, i, o, s, mode, inv),
            #[cfg(all(target_arch = "x86_64", feature = "sse2"))]
            (Isa::Sse2, 4) => x86_sse2::xmm_f32(plan, i, o, s, mode, inv),
            (Isa::Scalar, 1) => stockham::execute::<scalar::S32>(plan, i, o, s, mode, inv),
            other => unreachable!("no f32 kernel for {other:?}"),
        }
    }
}

/// Runs a Stockham plan on the given tier (f64). Same contract as [`stockham_f32`].
pub(crate) unsafe fn stockham_f64(
    shape: Shape,
    plan: &StockhamPlan<f64>,
    i: *mut f64,
    o: *mut f64,
    s: *mut f64,
    mode: Mode,
    inv: bool,
) {
    // SAFETY: see the function contract.
    unsafe {
        match (shape.isa, shape.lanes) {
            #[cfg(all(target_arch = "x86_64", feature = "avx512"))]
            (Isa::Avx512, 8) => x86_avx512::zmm_f64(plan, i, o, s, mode, inv),
            #[cfg(all(target_arch = "x86_64", feature = "avx512"))]
            (Isa::Avx512Ymm, 4) => x86_avx512::ymm_f64(plan, i, o, s, mode, inv),
            #[cfg(all(target_arch = "x86_64", feature = "avx2"))]
            (Isa::Avx2, 4) => x86_avx2::ymm_f64(plan, i, o, s, mode, inv),
            #[cfg(all(target_arch = "x86_64", feature = "sse2"))]
            (Isa::Sse2, 2) => x86_sse2::xmm_f64(plan, i, o, s, mode, inv),
            (Isa::Scalar, 1) => stockham::execute::<scalar::S64>(plan, i, o, s, mode, inv),
            other => unreachable!("no f64 kernel for {other:?}"),
        }
    }
}

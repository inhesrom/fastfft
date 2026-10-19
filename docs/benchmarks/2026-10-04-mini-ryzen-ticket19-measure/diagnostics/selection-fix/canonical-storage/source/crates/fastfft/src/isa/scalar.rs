//! Scalar "vectors" (one lane) for the portable tier.

use super::{SimdReal, Vector};

macro_rules! scalar {
    ($t:ident, $s:ty) => {
        scalar!($t, $s, false);
    };
    ($t:ident, $s:ty, $fma:expr) => {
        /// One-lane vector.
        #[derive(Clone, Copy, Debug)]
        pub(crate) struct $t(pub $s);

        // SAFETY: plain scalar arithmetic, valid on every target.
        unsafe impl SimdReal for $t {
            #[inline(always)]
            unsafe fn splat_f64(x: f64) -> Self {
                $t(x as $s)
            }
            #[inline(always)]
            unsafe fn add(a: Self, b: Self) -> Self {
                $t(a.0 + b.0)
            }
            #[inline(always)]
            unsafe fn sub(a: Self, b: Self) -> Self {
                $t(a.0 - b.0)
            }
            #[inline(always)]
            unsafe fn mul(a: Self, b: Self) -> Self {
                $t(a.0 * b.0)
            }
            #[inline(always)]
            unsafe fn neg(a: Self) -> Self {
                $t(-a.0)
            }
            #[inline(always)]
            unsafe fn fmadd(a: Self, b: Self, c: Self) -> Self {
                // Separate multiply and add: `mul_add` is a slow libm call
                // on targets without hardware FMA.
                $t(if $fma {
                    a.0.mul_add(b.0, c.0)
                } else {
                    a.0 * b.0 + c.0
                })
            }
            #[inline(always)]
            unsafe fn fmsub(a: Self, b: Self, c: Self) -> Self {
                $t(if $fma {
                    a.0.mul_add(b.0, -c.0)
                } else {
                    a.0 * b.0 - c.0
                })
            }
            #[inline(always)]
            unsafe fn fnmadd(a: Self, b: Self, c: Self) -> Self {
                $t(if $fma {
                    (-a.0).mul_add(b.0, c.0)
                } else {
                    c.0 - a.0 * b.0
                })
            }
        }

        // SAFETY: one-lane loads/stores; callers pass valid pointers.
        unsafe impl Vector for $t {
            type S = $s;
            const LANES: usize = 1;
            #[inline(always)]
            unsafe fn splat(x: $s) -> Self {
                $t(x)
            }
            #[inline(always)]
            unsafe fn load(p: *const $s) -> Self {
                // SAFETY: caller guarantees `p` is valid for one read.
                $t(unsafe { p.read_unaligned() })
            }
            #[inline(always)]
            unsafe fn store(p: *mut $s, v: Self) {
                // SAFETY: caller guarantees `p` is valid for one write.
                unsafe { p.write_unaligned(v.0) }
            }
            #[inline(always)]
            unsafe fn deinterleave(a: Self, b: Self) -> (Self, Self) {
                (a, b)
            }
            #[inline(always)]
            unsafe fn interleave(re: Self, im: Self) -> (Self, Self) {
                (re, im)
            }
            #[inline(always)]
            unsafe fn zip(a: Self, b: Self, _k: usize) -> (Self, Self) {
                (a, b)
            }
        }
    };
}

scalar!(S32, f32);
scalar!(S64, f64);

// Direct codelets compiled inside the corresponding target-feature entry.
#[cfg(all(target_arch = "x86_64", feature = "avx2"))]
scalar!(A32, f32, true);
#[cfg(all(target_arch = "x86_64", feature = "avx2"))]
scalar!(A64, f64, true);
#[cfg(all(target_arch = "x86_64", feature = "avx512"))]
scalar!(Z32, f32, true);
#[cfg(all(target_arch = "x86_64", feature = "avx512"))]
scalar!(Z64, f64, true);

//! Minimal `SimdReal` shim so the lab can use the library's generated codelets.

#![allow(clippy::missing_safety_doc)]

use crate::simd::{F32x8, F32x8e, F32x16, F64x4, F64x4e, F64x8, V};

pub trait SimdReal: Copy {
    unsafe fn splat_f64(x: f64) -> Self;
    unsafe fn add(a: Self, b: Self) -> Self;
    unsafe fn sub(a: Self, b: Self) -> Self;
    unsafe fn mul(a: Self, b: Self) -> Self;
    unsafe fn neg(a: Self) -> Self;
    unsafe fn fmadd(a: Self, b: Self, c: Self) -> Self;
    unsafe fn fmsub(a: Self, b: Self, c: Self) -> Self;
    unsafe fn fnmadd(a: Self, b: Self, c: Self) -> Self;
}

macro_rules! shim {
    ($t:ty, $s:ty) => {
        impl SimdReal for $t {
            #[inline(always)]
            unsafe fn splat_f64(x: f64) -> Self {
                unsafe { <$t as V>::splat(x as $s) }
            }
            #[inline(always)]
            unsafe fn add(a: Self, b: Self) -> Self {
                unsafe { <$t as V>::add(a, b) }
            }
            #[inline(always)]
            unsafe fn sub(a: Self, b: Self) -> Self {
                unsafe { <$t as V>::sub(a, b) }
            }
            #[inline(always)]
            unsafe fn mul(a: Self, b: Self) -> Self {
                unsafe { <$t as V>::mul(a, b) }
            }
            #[inline(always)]
            unsafe fn neg(a: Self) -> Self {
                unsafe { <$t as V>::sub(<$t as V>::splat(0.0), a) }
            }
            #[inline(always)]
            unsafe fn fmadd(a: Self, b: Self, c: Self) -> Self {
                unsafe { <$t as V>::fmadd(a, b, c) }
            }
            #[inline(always)]
            unsafe fn fmsub(a: Self, b: Self, c: Self) -> Self {
                unsafe { <$t as V>::fmsub(a, b, c) }
            }
            #[inline(always)]
            unsafe fn fnmadd(a: Self, b: Self, c: Self) -> Self {
                unsafe { <$t as V>::fnmadd(a, b, c) }
            }
        }
    };
}
shim!(F32x16, f32);
shim!(F32x8, f32);
shim!(F64x8, f64);
shim!(F64x4, f64);
shim!(F32x8e, f32);
shim!(F64x4e, f64);

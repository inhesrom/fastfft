//! Complex vectors in the two candidate internal layouts.
//!
//! * [`Inter<V>`]: interleaved `[re0 im0 re1 im1 ...]`, `L = LANES / 2`.
//! * [`Split<V>`]: separate re/im registers, `L = LANES`; in memory a vector is
//!   stored as a block `[re x L][im x L]` (same size as `L` interleaved values).

#![allow(clippy::missing_safety_doc)]

use crate::simd::V;

pub trait Cplx: Copy {
    type V: V;
    /// Complex values per vector.
    const L: usize;
    /// Reals per vector twiddle in the Phase B table.
    const VTW_REALS: usize;
    type Tw: Copy;
    type VTw: Copy;
    unsafe fn load_mem(p: *const <Self::V as V>::S) -> Self;
    unsafe fn store_mem(p: *mut <Self::V as V>::S, v: Self);
    unsafe fn load_user(p: *const <Self::V as V>::S) -> Self;
    unsafe fn store_user(p: *mut <Self::V as V>::S, v: Self);
    unsafe fn add(a: Self, b: Self) -> Self;
    unsafe fn sub(a: Self, b: Self) -> Self;
    /// t + (-i) d
    unsafe fn rot_add(t: Self, d: Self) -> Self;
    /// t - (-i) d
    unsafe fn rot_sub(t: Self, d: Self) -> Self;
    unsafe fn mul_neg_i(a: Self) -> Self;
    /// a * (c + i s)
    unsafe fn mul_const(a: Self, c: f64, s: f64) -> Self;
    /// broadcast twiddle from `[wr, wi]`
    unsafe fn load_tw(p: *const <Self::V as V>::S) -> Self::Tw;
    unsafe fn mul_tw(a: Self, w: Self::Tw) -> Self;
    unsafe fn load_vtw(p: *const <Self::V as V>::S) -> Self::VTw;
    unsafe fn mul_vtw(a: Self, w: Self::VTw) -> Self;
    /// Writes one vector twiddle (L complex values) in this layout's table format.
    fn write_vtw(dst: &mut [<Self::V as V>::S], w: &[(f64, f64)]);
    /// Complex-granular block zip (see [`V::zip`]).
    unsafe fn zip(a: Self, b: Self, k: usize) -> (Self, Self);
}

pub trait FromF64: Copy {
    fn from_f64(x: f64) -> Self;
}
impl FromF64 for f32 {
    fn from_f64(x: f64) -> Self {
        x as f32
    }
}
impl FromF64 for f64 {
    fn from_f64(x: f64) -> Self {
        x
    }
}

#[derive(Clone, Copy)]
pub struct Inter<T: V>(pub T);

impl<T: V> Cplx for Inter<T>
where
    T::S: FromF64,
{
    type V = T;
    const L: usize = T::LANES / 2;
    const VTW_REALS: usize = 2 * T::LANES;
    type Tw = (T, T);
    type VTw = (T, T);
    #[inline(always)]
    unsafe fn load_mem(p: *const T::S) -> Self {
        unsafe { Inter(T::load(p)) }
    }
    #[inline(always)]
    unsafe fn store_mem(p: *mut T::S, v: Self) {
        unsafe { T::store(p, v.0) }
    }
    #[inline(always)]
    unsafe fn load_user(p: *const T::S) -> Self {
        unsafe { Inter(T::load(p)) }
    }
    #[inline(always)]
    unsafe fn store_user(p: *mut T::S, v: Self) {
        unsafe { T::store(p, v.0) }
    }
    #[inline(always)]
    unsafe fn add(a: Self, b: Self) -> Self {
        unsafe { Inter(T::add(a.0, b.0)) }
    }
    #[inline(always)]
    unsafe fn sub(a: Self, b: Self) -> Self {
        unsafe { Inter(T::sub(a.0, b.0)) }
    }
    #[inline(always)]
    unsafe fn rot_add(t: Self, d: Self) -> Self {
        unsafe {
            let ds = T::swap_pairs(d.0);
            Inter(T::fmsubadd(t.0, T::splat(T::S::from_f64(1.0)), ds))
        }
    }
    #[inline(always)]
    unsafe fn rot_sub(t: Self, d: Self) -> Self {
        unsafe {
            let ds = T::swap_pairs(d.0);
            Inter(T::fmaddsub(t.0, T::splat(T::S::from_f64(1.0)), ds))
        }
    }
    #[inline(always)]
    unsafe fn mul_neg_i(a: Self) -> Self {
        // 0 + (-i) a = [ai, -ar]
        unsafe { Self::rot_add(Inter(T::splat(T::S::from_f64(0.0))), a) }
    }
    #[inline(always)]
    unsafe fn mul_const(a: Self, c: f64, s: f64) -> Self {
        unsafe {
            let sw = T::swap_pairs(a.0);
            let t = T::mul(sw, T::splat(T::S::from_f64(s)));
            Inter(T::fmaddsub(a.0, T::splat(T::S::from_f64(c)), t))
        }
    }
    #[inline(always)]
    unsafe fn load_tw(p: *const T::S) -> (T, T) {
        unsafe { (T::splat(*p), T::splat(*p.add(1))) }
    }
    #[inline(always)]
    unsafe fn mul_tw(a: Self, w: (T, T)) -> Self {
        unsafe {
            let sw = T::swap_pairs(a.0);
            Inter(T::fmaddsub(a.0, w.0, T::mul(sw, w.1)))
        }
    }
    #[inline(always)]
    unsafe fn load_vtw(p: *const T::S) -> (T, T) {
        unsafe { (T::load(p), T::load(p.add(T::LANES))) }
    }
    #[inline(always)]
    unsafe fn mul_vtw(a: Self, w: (T, T)) -> Self {
        unsafe {
            let sw = T::swap_pairs(a.0);
            Inter(T::fmaddsub(a.0, w.0, T::mul(sw, w.1)))
        }
    }
    fn write_vtw(dst: &mut [T::S], w: &[(f64, f64)]) {
        let l = T::LANES;
        for (j, &(r, i)) in w.iter().enumerate() {
            dst[2 * j] = T::S::from_f64(r);
            dst[2 * j + 1] = T::S::from_f64(r);
            dst[l + 2 * j] = T::S::from_f64(i);
            dst[l + 2 * j + 1] = T::S::from_f64(i);
        }
    }
    #[inline(always)]
    unsafe fn zip(a: Self, b: Self, k: usize) -> (Self, Self) {
        unsafe {
            let (e, o) = T::zip(a.0, b.0, 2 * k);
            (Inter(e), Inter(o))
        }
    }
}

#[derive(Clone, Copy)]
pub struct Split<T: V> {
    pub re: T,
    pub im: T,
}

impl<T: V> Cplx for Split<T>
where
    T::S: FromF64,
{
    type V = T;
    const L: usize = T::LANES;
    const VTW_REALS: usize = 2 * T::LANES;
    type Tw = (T, T);
    type VTw = (T, T);
    #[inline(always)]
    unsafe fn load_mem(p: *const T::S) -> Self {
        unsafe {
            Split {
                re: T::load(p),
                im: T::load(p.add(T::LANES)),
            }
        }
    }
    #[inline(always)]
    unsafe fn store_mem(p: *mut T::S, v: Self) {
        unsafe {
            T::store(p, v.re);
            T::store(p.add(T::LANES), v.im);
        }
    }
    #[inline(always)]
    unsafe fn load_user(p: *const T::S) -> Self {
        unsafe {
            let (re, im) = T::deinterleave(T::load(p), T::load(p.add(T::LANES)));
            Split { re, im }
        }
    }
    #[inline(always)]
    unsafe fn store_user(p: *mut T::S, v: Self) {
        unsafe {
            let (a, b) = T::interleave(v.re, v.im);
            T::store(p, a);
            T::store(p.add(T::LANES), b);
        }
    }
    #[inline(always)]
    unsafe fn add(a: Self, b: Self) -> Self {
        unsafe {
            Split {
                re: T::add(a.re, b.re),
                im: T::add(a.im, b.im),
            }
        }
    }
    #[inline(always)]
    unsafe fn sub(a: Self, b: Self) -> Self {
        unsafe {
            Split {
                re: T::sub(a.re, b.re),
                im: T::sub(a.im, b.im),
            }
        }
    }
    #[inline(always)]
    unsafe fn rot_add(t: Self, d: Self) -> Self {
        unsafe {
            Split {
                re: T::add(t.re, d.im),
                im: T::sub(t.im, d.re),
            }
        }
    }
    #[inline(always)]
    unsafe fn rot_sub(t: Self, d: Self) -> Self {
        unsafe {
            Split {
                re: T::sub(t.re, d.im),
                im: T::add(t.im, d.re),
            }
        }
    }
    #[inline(always)]
    unsafe fn mul_neg_i(a: Self) -> Self {
        unsafe {
            Split {
                re: a.im,
                im: T::sub(T::splat(T::S::from_f64(0.0)), a.re),
            }
        }
    }
    #[inline(always)]
    unsafe fn mul_const(a: Self, c: f64, s: f64) -> Self {
        unsafe {
            let c = T::splat(T::S::from_f64(c));
            let s = T::splat(T::S::from_f64(s));
            Split {
                re: T::fmsub(a.re, c, T::mul(a.im, s)),
                im: T::fmadd(a.re, s, T::mul(a.im, c)),
            }
        }
    }
    #[inline(always)]
    unsafe fn load_tw(p: *const T::S) -> (T, T) {
        unsafe { (T::splat(*p), T::splat(*p.add(1))) }
    }
    #[inline(always)]
    unsafe fn mul_tw(a: Self, w: (T, T)) -> Self {
        unsafe {
            Split {
                re: T::fmsub(a.re, w.0, T::mul(a.im, w.1)),
                im: T::fmadd(a.re, w.1, T::mul(a.im, w.0)),
            }
        }
    }
    #[inline(always)]
    unsafe fn load_vtw(p: *const T::S) -> (T, T) {
        unsafe { (T::load(p), T::load(p.add(T::LANES))) }
    }
    #[inline(always)]
    unsafe fn mul_vtw(a: Self, w: (T, T)) -> Self {
        unsafe { Self::mul_tw(a, w) }
    }
    fn write_vtw(dst: &mut [T::S], w: &[(f64, f64)]) {
        let l = T::LANES;
        for (j, &(r, i)) in w.iter().enumerate() {
            dst[j] = T::S::from_f64(r);
            dst[l + j] = T::S::from_f64(i);
        }
    }
    #[inline(always)]
    unsafe fn zip(a: Self, b: Self, k: usize) -> (Self, Self) {
        unsafe {
            let (re0, re1) = T::zip(a.re, b.re, k);
            let (im0, im1) = T::zip(a.im, b.im, k);
            (Split { re: re0, im: im0 }, Split { re: re1, im: im1 })
        }
    }
}

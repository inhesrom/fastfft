//! Prototype of the M3 engine: split layout, DIT Stockham over vectors using
//! the generated codelets (twiddle multiplies fused into FMAs), final
//! across-lane pass with in-register transpose and vector-twiddle codelet.

#![allow(clippy::missing_safety_doc, clippy::too_many_arguments)]

use crate::generated;
use crate::isa::SimdReal;
use crate::simd::{F32x8, F32x8e, F32x16, F64x4, F64x4e, F64x8, V};
use num_complex::Complex;

/// Plan for the split DIT prototype.
#[derive(Clone, Debug)]
pub struct DitPlan<S> {
    pub n: usize,
    pub l: usize,
    pub m: usize,
    pub radices: Vec<usize>,
    /// per pass: for k in 0..Ns, (wr, wi) for j in 1..r
    pass_tw: Vec<Vec<S>>,
    /// Phase B: per block b, for n1 in 0..L: wr[L], wi[L] vectors (n1 = 0 unused)
    vtw: Vec<S>,
    pub wide: bool,
    /// AVX2-only entry point (16 registers, no AVX-512VL permutes).
    pub avx2_only: bool,
}

fn root(num: usize, den: usize) -> (f64, f64) {
    let (c, s) = fastfft_testkit::Dd::unit_root(num as u64, den as u64);
    (c.to_f64(), -s.to_f64())
}

impl<S> DitPlan<S> {
    /// Read-only retained coefficient views for developer diagnostics.
    pub fn coefficient_storage(&self) -> (&[Vec<S>], &[S], usize) {
        (&self.pass_tw, &self.vtw, self.vtw.capacity())
    }
}

impl<S: crate::cplx::FromF64 + Copy + Default> DitPlan<S> {
    /// `wide`: 512-bit vectors (else 256-bit). Split layout: L = lanes.
    pub fn new(n: usize, wide: bool, max_radix: usize) -> Option<Self> {
        let bytes = core::mem::size_of::<S>();
        let l = if wide { 64 / bytes } else { 32 / bytes };
        if !n.is_power_of_two() || n < l * l {
            return None;
        }
        let m = n / l;
        Self::with_radices(n, wide, crate::engine::radices(m, max_radix))
    }

    /// Explicit Phase A radices (product must be n / L).
    pub fn with_radices(n: usize, wide: bool, radices: Vec<usize>) -> Option<Self> {
        let bytes = core::mem::size_of::<S>();
        let l = if wide { 64 / bytes } else { 32 / bytes };
        let m = n / l;
        // Phase B has no partial-block path. Reject unsupported geometry and
        // codelets before allocating coefficients or entering unsafe kernels.
        if !n.is_power_of_two()
            || !n.is_multiple_of(l * l)
            || m < l
            || radices.is_empty()
            || radices.iter().any(|r| !matches!(r, 2 | 4 | 8 | 16))
            || radices.iter().try_fold(1usize, |p, r| p.checked_mul(*r)) != Some(m)
        {
            return None;
        }
        let mut pass_tw = Vec::new();
        let mut ns = 1;
        for &r in &radices {
            let mut t = Vec::with_capacity(ns * (r - 1) * 2);
            for k in 0..ns {
                for j in 1..r {
                    let (c, s) = root(j * k, ns * r);
                    t.push(S::from_f64(c));
                    t.push(S::from_f64(s));
                }
            }
            pass_tw.push(t);
            ns *= r;
        }
        let blocks = m / l;
        let mut vtw = vec![S::default(); blocks * l * 2 * l];
        for b in 0..blocks {
            for n1 in 0..l {
                for t in 0..l {
                    let (c, s) = root(n1 * (b * l + t), n);
                    vtw[(b * l + n1) * 2 * l + t] = S::from_f64(c);
                    vtw[(b * l + n1) * 2 * l + l + t] = S::from_f64(s);
                }
            }
        }
        Some(DitPlan {
            n,
            l,
            m,
            radices,
            pass_tw,
            vtw,
            wide,
            avx2_only: false,
        })
    }
}

#[inline(always)]
unsafe fn load_user<T: V>(p: *const T::S) -> (T, T) {
    unsafe { T::deinterleave(T::load(p), T::load(p.add(T::LANES))) }
}

#[inline(always)]
unsafe fn store_user<T: V>(p: *mut T::S, re: T, im: T) {
    unsafe {
        let (a, b) = T::interleave(re, im);
        T::store(p, a);
        T::store(p.add(T::LANES), b);
    }
}

#[inline(always)]
unsafe fn load_mem<T: V>(p: *const T::S) -> (T, T) {
    unsafe { (T::load(p), T::load(p.add(T::LANES))) }
}

#[inline(always)]
unsafe fn store_mem<T: V>(p: *mut T::S, re: T, im: T) {
    unsafe {
        T::store(p, re);
        T::store(p.add(T::LANES), im);
    }
}

/// DIT Stockham pass over vectors: radix R, `ns` = product of previous radices.
#[inline(always)]
unsafe fn dit_pass<T: V + SimdReal, const R: usize, const USER_IN: bool>(
    x: *const T::S,
    y: *mut T::S,
    m: usize,
    ns: usize,
    tw: *const T::S,
    one: T,
) where
    T::S: Into<f64>,
{
    let vs = 2 * T::LANES;
    let seg = m / R; // distance between the R inputs (vectors)
    let groups = seg / ns; // a-loop length
    unsafe {
        // a outer, k inner: contiguous input and output runs; twiddles
        // (broadcast scalars) are reloaded per butterfly from a small table.
        // Addresses are formed as base + (loop-invariant offset); the index is
        // passed through `black_box` so LLVM does not strength-reduce each of
        // the 2R streams into its own induction variable (16+ GPRs, spilled
        // with a store per stream per iteration on the single store port).
        let mut ioff = [0usize; R];
        let mut ooff = [0usize; R];
        for j in 0..R {
            ioff[j] = j * seg * vs;
            ooff[j] = j * ns * vs;
        }
        for a in 0..groups {
            for k in 0..ns {
                let j0 = core::hint::black_box(a * ns + k);
                let ib = x.add(j0 * vs);
                let ob = y.add((a * ns * R + k) * vs);
                let mut re = [one; R];
                let mut im = [one; R];
                for j in 0..R {
                    let (r, i) = if USER_IN {
                        load_user::<T>(ib.add(ioff[j]))
                    } else {
                        load_mem::<T>(ib.add(ioff[j]))
                    };
                    re[j] = r;
                    im[j] = i;
                }
                if ns == 1 {
                    generated::notw::<T, R>(&mut re, &mut im, one);
                } else {
                    let mut wr = [one; R];
                    let mut wi = [one; R];
                    let t = tw.add(k * (R - 1) * 2);
                    for j in 1..R {
                        wr[j] = <T as SimdReal>::splat_f64((*t.add((j - 1) * 2)).into());
                        wi[j] = <T as SimdReal>::splat_f64((*t.add((j - 1) * 2 + 1)).into());
                    }
                    generated::tw::<T, R>(&mut re, &mut im, &wr, &wi, one);
                }
                for j in 0..R {
                    store_mem::<T>(ob.add(ooff[j]), re[j], im[j]);
                }
            }
        }
    }
}

#[inline(always)]
unsafe fn run_dit_pass<T: V + SimdReal>(
    r: usize,
    user_in: bool,
    x: *const T::S,
    y: *mut T::S,
    m: usize,
    ns: usize,
    tw: *const T::S,
    one: T,
) where
    T::S: Into<f64>,
{
    unsafe {
        macro_rules! go {
            ($r:literal) => {
                if user_in {
                    dit_pass::<T, $r, true>(x, y, m, ns, tw, one)
                } else {
                    dit_pass::<T, $r, false>(x, y, m, ns, tw, one)
                }
            };
        }
        match r {
            2 => go!(2),
            4 => go!(4),
            8 => go!(8),
            16 => go!(16),
            _ => unreachable!(),
        }
    }
}

#[inline(always)]
unsafe fn transpose<T: V, const L: usize>(r: &mut [T; L]) {
    let mut k = L / 2;
    while k >= 1 {
        let mut g = 0;
        while g < L {
            for i in g..g + k {
                let (e, o) = unsafe { T::zip(r[i], r[i + k], k) };
                r[i] = e;
                r[i + k] = o;
            }
            g += 2 * k;
        }
        k /= 2;
    }
}

#[inline(always)]
unsafe fn phase_b<T: V + SimdReal, const L: usize>(
    ybuf: *const T::S,
    x: *mut T::S,
    m: usize,
    vtw: *const T::S,
    one: T,
) {
    let vs = 2 * L;
    unsafe {
        for b in 0..m / L {
            let mut re = [one; L];
            let mut im = [one; L];
            for t in 0..L {
                let (r, i) = load_mem::<T>(ybuf.add((b * L + t) * vs));
                re[t] = r;
                im[t] = i;
            }
            transpose::<T, L>(&mut re);
            transpose::<T, L>(&mut im);
            let mut wr = [one; L];
            let mut wi = [one; L];
            for n1 in 1..L {
                let p = vtw.add((b * L + n1) * 2 * L);
                wr[n1] = T::load(p);
                wi[n1] = T::load(p.add(L));
            }
            generated::tw::<T, L>(&mut re, &mut im, &wr, &wi, one);
            for k2 in 0..L {
                store_user::<T>(x.add((b + (m / L) * k2) * vs), re[k2], im[k2]);
            }
        }
    }
}

/// One scratch: buf -> scr -> buf -> ... ending in scr; with an even pass
/// count the last pass (which reads and writes the same indices) runs in
/// place in scr. Phase B then writes scr -> buf.
#[inline(always)]
unsafe fn execute<T: V + SimdReal>(
    plan: &DitPlan<T::S>,
    buf: *mut T::S,
    scr: *mut T::S,
    _scr2: *mut T::S,
) where
    T::S: Into<f64>,
{
    unsafe {
        let one = <T as SimdReal>::splat_f64(core::ptr::read_volatile(&1.0f64));
        let passes = plan.radices.len();
        let mut src: *mut T::S = buf;
        let mut dst = scr;
        let mut ns = 1;
        for (i, &r) in plan.radices.iter().enumerate() {
            let last = i + 1 == passes;
            if last && passes % 2 == 0 {
                run_dit_pass::<T>(
                    r,
                    false,
                    src,
                    src,
                    plan.m,
                    ns,
                    plan.pass_tw[i].as_ptr(),
                    one,
                );
            } else {
                run_dit_pass::<T>(
                    r,
                    i == 0,
                    src,
                    dst,
                    plan.m,
                    ns,
                    plan.pass_tw[i].as_ptr(),
                    one,
                );
                core::mem::swap(&mut src, &mut dst);
            }
            ns *= r;
        }
        match T::LANES {
            4 => phase_b::<T, 4>(src, buf, plan.m, plan.vtw.as_ptr(), one),
            8 => phase_b::<T, 8>(src, buf, plan.m, plan.vtw.as_ptr(), one),
            16 => phase_b::<T, 16>(src, buf, plan.m, plan.vtw.as_ptr(), one),
            _ => unreachable!(),
        }
    }
}

macro_rules! dit_entry {
    ($name:ident, $t:ty, $s:ty) => {
        #[target_feature(enable = "avx512f,avx512vl,avx512dq,avx512bw,avx2,fma")]
        unsafe fn $name(plan: &DitPlan<$s>, buf: *mut $s, s1: *mut $s, s2: *mut $s) {
            unsafe { execute::<$t>(plan, buf, s1, s2) }
        }
    };
}
dit_entry!(dit_z_f32, F32x16, f32);
dit_entry!(dit_y_f32, F32x8e, f32);
dit_entry!(dit_z_f64, F64x8, f64);
dit_entry!(dit_y_f64, F64x4e, f64);

macro_rules! dit_entry_avx2 {
    ($name:ident, $t:ty, $s:ty) => {
        #[target_feature(enable = "avx2,fma")]
        unsafe fn $name(plan: &DitPlan<$s>, buf: *mut $s, s1: *mut $s, s2: *mut $s) {
            unsafe { execute::<$t>(plan, buf, s1, s2) }
        }
    };
}
dit_entry_avx2!(dit_a_f32, F32x8, f32);
dit_entry_avx2!(dit_a_f64, F64x4, f64);

pub trait DitFloat: Sized + Copy {
    fn run_dit(
        plan: &DitPlan<Self>,
        buf: &mut [Complex<Self>],
        s1: &mut [Complex<Self>],
        s2: &mut [Complex<Self>],
    );
}

impl DitFloat for f32 {
    fn run_dit(
        plan: &DitPlan<f32>,
        buf: &mut [Complex<f32>],
        s1: &mut [Complex<f32>],
        s2: &mut [Complex<f32>],
    ) {
        assert!(buf.len() == plan.n && s1.len() >= plan.n && s2.len() >= plan.n);
        assert!(crate::Tier::Avx512.detected());
        let (b, a, c) = (
            buf.as_mut_ptr().cast(),
            s1.as_mut_ptr().cast(),
            s2.as_mut_ptr().cast(),
        );
        // SAFETY: AVX-512 detected, buffers hold n complex values.
        unsafe {
            if plan.avx2_only {
                dit_a_f32(plan, b, a, c)
            } else if plan.wide {
                dit_z_f32(plan, b, a, c)
            } else {
                dit_y_f32(plan, b, a, c)
            }
        }
    }
}

impl DitFloat for f64 {
    fn run_dit(
        plan: &DitPlan<f64>,
        buf: &mut [Complex<f64>],
        s1: &mut [Complex<f64>],
        s2: &mut [Complex<f64>],
    ) {
        assert!(buf.len() == plan.n && s1.len() >= plan.n && s2.len() >= plan.n);
        assert!(crate::Tier::Avx512.detected());
        let (b, a, c) = (
            buf.as_mut_ptr().cast(),
            s1.as_mut_ptr().cast(),
            s2.as_mut_ptr().cast(),
        );
        // SAFETY: AVX-512 detected, buffers hold n complex values.
        unsafe {
            if plan.avx2_only {
                dit_a_f64(plan, b, a, c)
            } else if plan.wide {
                dit_z_f64(plan, b, a, c)
            } else {
                dit_y_f64(plan, b, a, c)
            }
        }
    }
}

#[cfg(test)]
mod tests {
    use super::DitPlan;

    #[test]
    fn explicit_plan_rejects_invalid_geometry_before_allocation() {
        for radices in [
            vec![],
            vec![0],
            vec![1, 8, 8, 8],
            vec![3],
            vec![32, 16],
            vec![8; usize::BITS as usize],
        ] {
            assert!(DitPlan::<f32>::with_radices(4096, false, radices).is_none());
        }
        // These formerly passed the truncated N/L check, but cannot execute
        // complete vector/transpose blocks.
        assert!(DitPlan::<f32>::with_radices(4097, false, vec![8, 8, 8]).is_none());
        assert!(DitPlan::<f32>::with_radices(32, false, vec![4]).is_none());
        assert!(DitPlan::<f32>::with_radices(4096, false, vec![8, 8, 8]).is_some());
        assert!(DitPlan::<f64>::with_radices(4096, true, vec![8, 8, 8]).is_some());
    }
}

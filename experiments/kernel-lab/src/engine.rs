//! Power-of-two Stockham engine used by the M2 experiments.
//!
//! N = M * L. Phase A treats the input as M vectors of L complex values (lane
//! n1 of vector n2 is x[L*n2 + n1]) and runs a DIF Stockham FFT of length M
//! along the vector index with broadcast twiddles, all lanes independent.
//! Phase B takes L consecutive vectors, transposes them in registers,
//! multiplies by per-lane twiddles and runs a DFT-L across registers,
//! storing contiguous vectors in natural order.

#![allow(clippy::missing_safety_doc, clippy::too_many_arguments)]

use crate::codelets::dft;
use crate::cplx::{Cplx, FromF64, Inter, Split};
use crate::simd::{F32x8, F32x16, F64x4, F64x8, V};
use num_complex::Complex;

#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash)]
pub enum Layout {
    Inter,
    Split,
}

#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash)]
pub enum Tier {
    Avx512,
    Avx512Ymm,
    Avx2,
}

impl Tier {
    pub fn detected(self) -> bool {
        match self {
            Tier::Avx2 => is_x86_feature_detected!("avx2") && is_x86_feature_detected!("fma"),
            _ => {
                is_x86_feature_detected!("avx512f")
                    && is_x86_feature_detected!("avx512vl")
                    && is_x86_feature_detected!("avx512dq")
            }
        }
    }
}

/// Complex values per vector for a layout/tier/precision.
pub fn lanes(layout: Layout, tier: Tier, f64_: bool) -> usize {
    let reals = match (tier, f64_) {
        (Tier::Avx512, false) => 16,
        (Tier::Avx512, true) => 8,
        (_, false) => 8,
        (_, true) => 4,
    };
    match layout {
        Layout::Inter => reals / 2,
        Layout::Split => reals,
    }
}

#[derive(Clone, Debug)]
pub struct Plan<S> {
    pub n: usize,
    pub l: usize,
    pub m: usize,
    pub layout: Layout,
    pub tier: Tier,
    pub radices: Vec<usize>,
    /// per Phase A pass: [(wr, wi); m * (R - 1)]
    pass_tw: Vec<Vec<S>>,
    /// Phase B vector twiddles
    vtw: Vec<S>,
}

fn root(num: usize, den: usize) -> (f64, f64) {
    let (c, s) = fastfft_testkit::Dd::unit_root(num as u64, den as u64);
    (c.to_f64(), -s.to_f64()) // forward: exp(-2 pi i num/den)
}

/// Splits log2(m) into the fewest passes of radix <= max_radix, as evenly as possible.
pub fn radices(m: usize, max_radix: usize) -> Vec<usize> {
    let lg = m.trailing_zeros() as usize;
    let lr = max_radix.trailing_zeros() as usize;
    if lg == 0 {
        return vec![];
    }
    let passes = lg.div_ceil(lr);
    let mut v = Vec::new();
    let mut left = lg;
    for i in 0..passes {
        let e = left.div_ceil(passes - i);
        v.push(1usize << e);
        left -= e;
    }
    v
}

impl<S: FromF64 + Copy + Default> Plan<S> {
    pub fn new(n: usize, layout: Layout, tier: Tier, max_radix: usize) -> Option<Self> {
        let f64_ = core::mem::size_of::<S>() == 8;
        let l = lanes(layout, tier, f64_);
        if !n.is_power_of_two() || n < l * l {
            return None;
        }
        let m = n / l;
        let radices = radices(m, max_radix);
        let mut pass_tw = Vec::new();
        let mut sub = m; // current sub-length n_i
        for &r in &radices {
            let mm = sub / r;
            let mut t = Vec::with_capacity(mm * (r - 1) * 2);
            for p in 0..mm {
                for k in 1..r {
                    let (c, s) = root(p * k, sub);
                    t.push(S::from_f64(c));
                    t.push(S::from_f64(s));
                }
            }
            pass_tw.push(t);
            sub = mm;
        }
        let vtw_reals = match layout {
            Layout::Inter => 4 * l,
            Layout::Split => 2 * l,
        };
        let blocks = m / l;
        let mut vtw = vec![S::default(); blocks * (l - 1) * vtw_reals];
        for b in 0..blocks {
            for n1 in 1..l {
                let w: Vec<(f64, f64)> = (0..l).map(|t| root(n1 * (b * l + t), n)).collect();
                let off = (b * (l - 1) + n1 - 1) * vtw_reals;
                let dst = &mut vtw[off..off + vtw_reals];
                match layout {
                    Layout::Inter => {
                        for (j, &(r, i)) in w.iter().enumerate() {
                            dst[2 * j] = S::from_f64(r);
                            dst[2 * j + 1] = S::from_f64(r);
                            dst[2 * l + 2 * j] = S::from_f64(i);
                            dst[2 * l + 2 * j + 1] = S::from_f64(i);
                        }
                    }
                    Layout::Split => {
                        for (j, &(r, i)) in w.iter().enumerate() {
                            dst[j] = S::from_f64(r);
                            dst[l + j] = S::from_f64(i);
                        }
                    }
                }
            }
        }
        Some(Plan {
            n,
            l,
            m,
            layout,
            tier,
            radices,
            pass_tw,
            vtw,
        })
    }
}

/// Address (in reals) of vector `v` in a buffer; padded buffers insert one
/// cache line every 4 KB of data so power-of-two strides do not map every
/// access of a butterfly to the same L1 set.
#[inline(always)]
pub fn vaddr<C: Cplx, const PAD: bool>(v: usize) -> usize {
    let vs = 2 * C::L;
    if PAD {
        let s = core::mem::size_of::<<C::V as V>::S>();
        let per4k = 4096 / (vs * s);
        let line = 64 / s;
        v * vs + (v / per4k) * line
    } else {
        v * vs
    }
}

/// Reals needed for a padded buffer of `nv` vectors.
pub fn padded_len<C: Cplx>(nv: usize) -> usize {
    vaddr::<C, true>(nv) + 64
}

/// One DIF Stockham pass over vectors with padded/unpadded input and output.
#[inline(always)]
unsafe fn pass_p<
    C: Cplx,
    const R: usize,
    const USER_IN: bool,
    const NOTW: bool,
    const IP: bool,
    const OP: bool,
>(
    x: *const <C::V as V>::S,
    y: *mut <C::V as V>::S,
    m: usize,
    s: usize,
    tw: *const <C::V as V>::S,
) {
    unsafe {
        for p in 0..m {
            let mut w = [C::load_tw(tw); R];
            if !NOTW {
                for k in 1..R {
                    w[k] = C::load_tw(tw.add((p * (R - 1) + k - 1) * 2));
                }
            }
            for q in 0..s {
                let mut a = [C::load_mem(x); R];
                for j in 0..R {
                    let off = vaddr::<C, IP>(q + s * (p + j * m));
                    a[j] = if USER_IN {
                        C::load_user(x.add(off))
                    } else {
                        C::load_mem(x.add(off))
                    };
                }
                let b = dft::<C, R>(a);
                for k in 0..R {
                    let v = if NOTW || k == 0 {
                        b[k]
                    } else {
                        C::mul_tw(b[k], w[k])
                    };
                    C::store_mem(y.add(vaddr::<C, OP>(q + s * (R * p + k))), v);
                }
            }
        }
    }
}

#[inline(always)]
unsafe fn run_pass_p<C: Cplx>(
    r: usize,
    user_in: bool,
    notw: bool,
    x: *const <C::V as V>::S,
    y: *mut <C::V as V>::S,
    m: usize,
    s: usize,
    tw: *const <C::V as V>::S,
) {
    unsafe {
        // first pass: user (unpadded) in, padded out; later passes: padded both.
        macro_rules! go {
            ($r:literal) => {
                match (user_in, notw) {
                    (true, true) => pass_p::<C, $r, true, true, false, true>(x, y, m, s, tw),
                    (true, false) => pass_p::<C, $r, true, false, false, true>(x, y, m, s, tw),
                    (false, true) => pass_p::<C, $r, false, true, true, true>(x, y, m, s, tw),
                    (false, false) => pass_p::<C, $r, false, false, true, true>(x, y, m, s, tw),
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
unsafe fn phase_b_p<C: Cplx, const L: usize>(
    y: *const <C::V as V>::S,
    x: *mut <C::V as V>::S,
    m: usize,
    vtw: *const <C::V as V>::S,
) {
    unsafe {
        for b in 0..m / L {
            let mut r = [C::load_mem(y); L];
            for (t, v) in r.iter_mut().enumerate() {
                *v = C::load_mem(y.add(vaddr::<C, true>(b * L + t)));
            }
            transpose::<C, L>(&mut r);
            for n1 in 1..L {
                let w = C::load_vtw(vtw.add((b * (L - 1) + n1 - 1) * C::VTW_REALS));
                r[n1] = C::mul_vtw(r[n1], w);
            }
            let z = dft::<C, L>(r);
            for (k2, v) in z.iter().enumerate() {
                C::store_user(x.add(vaddr::<C, false>(b + (m / L) * k2)), *v);
            }
        }
    }
}

/// Padded variant of `execute`: user buffer -> S1 -> S2 -> ... -> Phase B -> user buffer.
#[inline(always)]
unsafe fn execute_padded<C: Cplx>(
    plan: &Plan<<C::V as V>::S>,
    buf: *mut <C::V as V>::S,
    s1: *mut <C::V as V>::S,
    s2: *mut <C::V as V>::S,
) where
    <C::V as V>::S: FromF64 + Default,
{
    let mut sub = plan.m;
    let mut s = 1;
    let mut src: *mut <C::V as V>::S = buf;
    let (mut dst, mut other) = (s1, s2);
    unsafe {
        for (i, &r) in plan.radices.iter().enumerate() {
            let mm = sub / r;
            run_pass_p::<C>(
                r,
                i == 0,
                mm == 1,
                src,
                dst,
                mm,
                s,
                plan.pass_tw[i].as_ptr(),
            );
            src = dst;
            core::mem::swap(&mut dst, &mut other);
            s *= r;
            sub = mm;
        }
        match C::L {
            2 => phase_b_p::<C, 2>(src, buf, plan.m, plan.vtw.as_ptr()),
            4 => phase_b_p::<C, 4>(src, buf, plan.m, plan.vtw.as_ptr()),
            8 => phase_b_p::<C, 8>(src, buf, plan.m, plan.vtw.as_ptr()),
            16 => phase_b_p::<C, 16>(src, buf, plan.m, plan.vtw.as_ptr()),
            _ => unreachable!(),
        }
    }
}

/// One DIF Stockham pass over vectors: radix R, sub-length m*R, stride s.
#[inline(always)]
unsafe fn pass<C: Cplx, const R: usize, const USER_IN: bool, const NOTW: bool>(
    x: *const <C::V as V>::S,
    y: *mut <C::V as V>::S,
    m: usize,
    s: usize,
    tw: *const <C::V as V>::S,
) {
    let vs = 2 * C::L;
    unsafe {
        for p in 0..m {
            let mut w = [C::load_tw(tw); R];
            if !NOTW {
                for k in 1..R {
                    w[k] = C::load_tw(tw.add((p * (R - 1) + k - 1) * 2));
                }
            }
            for q in 0..s {
                let mut a = [C::load_mem(x); R];
                for j in 0..R {
                    let off = (q + s * (p + j * m)) * vs;
                    a[j] = if USER_IN {
                        C::load_user(x.add(off))
                    } else {
                        C::load_mem(x.add(off))
                    };
                }
                let b = dft::<C, R>(a);
                for k in 0..R {
                    let v = if NOTW || k == 0 {
                        b[k]
                    } else {
                        C::mul_tw(b[k], w[k])
                    };
                    C::store_mem(y.add((q + s * (R * p + k)) * vs), v);
                }
            }
        }
    }
}

#[inline(always)]
unsafe fn run_pass<C: Cplx>(
    r: usize,
    user_in: bool,
    notw: bool,
    x: *const <C::V as V>::S,
    y: *mut <C::V as V>::S,
    m: usize,
    s: usize,
    tw: *const <C::V as V>::S,
) {
    unsafe {
        macro_rules! go {
            ($r:literal) => {
                match (user_in, notw) {
                    (true, true) => pass::<C, $r, true, true>(x, y, m, s, tw),
                    (true, false) => pass::<C, $r, true, false>(x, y, m, s, tw),
                    (false, true) => pass::<C, $r, false, true>(x, y, m, s, tw),
                    (false, false) => pass::<C, $r, false, false>(x, y, m, s, tw),
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
unsafe fn transpose<C: Cplx, const L: usize>(r: &mut [C; L]) {
    let mut k = L / 2;
    while k >= 1 {
        let mut g = 0;
        while g < L {
            for i in g..g + k {
                let (e, o) = unsafe { C::zip(r[i], r[i + k], k) };
                r[i] = e;
                r[i + k] = o;
            }
            g += 2 * k;
        }
        k /= 2;
    }
}

#[inline(always)]
unsafe fn phase_b<C: Cplx, const L: usize>(
    y: *const <C::V as V>::S,
    x: *mut <C::V as V>::S,
    m: usize,
    vtw: *const <C::V as V>::S,
) {
    let vs = 2 * C::L;
    let blocks = m / L;
    unsafe {
        for b in 0..blocks {
            let mut r = [C::load_mem(y); L];
            for (t, v) in r.iter_mut().enumerate() {
                *v = C::load_mem(y.add((b * L + t) * vs));
            }
            transpose::<C, L>(&mut r);
            for n1 in 1..L {
                let w = C::load_vtw(vtw.add((b * (L - 1) + n1 - 1) * C::VTW_REALS));
                r[n1] = C::mul_vtw(r[n1], w);
            }
            let z = dft::<C, L>(r);
            for (k2, v) in z.iter().enumerate() {
                C::store_user(x.add((b + (m / L) * k2) * vs), *v);
            }
        }
    }
}

/// In-place transform of `buf` (interleaved) using `scratch` (same length).
#[inline(always)]
unsafe fn execute<C: Cplx>(
    plan: &Plan<<C::V as V>::S>,
    buf: *mut <C::V as V>::S,
    scr: *mut <C::V as V>::S,
) where
    <C::V as V>::S: FromF64 + Default,
{
    let passes = plan.radices.len();
    let mut sub = plan.m;
    let mut s = 1;
    let (mut src, mut dst) = (buf, scr);
    unsafe {
        for (i, &r) in plan.radices.iter().enumerate() {
            let mm = sub / r;
            let last = i + 1 == passes;
            if last && passes % 2 == 0 {
                // in-place twiddle-free final pass so Phase A ends in scratch
                run_pass::<C>(r, false, true, src, src, 1, s, plan.pass_tw[i].as_ptr());
            } else {
                run_pass::<C>(
                    r,
                    i == 0,
                    mm == 1,
                    src,
                    dst,
                    mm,
                    s,
                    plan.pass_tw[i].as_ptr(),
                );
                core::mem::swap(&mut src, &mut dst);
            }
            s *= r;
            sub = mm;
        }
        match C::L {
            2 => phase_b::<C, 2>(scr, buf, plan.m, plan.vtw.as_ptr()),
            4 => phase_b::<C, 4>(scr, buf, plan.m, plan.vtw.as_ptr()),
            8 => phase_b::<C, 8>(scr, buf, plan.m, plan.vtw.as_ptr()),
            16 => phase_b::<C, 16>(scr, buf, plan.m, plan.vtw.as_ptr()),
            _ => unreachable!(),
        }
    }
}

macro_rules! entry {
    ($name:ident, $feat:literal, $c:ty, $s:ty) => {
        #[target_feature(enable = $feat)]
        unsafe fn $name(plan: &Plan<$s>, buf: *mut $s, scr: *mut $s) {
            unsafe { execute::<$c>(plan, buf, scr) }
        }
    };
}

const AVX512: &str = "avx512f,avx512vl,avx512dq,avx512bw,avx2,fma";
entry!(
    i512_f32,
    "avx512f,avx512vl,avx512dq,avx512bw,avx2,fma",
    Inter<F32x16>,
    f32
);
entry!(
    s512_f32,
    "avx512f,avx512vl,avx512dq,avx512bw,avx2,fma",
    Split<F32x16>,
    f32
);
entry!(
    i512_f64,
    "avx512f,avx512vl,avx512dq,avx512bw,avx2,fma",
    Inter<F64x8>,
    f64
);
entry!(
    s512_f64,
    "avx512f,avx512vl,avx512dq,avx512bw,avx2,fma",
    Split<F64x8>,
    f64
);
entry!(
    iymm_f32,
    "avx512f,avx512vl,avx512dq,avx512bw,avx2,fma",
    Inter<F32x8>,
    f32
);
entry!(
    symm_f32,
    "avx512f,avx512vl,avx512dq,avx512bw,avx2,fma",
    Split<F32x8>,
    f32
);
entry!(
    iymm_f64,
    "avx512f,avx512vl,avx512dq,avx512bw,avx2,fma",
    Inter<F64x4>,
    f64
);
entry!(
    symm_f64,
    "avx512f,avx512vl,avx512dq,avx512bw,avx2,fma",
    Split<F64x4>,
    f64
);
entry!(i256_f32, "avx2,fma", Inter<F32x8>, f32);
entry!(s256_f32, "avx2,fma", Split<F32x8>, f32);
entry!(i256_f64, "avx2,fma", Inter<F64x4>, f64);
entry!(s256_f64, "avx2,fma", Split<F64x4>, f64);

#[allow(dead_code)]
const _: &str = AVX512;

macro_rules! entry_p {
    ($name:ident, $feat:literal, $c:ty, $s:ty) => {
        #[target_feature(enable = $feat)]
        unsafe fn $name(plan: &Plan<$s>, buf: *mut $s, s1: *mut $s, s2: *mut $s) {
            unsafe { execute_padded::<$c>(plan, buf, s1, s2) }
        }
    };
}
entry_p!(
    pi512_f32,
    "avx512f,avx512vl,avx512dq,avx512bw,avx2,fma",
    Inter<F32x16>,
    f32
);
entry_p!(
    ps512_f32,
    "avx512f,avx512vl,avx512dq,avx512bw,avx2,fma",
    Split<F32x16>,
    f32
);
entry_p!(
    piymm_f32,
    "avx512f,avx512vl,avx512dq,avx512bw,avx2,fma",
    Inter<F32x8>,
    f32
);
entry_p!(
    psymm_f32,
    "avx512f,avx512vl,avx512dq,avx512bw,avx2,fma",
    Split<F32x8>,
    f32
);
entry_p!(
    pi512_f64,
    "avx512f,avx512vl,avx512dq,avx512bw,avx2,fma",
    Inter<F64x8>,
    f64
);
entry_p!(
    ps512_f64,
    "avx512f,avx512vl,avx512dq,avx512bw,avx2,fma",
    Split<F64x8>,
    f64
);
entry_p!(
    piymm_f64,
    "avx512f,avx512vl,avx512dq,avx512bw,avx2,fma",
    Inter<F64x4>,
    f64
);
entry_p!(
    psymm_f64,
    "avx512f,avx512vl,avx512dq,avx512bw,avx2,fma",
    Split<F64x4>,
    f64
);
entry_p!(pi256_f32, "avx2,fma", Inter<F32x8>, f32);
entry_p!(ps256_f32, "avx2,fma", Split<F32x8>, f32);
entry_p!(pi256_f64, "avx2,fma", Inter<F64x4>, f64);
entry_p!(ps256_f64, "avx2,fma", Split<F64x4>, f64);

pub trait LabFloat: FromF64 + Copy + Default + 'static {
    fn run(plan: &Plan<Self>, buf: &mut [Complex<Self>], scratch: &mut [Complex<Self>]);
    /// Padded variant: needs `padded_scratch_len` reals of scratch (two padded buffers).
    fn run_padded(plan: &Plan<Self>, buf: &mut [Complex<Self>], scratch: &mut [Self]);
    fn padded_scratch_len(plan: &Plan<Self>) -> usize;
}

macro_rules! lab_float {
    ($s:ty, $i512:ident, $s512:ident, $iymm:ident, $symm:ident, $i256:ident, $s256:ident,
     $pi512:ident, $ps512:ident, $piymm:ident, $psymm:ident, $pi256:ident, $ps256:ident, $v512:ty, $v256:ty) => {
        impl LabFloat for $s {
            fn padded_scratch_len(plan: &Plan<$s>) -> usize {
                let one = match (plan.tier, plan.layout) {
                    (Tier::Avx512, Layout::Inter) => padded_len::<Inter<$v512>>(plan.m),
                    (Tier::Avx512, Layout::Split) => padded_len::<Split<$v512>>(plan.m),
                    (_, Layout::Inter) => padded_len::<Inter<$v256>>(plan.m),
                    (_, Layout::Split) => padded_len::<Split<$v256>>(plan.m),
                };
                2 * one
            }
            fn run_padded(plan: &Plan<$s>, buf: &mut [Complex<$s>], scratch: &mut [$s]) {
                let half = Self::padded_scratch_len(plan) / 2;
                assert!(buf.len() == plan.n && scratch.len() >= 2 * half);
                assert!(plan.tier.detected());
                let b = buf.as_mut_ptr().cast::<$s>();
                let s1 = scratch.as_mut_ptr();
                // SAFETY: tier detected; scratch holds two padded buffers.
                unsafe {
                    let s2 = s1.add(half);
                    match (plan.tier, plan.layout) {
                        (Tier::Avx512, Layout::Inter) => $pi512(plan, b, s1, s2),
                        (Tier::Avx512, Layout::Split) => $ps512(plan, b, s1, s2),
                        (Tier::Avx512Ymm, Layout::Inter) => $piymm(plan, b, s1, s2),
                        (Tier::Avx512Ymm, Layout::Split) => $psymm(plan, b, s1, s2),
                        (Tier::Avx2, Layout::Inter) => $pi256(plan, b, s1, s2),
                        (Tier::Avx2, Layout::Split) => $ps256(plan, b, s1, s2),
                    }
                }
            }
            fn run(plan: &Plan<$s>, buf: &mut [Complex<$s>], scratch: &mut [Complex<$s>]) {
                assert!(buf.len() == plan.n && scratch.len() >= plan.n);
                assert!(plan.tier.detected());
                let b = buf.as_mut_ptr().cast::<$s>();
                let s = scratch.as_mut_ptr().cast::<$s>();
                // SAFETY: the tier's features were detected; buffers hold n complex values.
                unsafe {
                    match (plan.tier, plan.layout) {
                        (Tier::Avx512, Layout::Inter) => $i512(plan, b, s),
                        (Tier::Avx512, Layout::Split) => $s512(plan, b, s),
                        (Tier::Avx512Ymm, Layout::Inter) => $iymm(plan, b, s),
                        (Tier::Avx512Ymm, Layout::Split) => $symm(plan, b, s),
                        (Tier::Avx2, Layout::Inter) => $i256(plan, b, s),
                        (Tier::Avx2, Layout::Split) => $s256(plan, b, s),
                    }
                }
            }
        }
    };
}
lab_float!(
    f32, i512_f32, s512_f32, iymm_f32, symm_f32, i256_f32, s256_f32, pi512_f32, ps512_f32,
    piymm_f32, psymm_f32, pi256_f32, ps256_f32, F32x16, F32x8
);
lab_float!(
    f64, i512_f64, s512_f64, iymm_f64, symm_f64, i256_f64, s256_f64, pi512_f64, ps512_f64,
    piymm_f64, psymm_f64, pi256_f64, ps256_f64, F64x8, F64x4
);

/// Profiling helper: time each Phase A pass and Phase B separately (ns per call).
#[inline(always)]
unsafe fn profile_impl<C: Cplx>(
    plan: &Plan<<C::V as V>::S>,
    buf: *mut <C::V as V>::S,
    scr: *mut <C::V as V>::S,
    iters: usize,
) -> Vec<(String, f64)>
where
    <C::V as V>::S: FromF64 + Default,
{
    let mut out = Vec::new();
    let mut sub = plan.m;
    let mut s = 1;
    unsafe {
        for (i, &r) in plan.radices.iter().enumerate() {
            let mm = sub / r;
            let t = std::time::Instant::now();
            for _ in 0..iters {
                run_pass::<C>(
                    r,
                    i == 0,
                    mm == 1,
                    buf,
                    scr,
                    mm,
                    s,
                    plan.pass_tw[i].as_ptr(),
                );
            }
            out.push((
                format!("pass{i} r{r} m{mm} s{s}"),
                t.elapsed().as_nanos() as f64 / iters as f64,
            ));
            s *= r;
            sub = mm;
        }
        let t = std::time::Instant::now();
        for _ in 0..iters {
            match C::L {
                2 => phase_b::<C, 2>(scr, buf, plan.m, plan.vtw.as_ptr()),
                4 => phase_b::<C, 4>(scr, buf, plan.m, plan.vtw.as_ptr()),
                8 => phase_b::<C, 8>(scr, buf, plan.m, plan.vtw.as_ptr()),
                16 => phase_b::<C, 16>(scr, buf, plan.m, plan.vtw.as_ptr()),
                _ => unreachable!(),
            }
        }
        out.push((
            "phaseB".into(),
            t.elapsed().as_nanos() as f64 / iters as f64,
        ));
    }
    out
}

#[target_feature(enable = "avx512f,avx512vl,avx512dq,avx512bw,avx2,fma")]
pub unsafe fn profile_s512_f32(
    plan: &Plan<f32>,
    b: *mut f32,
    s: *mut f32,
    it: usize,
) -> Vec<(String, f64)> {
    unsafe { profile_impl::<Split<F32x16>>(plan, b, s, it) }
}
#[target_feature(enable = "avx512f,avx512vl,avx512dq,avx512bw,avx2,fma")]
pub unsafe fn profile_i512_f32(
    plan: &Plan<f32>,
    b: *mut f32,
    s: *mut f32,
    it: usize,
) -> Vec<(String, f64)> {
    unsafe { profile_impl::<Inter<F32x16>>(plan, b, s, it) }
}

/// Microbenchmark: one pass with explicit (m, s, twiddles?) on Inter/Split f32 zmm, radix 8.
#[target_feature(enable = "avx512f,avx512vl,avx512dq,avx512bw,avx2,fma")]
pub unsafe fn micro_pass(
    split: bool,
    user_in: bool,
    notw: bool,
    x: *const f32,
    y: *mut f32,
    m: usize,
    s: usize,
    tw: *const f32,
    iters: usize,
) {
    unsafe {
        for _ in 0..iters {
            if split {
                run_pass::<Split<F32x16>>(8, user_in, notw, x, y, m, s, tw);
            } else {
                run_pass::<Inter<F32x16>>(8, user_in, notw, x, y, m, s, tw);
            }
        }
    }
}

#[target_feature(enable = "avx512f,avx512vl,avx512dq,avx512bw,avx2,fma")]
#[inline(never)]
pub unsafe fn probe_split_r8_first(x: *const f32, y: *mut f32, m: usize, tw: *const f32) {
    unsafe { pass::<Split<F32x16>, 8, true, false>(x, y, m, 1, tw) }
}
#[target_feature(enable = "avx512f,avx512vl,avx512dq,avx512bw,avx2,fma")]
pub unsafe fn profile_symm_f32(
    plan: &Plan<f32>,
    b: *mut f32,
    s: *mut f32,
    it: usize,
) -> Vec<(String, f64)> {
    unsafe { profile_impl::<Split<F32x8>>(plan, b, s, it) }
}
#[target_feature(enable = "avx512f,avx512vl,avx512dq,avx512bw,avx2,fma")]
pub unsafe fn profile_iymm_f32(
    plan: &Plan<f32>,
    b: *mut f32,
    s: *mut f32,
    it: usize,
) -> Vec<(String, f64)> {
    unsafe { profile_impl::<Inter<F32x8>>(plan, b, s, it) }
}

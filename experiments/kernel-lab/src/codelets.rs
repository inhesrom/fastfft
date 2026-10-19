//! Hand-written forward DFT codelets over [`Cplx`] (the generator replaces
//! these in the real library).

#![allow(clippy::missing_safety_doc)]

use crate::cplx::Cplx;

const H: f64 = core::f64::consts::FRAC_1_SQRT_2;
const C1: f64 = 0.923_879_532_511_286_7; // cos(pi/8)
const S1: f64 = 0.382_683_432_365_089_8; // sin(pi/8)

#[inline(always)]
pub unsafe fn dft2<C: Cplx>(a: [C; 2]) -> [C; 2] {
    unsafe { [C::add(a[0], a[1]), C::sub(a[0], a[1])] }
}

#[inline(always)]
pub unsafe fn dft4<C: Cplx>(a: [C; 4]) -> [C; 4] {
    unsafe {
        let t0 = C::add(a[0], a[2]);
        let t1 = C::sub(a[0], a[2]);
        let t2 = C::add(a[1], a[3]);
        let t3 = C::sub(a[1], a[3]);
        [
            C::add(t0, t2),
            C::rot_add(t1, t3),
            C::sub(t0, t2),
            C::rot_sub(t1, t3),
        ]
    }
}

#[inline(always)]
pub unsafe fn dft8<C: Cplx>(a: [C; 8]) -> [C; 8] {
    unsafe {
        let e = dft4([a[0], a[2], a[4], a[6]]);
        let o = dft4([a[1], a[3], a[5], a[7]]);
        let o1 = C::mul_const(o[1], H, -H);
        let o3 = C::mul_const(o[3], -H, -H);
        [
            C::add(e[0], o[0]),
            C::add(e[1], o1),
            C::rot_add(e[2], o[2]),
            C::add(e[3], o3),
            C::sub(e[0], o[0]),
            C::sub(e[1], o1),
            C::rot_sub(e[2], o[2]),
            C::sub(e[3], o3),
        ]
    }
}

#[inline(always)]
pub unsafe fn dft16<C: Cplx>(x: [C; 16]) -> [C; 16] {
    unsafe {
        let mut z = [[x[0]; 4]; 4];
        for n2 in 0..4 {
            z[n2] = dft4([x[n2], x[4 + n2], x[8 + n2], x[12 + n2]]);
        }
        // twiddles w16^(n2*k1)
        z[1][1] = C::mul_const(z[1][1], C1, -S1);
        z[1][2] = C::mul_const(z[1][2], H, -H);
        z[1][3] = C::mul_const(z[1][3], S1, -C1);
        z[2][1] = C::mul_const(z[2][1], H, -H);
        z[2][2] = C::mul_neg_i(z[2][2]);
        z[2][3] = C::mul_const(z[2][3], -H, -H);
        z[3][1] = C::mul_const(z[3][1], S1, -C1);
        z[3][2] = C::mul_const(z[3][2], -H, -H);
        z[3][3] = C::mul_const(z[3][3], -C1, S1);
        let mut out = [x[0]; 16];
        for k1 in 0..4 {
            let y = dft4([z[0][k1], z[1][k1], z[2][k1], z[3][k1]]);
            for k2 in 0..4 {
                out[k1 + 4 * k2] = y[k2];
            }
        }
        out
    }
}

/// Forward DFT of size `R` (2, 4, 8 or 16).
#[inline(always)]
pub unsafe fn dft<C: Cplx, const R: usize>(a: [C; R]) -> [C; R] {
    unsafe {
        // The arrays have exactly R elements; transmute_copy between equal sizes.
        match R {
            2 => core::mem::transmute_copy(&dft2::<C>(core::mem::transmute_copy(&a))),
            4 => core::mem::transmute_copy(&dft4::<C>(core::mem::transmute_copy(&a))),
            8 => core::mem::transmute_copy(&dft8::<C>(core::mem::transmute_copy(&a))),
            16 => core::mem::transmute_copy(&dft16::<C>(core::mem::transmute_copy(&a))),
            _ => unreachable!("unsupported radix {R}"),
        }
    }
}

//! Twiddle factors computed with exact integer angle reduction.

use core::f64::consts::FRAC_PI_4;

use crate::isa::roots;
pub(crate) use roots::Roots;

/// pi/4 split into a head and a tail (pi/4 = HI + LO to ~2^-107).
pub(crate) const PI4_HI: f64 = FRAC_PI_4;
pub(crate) const PI4_LO: f64 = 3.061_616_997_868_383e-17;

/// `exp(-2 pi i k / n)` as `(re, im)`, accurate to about one ulp of f64.
///
/// `k` is reduced exactly modulo `n` and to the first octant with integer
/// arithmetic; the remaining angle is formed in double-double and the
/// sine/cosine are corrected to first order for its tail.
pub(crate) fn omega(k: usize, n: usize) -> (f64, f64) {
    debug_assert!(n > 0);
    if let Some(value) = roots::small(k, n) {
        return value;
    }
    let k = k % n;
    let t = 8 * k as u128;
    let n128 = n as u128;
    let o = (t / n128) as u32;
    let r = (t % n128) as u64;
    let num = if o.is_multiple_of(2) { r } else { n as u64 - r };
    // q + q_lo = num / n
    let (numf, nf) = (num as f64, n as f64);
    let q = numf / nf;
    let q_lo = (-q).mul_add(nf, numf) / nf;
    // phi + phi_lo = (pi/4) * (q + q_lo)
    let phi = PI4_HI * q;
    let phi_lo = PI4_HI.mul_add(q, -phi) + PI4_HI * q_lo + PI4_LO * q;
    let (s0, c0) = phi.sin_cos();
    let s = s0 + c0 * phi_lo;
    let c = c0 - s0 * phi_lo;
    let (cos, sin) = match o {
        0 => (c, s),
        1 => (s, c),
        2 => (-s, c),
        3 => (-c, s),
        4 => (-c, -s),
        5 => (-s, -c),
        6 => (s, -c),
        _ => (c, -s),
    };
    (cos, -sin)
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn matches_double_double_reference() {
        let mut worst = 0.0f64;
        for n in [
            1usize,
            2,
            3,
            4,
            5,
            7,
            8,
            12,
            16,
            360,
            1000,
            4096,
            65537,
            1 << 20,
            3 << 22,
        ] {
            let step = (n / 2000).max(1);
            for k in (0..n).step_by(step) {
                let (c, s) = omega(k, n);
                let (rc, rs) = fastfft_testkit::Dd::unit_root(k as u64, n as u64);
                // omega = exp(-2 pi i k/n) = (cos, -sin)
                let ec = (c - rc.to_f64()).abs();
                let es = (s + rs.to_f64()).abs();
                worst = worst.max(ec).max(es);
                // within one ulp of the correctly rounded value (ulp <= 2^-53 below 1.0)
                assert!(ec <= f64::EPSILON / 2.0 + 1e-300, "cos n={n} k={k}: {ec:e}");
                assert!(es <= f64::EPSILON / 2.0 + 1e-300, "sin n={n} k={k}: {es:e}");
            }
        }
        assert!(worst <= f64::EPSILON / 2.0);
        assert_eq!(omega(0, 8), (1.0, -0.0));
        assert_eq!(omega(2, 8).0.abs(), 0.0);
        assert_eq!(omega(4, 8), (-1.0, -0.0));
        // pi/4: within one ulp of 1/sqrt(2) (not necessarily correctly rounded)
        let (c, s) = omega(1, 8);
        assert!((c - core::f64::consts::FRAC_1_SQRT_2).abs() <= f64::EPSILON);
        assert!((s + core::f64::consts::FRAC_1_SQRT_2).abs() <= f64::EPSILON);
    }
}

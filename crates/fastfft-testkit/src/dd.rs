//! Double-double arithmetic (~106-bit significand, ~32 decimal digits).
//!
//! A [`Dd`] value is the unevaluated sum `hi + lo` with `|lo| <= ulp(hi)/2`.
//! The algorithms are the classic error-free transformations (Knuth two-sum,
//! Dekker/FMA two-product) as used by the QD library.

use core::ops::{Add, AddAssign, Mul, Neg, Sub, SubAssign};

/// A double-double number `hi + lo`.
#[derive(Clone, Copy, Debug, Default, PartialEq, PartialOrd)]
pub struct Dd {
    /// Leading component.
    pub hi: f64,
    /// Trailing component, `|lo| <= ulp(hi) / 2`.
    pub lo: f64,
}

#[inline]
fn two_sum(a: f64, b: f64) -> (f64, f64) {
    let s = a + b;
    let bb = s - a;
    let e = (a - (s - bb)) + (b - bb);
    (s, e)
}

#[inline]
fn quick_two_sum(a: f64, b: f64) -> (f64, f64) {
    let s = a + b;
    let e = b - (s - a);
    (s, e)
}

#[inline]
fn two_prod(a: f64, b: f64) -> (f64, f64) {
    let p = a * b;
    // `mul_add` is a correctly rounded fused multiply-add on every platform,
    // so `e` is the exact rounding error of `a * b`.
    let e = a.mul_add(b, -p);
    (p, e)
}

impl Dd {
    /// Zero.
    pub const ZERO: Dd = Dd { hi: 0.0, lo: 0.0 };
    /// One.
    pub const ONE: Dd = Dd { hi: 1.0, lo: 0.0 };
    /// pi to double-double precision.
    pub const PI: Dd = Dd {
        hi: core::f64::consts::PI,
        lo: 1.224_646_799_147_353_2e-16,
    };
    /// pi/4 to double-double precision (exact scaling of [`Dd::PI`]).
    pub const FRAC_PI_4: Dd = Dd {
        hi: core::f64::consts::FRAC_PI_4,
        lo: 3.061_616_997_868_383e-17,
    };

    /// Exact conversion from `f64`.
    #[inline]
    pub const fn from_f64(x: f64) -> Dd {
        Dd { hi: x, lo: 0.0 }
    }

    /// Rounds to the nearest `f64`.
    #[inline]
    pub fn to_f64(self) -> f64 {
        self.hi + self.lo
    }

    /// Multiplies by an `f64`.
    #[inline]
    pub fn mul_f64(self, b: f64) -> Dd {
        let (p, e) = two_prod(self.hi, b);
        let e = e + self.lo * b;
        let (hi, lo) = quick_two_sum(p, e);
        Dd { hi, lo }
    }

    /// Divides by an `f64`.
    #[inline]
    pub fn div_f64(self, b: f64) -> Dd {
        let q1 = self.hi / b;
        let (p, e) = two_prod(q1, b);
        let (s, f) = two_sum(self.hi, -p);
        let f = f - e + self.lo;
        let q2 = (s + f) / b;
        let (hi, lo) = quick_two_sum(q1, q2);
        Dd { hi, lo }
    }

    /// `num / den` for integers below 2^53, to double-double precision.
    pub fn ratio(num: u64, den: u64) -> Dd {
        assert!(num < (1 << 53) && den < (1 << 53) && den > 0);
        Dd::from_f64(num as f64).div_f64(den as f64)
    }

    /// Absolute value.
    #[inline]
    pub fn abs(self) -> Dd {
        if self.hi < 0.0 || (self.hi == 0.0 && self.lo < 0.0) {
            -self
        } else {
            self
        }
    }

    /// Square root (one Newton step on the f64 estimate).
    pub fn sqrt(self) -> Dd {
        if self.hi <= 0.0 {
            return Dd::ZERO;
        }
        let x = 1.0 / self.hi.sqrt();
        let ax = self.hi * x;
        let (p, e) = two_prod(ax, ax);
        let diff = (self - Dd { hi: p, lo: e }).hi;
        let (hi, lo) = two_sum(ax, diff * (x * 0.5));
        Dd { hi, lo }
    }

    /// sin and cos of a small argument `|x| <= pi/4`, by Taylor series.
    fn sincos_small(x: Dd) -> (Dd, Dd) {
        // Terms decrease faster than (pi/4)^k / k!; 30 terms reach < 1e-40.
        let x2 = x * x;
        let mut sin = Dd::ZERO;
        let mut cos = Dd::ZERO;
        let mut term = Dd::ONE; // x^k / k!
        let mut k: u32 = 0;
        loop {
            // even k: cos term
            if k.is_multiple_of(4) {
                cos += term;
            } else {
                cos -= term;
            }
            let odd = (term * x).div_f64(f64::from(k + 1));
            if k.is_multiple_of(4) {
                sin += odd;
            } else {
                sin -= odd;
            }
            term = (term * x2).div_f64(f64::from((k + 1) * (k + 2)));
            k += 2;
            if term.hi.abs() < 1e-40 || k > 60 {
                break;
            }
        }
        (sin, cos)
    }

    /// `(cos(2 pi j / n), sin(2 pi j / n))` to double-double precision.
    ///
    /// The angle is reduced exactly in integer arithmetic (octant symmetry),
    /// so the result is accurate for all `j` and `n < 2^50`.
    pub fn unit_root(j: u64, n: u64) -> (Dd, Dd) {
        assert!(n > 0 && n < (1 << 50));
        let j = j % n;
        let t = 8 * u128::from(j);
        let o = (t / u128::from(n)) as u32;
        let r = (t % u128::from(n)) as u64;
        let num = if o.is_multiple_of(2) { r } else { n - r };
        let phi = Dd::FRAC_PI_4 * Dd::ratio(num, n);
        let (s, c) = Dd::sincos_small(phi);
        match o {
            0 => (c, s),
            1 => (s, c),
            2 => (-s, c),
            3 => (-c, s),
            4 => (-c, -s),
            5 => (-s, -c),
            6 => (s, -c),
            _ => (c, -s),
        }
    }
}

impl Add for Dd {
    type Output = Dd;
    #[inline]
    fn add(self, b: Dd) -> Dd {
        let (s, e) = two_sum(self.hi, b.hi);
        let (t, f) = two_sum(self.lo, b.lo);
        let e = e + t;
        let (s, e) = quick_two_sum(s, e);
        let e = e + f;
        let (hi, lo) = quick_two_sum(s, e);
        Dd { hi, lo }
    }
}

impl Sub for Dd {
    type Output = Dd;
    #[inline]
    fn sub(self, b: Dd) -> Dd {
        self + (-b)
    }
}

impl Neg for Dd {
    type Output = Dd;
    #[inline]
    fn neg(self) -> Dd {
        Dd {
            hi: -self.hi,
            lo: -self.lo,
        }
    }
}

impl Mul for Dd {
    type Output = Dd;
    #[inline]
    fn mul(self, b: Dd) -> Dd {
        let (p, e) = two_prod(self.hi, b.hi);
        let e = e + (self.hi * b.lo + self.lo * b.hi);
        let (hi, lo) = quick_two_sum(p, e);
        Dd { hi, lo }
    }
}

impl AddAssign for Dd {
    #[inline]
    fn add_assign(&mut self, b: Dd) {
        *self = *self + b;
    }
}

impl SubAssign for Dd {
    #[inline]
    fn sub_assign(&mut self, b: Dd) {
        *self = *self - b;
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn pi_quarter_consistent() {
        let q = Dd::PI.mul_f64(0.25);
        assert_eq!(q, Dd::FRAC_PI_4);
    }

    #[test]
    fn unit_root_matches_std_and_identities() {
        for n in [1u64, 2, 3, 5, 7, 8, 12, 17, 1000, 4096, 65537] {
            for j in 0..n.min(300) {
                let (c, s) = Dd::unit_root(j, n);
                let a = 2.0 * core::f64::consts::PI * j as f64 / n as f64;
                assert!((c.to_f64() - a.cos()).abs() < 1e-14, "cos n={n} j={j}");
                assert!((s.to_f64() - a.sin()).abs() < 1e-14, "sin n={n} j={j}");
                // c^2 + s^2 == 1 to double-double precision
                let one = c * c + s * s;
                assert!((one - Dd::ONE).abs().hi < 1e-30, "norm n={n} j={j}");
            }
        }
    }

    #[test]
    fn known_values() {
        // cos(pi/3) = 1/2 exactly, sin(pi/6) = 1/2 exactly.
        let (c, _) = Dd::unit_root(1, 6);
        assert!((c - Dd::from_f64(0.5)).abs().hi < 1e-31);
        let (_, s) = Dd::unit_root(1, 12);
        assert!((s - Dd::from_f64(0.5)).abs().hi < 1e-31);
        // cos(pi/4)^2 = 1/2
        let (c, s) = Dd::unit_root(1, 8);
        assert!((c * c - Dd::from_f64(0.5)).abs().hi < 1e-31);
        assert!((c - s).abs().hi < 1e-31);
    }

    #[test]
    fn sqrt_accuracy() {
        let two = Dd::from_f64(2.0);
        let r = two.sqrt();
        assert!((r * r - two).abs().hi < 1e-30);
    }
}

//! Reusable roots for coefficient preparation. Large tables factor the phase
//! index into two short tables of accurate high/low seeds; no plan is cached.

use crate::twiddle::omega;

#[path = "small_roots.rs"]
mod small_roots;

/// Powers of two through 256 share one immutable first-octant table.
pub(crate) fn small(k: usize, n: usize) -> Option<(f64, f64)> {
    (n <= 256 && n.is_power_of_two()).then(|| small_at((k & (n - 1)) << (8 - n.ilog2())))
}

#[inline]
fn small_at(phase: usize) -> (f64, f64) {
    let octant = phase >> 5;
    let remainder = phase & 31;
    let index = if octant.is_multiple_of(2) {
        remainder
    } else {
        32 - remainder
    };
    let (c, s) = small_roots::OCTANT[index];
    let (c, s) = match octant {
        0 => (c, s),
        1 => (s, c),
        2 => (-s, c),
        3 => (-c, s),
        4 => (-c, -s),
        5 => (-s, -c),
        6 => (s, -c),
        _ => (c, -s),
    };
    (c, -s)
}

#[cfg(target_arch = "x86_64")]
#[path = "coefficients.rs"]
mod coefficients;

pub(crate) struct Roots {
    n: usize,
    kind: Kind,
}

enum Kind {
    Small {
        shift: u32,
    },
    Direct,
    #[cfg(target_arch = "x86_64")]
    Cached {
        reciprocal: f64,
    },
    #[cfg(target_arch = "x86_64")]
    Table(fma::Table),
}

impl Roots {
    /// `uses` estimates how many coefficients the caller will request. The
    /// two seed tables pay for themselves only when enough roots are needed.
    pub(crate) fn new(n: usize, uses: usize) -> Self {
        assert!(n > 0);
        if n <= 256 && n.is_power_of_two() {
            return Self {
                n,
                kind: Kind::Small {
                    shift: 8 - n.ilog2(),
                },
            };
        }
        #[cfg(target_arch = "x86_64")]
        if std::arch::is_x86_feature_detected!("fma") {
            // Like f64::mul_add, preparation uses scalar hardware FMA when
            // present. Transform ISA caps still select the execution kernels.
            let shift = (n.ilog2() / 2).saturating_sub(1);
            let block = 1usize << shift;
            let seeds = block.saturating_add(n.div_ceil(block));
            let kind = if n < (1usize << 50) && uses >= seeds.saturating_mul(24) {
                // SAFETY: FMA was detected; the integer bounds make every
                // seed's angle reduction exact without overflow.
                Kind::Table(unsafe { fma::Table::new(n, shift) })
            } else {
                Kind::Cached {
                    reciprocal: 1.0 / n as f64,
                }
            };
            return Self { n, kind };
        }
        let _ = uses;
        Self {
            n,
            kind: Kind::Direct,
        }
    }

    #[inline]
    pub(crate) fn get(&self, k: usize) -> (f64, f64) {
        match &self.kind {
            Kind::Small { shift } => small_at((k & (self.n - 1)) << shift),
            Kind::Direct => omega(k, self.n),
            #[cfg(target_arch = "x86_64")]
            Kind::Cached { reciprocal } => {
                // SAFETY: this variant is constructed only after detecting FMA.
                unsafe { fma::cached(k, self.n, *reciprocal) }
            }
            #[cfg(target_arch = "x86_64")]
            Kind::Table(table) => {
                // SAFETY: this variant is constructed only after detecting FMA.
                unsafe { table.get(k, self.n) }
            }
        }
    }
}

#[cfg(target_arch = "x86_64")]
mod fma {
    use super::coefficients;
    use crate::twiddle::{PI4_HI, PI4_LO};

    #[derive(Clone, Copy)]
    pub(super) struct Wide {
        pub(super) hi: f64,
        pub(super) lo: f64,
    }

    impl Wide {
        const ZERO: Self = Self { hi: 0.0, lo: 0.0 };
        const ONE: Self = Self { hi: 1.0, lo: 0.0 };

        #[inline(always)]
        fn renormalize(hi: f64, lo: f64) -> Self {
            let sum = hi + lo;
            Self {
                hi: sum,
                lo: lo - (sum - hi),
            }
        }

        #[inline(always)]
        fn add(self, b: Self) -> Self {
            let sum = self.hi + b.hi;
            let middle = sum - self.hi;
            let error = (self.hi - (sum - middle)) + (b.hi - middle);
            Self::renormalize(sum, error + self.lo + b.lo)
        }

        #[inline(always)]
        fn mul(self, b: Self) -> Self {
            let product = self.hi * b.hi;
            let error = self.hi.mul_add(b.hi, -product) + self.hi * b.lo + self.lo * b.hi;
            Self::renormalize(product, error)
        }

        #[inline(always)]
        fn neg(self) -> Self {
            Self {
                hi: -self.hi,
                lo: -self.lo,
            }
        }
    }

    /// Exact integer reduction followed by a high/low polynomial evaluation.
    /// Inputs are bounded by the factory; coefficients cover |phi| <= pi/4.
    #[target_feature(enable = "fma")]
    unsafe fn seed(k: usize, n: usize) -> (Wide, Wide) {
        let k = k % n;
        if k == 0 {
            return (Wide::ONE, Wide::ZERO);
        }
        let t = 8 * k;
        let octant = t / n;
        let remainder = t % n;
        let numerator = if octant.is_multiple_of(2) {
            remainder
        } else {
            n - remainder
        };
        let nf = n as f64;
        let num = numerator as f64;
        let q = num / nf;
        let ratio = Wide::renormalize(q, (-q).mul_add(nf, num) / nf);
        let x = Wide {
            hi: PI4_HI,
            lo: PI4_LO,
        }
        .mul(ratio);
        let x2 = x.mul(x);
        let mut c = coefficients::COS[14];
        let mut s = coefficients::SIN[14];
        for i in (0..14).rev() {
            c = c.mul(x2).add(coefficients::COS[i]);
            s = s.mul(x2).add(coefficients::SIN[i]);
        }
        let s = s.mul(x);
        let (c, s) = match octant {
            0 => (c, s),
            1 => (s, c),
            2 => (s.neg(), c),
            3 => (c.neg(), s),
            4 => (c.neg(), s.neg()),
            5 => (s.neg(), c.neg()),
            6 => (s, c.neg()),
            _ => (c, s.neg()),
        };
        (c, s.neg())
    }

    pub(super) struct Table {
        shift: u32,
        low: Vec<(Wide, Wide)>,
        high: Vec<(Wide, Wide)>,
    }

    impl Table {
        pub(super) unsafe fn new(n: usize, shift: u32) -> Self {
            let block = 1usize << shift;
            let at = |k| {
                // SAFETY: the factory checked FMA and the integer bounds.
                unsafe { seed(k, n) }
            };
            Self {
                shift,
                low: (0..block).map(at).collect(),
                high: (0..n.div_ceil(block)).map(|i| at(i * block)).collect(),
            }
        }

        #[target_feature(enable = "fma")]
        pub(super) unsafe fn get(&self, k: usize, n: usize) -> (f64, f64) {
            let k = if k < n { k } else { k % n };
            // Preserve exact axes, including when a non-power-of-two length
            // splits an axis between the two seed tables. A tiny residual
            // at a mathematical zero could create subnormal f32 products.
            // The factory bounds 8*n, so these products cannot overflow.
            let phase = 4 * k;
            if phase == 0 {
                return (1.0, -0.0);
            }
            if phase == n {
                return (0.0, -1.0);
            }
            if phase == 2 * n {
                return (-1.0, -0.0);
            }
            if phase == 3 * n {
                return (0.0, 1.0);
            }
            let (ar, ai) = self.high[k >> self.shift];
            let (br, bi) = self.low[k & ((1usize << self.shift) - 1)];
            // Correct the rounded first product and the seed tails. The
            // fused second product leaves one rounding before correction;
            // the result is within one ulp, like the direct twiddle path.
            let p = ar.hi * br.hi;
            let re = (-ai.hi).mul_add(bi.hi, p);
            let error = ar.hi.mul_add(br.hi, -p) + ar.hi * br.lo + ar.lo * br.hi
                - ai.hi * bi.lo
                - ai.lo * bi.hi;
            let re = re + error;
            let p = ar.hi * bi.hi;
            let im = ai.hi.mul_add(br.hi, p);
            let error = ar.hi.mul_add(bi.hi, -p)
                + ar.hi * bi.lo
                + ar.lo * bi.hi
                + ai.hi * br.lo
                + ai.lo * br.hi;
            (re, im + error)
        }
    }

    #[target_feature(enable = "fma")]
    pub(super) unsafe fn cached(k: usize, n: usize, reciprocal: f64) -> (f64, f64) {
        let k = if k < n { k } else { k % n };
        if k == 0 {
            return (1.0, -0.0);
        }
        let (octant, remainder) = if let Some(t) = k.checked_mul(8) {
            (t / n, t % n)
        } else {
            let t = 8 * k as u128;
            ((t / n as u128) as usize, (t % n as u128) as usize)
        };
        let numerator = if octant.is_multiple_of(2) {
            remainder
        } else {
            n - remainder
        };
        let num = numerator as f64;
        let nf = n as f64;
        let q = num * reciprocal;
        let q_lo = (-q).mul_add(nf, num) * reciprocal;
        let phi = PI4_HI * q;
        let phi_lo = PI4_HI.mul_add(q, -phi) + PI4_HI * q_lo + PI4_LO * q;
        let (s0, c0) = phi.sin_cos();
        let s = s0 + c0 * phi_lo;
        let c = c0 - s0 * phi_lo;
        let (c, s) = match octant {
            0 => (c, s),
            1 => (s, c),
            2 => (-s, c),
            3 => (-c, s),
            4 => (-c, -s),
            5 => (-s, -c),
            6 => (s, -c),
            _ => (c, -s),
        };
        (c, -s)
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn reusable_roots_match_double_double_reference() {
        for n in (1usize..=512).chain([1000, 4096, 65524, 65537, 131072, 1 << 20, 3 << 22]) {
            for uses in [1, 3 * n] {
                let roots = Roots::new(n, uses);
                assert_eq!(roots.get(0), (1.0, -0.0));
                if n.is_multiple_of(2) {
                    assert_eq!(roots.get(n / 2), (-1.0, -0.0));
                }
                if n.is_multiple_of(4) {
                    assert_eq!(roots.get(n / 4), (0.0, -1.0));
                    assert_eq!(roots.get(3 * n / 4), (0.0, 1.0));
                }
                for k in (0..n).step_by((n / 2000).max(1)) {
                    let (c, s) = roots.get(k);
                    let (rc, rs) = fastfft_testkit::Dd::unit_root(k as u64, n as u64);
                    let error = (c - rc.to_f64()).abs().max((s + rs.to_f64()).abs());
                    assert!(
                        error <= f64::EPSILON / 2.0 + 1e-300,
                        "n={n} k={k}: {error:e}"
                    );
                    assert_eq!(roots.get(k + n), (c, s));
                }
            }
        }
    }
}

//! Error metrics against a reference.

use crate::dd::Dd;
use crate::reference::Cx;
use num_complex::Complex;

/// Error of a transform output against a reference.
#[derive(Clone, Copy, Debug, Default, PartialEq)]
pub struct ErrorStats {
    /// `||y - ref||_2 / ||ref||_2`.
    pub rel_l2: f64,
    /// `max_k |y_k - ref_k| / max_k |ref_k|`.
    pub max_rel: f64,
}

impl ErrorStats {
    /// Expresses both errors in units of `eps` (e.g. `f32::EPSILON`).
    pub fn in_eps(self, eps: f64) -> ErrorStats {
        ErrorStats {
            rel_l2: self.rel_l2 / eps,
            max_rel: self.max_rel / eps,
        }
    }
}

/// Values that can be compared against a double-double reference.
pub trait ToDd: Copy {
    /// Exact conversion.
    fn to_dd(self) -> Dd;
}
impl ToDd for f32 {
    fn to_dd(self) -> Dd {
        Dd::from_f64(f64::from(self))
    }
}
impl ToDd for f64 {
    fn to_dd(self) -> Dd {
        Dd::from_f64(self)
    }
}
impl ToDd for Dd {
    fn to_dd(self) -> Dd {
        self
    }
}

fn norm2_dd(c: Cx<Dd>) -> Dd {
    c.re * c.re + c.im * c.im
}

/// Error of `actual` (any float type) against a double-double reference.
/// Differences are formed in double-double so the metric itself adds no error.
pub fn error_vs_dd<T: ToDd>(actual: &[Complex<T>], reference: &[Cx<Dd>]) -> ErrorStats {
    assert_eq!(actual.len(), reference.len());
    let mut num = Dd::ZERO;
    let mut den = Dd::ZERO;
    let mut max_diff = 0.0f64;
    let mut max_ref = 0.0f64;
    for (a, r) in actual.iter().zip(reference) {
        let d = Cx::new(a.re.to_dd() - r.re, a.im.to_dd() - r.im);
        let dn = norm2_dd(d);
        let rn = norm2_dd(*r);
        num += dn;
        den += rn;
        max_diff = max_diff.max(dn.to_f64().sqrt());
        max_ref = max_ref.max(rn.to_f64().sqrt());
    }
    let rel_l2 = if den.hi == 0.0 {
        num.to_f64().sqrt()
    } else {
        (num.to_f64() / den.to_f64()).sqrt()
    };
    let max_rel = if max_ref == 0.0 {
        max_diff
    } else {
        max_diff / max_ref
    };
    ErrorStats { rel_l2, max_rel }
}

/// Relative L2 error between two double-double vectors.
pub fn rel_l2_dd(actual: &[Cx<Dd>], reference: &[Cx<Dd>]) -> f64 {
    assert_eq!(actual.len(), reference.len());
    let mut num = Dd::ZERO;
    let mut den = Dd::ZERO;
    for (a, r) in actual.iter().zip(reference) {
        num += norm2_dd(*a - *r);
        den += norm2_dd(*r);
    }
    if den.hi == 0.0 {
        num.to_f64().sqrt()
    } else {
        (num.to_f64() / den.to_f64()).sqrt()
    }
}

/// Error of `actual` against an `f64` reference (used above 2^20 where the
/// double-double reference is too slow). Differences are formed in
/// double-double.
pub fn error_vs_f64<T: ToDd>(actual: &[Complex<T>], reference: &[Complex<f64>]) -> ErrorStats {
    let r: Vec<Cx<Dd>> = reference
        .iter()
        .map(|c| Cx::new(Dd::from_f64(c.re), Dd::from_f64(c.im)))
        .collect();
    error_vs_dd(actual, &r)
}

/// Accuracy threshold for fastfft's fast paths, in units of epsilon:
/// `2 log2 N + 2`.
pub fn fast_path_bound_eps(n: usize) -> f64 {
    2.0 * (n.max(2) as f64).log2() + 2.0
}

/// Accuracy threshold for Bluestein, in units of epsilon: `8 log2 M + 8` with
/// `M` the inner convolution length.
pub fn bluestein_bound_eps(m: usize) -> f64 {
    8.0 * (m.max(2) as f64).log2() + 8.0
}

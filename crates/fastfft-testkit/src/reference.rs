//! Reference DFTs: a naive O(N^2) DFT and an independent mixed-radix FFT with
//! Bluestein's algorithm for large prime factors, both generic over the
//! arithmetic type (`f64` or double-double [`Dd`]).
//!
//! These are deliberately simple, recursive and allocation-happy: they are
//! used to validate fastfft and the other libraries in the arena, never for
//! speed. Twiddle factors are computed in double-double with exact integer
//! angle reduction, then rounded to the arithmetic type.

use crate::dd::Dd;
use core::ops::{Add, Mul, Neg, Sub};
use num_complex::Complex;

/// Transform direction. Forward uses `exp(-2 pi i n k / N)`.
#[derive(Clone, Copy, Debug, PartialEq, Eq, Hash)]
pub enum Dir {
    /// `X[k] = sum_n x[n] exp(-2 pi i n k / N)`.
    Forward,
    /// `x[n] = sum_k X[k] exp(+2 pi i n k / N)` (unnormalized).
    Inverse,
}

impl Dir {
    fn sign(self) -> i32 {
        match self {
            Dir::Forward => -1,
            Dir::Inverse => 1,
        }
    }
}

/// Arithmetic used by the reference transforms.
pub trait RefFloat:
    Copy
    + Default
    + core::fmt::Debug
    + Add<Output = Self>
    + Sub<Output = Self>
    + Mul<Output = Self>
    + Neg<Output = Self>
{
    /// Exact (or correctly rounded) conversion from `f64`.
    fn from_f64(x: f64) -> Self;
    /// Rounds to `f64`.
    fn to_f64(self) -> f64;
    /// `(cos(2 pi j / n), sin(2 pi j / n))`.
    fn unit_root(j: u64, n: u64) -> (Self, Self);
}

impl RefFloat for f64 {
    fn from_f64(x: f64) -> Self {
        x
    }
    fn to_f64(self) -> f64 {
        self
    }
    fn unit_root(j: u64, n: u64) -> (Self, Self) {
        let (c, s) = Dd::unit_root(j, n);
        (c.to_f64(), s.to_f64())
    }
}

impl RefFloat for Dd {
    fn from_f64(x: f64) -> Self {
        Dd::from_f64(x)
    }
    fn to_f64(self) -> f64 {
        Dd::to_f64(self)
    }
    fn unit_root(j: u64, n: u64) -> (Self, Self) {
        Dd::unit_root(j, n)
    }
}

/// Minimal complex type over a [`RefFloat`].
#[derive(Clone, Copy, Debug, Default, PartialEq)]
pub struct Cx<R> {
    /// Real part.
    pub re: R,
    /// Imaginary part.
    pub im: R,
}

impl<R: RefFloat> Cx<R> {
    /// Builds from parts.
    pub fn new(re: R, im: R) -> Self {
        Cx { re, im }
    }
    /// Converts an `f64` complex exactly.
    pub fn from_c64(c: Complex<f64>) -> Self {
        Cx::new(R::from_f64(c.re), R::from_f64(c.im))
    }
    /// Rounds to an `f64` complex.
    pub fn to_c64(self) -> Complex<f64> {
        Complex::new(self.re.to_f64(), self.im.to_f64())
    }
    /// Complex conjugate.
    pub fn conj(self) -> Self {
        Cx::new(self.re, -self.im)
    }
    /// `exp(sign * 2 pi i j / n)`.
    pub fn root(j: u64, n: u64, sign: i32) -> Self {
        let (c, s) = R::unit_root(j, n);
        if sign < 0 {
            Cx::new(c, -s)
        } else {
            Cx::new(c, s)
        }
    }
    /// Multiplies by a real scalar.
    pub fn scale(self, k: R) -> Self {
        Cx::new(self.re * k, self.im * k)
    }
}

impl<R: RefFloat> Add for Cx<R> {
    type Output = Self;
    fn add(self, b: Self) -> Self {
        Cx::new(self.re + b.re, self.im + b.im)
    }
}

impl<R: RefFloat> Sub for Cx<R> {
    type Output = Self;
    fn sub(self, b: Self) -> Self {
        Cx::new(self.re - b.re, self.im - b.im)
    }
}

impl<R: RefFloat> Mul for Cx<R> {
    type Output = Self;
    fn mul(self, b: Self) -> Self {
        Cx::new(
            self.re * b.re - self.im * b.im,
            self.re * b.im + self.im * b.re,
        )
    }
}

/// Converts an `f64` complex slice exactly into the reference arithmetic.
pub fn lift<R: RefFloat>(x: &[Complex<f64>]) -> Vec<Cx<R>> {
    x.iter().map(|&c| Cx::from_c64(c)).collect()
}

/// Naive O(N^2) DFT. Twiddles are exact-reduced; accumulation is plain summation.
pub fn naive_dft<R: RefFloat>(x: &[Cx<R>], dir: Dir) -> Vec<Cx<R>> {
    let n = x.len();
    if n == 0 {
        return Vec::new();
    }
    let n64 = n as u64;
    let w: Vec<Cx<R>> = (0..n64).map(|j| Cx::root(j, n64, dir.sign())).collect();
    (0..n)
        .map(|k| {
            let mut acc = Cx::<R>::default();
            for (i, &xi) in x.iter().enumerate() {
                let e = ((i as u128 * k as u128) % n as u128) as usize;
                acc = acc + xi * w[e];
            }
            acc
        })
        .collect()
}

/// Largest prime handled by direct (naive) radix-p butterflies inside the
/// mixed-radix recursion. Larger prime factors use Bluestein.
const DIRECT_PRIME_LIMIT: usize = 13;

fn smallest_prime_factor(n: usize) -> usize {
    if n.is_multiple_of(2) {
        return 2;
    }
    let mut p = 3;
    while p * p <= n {
        if n.is_multiple_of(p) {
            return p;
        }
        p += 2;
    }
    n
}

/// Mixed-radix FFT (recursive decimation in time) with Bluestein for prime
/// factors above 13. Independent of every other FFT in the workspace.
pub fn fft<R: RefFloat>(x: &[Cx<R>], dir: Dir) -> Vec<Cx<R>> {
    let n = x.len();
    if n <= 1 {
        return x.to_vec();
    }
    let table = Table::new(n, dir.sign());
    let mut out = vec![Cx::default(); n];
    rec(x, 0, 1, n, &table, &mut out, dir.sign());
    out
}

/// Twiddle table `w[j] = exp(sign 2 pi i j / n)` for the top-level size; any
/// sub-size `m | n` reads it at stride `n / m`.
struct Table<R> {
    n: usize,
    w: Vec<Cx<R>>,
}

impl<R: RefFloat> Table<R> {
    fn new(n: usize, sign: i32) -> Self {
        let n64 = n as u64;
        Table {
            n,
            w: (0..n64).map(|j| Cx::root(j, n64, sign)).collect(),
        }
    }
    /// `exp(sign 2 pi i e / m)` for `m | self.n`.
    fn get(&self, e: usize, m: usize) -> Cx<R> {
        self.w[(e % m) * (self.n / m)]
    }
}

#[allow(clippy::too_many_arguments)]
fn rec<R: RefFloat>(
    x: &[Cx<R>],
    off: usize,
    stride: usize,
    n: usize,
    t: &Table<R>,
    out: &mut [Cx<R>],
    sign: i32,
) {
    if n == 1 {
        out[0] = x[off];
        return;
    }
    let p = if n.is_multiple_of(4) {
        4
    } else {
        smallest_prime_factor(n)
    };
    if p == n && p > DIRECT_PRIME_LIMIT {
        let sub: Vec<Cx<R>> = (0..n).map(|i| x[off + i * stride]).collect();
        let y = bluestein(&sub, sign);
        out.copy_from_slice(&y);
        return;
    }
    let m = n / p;
    let mut tmp = vec![Cx::<R>::default(); n];
    for r in 0..p {
        rec(
            x,
            off + r * stride,
            stride * p,
            m,
            t,
            &mut tmp[r * m..(r + 1) * m],
            sign,
        );
    }
    let mut v = vec![Cx::<R>::default(); p];
    for k in 0..m {
        for r in 0..p {
            let a = tmp[r * m + k];
            v[r] = if r == 0 { a } else { a * t.get(r * k, n) };
        }
        match p {
            2 => {
                out[k] = v[0] + v[1];
                out[k + m] = v[0] - v[1];
            }
            4 => {
                // DFT-4 with exact +-1, +-i.
                let a02 = v[0] + v[2];
                let s02 = v[0] - v[2];
                let a13 = v[1] + v[3];
                let s13 = v[1] - v[3];
                // i * sign * s13
                let rot = if sign < 0 {
                    Cx::new(s13.im, -s13.re)
                } else {
                    Cx::new(-s13.im, s13.re)
                };
                out[k] = a02 + a13;
                out[k + m] = s02 + rot;
                out[k + 2 * m] = a02 - a13;
                out[k + 3 * m] = s02 - rot;
            }
            _ => {
                for q in 0..p {
                    let mut acc = v[0];
                    for (r, &vr) in v.iter().enumerate().skip(1) {
                        acc = acc + vr * t.get(r * q * m, n);
                    }
                    out[k + q * m] = acc;
                }
            }
        }
    }
}

/// Bluestein's chirp-z algorithm for an arbitrary length, using the
/// power-of-two mixed-radix FFT for the convolution.
fn bluestein<R: RefFloat>(x: &[Cx<R>], sign: i32) -> Vec<Cx<R>> {
    let n = x.len();
    let m = (2 * n - 1).next_power_of_two();
    let two_n = 2 * n as u64;
    // chirp c_j = exp(sign * pi i j^2 / n) = root(j^2 mod 2n, 2n)
    let chirp: Vec<Cx<R>> = (0..n as u64)
        .map(|j| {
            let e = ((u128::from(j) * u128::from(j)) % u128::from(two_n)) as u64;
            Cx::root(e, two_n, sign)
        })
        .collect();
    let mut a = vec![Cx::<R>::default(); m];
    for j in 0..n {
        a[j] = x[j] * chirp[j];
    }
    let mut b = vec![Cx::<R>::default(); m];
    b[0] = chirp[0].conj();
    for j in 1..n {
        b[j] = chirp[j].conj();
        b[m - j] = chirp[j].conj();
    }
    let fa = fft(&a, Dir::Forward);
    let fb = fft(&b, Dir::Forward);
    let prod: Vec<Cx<R>> = fa.iter().zip(&fb).map(|(&p, &q)| p * q).collect();
    let conv = fft(&prod, Dir::Inverse);
    let inv_m = R::from_f64(1.0 / m as f64); // exact: m is a power of two
    (0..n).map(|k| chirp[k] * conv[k].scale(inv_m)).collect()
}

/// The best available reference for `x`: the double-double mixed-radix FFT.
pub fn reference_dd(x: &[Complex<f64>], dir: Dir) -> Vec<Cx<Dd>> {
    fft(&lift::<Dd>(x), dir)
}

/// A fast-ish independent `f64` reference (mixed-radix + Bluestein).
pub fn reference_f64(x: &[Complex<f64>], dir: Dir) -> Vec<Complex<f64>> {
    fft(&lift::<f64>(x), dir)
        .into_iter()
        .map(Cx::to_c64)
        .collect()
}

#[cfg(test)]
mod tests {
    use super::*;
    use crate::metrics::rel_l2_dd;
    use crate::signal::random_c64;

    fn check_dd(n: usize, dir: Dir) {
        let x = random_c64(n, 7 + n as u64);
        let xs = lift::<Dd>(&x);
        let a = naive_dft(&xs, dir);
        let b = fft(&xs, dir);
        let e = rel_l2_dd(&b, &a);
        assert!(e <= 1e-28, "dd n={n} dir={dir:?} err={e:e}");
    }

    fn check_f64(n: usize, dir: Dir) {
        let x = random_c64(n, 11 + n as u64);
        let a = naive_dft(&lift::<Dd>(&x), dir);
        let b: Vec<Cx<Dd>> = fft(&lift::<f64>(&x), dir)
            .into_iter()
            .map(|c| Cx::new(Dd::from_f64(c.re), Dd::from_f64(c.im)))
            .collect();
        let e = rel_l2_dd(&b, &a);
        let lg = (n.max(2) as f64).log2();
        let bound = 4.0 * f64::EPSILON * lg;
        assert!(e <= bound, "f64 n={n} err={e:e} bound={bound:e}");
    }

    #[test]
    fn mixed_radix_matches_naive_small() {
        for n in 1..=64 {
            check_dd(n, Dir::Forward);
            check_dd(n, Dir::Inverse);
            check_f64(n, Dir::Forward);
        }
    }

    #[test]
    fn mixed_radix_matches_naive_selected() {
        for n in [
            97, 127, 128, 210, 243, 256, 257, 343, 500, 504, 512, 625, 1000, 1024, 1331, 2018, 2048,
        ] {
            check_dd(n, Dir::Forward);
            check_f64(n, Dir::Forward);
            check_f64(n, Dir::Inverse);
        }
    }

    #[test]
    fn impulse_and_roundtrip() {
        let n = 360;
        let mut x = vec![Complex::new(0.0, 0.0); n];
        x[1] = Complex::new(1.0, 0.0);
        let y = reference_f64(&x, Dir::Forward);
        for (k, v) in y.iter().enumerate() {
            let a = -2.0 * core::f64::consts::PI * k as f64 / n as f64;
            assert!((v.re - a.cos()).abs() < 1e-13 && (v.im - a.sin()).abs() < 1e-13);
        }
        let z = reference_f64(&y, Dir::Inverse);
        for (k, v) in z.iter().enumerate() {
            let expect = if k == 1 { n as f64 } else { 0.0 };
            assert!((v.re - expect).abs() < 1e-10 && v.im.abs() < 1e-10);
        }
    }
}

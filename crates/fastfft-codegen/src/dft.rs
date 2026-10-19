//! DFT graph construction at the complex level (forward direction).

use crate::dag::{Dag, Graph, Id};
use fastfft_testkit::Dd;

#[derive(Clone, Copy, Debug)]
pub struct Cx {
    pub re: Id,
    pub im: Id,
}

/// `exp(-2 pi i k / n)` as (cos, -sin), exact angle reduction in double-double.
pub fn omega(k: usize, n: usize) -> (f64, f64) {
    let (c, s) = Dd::unit_root(k as u64, n as u64);
    (c.to_f64(), -s.to_f64())
}

pub fn cadd(d: &mut Dag, a: Cx, b: Cx) -> Cx {
    Cx {
        re: d.add(a.re, b.re),
        im: d.add(a.im, b.im),
    }
}

pub fn csub(d: &mut Dag, a: Cx, b: Cx) -> Cx {
    Cx {
        re: d.sub(a.re, b.re),
        im: d.sub(a.im, b.im),
    }
}

/// a * (-i)
pub fn cneg_i(d: &mut Dag, a: Cx) -> Cx {
    Cx {
        re: a.im,
        im: d.neg(a.re),
    }
}

/// a * (+i)
pub fn cpos_i(d: &mut Dag, a: Cx) -> Cx {
    Cx {
        re: d.neg(a.im),
        im: a.re,
    }
}

const EPS: f64 = 1e-15;

/// a * (c + i s) for a constant.
pub fn cmul_const(d: &mut Dag, a: Cx, c: f64, s: f64) -> Cx {
    if s.abs() < EPS {
        return Cx {
            re: d.mul_c(a.re, c),
            im: d.mul_c(a.im, c),
        };
    }
    if c.abs() < EPS {
        // a * i s
        let t = cpos_i(d, a);
        return Cx {
            re: d.mul_c(t.re, s),
            im: d.mul_c(t.im, s),
        };
    }
    if (c.abs() - s.abs()).abs() < EPS {
        // a * h(sc + i ss): two adds and two scalings
        let h = c.abs();
        let sum = d.add(a.re, a.im);
        let (re, im) = match (c > 0.0, s > 0.0) {
            (true, true) => (d.sub(a.re, a.im), sum),
            (true, false) => (sum, d.sub(a.im, a.re)),
            (false, true) => (d.neg(sum), d.sub(a.re, a.im)),
            (false, false) => (d.sub(a.im, a.re), d.neg(sum)),
        };
        return Cx {
            re: d.mul_c(re, h),
            im: d.mul_c(im, h),
        };
    }
    let rc = d.mul_c(a.re, c);
    let is = d.mul_c(a.im, s);
    let rs = d.mul_c(a.re, s);
    let ic = d.mul_c(a.im, c);
    Cx {
        re: d.sub(rc, is),
        im: d.add(rs, ic),
    }
}

/// a * w for a variable twiddle w.
pub fn cmul_var(d: &mut Dag, a: Cx, w: Cx) -> Cx {
    let rr = d.mul(a.re, w.re);
    let ii = d.mul(a.im, w.im);
    let ri = d.mul(a.re, w.im);
    let ir = d.mul(a.im, w.re);
    Cx {
        re: d.sub(rr, ii),
        im: d.add(ri, ir),
    }
}

fn is_prime(n: usize) -> bool {
    n >= 2
        && (2..n)
            .take_while(|p| p * p <= n)
            .all(|p| !n.is_multiple_of(p))
}

fn gcd(a: usize, b: usize) -> usize {
    if b == 0 { a } else { gcd(b, a % b) }
}

/// Modular inverse of a mod m (gcd = 1).
fn inv_mod(a: usize, m: usize) -> usize {
    (1..m).find(|x| (a * x) % m == 1).unwrap_or(0)
}

/// Forward DFT of `x`.
pub fn dft(d: &mut Dag, x: &[Cx]) -> Vec<Cx> {
    let n = x.len();
    match n {
        0 | 1 => x.to_vec(),
        2 => vec![cadd(d, x[0], x[1]), csub(d, x[0], x[1])],
        _ if n.is_power_of_two() => split_radix(d, x),
        _ if is_prime(n) => prime(d, x),
        _ => {
            // prefer a coprime split (prime factor algorithm, no twiddles)
            let mut best = None;
            for n1 in 2..n {
                if n.is_multiple_of(n1) {
                    let n2 = n / n1;
                    if gcd(n1, n2) == 1 {
                        best = Some((n1, n2));
                        break;
                    }
                }
            }
            match best {
                Some((n1, n2)) => pfa(d, x, n1, n2),
                None => {
                    let p = (2..n).find(|p| n.is_multiple_of(*p)).expect("composite");
                    ct(d, x, p, n / p)
                }
            }
        }
    }
}

fn split_radix(d: &mut Dag, x: &[Cx]) -> Vec<Cx> {
    let n = x.len();
    let u_in: Vec<Cx> = x.iter().step_by(2).copied().collect();
    let z_in: Vec<Cx> = x.iter().skip(1).step_by(4).copied().collect();
    let zp_in: Vec<Cx> = x.iter().skip(3).step_by(4).copied().collect();
    let u = dft(d, &u_in);
    let z = dft(d, &z_in);
    let zp = dft(d, &zp_in);
    let mut out = vec![x[0]; n];
    let q = n / 4;
    for k in 0..q {
        let (c1, s1) = omega(k, n);
        let (c3, s3) = omega(3 * k, n);
        let a = cmul_const(d, z[k], c1, s1);
        let b = cmul_const(d, zp[k], c3, s3);
        let s = cadd(d, a, b);
        let t = csub(d, a, b);
        out[k] = cadd(d, u[k], s);
        out[k + 2 * q] = csub(d, u[k], s);
        let mt = cneg_i(d, t);
        out[k + q] = cadd(d, u[k + q], mt);
        out[k + 3 * q] = csub(d, u[k + q], mt);
    }
    out
}

fn prime(d: &mut Dag, x: &[Cx]) -> Vec<Cx> {
    let p = x.len();
    let h = (p - 1) / 2;
    let mut s = Vec::with_capacity(h);
    let mut df = Vec::with_capacity(h);
    for k in 1..=h {
        s.push(cadd(d, x[k], x[p - k]));
        df.push(csub(d, x[k], x[p - k]));
    }
    let mut out = vec![x[0]; p];
    let mut x0 = x[0];
    for sk in &s {
        x0 = cadd(d, x0, *sk);
    }
    out[0] = x0;
    for j in 1..=h {
        // A = x0 + sum cos * s_k ; B = sum sin * d_k  (sin of +2 pi jk/p)
        let mut are = x[0].re;
        let mut aim = x[0].im;
        let mut bre: Option<Id> = None;
        let mut bim: Option<Id> = None;
        for k in 1..=h {
            let (c, ms) = omega(j * k, p);
            let sn = -ms; // sin(2 pi jk / p)
            let t = d.mul_c(s[k - 1].re, c);
            are = d.add(are, t);
            let t = d.mul_c(s[k - 1].im, c);
            aim = d.add(aim, t);
            let t = d.mul_c(df[k - 1].re, sn);
            bre = Some(match bre {
                None => t,
                Some(b) => d.add(b, t),
            });
            let t = d.mul_c(df[k - 1].im, sn);
            bim = Some(match bim {
                None => t,
                Some(b) => d.add(b, t),
            });
        }
        let (bre, bim) = (bre.expect("h>=1"), bim.expect("h>=1"));
        // X_j = A - i B = (A.re + B.im, A.im - B.re); X_{p-j} = A + i B
        out[j] = Cx {
            re: d.add(are, bim),
            im: d.sub(aim, bre),
        };
        out[p - j] = Cx {
            re: d.sub(are, bim),
            im: d.add(aim, bre),
        };
    }
    out
}

/// Good-Thomas prime factor algorithm, gcd(n1, n2) = 1.
fn pfa(d: &mut Dag, x: &[Cx], n1: usize, n2: usize) -> Vec<Cx> {
    let n = n1 * n2;
    // Y_a = DFT_n2 over b of x[(a n2 + b n1) mod n]
    let mut y = Vec::with_capacity(n1);
    for a in 0..n1 {
        let col: Vec<Cx> = (0..n2).map(|b| x[(a * n2 + b * n1) % n]).collect();
        y.push(dft(d, &col));
    }
    let e1 = n2 * inv_mod(n2 % n1, n1); // ≡ 1 mod n1, ≡ 0 mod n2
    let e2 = n1 * inv_mod(n1 % n2, n2); // ≡ 0 mod n1, ≡ 1 mod n2
    let mut out = vec![x[0]; n];
    for k2 in 0..n2 {
        let row: Vec<Cx> = (0..n1).map(|a| y[a][k2]).collect();
        let z = dft(d, &row);
        for (k1, v) in z.into_iter().enumerate() {
            out[(k1 * e1 + k2 * e2) % n] = v;
        }
    }
    out
}

/// Cooley-Tukey with constant twiddles: n = n1 * n2, decimation by n1.
fn ct(d: &mut Dag, x: &[Cx], n1: usize, n2: usize) -> Vec<Cx> {
    let n = n1 * n2;
    let mut y = Vec::with_capacity(n1);
    for a in 0..n1 {
        let sub: Vec<Cx> = (0..n2).map(|b| x[a + n1 * b]).collect();
        y.push(dft(d, &sub));
    }
    let mut out = vec![x[0]; n];
    for k2 in 0..n2 {
        let t: Vec<Cx> = (0..n1)
            .map(|a| {
                let (c, s) = omega(a * k2, n);
                cmul_const(d, y[a][k2], c, s)
            })
            .collect();
        let z = dft(d, &t);
        for (k1, v) in z.into_iter().enumerate() {
            out[k2 + n2 * k1] = v;
        }
    }
    out
}

/// Codelet flavours.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum Kind {
    /// No twiddles.
    Notw,
    /// DIT: inputs 1..r multiplied by variable twiddles before the DFT.
    Tw,
}

/// Builds and optimizes the graph of a size-`r` codelet.
pub fn build(r: usize, kind: Kind, balance: bool) -> Graph {
    let mut d = Dag::new();
    let mut x: Vec<Cx> = (0..r)
        .map(|j| Cx {
            re: d.input(2 * j),
            im: d.input(2 * j + 1),
        })
        .collect();
    if kind == Kind::Tw {
        for (j, xj) in x.iter_mut().enumerate().skip(1) {
            let w = Cx {
                re: d.tw(2 * (j - 1)),
                im: d.tw(2 * (j - 1) + 1),
            };
            *xj = cmul_var(&mut d, *xj, w);
        }
    }
    let y = dft(&mut d, &x);
    let outputs = y.iter().flat_map(|c| [c.re, c.im]).collect();
    let mut g = Graph { dag: d, outputs };
    g.compact();
    g.fuse_fma();
    if balance {
        g.distribute_products();
        g.balance_with_one(0.5);
    }
    g
}

/// Max error of the graph against a naive f64 DFT on pseudo-random data.
pub fn verify(g: &Graph, r: usize, kind: Kind) -> f64 {
    let mut seed = 0x1234_5678_9abc_def0u64 ^ (r as u64 * 7919);
    let mut rnd = || {
        seed ^= seed << 13;
        seed ^= seed >> 7;
        seed ^= seed << 17;
        (seed >> 11) as f64 / (1u64 << 53) as f64 * 2.0 - 1.0
    };
    let mut worst = 0.0f64;
    for _ in 0..8 {
        let input: Vec<f64> = (0..2 * r).map(|_| rnd()).collect();
        let tw: Vec<f64> = (0..2 * r.saturating_sub(1)).map(|_| rnd()).collect();
        let vals = g.dag.eval(&input, &tw);
        // reference
        let xs: Vec<(f64, f64)> = (0..r)
            .map(|j| {
                let (a, b) = (input[2 * j], input[2 * j + 1]);
                if kind == Kind::Tw && j > 0 {
                    let (c, s) = (tw[2 * (j - 1)], tw[2 * (j - 1) + 1]);
                    (a * c - b * s, a * s + b * c)
                } else {
                    (a, b)
                }
            })
            .collect();
        let mut scale = 0.0f64;
        for k in 0..r {
            let (mut re, mut im) = (0.0, 0.0);
            for (j, &(a, b)) in xs.iter().enumerate() {
                let (c, s) = omega(j * k, r);
                re += a * c - b * s;
                im += a * s + b * c;
            }
            scale = scale.max(re.abs()).max(im.abs());
            let got_re = vals[g.outputs[2 * k]];
            let got_im = vals[g.outputs[2 * k + 1]];
            worst = worst.max((got_re - re).abs()).max((got_im - im).abs());
        }
        worst /= scale.max(1e-300);
    }
    worst
}

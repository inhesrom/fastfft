//! Property tests: linearity, Parseval, impulse/shift theorems, roundtrip.

use fastfft::num_complex::Complex;
use fastfft::{FftDirection, FftPlanner};
use proptest::prelude::*;

fn fft(n: usize, dir: FftDirection, x: &[Complex<f64>]) -> Vec<Complex<f64>> {
    let mut p = FftPlanner::<f64>::new();
    let f = p.plan_fft(n, dir);
    let mut b = x.to_vec();
    f.process(&mut b);
    b
}

fn cvec(n: usize) -> impl Strategy<Value = Vec<Complex<f64>>> {
    proptest::collection::vec(
        (-1.0f64..1.0, -1.0f64..1.0).prop_map(|(a, b)| Complex::new(a, b)),
        n,
    )
}

fn size() -> impl Strategy<Value = usize> {
    prop_oneof![
        1usize..=64,
        65usize..=600,
        Just(1024usize),
        Just(1031usize),
        Just(4096usize)
    ]
}

fn close(a: &[Complex<f64>], b: &[Complex<f64>], tol: f64) -> bool {
    let scale = b.iter().map(|c| c.norm()).fold(1.0, f64::max);
    a.iter().zip(b).all(|(x, y)| (x - y).norm() <= tol * scale)
}

proptest! {
    #![proptest_config(ProptestConfig::with_cases(48))]

    #[test]
    fn roundtrip(x in size().prop_flat_map(cvec)) {
        let n = x.len();
        let y = fft(n, FftDirection::Forward, &x);
        let z = fft(n, FftDirection::Inverse, &y);
        let back: Vec<Complex<f64>> = z.iter().map(|c| c / n as f64).collect();
        prop_assert!(close(&back, &x, 1e-12));
    }

    #[test]
    fn linearity(n in size(), seed in 0u64..1000) {
        let x = fastfft_testkit::random_c64(n, seed);
        let y = fastfft_testkit::random_c64(n, seed + 1);
        let a = Complex::new(0.3, -1.2);
        let sum: Vec<Complex<f64>> = x.iter().zip(&y).map(|(p, q)| a * p + q).collect();
        let fs = fft(n, FftDirection::Forward, &sum);
        let fx = fft(n, FftDirection::Forward, &x);
        let fy = fft(n, FftDirection::Forward, &y);
        let expect: Vec<Complex<f64>> = fx.iter().zip(&fy).map(|(p, q)| a * p + q).collect();
        prop_assert!(close(&fs, &expect, 1e-12));
    }

    #[test]
    fn parseval(x in size().prop_flat_map(cvec)) {
        let n = x.len();
        let y = fft(n, FftDirection::Forward, &x);
        let ex: f64 = x.iter().map(|c| c.norm_sqr()).sum();
        let ey: f64 = y.iter().map(|c| c.norm_sqr()).sum::<f64>() / n as f64;
        prop_assert!((ex - ey).abs() <= 1e-11 * ex.max(1.0));
    }

    #[test]
    fn impulse_and_shift(n in 1usize..=700, shift in 0usize..700) {
        let s = shift % n;
        let mut x = vec![Complex::new(0.0, 0.0); n];
        x[s] = Complex::new(1.0, 0.0);
        let y = fft(n, FftDirection::Forward, &x);
        for (k, v) in y.iter().enumerate() {
            let a = -2.0 * std::f64::consts::PI * ((k * s) % n) as f64 / n as f64;
            prop_assert!((v - Complex::new(a.cos(), a.sin())).norm() < 1e-12, "n={} k={}", n, k);
        }
    }
}

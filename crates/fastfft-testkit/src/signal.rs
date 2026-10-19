//! Seeded test signals.

use num_complex::Complex;

/// SplitMix64: tiny, fast, well-distributed seeded generator.
#[derive(Clone, Debug)]
pub struct SplitMix64(u64);

impl SplitMix64 {
    /// Creates a generator from a seed.
    pub fn new(seed: u64) -> Self {
        SplitMix64(seed)
    }
    /// Next 64 random bits.
    pub fn next_u64(&mut self) -> u64 {
        self.0 = self.0.wrapping_add(0x9E37_79B9_7F4A_7C15);
        let mut z = self.0;
        z = (z ^ (z >> 30)).wrapping_mul(0xBF58_476D_1CE4_E5B9);
        z = (z ^ (z >> 27)).wrapping_mul(0x94D0_49BB_1331_11EB);
        z ^ (z >> 31)
    }
    /// Uniform in `[-1, 1)` with 53 random bits.
    pub fn next_f64(&mut self) -> f64 {
        let u = (self.next_u64() >> 11) as f64 * (1.0 / (1u64 << 53) as f64);
        2.0 * u - 1.0
    }
    /// Standard normal via Box-Muller.
    pub fn next_gauss(&mut self) -> f64 {
        let u1 = ((self.next_u64() >> 11) as f64 + 0.5) * (1.0 / (1u64 << 53) as f64);
        let u2 = (self.next_u64() >> 11) as f64 * (1.0 / (1u64 << 53) as f64);
        (-2.0 * u1.ln()).sqrt() * (2.0 * core::f64::consts::PI * u2).cos()
    }
}

/// `n` complex values with re/im uniform in `[-1, 1)`.
pub fn random_c64(n: usize, seed: u64) -> Vec<Complex<f64>> {
    let mut g = SplitMix64::new(seed);
    (0..n)
        .map(|_| {
            let re = g.next_f64();
            Complex::new(re, g.next_f64())
        })
        .collect()
}

/// Like [`random_c64`], rounded to `f32`.
pub fn random_c32(n: usize, seed: u64) -> Vec<Complex<f32>> {
    random_c64(n, seed)
        .into_iter()
        .map(|c| Complex::new(c.re as f32, c.im as f32))
        .collect()
}

/// Widens an `f32` complex slice exactly.
pub fn widen(x: &[Complex<f32>]) -> Vec<Complex<f64>> {
    x.iter()
        .map(|c| Complex::new(f64::from(c.re), f64::from(c.im)))
        .collect()
}

/// A realistic interleaved I/Q test stream: Gaussian noise plus a few tones,
/// scaled to stay bounded (peak well under 1.0 per component).
pub fn iq_stream(n: usize, seed: u64) -> Vec<Complex<f32>> {
    let mut g = SplitMix64::new(seed);
    let tones = [
        (0.013_f64, 0.30_f64),
        (0.127, 0.10),
        (-0.211, 0.05),
        (0.377, 0.02),
    ];
    let mut phases = [0.0f64; 4];
    (0..n)
        .map(|_| {
            let mut re = 0.05 * g.next_gauss();
            let mut im = 0.05 * g.next_gauss();
            for (p, &(f, a)) in phases.iter_mut().zip(&tones) {
                re += a * p.cos();
                im += a * p.sin();
                *p += 2.0 * core::f64::consts::PI * f;
                if *p > core::f64::consts::PI {
                    *p -= 2.0 * core::f64::consts::PI;
                } else if *p < -core::f64::consts::PI {
                    *p += 2.0 * core::f64::consts::PI;
                }
            }
            Complex::new(re as f32, im as f32)
        })
        .collect()
}

//! Accuracy sweep (release mode recommended): every N from 1 to 4096 and
//! selected larger sizes, f32 and f64, both directions, against the
//! double-double reference, within the fast-path / Bluestein bounds and
//! within 1.5x rustfft's error + 1 eps.
//!
//! `FASTFFT_TEST_QUICK=1` shrinks the sweep (SDE / Miri CI).

use fastfft::num_complex::Complex;
use fastfft::{FftDirection, FftPlanner};
use fastfft_testkit::metrics::{ToDd, bluestein_bound_eps, fast_path_bound_eps};
use fastfft_testkit::{Dir, error_vs_dd, error_vs_f64, random_c64, reference_dd};

fn quick() -> bool {
    std::env::var_os("FASTFFT_TEST_QUICK").is_some()
}

fn sizes() -> Vec<usize> {
    if quick() {
        let mut v: Vec<usize> = (1..=64).collect();
        v.extend([97, 128, 243, 256, 1000, 1024, 2048, 4096]);
        v
    } else {
        let mut v: Vec<usize> = (1..=4096).collect();
        for k in 13..=22 {
            v.push(1 << k);
        }
        v.extend([
            4725, 10368, 27000, 48000, 65537, 75600, 96000, 131071, 165375,
        ]);
        v
    }
}

fn bluestein_m(desc: &str) -> Option<usize> {
    let i = desc.find(" m=")?;
    desc[i + 3..].split(' ').next()?.parse().ok()
}

fn run<T>(eps: f64, lengths: &[usize])
where
    T: fastfft::FftNum + rustfft::FftNum + ToDd,
{
    let mut ours = FftPlanner::<T>::new();
    let mut theirs = rustfft::FftPlanner::<T>::new();
    let mut worst: (f64, usize) = (0.0, 0);
    for &n in lengths {
        // Do not retain all large plans while also holding a double-double
        // reference. Each size is an independent accuracy check.
        if n >= 1 << 19 {
            ours = FftPlanner::<T>::new();
            theirs = rustfft::FftPlanner::<T>::new();
        }
        let x64 = random_c64(n, 1234 + n as u64);
        let x: Vec<Complex<T>> = x64
            .iter()
            .map(|c| Complex::new(T::from_f64(c.re).unwrap(), T::from_f64(c.im).unwrap()))
            .collect();
        let xw: Vec<Complex<f64>> = x
            .iter()
            .map(|c| Complex::new(c.re.to_f64().unwrap(), c.im.to_f64().unwrap()))
            .collect();
        for (dir, tdir) in [
            (FftDirection::Forward, Dir::Forward),
            (FftDirection::Inverse, Dir::Inverse),
        ] {
            if quick() && dir == FftDirection::Inverse && n > 64 {
                continue;
            }
            let r = reference_dd(&xw, tdir);
            let f = ours.plan_fft(n, dir);
            let mut b = x.clone();
            f.process(&mut b);
            let e = error_vs_dd(&b, &r).rel_l2 / eps;
            let desc = ours.describe_plan(n, dir);
            let bound = match bluestein_m(&desc) {
                Some(m) => bluestein_bound_eps(m),
                None => fast_path_bound_eps(n),
            };
            let rf = match dir {
                FftDirection::Forward => theirs.plan_fft_forward(n),
                FftDirection::Inverse => theirs.plan_fft_inverse(n),
            };
            let mut rb = x.clone();
            rf.process(&mut rb);
            let er = error_vs_dd(&rb, &r).rel_l2 / eps;
            assert!(
                e <= bound && e <= 1.5 * er + 1.0,
                "n={n} {dir}: error {e:.2} eps (bound {bound:.1}, rustfft {er:.2}) plan: {desc}"
            );
            if e > worst.0 {
                worst = (e, n);
            }
        }
    }
    eprintln!(
        "checked {} lengths on {}; worst error {:.2} eps at n={}",
        lengths.len(),
        ours.isa(),
        worst.0,
        worst.1
    );
}

#[test]
fn sweep_f32() {
    run::<f32>(f64::from(f32::EPSILON), &sizes());
}

#[test]
fn sweep_f64() {
    run::<f64>(f64::EPSILON, &sizes());
}

/// The M4 upper bound uses RustFFT in f64 and a roundtrip, as the arena does.
/// Keep the full double-double comparison through 2^22 in the normal sweep.
fn large_roundtrip<T>()
where
    T: fastfft::FftNum + ToDd,
{
    assert!(!quick(), "M4 validation requires the full size range");
    for n in [1 << 20, 1 << 22, 1 << 24] {
        let input: Vec<_> = random_c64(n, 901 + n as u64)
            .into_iter()
            .map(|z| Complex::new(T::from_f64(z.re).unwrap(), T::from_f64(z.im).unwrap()))
            .collect();
        let widened: Vec<_> = input
            .iter()
            .map(|z| Complex::new(z.re.to_f64().unwrap(), z.im.to_f64().unwrap()))
            .collect();
        let mut planner = FftPlanner::<T>::new();
        let eps = T::epsilon().to_f64().unwrap();
        for dir in [FftDirection::Forward, FftDirection::Inverse] {
            let fft = planner.plan_fft(n, dir);
            let mut reference = widened.clone();
            {
                let mut rustfft = rustfft::FftPlanner::<f64>::new();
                let rdir = if dir == FftDirection::Forward {
                    rustfft::FftDirection::Forward
                } else {
                    rustfft::FftDirection::Inverse
                };
                rustfft.plan_fft(n, rdir).process(&mut reference);
            }
            let mut output = input.clone();
            let mut scratch =
                vec![Complex::new(T::zero(), T::zero()); fft.get_inplace_scratch_len()];
            fft.process_with_scratch(&mut output, &mut scratch);
            let error = error_vs_f64(&output, &reference).rel_l2 / eps;
            assert!(
                error.is_finite() && error <= fast_path_bound_eps(n),
                "n={n} {dir}: f64 reference error {error:.2} eps"
            );
            drop(reference);

            let opposite = planner.plan_fft(n, dir.opposite_direction());
            scratch.resize(
                opposite.get_inplace_scratch_len(),
                Complex::new(T::zero(), T::zero()),
            );
            opposite.process_with_scratch(&mut output, &mut scratch);
            let scale = T::from_usize(n).unwrap();
            for z in &mut output {
                *z = *z / scale;
            }
            let roundtrip = error_vs_f64(&output, &widened).rel_l2 / eps;
            assert!(
                roundtrip.is_finite() && roundtrip <= 2.0 * fast_path_bound_eps(n),
                "n={n} {dir}: roundtrip error {roundtrip:.2} eps"
            );
            eprintln!("n={n} {dir}: reference {error:.2} eps, roundtrip {roundtrip:.2} eps");
        }
    }
}

#[test]
#[ignore = "M4 upper-bound check; run in release mode with --test-threads=1"]
fn m4_large_roundtrip_f32() {
    large_roundtrip::<f32>();
}

#[test]
#[ignore = "M4 upper-bound check; run in release mode with --test-threads=1"]
fn m4_large_roundtrip_f64() {
    large_roundtrip::<f64>();
}

/// Every 13-smooth length through the provisional Stockham/FourStep
/// boundary. Run explicitly with each FASTFFT_ISA_CAP for the M3 checkpoint:
/// `cargo test -p fastfft --release --test accuracy m3_smooth -- --ignored --nocapture`.
fn m3_smooth_sizes() -> Vec<usize> {
    (1..=32768)
        .filter(|&n| {
            let mut rest = n;
            for p in [2, 3, 5, 7, 11, 13] {
                while rest % p == 0 {
                    rest /= p;
                }
            }
            rest == 1
        })
        .collect()
}

#[test]
#[ignore = "exhaustive M3 checkpoint; run once per ISA cap in release mode"]
fn m3_smooth_f32() {
    assert!(
        !quick(),
        "M3 validation requires both directions at every length"
    );
    run::<f32>(f64::from(f32::EPSILON), &m3_smooth_sizes());
}

#[test]
#[ignore = "exhaustive M3 checkpoint; run once per ISA cap in release mode"]
fn m3_smooth_f64() {
    assert!(
        !quick(),
        "M3 validation requires both directions at every length"
    );
    run::<f64>(f64::EPSILON, &m3_smooth_sizes());
}

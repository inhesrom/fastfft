//! Real-world pipeline scenarios: spectrogram and overlap-save filtering.
//! The windowing, filtering and magnitude code is shared by every library;
//! only the FFT calls differ.

use crate::adapters::{ArenaFloat, Runner};
use crate::buffers::{AlignedVec, Buffers};
use crate::cell::{LibResult, Verify, panic_msg, plan_all};
use crate::spec::{CellSpec, Direction, Placement, Profile, Scenario};
use crate::timing::{Stats, turn, warmup_and_calibrate};
use fastfft_testkit::{Dir, reference_f64};
use num_complex::Complex;
use std::time::Duration;

/// Bytes of I/Q data processed by the spectrogram scenario.
pub const SPECTROGRAM_BYTES: usize = 256 << 20;
/// Bytes of I/Q data processed by the overlap-save scenario.
pub const OVERLAP_SAVE_BYTES: usize = 64 << 20;
/// FIR length of the overlap-save scenario.
pub const TAPS: usize = 1025;

/// A library prepared for a scenario. Sequential libraries use the same
/// caller buffers, including scratch, just like ordinary arena cells.
struct Lib<T: ArenaFloat> {
    fwd: Box<dyn Runner<T>>,
    inv: Option<Box<dyn Runner<T>>>,
    split: bool,
}

impl<T: ArenaFloat> Lib<T> {
    fn new(
        lib: &str,
        mut fwd: Box<dyn Runner<T>>,
        need_inverse: bool,
        prec_cell: &CellSpec,
        bufs: &mut Buffers<T>,
    ) -> Result<Self, String> {
        let mut cell = prec_cell.clone();
        cell.placement = Placement::InPlace;
        cell.batch = 1;
        cell.direction = Direction::Forward;
        let split = fwd.split_arrays().is_some();
        let inv = if need_inverse {
            if split {
                None // split runners flip direction in place (see `inverse`)
            } else {
                cell.direction = Direction::Inverse;
                Some(T::make_runner(lib, &cell, bufs)?)
            }
        } else {
            None
        };
        fwd.zero(bufs);
        Ok(Lib { fwd, inv, split })
    }

    fn inv_scale(&self) -> f64 {
        match &self.inv {
            Some(i) => i.output_scale(),
            // Split libraries run the inverse as conj(FFT(conj(.))) (unnormalized).
            None => 1.0,
        }
    }

    fn forward(&mut self, bufs: &mut Buffers<T>) {
        self.fwd.run(bufs);
    }

    fn inverse(&mut self, bufs: &mut Buffers<T>) {
        if let Some(i) = self.inv.as_mut() {
            i.run(bufs);
        } else {
            // Split layout: conj(FFT(conj(x))) == N * normalized inverse.
            // phastft's inverse normalizes; we use its forward with conjugation
            // folded into the (shared) multiply step instead (see overlap_save).
            self.fwd.run(bufs);
        }
    }
}

fn hann<T: ArenaFloat>(n: usize) -> Vec<T> {
    (0..n)
        .map(|i| {
            let x = (core::f64::consts::PI * i as f64 / n as f64).sin();
            T::lit(x * x)
        })
        .collect()
}

fn stream<T: ArenaFloat>(samples: usize, seed: u64) -> AlignedVec<Complex<T>> {
    let mut v = AlignedVec::<Complex<T>>::zeroed(samples, 0);
    let s = fastfft_testkit::signal::iq_stream(samples, seed);
    for (d, c) in v.as_mut_slice().iter_mut().zip(s) {
        *d = Complex::new(T::lit(f64::from(c.re)), T::lit(f64::from(c.im)));
    }
    v
}

/// One full spectrogram pass. Returns nothing; writes rows into `out`.
fn spectrogram_pass<T: ArenaFloat>(
    lib: &mut Lib<T>,
    bufs: &mut Buffers<T>,
    x: &[Complex<T>],
    win: &[T],
    out: &mut [T],
    rows: usize,
) {
    let n = win.len();
    for r in 0..rows {
        let src = &x[r * n..(r + 1) * n];
        let row = &mut out[r * n..(r + 1) * n];
        if lib.split {
            let (re, im) = lib.fwd.split_arrays().expect("split");
            for i in 0..n {
                re[i] = src[i].re * win[i];
                im[i] = src[i].im * win[i];
            }
            lib.forward(bufs);
            let (re, im) = lib.fwd.split_arrays().expect("split");
            for i in 0..n {
                row[i] = re[i] * re[i] + im[i] * im[i];
            }
        } else {
            let w = bufs.input.as_mut_slice();
            for i in 0..n {
                w[i] = Complex::new(src[i].re * win[i], src[i].im * win[i]);
            }
            lib.forward(bufs);
            let w = bufs.input.as_slice();
            for i in 0..n {
                row[i] = w[i].re * w[i].re + w[i].im * w[i].im;
            }
        }
    }
}

/// One full overlap-save pass over `xpad` (P-1 leading zeros + stream).
fn overlap_save_pass<T: ArenaFloat>(
    lib: &mut Lib<T>,
    bufs: &mut Buffers<T>,
    xpad: &[Complex<T>],
    h: &[Complex<T>],
    y: &mut [Complex<T>],
) {
    let n = h.len();
    let step = n - (TAPS - 1);
    let blocks = y.len() / step;
    for b in 0..blocks {
        let src = &xpad[b * step..b * step + n];
        let dst = &mut y[b * step..(b + 1) * step];
        if lib.split {
            // Forward FFT, multiply by conj(H'), forward FFT again, conjugate:
            // conj(FFT(conj(X H))) = N * IFFT(X H); H' already carries 1/N.
            let (re, im) = lib.fwd.split_arrays().expect("split");
            for i in 0..n {
                re[i] = src[i].re;
                im[i] = src[i].im;
            }
            lib.forward(bufs);
            let (re, im) = lib.fwd.split_arrays().expect("split");
            for i in 0..n {
                let (a, bb) = (re[i], im[i]);
                // conj(X * H)
                re[i] = a * h[i].re - bb * h[i].im;
                im[i] = -(a * h[i].im + bb * h[i].re);
            }
            lib.inverse(bufs);
            let (re, im) = lib.fwd.split_arrays().expect("split");
            for i in 0..step {
                dst[i] = Complex::new(re[TAPS - 1 + i], -im[TAPS - 1 + i]);
            }
        } else {
            let w = bufs.input.as_mut_slice();
            w.copy_from_slice(src);
            lib.forward(bufs);
            let w = bufs.input.as_mut_slice();
            for i in 0..n {
                w[i] = w[i] * h[i];
            }
            lib.inverse(bufs);
            let w = bufs.input.as_slice();
            dst.copy_from_slice(&w[TAPS - 1..TAPS - 1 + step]);
        }
    }
}

/// Windowed-sinc low-pass FIR (cutoff 0.2 cycles/sample), Hann-windowed.
fn fir() -> Vec<f64> {
    let m = (TAPS - 1) as f64;
    (0..TAPS)
        .map(|i| {
            let t = i as f64 - m / 2.0;
            let sinc = if t == 0.0 {
                0.4
            } else {
                (2.0 * core::f64::consts::PI * 0.2 * t).sin() / (core::f64::consts::PI * t)
            };
            let w = (core::f64::consts::PI * i as f64 / m).sin().powi(2);
            sinc * w
        })
        .collect()
}

fn rel_err(a: &[f64], b: &[f64]) -> f64 {
    let num: f64 = a.iter().zip(b).map(|(x, y)| (x - y) * (x - y)).sum();
    let den: f64 = b.iter().map(|y| y * y).sum();
    (num / den.max(f64::MIN_POSITIVE)).sqrt()
}

pub fn run<T: ArenaFloat>(spec: &CellSpec, scenario: Scenario) -> Vec<LibResult> {
    let n = spec.n;
    let profile = Profile::by_name(&spec.profile).unwrap_or(Profile::QUICK);
    let elem = std::mem::size_of::<Complex<T>>();
    let mut bufs = Buffers::<T>::new(n, spec.misalign);
    let mut forward_spec = spec.clone();
    forward_spec.placement = Placement::InPlace;
    forward_spec.batch = 1;
    forward_spec.direction = Direction::Forward;
    let mut planned = plan_all::<T>(&forward_spec, &mut bufs);

    let mut results = Vec::new();
    let mut libs: Vec<Option<Lib<T>>> = Vec::new();
    for (res, runner) in planned.drain(..) {
        let mut res = res;
        let lib = if let Some(runner) = runner {
            match Lib::<T>::new(
                &res.lib,
                runner,
                scenario == Scenario::OverlapSave,
                &forward_spec,
                &mut bufs,
            ) {
                Ok(l) => {
                    // Describe the runners actually verified and timed,
                    // including overlap-save's inverse transform.
                    res.describe = l.fwd.describe();
                    if let Some(inverse) = l.inv.as_ref().and_then(|i| i.describe()) {
                        let description = res.describe.get_or_insert_with(String::new);
                        description.push_str(&format!(" inverse=[{inverse}]"));
                    }
                    Some(l)
                }
                Err(e) => {
                    res.status = "unsupported".into();
                    res.reason = Some(e);
                    None
                }
            }
        } else {
            None
        };
        results.push(res);
        libs.push(lib);
    }

    match scenario {
        Scenario::Spectrogram => {
            let samples = SPECTROGRAM_BYTES / elem;
            let rows = samples / n;
            let x = stream::<T>(samples, spec.seed);
            let win = hann::<T>(n);
            let mut out = AlignedVec::<T>::zeroed(rows * n, 0);
            // verification: first and last row vs reference
            let check_rows = [0usize, rows - 1];
            let refs: Vec<Vec<f64>> = check_rows
                .iter()
                .map(|&r| {
                    let xs: Vec<Complex<f64>> = (0..n)
                        .map(|i| {
                            let c = x.as_slice()[r * n + i];
                            let w = win[i].val();
                            Complex::new(c.re.val() * w, c.im.val() * w)
                        })
                        .collect();
                    reference_f64(&xs, Dir::Forward)
                        .iter()
                        .map(|c| c.norm_sqr())
                        .collect()
                })
                .collect();
            for (res, lib) in results.iter_mut().zip(libs.iter_mut()) {
                let Some(l) = lib.as_mut() else { continue };
                let outcome = std::panic::catch_unwind(std::panic::AssertUnwindSafe(|| {
                    spectrogram_pass(l, &mut bufs, x.as_slice(), &win, out.as_mut_slice(), rows);
                    let mut worst = 0.0f64;
                    for (k, &r) in check_rows.iter().enumerate() {
                        let got: Vec<f64> = out.as_slice()[r * n..(r + 1) * n]
                            .iter()
                            .map(|v| v.val())
                            .collect();
                        worst = worst.max(rel_err(&got, &refs[k]));
                    }
                    worst
                }));
                finish_verify(res, lib, outcome, spec.precision.eps(), n);
            }
            let mut f = |_: usize, l: &mut Lib<T>| {
                spectrogram_pass(l, &mut bufs, x.as_slice(), &win, out.as_mut_slice(), rows)
            };
            time_libs(&mut results, &mut libs, &mut f, &profile, (rows * n) as f64);
        }
        Scenario::OverlapSave => {
            let samples = OVERLAP_SAVE_BYTES / elem;
            let step = n - (TAPS - 1);
            let blocks = samples / step;
            let x = stream::<T>(blocks * step, spec.seed);
            let mut xpad = AlignedVec::<Complex<T>>::zeroed(blocks * step + TAPS - 1, 0);
            xpad.as_mut_slice()[TAPS - 1..].copy_from_slice(x.as_slice());
            let taps = fir();
            let mut hpad = vec![Complex::new(0.0, 0.0); n];
            for (i, &t) in taps.iter().enumerate() {
                hpad[i] = Complex::new(t, 0.0);
            }
            let hf = reference_f64(&hpad, Dir::Forward);
            // direct convolution of the first two blocks for verification
            let check = 2 * step;
            let direct: Vec<Complex<f64>> = (0..check)
                .map(|i| {
                    let mut acc = Complex::new(0.0, 0.0);
                    for (j, &t) in taps.iter().enumerate() {
                        if i >= j {
                            let c = x.as_slice()[i - j];
                            acc += Complex::new(c.re.val(), c.im.val()) * t;
                        }
                    }
                    acc
                })
                .collect();
            let mut y = AlignedVec::<Complex<T>>::zeroed(blocks * step, 0);
            let mut hs: Vec<Vec<Complex<T>>> = Vec::new();
            for (res, lib) in results.iter_mut().zip(libs.iter_mut()) {
                let Some(l) = lib.as_mut() else {
                    hs.push(Vec::new());
                    continue;
                };
                // Scale H so that inverse(X H') is the true convolution.
                let k = l.inv_scale() / n as f64;
                let h: Vec<Complex<T>> = hf
                    .iter()
                    .map(|c| Complex::new(T::lit(c.re * k), T::lit(c.im * k)))
                    .collect();
                let outcome = std::panic::catch_unwind(std::panic::AssertUnwindSafe(|| {
                    overlap_save_pass(l, &mut bufs, xpad.as_slice(), &h, y.as_mut_slice());
                    let got: Vec<f64> = y.as_slice()[..check]
                        .iter()
                        .flat_map(|c| [c.re.val(), c.im.val()])
                        .collect();
                    let want: Vec<f64> = direct.iter().flat_map(|c| [c.re, c.im]).collect();
                    rel_err(&got, &want)
                }));
                finish_verify(res, lib, outcome, spec.precision.eps(), n);
                hs.push(h);
            }
            let mut f = |i: usize, l: &mut Lib<T>| {
                overlap_save_pass(l, &mut bufs, xpad.as_slice(), &hs[i], y.as_mut_slice());
            };
            time_libs(
                &mut results,
                &mut libs,
                &mut f,
                &profile,
                (blocks * step) as f64,
            );
        }
    }
    results
}

fn finish_verify<T: ArenaFloat>(
    res: &mut LibResult,
    lib: &mut Option<Lib<T>>,
    outcome: std::thread::Result<f64>,
    eps: f64,
    n: usize,
) {
    match outcome {
        Ok(err) => {
            let e = err / eps;
            let passed = e.is_finite() && e <= 400.0 * ((n as f64).log2() + 1.0);
            res.verify = Some(Verify {
                method: "scenario-reference".into(),
                rel_l2_eps: e,
                max_eps: e,
                roundtrip_eps: None,
                passed,
                detail: None,
            });
            if !passed {
                res.status = "failed-verify".into();
                *lib = None;
            }
        }
        Err(p) => {
            res.status = "error".into();
            res.reason = Some(format!("panicked: {}", panic_msg(&p)));
            *lib = None;
        }
    }
}

fn time_libs<T: ArenaFloat>(
    results: &mut [LibResult],
    libs: &mut [Option<Lib<T>>],
    f: &mut dyn FnMut(usize, &mut Lib<T>),
    profile: &Profile,
    samples_per_pass: f64,
) {
    let active: Vec<usize> = (0..libs.len()).filter(|&i| libs[i].is_some()).collect();
    if active.is_empty() {
        return;
    }
    let mut samples: Vec<Vec<f64>> = vec![Vec::new(); libs.len()];
    // A pass takes tens of milliseconds: warm up with one pass, one pass per batch.
    for &i in &active {
        let l = libs[i].as_mut().expect("active");
        let _ = warmup_and_calibrate(
            &mut || f(i, l),
            Duration::from_millis(profile.warmup_ms),
            Duration::from_micros(1),
        );
    }
    for round in 0..profile.rounds {
        for j in 0..active.len() {
            let i = active[(j + round) % active.len()];
            let l = libs[i].as_mut().expect("active");
            turn(
                &mut || f(i, l),
                1,
                Duration::from_millis(profile.turn_ms),
                &mut samples[i],
            );
        }
    }
    for &i in &active {
        let st = Stats::from_samples(&samples[i]);
        let r = &mut results[i];
        r.msamples_per_s = Some(samples_per_pass / (st.best / 1e9) / 1e6);
        r.msamples_per_s_median = Some(samples_per_pass / (st.median / 1e9) / 1e6);
        r.time = Some(st);
        r.calls_per_batch = Some(1);
    }
}

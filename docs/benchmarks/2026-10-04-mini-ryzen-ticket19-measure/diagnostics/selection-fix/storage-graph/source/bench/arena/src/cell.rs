//! `run-cell`: plan, verify and time every library for one cell (runs in a
//! pinned child process).

use crate::adapters::{ArenaFloat, Runner};
use crate::buffers::Buffers;
use crate::spec::{CellSpec, Placement, Profile, TimingData};
use crate::timing::Stats;
use fastfft_testkit::{Cx, Dd, ErrorStats, error_vs_dd, error_vs_f64, reference_dd};
use num_complex::Complex;
use serde::{Deserialize, Serialize};
use std::time::{Duration, Instant};

/// Largest size verified against the double-double reference; above it the
/// check uses rustfft in f64 plus a forward/inverse roundtrip.
pub const DD_REFERENCE_MAX: usize = 1 << 20;

#[derive(Serialize, Deserialize, Clone, Debug, Default)]
pub struct Verify {
    pub method: String,
    pub rel_l2_eps: f64,
    pub max_eps: f64,
    /// Roundtrip error (only above `DD_REFERENCE_MAX`).
    #[serde(skip_serializing_if = "Option::is_none")]
    pub roundtrip_eps: Option<f64>,
    pub passed: bool,
    #[serde(skip_serializing_if = "Option::is_none")]
    pub detail: Option<String>,
}

#[derive(Serialize, Deserialize, Clone, Debug, Default)]
pub struct LibResult {
    pub lib: String,
    /// `ok`, `unsupported`, `failed-verify`, `error`.
    pub status: String,
    #[serde(skip_serializing_if = "Option::is_none")]
    pub reason: Option<String>,
    #[serde(default, skip_serializing_if = "Vec::is_empty")]
    pub notes: Vec<String>,
    #[serde(skip_serializing_if = "Option::is_none")]
    pub describe: Option<String>,
    /// Plan creation time (min over repetitions for cheap planners), ns.
    #[serde(skip_serializing_if = "Option::is_none")]
    pub plan_ns: Option<f64>,
    #[serde(skip_serializing_if = "Option::is_none")]
    pub verify: Option<Verify>,
    /// Per-transform time statistics, ns (per pass over the stream for scenarios).
    #[serde(skip_serializing_if = "Option::is_none")]
    pub time: Option<Stats>,
    /// Calls per timed batch.
    #[serde(skip_serializing_if = "Option::is_none")]
    pub calls_per_batch: Option<usize>,
    /// benchFFT mflops from the best time: 5 N log2 N / t(us).
    #[serde(skip_serializing_if = "Option::is_none")]
    pub mflops: Option<f64>,
    /// Scenario throughput from the best time, million samples per second.
    #[serde(skip_serializing_if = "Option::is_none")]
    pub msamples_per_s: Option<f64>,
    #[serde(skip_serializing_if = "Option::is_none")]
    pub msamples_per_s_median: Option<f64>,
    #[cfg(feature = "measure-diagnostics")]
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub sample_trace: Option<crate::measure_diagnostics::SampleTrace>,
}

#[derive(Serialize, Deserialize, Clone, Debug)]
pub struct CellResult {
    pub spec: CellSpec,
    pub key: String,
    pub cpu: Option<usize>,
    pub wall_s: f64,
    /// Core clock measured at the start and end of the cell (GHz).
    #[serde(default)]
    pub clock_ghz: Option<[f64; 2]>,
    /// Number of child processes merged into this result (best of each library).
    #[serde(default = "one")]
    pub procs: usize,
    pub results: Vec<LibResult>,
    /// Raw-process evidence only; no trace is assigned to a merged winner.
    #[cfg(feature = "measure-diagnostics")]
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub measure_diagnostic: Option<serde_json::Value>,
    #[cfg(feature = "measure-diagnostics")]
    #[serde(default, skip_serializing_if = "Vec::is_empty")]
    pub clock_probes: Vec<crate::clock_probe::ProbeEvidence>,
}

fn one() -> usize {
    1
}

pub fn mflops(n: usize, ns: f64) -> f64 {
    if n < 2 {
        return 0.0;
    }
    5.0 * n as f64 * (n as f64).log2() / (ns / 1000.0)
}

pub fn run_cell(spec: &CellSpec, cpu: Option<usize>) -> CellResult {
    let t0 = Instant::now();
    #[cfg(feature = "measure-diagnostics")]
    crate::clock_probe::clear_evidence();
    let clock0 = crate::clock_probe::measure_ghz();
    let results = match (spec.precision, spec.scenario) {
        (crate::spec::Precision::F32, None) => run_typed::<f32>(spec),
        (crate::spec::Precision::F64, None) => run_typed::<f64>(spec),
        (crate::spec::Precision::F32, Some(s)) => crate::scenarios::run::<f32>(spec, s),
        (crate::spec::Precision::F64, Some(s)) => crate::scenarios::run::<f64>(spec, s),
    };
    crate::fftw::save_wisdom();
    let clock1 = crate::clock_probe::measure_ghz();
    let wall_s = t0.elapsed().as_secs_f64();
    #[cfg(feature = "measure-diagnostics")]
    let measure_diagnostic = crate::measure_diagnostics::finish_deferred();
    CellResult {
        key: spec.key(),
        spec: spec.clone(),
        cpu,
        wall_s,
        clock_ghz: Some([clock0, clock1]),
        procs: 1,
        results,
        #[cfg(feature = "measure-diagnostics")]
        measure_diagnostic,
        #[cfg(feature = "measure-diagnostics")]
        clock_probes: crate::clock_probe::take_evidence(),
    }
}

struct Lib<T: ArenaFloat> {
    res: LibResult,
    runner: Option<Box<dyn Runner<T>>>,
}

fn is_cheap_planner(lib: &str) -> bool {
    lib == "rustfft" || (lib.starts_with("fastfft") && lib != "fastfft/measure")
}

/// A planned library: its result record and, when supported, its runner.
pub type Planned<T> = (LibResult, Option<Box<dyn Runner<T>>>);

/// Plans every library of the cell.
pub fn plan_all<T: ArenaFloat>(spec: &CellSpec, bufs: &mut Buffers<T>) -> Vec<Planned<T>> {
    // The parent sizes workspace before spawning this fresh process. Reserve
    // it before mode-specific planning changes allocator state. A selected
    // engine may grow it, and legacy direct run-cell specs size it lazily.
    bufs.reserve_scratch(spec.caller_scratch.unwrap_or(0));
    let mut out = Vec::new();
    for lib in &spec.libs {
        let mut res = LibResult {
            lib: lib.clone(),
            ..Default::default()
        };
        #[cfg(feature = "measure-diagnostics")]
        if spec.diagnostics.measure_trace && lib == "fastfft/measure" {
            if spec.diagnostics.measure_context {
                fastfft::tuning::begin_measure_trace_with_planning_control(
                    spec.diagnostics.process_index,
                )
                .expect("single selector capture");
            } else {
                fastfft::tuning::begin_measure_trace().expect("single selector capture");
            }
        }
        let t = Instant::now();
        let made = std::panic::catch_unwind(std::panic::AssertUnwindSafe(|| {
            T::make_runner(lib, spec, bufs)
        }));
        let plan_ns = t.elapsed().as_nanos() as f64;
        match made {
            Ok(Ok(r)) => {
                res.status = "ok".into();
                res.plan_ns = Some(plan_ns);
                res.notes = r.notes();
                res.describe = r.describe();
                out.push((res, Some(r)));
            }
            Ok(Err(reason)) => {
                res.status = "unsupported".into();
                res.reason = Some(reason);
                out.push((res, None));
            }
            Err(p) => {
                res.status = "error".into();
                res.reason = Some(format!("planner panicked: {}", panic_msg(&p)));
                out.push((res, None));
            }
        }
    }
    out
}

/// Complete planning statistics after every retained runner has been timed.
/// Throwaway plans must not change the next runner's allocation context.
pub fn finish_planning_samples<T: ArenaFloat>(
    spec: &CellSpec,
    bufs: &mut Buffers<T>,
    res: &mut LibResult,
) {
    let Some(mut best) = res.plan_ns else {
        return;
    };
    if !is_cheap_planner(&res.lib) {
        return;
    }
    for _ in 0..4 {
        let start = Instant::now();
        let made = std::panic::catch_unwind(std::panic::AssertUnwindSafe(|| {
            T::make_runner(&res.lib, spec, bufs)
        }));
        let elapsed = start.elapsed().as_nanos() as f64;
        match made {
            Ok(Ok(runner)) => {
                best = best.min(elapsed);
                drop(runner);
            }
            Ok(Err(reason)) => {
                res.status = "error".into();
                res.reason = Some(format!("secondary planning sample failed: {reason}"));
                break;
            }
            Err(panic) => {
                res.status = "error".into();
                res.reason = Some(format!(
                    "secondary planning sample panicked: {}",
                    panic_msg(&panic)
                ));
                break;
            }
        }
    }
    res.plan_ns = Some(best);
}

pub fn panic_msg(p: &Box<dyn std::any::Any + Send>) -> String {
    if let Some(s) = p.downcast_ref::<&str>() {
        (*s).to_string()
    } else if let Some(s) = p.downcast_ref::<String>() {
        s.clone()
    } else {
        "unknown panic".into()
    }
}

fn to_t<T: ArenaFloat>(x: &[Complex<f64>]) -> Vec<Complex<T>> {
    x.iter()
        .map(|c| Complex::new(T::lit(c.re), T::lit(c.im)))
        .collect()
}

fn widen<T: ArenaFloat>(x: &[Complex<T>]) -> Vec<Complex<f64>> {
    x.iter()
        .map(|c| Complex::new(c.re.val(), c.im.val()))
        .collect()
}

fn scale<T: ArenaFloat>(x: &mut [Complex<T>], k: f64) {
    if k != 1.0 {
        for c in x {
            *c = Complex::new(T::lit(c.re.val() * k), T::lit(c.im.val() * k));
        }
    }
}

/// Correctness tolerance of the arena check (not an accuracy gate).
fn tolerance_eps(n: usize) -> f64 {
    200.0 * ((n.max(2) as f64).log2() + 1.0)
}

/// Chunks verified in batch cells.
fn verified_chunks(batch: usize) -> Vec<usize> {
    let mut v: Vec<usize> = vec![0, 1, batch.saturating_sub(1)];
    v.retain(|&c| c < batch);
    v.dedup();
    v
}

fn verify_one<T: ArenaFloat>(
    spec: &CellSpec,
    runner: &mut dyn Runner<T>,
    bufs: &mut Buffers<T>,
    input: &[Complex<T>],
    refs: &[(usize, Vec<Cx<Dd>>)],
    big_ref: Option<&[Complex<f64>]>,
) -> Verify {
    let n = spec.n;
    let eps = spec.precision.eps();
    runner.zero(bufs);
    runner.load(bufs, input);
    runner.run(bufs);
    let mut out = runner.read(bufs);
    scale(&mut out, runner.output_scale());
    let mut worst = ErrorStats::default();
    let mut detail = None;
    if let Some(r) = big_ref {
        worst = error_vs_f64(&out, r);
    } else {
        for (c, r) in refs {
            let e = error_vs_dd(&out[c * n..(c + 1) * n], r);
            if e.rel_l2.is_nan() || e.rel_l2 > worst.rel_l2 {
                worst = e;
            }
        }
    }
    if spec.placement == Placement::Immutable && bufs.input.as_slice() != input {
        detail = Some("immutable input was modified".to_string());
    }
    let e = worst.in_eps(eps);
    let passed = e.rel_l2.is_finite() && e.rel_l2 <= tolerance_eps(n) && detail.is_none();
    Verify {
        method: if big_ref.is_some() {
            "rustfft-f64".into()
        } else {
            "dd".into()
        },
        rel_l2_eps: e.rel_l2,
        max_eps: e.max_rel,
        roundtrip_eps: None,
        passed,
        detail,
    }
}

/// Forward-then-inverse roundtrip error (in eps) for large sizes.
fn roundtrip<T: ArenaFloat>(
    spec: &CellSpec,
    lib: &str,
    first_output: Vec<Complex<T>>,
    input: &[Complex<T>],
) -> Result<f64, String> {
    let mut opp = spec.clone();
    opp.direction = spec.direction.opposite();
    opp.placement = Placement::InPlace;
    opp.batch = 1;
    let mut bufs = Buffers::<T>::new(spec.n, spec.misalign);
    let mut r = T::make_runner(lib, &opp, &mut bufs)?;
    r.zero(&mut bufs);
    r.load(&mut bufs, &first_output);
    r.run(&mut bufs);
    let mut back = r.read(&bufs);
    scale(&mut back, r.output_scale() / spec.n as f64);
    let e = error_vs_f64(&back, &widen(&input[..spec.n]));
    Ok(e.rel_l2 / spec.precision.eps())
}

fn run_typed<T: ArenaFloat + fastfft::FftNum>(spec: &CellSpec) -> Vec<LibResult> {
    let n = spec.n;
    let len = n * spec.batch;
    let profile = Profile::by_name(&spec.profile).unwrap_or(Profile::QUICK);
    let mut bufs = Buffers::<T>::new(len, spec.misalign);
    let planned = plan_all::<T>(spec, &mut bufs);
    #[cfg(feature = "measure-diagnostics")]
    let capture = if spec.diagnostics.measure_trace {
        Some(crate::measure_diagnostics::Capture::drain(&planned))
    } else {
        None
    };
    let mut libs: Vec<Lib<T>> = planned
        .into_iter()
        .map(|(res, runner)| Lib { res, runner })
        .collect();

    let input_t: Vec<Complex<T>> = to_t(&fastfft_testkit::random_c64(len, spec.seed));

    // ---- verification
    if spec.verify && libs.iter().any(|l| l.runner.is_some()) {
        let big = n > DD_REFERENCE_MAX;
        let refs: Vec<(usize, Vec<Cx<Dd>>)> = if big {
            Vec::new()
        } else {
            verified_chunks(spec.batch)
                .into_iter()
                .map(|c| {
                    let x = widen(&input_t[c * n..(c + 1) * n]);
                    (c, reference_dd(&x, spec.direction.testkit()))
                })
                .collect()
        };
        let big_ref: Option<Vec<Complex<f64>>> = if big {
            let mut x = widen(&input_t[..n]);
            let mut planner = rustfft::FftPlanner::<f64>::new();
            let f = match spec.direction {
                crate::spec::Direction::Forward => planner.plan_fft_forward(n),
                crate::spec::Direction::Inverse => planner.plan_fft_inverse(n),
            };
            f.process(&mut x);
            Some(x)
        } else {
            None
        };
        // For big cells only the first chunk is compared (batch is 1 there).
        let verify_input: &[Complex<T>] = if big { &input_t[..n] } else { &input_t };
        for lib in libs.iter_mut() {
            let Some(r) = lib.runner.as_mut() else {
                continue;
            };
            let outcome = std::panic::catch_unwind(std::panic::AssertUnwindSafe(|| {
                let mut v = verify_one(
                    spec,
                    r.as_mut(),
                    &mut bufs,
                    if big { &input_t } else { verify_input },
                    &refs,
                    big_ref.as_deref(),
                );
                if big && v.passed {
                    let mut first = r.read(&bufs);
                    first.truncate(n);
                    scale(&mut first, r.output_scale());
                    match roundtrip(spec, &lib.res.lib, first, &input_t) {
                        Ok(e) => {
                            v.roundtrip_eps = Some(e);
                            v.method = "rustfft-f64+roundtrip".into();
                            if e.is_nan() || e > tolerance_eps(n) {
                                v.passed = false;
                                v.detail = Some(format!("roundtrip error {e:.1} eps"));
                            }
                        }
                        Err(reason) => {
                            v.detail = Some(format!("roundtrip skipped: {reason}"));
                        }
                    }
                }
                v
            }));
            match outcome {
                Ok(v) => {
                    if !v.passed {
                        lib.res.status = "failed-verify".into();
                        lib.runner = None;
                    }
                    lib.res.verify = Some(v);
                }
                Err(p) => {
                    lib.res.status = "error".into();
                    lib.res.reason =
                        Some(format!("panicked during verification: {}", panic_msg(&p)));
                    lib.runner = None;
                }
            }
        }
    }

    // ---- timing
    #[allow(unused_mut)]
    let mut active: Vec<usize> = (0..libs.len())
        .filter(|&i| libs[i].runner.is_some())
        .collect();
    if active.is_empty() {
        for lib in &mut libs {
            finish_planning_samples(spec, &mut bufs, &mut lib.res);
        }
        return libs.into_iter().map(|l| l.res).collect();
    }
    #[cfg(feature = "measure-diagnostics")]
    {
        let count = active.len();
        active.rotate_left(spec.diagnostics.execution_rotation % count);
    }
    let random = spec.data == TimingData::Random;
    let prepare = |r: &mut dyn Runner<T>, bufs: &mut Buffers<T>| {
        r.zero(bufs);
        if random {
            r.load(bufs, &input_t);
        }
    };
    let mut samples: Vec<Vec<f64>> = vec![Vec::new(); libs.len()];
    let mut k: Vec<usize> = vec![1; libs.len()];
    #[cfg(feature = "measure-diagnostics")]
    let mut round_ends = [[0usize; 7]; 2];
    for &i in &active {
        let r = libs[i].runner.as_mut().expect("active");
        prepare(r.as_mut(), &mut bufs);
        k[i] = r.calibrate(
            &mut bufs,
            Duration::from_millis(profile.warmup_ms),
            Duration::from_micros(profile.min_batch_us),
        );
    }
    for round in 0..profile.rounds {
        for j in 0..active.len() {
            let i = active[(j + round) % active.len()];
            let r = libs[i].runner.as_mut().expect("active");
            prepare(r.as_mut(), &mut bufs);
            r.turn(
                &mut bufs,
                k[i],
                Duration::from_millis(profile.turn_ms),
                &mut samples[i],
            );
            #[cfg(feature = "measure-diagnostics")]
            if spec.diagnostics.sample_trace && i < 2 && round < 7 {
                round_ends[i][round] = samples[i].len();
            }
        }
    }
    for &i in &active {
        let st = Stats::from_samples(&samples[i]).scaled(1.0 / spec.batch as f64);
        let l = &mut libs[i].res;
        l.mflops = Some(mflops(n, st.best));
        l.time = Some(st);
        l.calls_per_batch = Some(k[i]);
    }
    for lib in &mut libs {
        finish_planning_samples(spec, &mut bufs, &mut lib.res);
    }
    #[cfg(feature = "measure-diagnostics")]
    {
        if spec.diagnostics.sample_trace {
            for &i in &active {
                libs[i].res.sample_trace = Some(crate::measure_diagnostics::SampleTrace {
                    whole_buffer_ns: std::mem::take(&mut samples[i]),
                    round_ends: round_ends[i],
                    batch: spec.batch,
                });
            }
        }
        if let Some(capture) = capture {
            let results = libs.iter().map(|l| l.res.clone()).collect();
            let spec = spec.clone();
            let mut retained: Vec<_> = libs.iter_mut().map(|l| l.runner.take()).collect();
            crate::measure_diagnostics::defer(move || {
                let evidence = capture.replay(&spec, &mut bufs, &input_t, &k, &mut retained);
                drop(retained); // Original runners stay alive through all replay timing.
                evidence
            });
            return results;
        }
        if spec.diagnostics.storage_crossover || spec.diagnostics.storage_graph {
            let results = libs.iter().map(|l| l.res.clone()).collect();
            let spec = spec.clone();
            let mut retained: Vec<_> = libs.iter_mut().map(|l| l.runner.take()).collect();
            crate::measure_diagnostics::defer(move || {
                crate::storage_crossover::run(&spec, &mut bufs, &mut retained)
            });
            return results;
        }
    }
    libs.into_iter().map(|l| l.res).collect()
}

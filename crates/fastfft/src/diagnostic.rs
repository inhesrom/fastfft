//! Test-only latency harness. Filters are comma-separated FASTFFT_TIMING_{N,
//! PRECISION,CANDIDATE,SURFACE}; candidates use kernel:isa:lanes (or kernel).
//! No filter retains the original sizes/precisions/candidates and adds RustFFT.
//! Large-panel diagnostics can set FASTFFT_TIMING_CALLS to a smaller batch,
//! FASTFFT_TIMING_ALIGNED for arena-style buffer alignment, and DIRECTION /
//! PLACEMENT filters for the fastfft wrapper. These are tuning measurements;
//! published comparisons still come from the arena.

use crate::api::{Fft, FftDirection, FftNum};
use crate::isa::{Isa, Precision, detected_isa};
use crate::planner::{build_candidate, candidates};
use fastfft_testkit::{Dir, error_vs_dd, random_c64, reference_dd};
use num_complex::Complex;
use std::hint::black_box;
use std::time::{Duration, Instant};

pub(crate) fn enabled(filter: &str, value: &str) -> bool {
    std::env::var(format!("FASTFFT_TIMING_{filter}")).map_or(true, |s| {
        s.split(',')
            .any(|x| x == value || value.starts_with(&format!("{x}:")))
    })
}

#[derive(Debug)]
pub(crate) struct Sample {
    pub surface: &'static str,
    pub placement: &'static str,
    pub ns: [f64; 2],
}

pub(crate) fn addresses<T>(wrapper: usize, entry: usize) {
    if std::env::var_os("FASTFFT_TIMING_SYMBOLS").is_none() {
        return;
    }
    #[cfg(target_os = "linux")]
    {
        let exe = std::env::current_exe().unwrap();
        let maps = std::fs::read_to_string("/proc/self/maps").unwrap();
        let base = maps
            .lines()
            .find_map(|line| {
                let p: Vec<_> = line.split_whitespace().collect();
                (p.len() >= 6 && p[2] == "00000000" && p[5] == exe.to_str().unwrap())
                    .then(|| usize::from_str_radix(p[0].split('-').next().unwrap(), 16).unwrap())
            })
            .unwrap();
        eprintln!(
            "symbols,{},{:#x},{:#x}",
            std::any::type_name::<T>(),
            wrapper - base,
            entry - base
        );
    }
    #[cfg(not(target_os = "linux"))]
    let _ = (std::any::type_name::<T>(), wrapper, entry);
}

pub(crate) fn sample(mut call: impl FnMut()) -> [f64; 2] {
    let calls: usize = std::env::var("FASTFFT_TIMING_CALLS")
        .map_or(1024, |s| s.parse().expect("timing batch size"));
    assert!(calls > 0);
    let mut times = Vec::new();
    let start = Instant::now();
    while start.elapsed() < Duration::from_millis(12) {
        let t = Instant::now();
        for _ in 0..calls {
            call();
        }
        times.push(t.elapsed().as_nanos() as f64 / calls as f64);
    }
    times.sort_by(f64::total_cmp);
    [times[0], times[times.len() / 2]]
}

pub(crate) fn verify<T: FftNum>(f: &dyn Fft<T>) {
    let n = f.len();
    let mut x: Vec<_> = random_c64(n, 177)
        .into_iter()
        .map(|z| Complex::new(T::from_f64(z.re).unwrap(), T::from_f64(z.im).unwrap()))
        .collect();
    let saved = x.clone();
    let widen = |b: &[Complex<T>]| {
        b.iter()
            .map(|z| Complex::new(z.re.to_f64().unwrap(), z.im.to_f64().unwrap()))
            .collect::<Vec<_>>()
    };
    let reference = reference_dd(
        &widen(&x),
        if f.fft_direction() == FftDirection::Forward {
            Dir::Forward
        } else {
            Dir::Inverse
        },
    );
    let mut scratch = vec![
        Complex::new(T::zero(), T::zero());
        f.get_inplace_scratch_len()
            .max(f.get_outofplace_scratch_len())
            .max(f.get_immutable_scratch_len())
    ];
    let mut out = x.clone();
    for mode in 0..3 {
        x.copy_from_slice(&saved);
        match mode {
            0 => {
                f.process_with_scratch(&mut x, &mut scratch);
                out.copy_from_slice(&x);
            }
            1 => f.process_outofplace_with_scratch(&mut x, &mut out, &mut scratch),
            _ => {
                f.process_immutable_with_scratch(&x, &mut out, &mut scratch);
                assert_eq!(x, saved);
            }
        }
        let error = error_vs_dd(&widen(&out), &reference).rel_l2 / T::epsilon().to_f64().unwrap();
        assert!(
            error.is_finite() && error <= 2.0 * (n as f64).log2() + 2.0,
            "n={n} mode={mode}: {error}"
        );
    }
}

pub(crate) fn wrapper<T: FftNum, F: Fft<T> + ?Sized>(f: &F, surface: &'static str) -> Vec<Sample> {
    if !enabled("SURFACE", surface) {
        return Vec::new();
    }
    let zero = Complex::new(T::zero(), T::zero());
    let aligned = std::env::var_os("FASTFFT_TIMING_ALIGNED").is_some();
    let mut input_storage = vec![zero; f.len() + if aligned { 8 } else { 0 }];
    let mut output_storage = input_storage.clone();
    let offset = |p: usize| {
        if aligned {
            (64 - p % 64) % 64 / size_of::<Complex<T>>()
        } else {
            0
        }
    };
    let i = offset(input_storage.as_ptr() as usize);
    let o = offset(output_storage.as_ptr() as usize);
    let mut input = &mut input_storage[i..i + f.len()];
    let mut output = &mut output_storage[o..o + f.len()];
    let mut scratch = vec![
        zero;
        f.get_inplace_scratch_len()
            .max(f.get_outofplace_scratch_len())
            .max(f.get_immutable_scratch_len())
    ];
    let mut result = Vec::new();
    for placement in ["ip", "op", "immutable"] {
        if !enabled("PLACEMENT", placement) {
            continue;
        }
        // No resets in the timed loop: IP is a dependency chain; Small OP reads
        // the same input each time. Both buffers cross compiler barriers.
        let ns = match placement {
            "ip" => sample(|| {
                f.process_with_scratch(black_box(&mut input), black_box(&mut scratch));
                black_box(&input);
            }),
            "op" => sample(|| {
                f.process_outofplace_with_scratch(
                    black_box(&mut input),
                    black_box(&mut output),
                    black_box(&mut scratch),
                );
                black_box(&output);
            }),
            _ => sample(|| {
                f.process_immutable_with_scratch(
                    black_box(input),
                    black_box(&mut output),
                    black_box(&mut scratch),
                );
                black_box(&output);
            }),
        };
        result.push(Sample {
            surface,
            placement,
            ns,
        });
    }
    result
}

pub(crate) fn run<T: FftNum + rustfft::FftNum>() {
    let precision = if T::precision() == Precision::F64 {
        "f64"
    } else {
        "f32"
    };
    if !enabled("PRECISION", precision) {
        return;
    }
    let pid = std::process::id();
    let sizes: Vec<usize> = std::env::var("FASTFFT_TIMING_N").map_or_else(
        |_| (2..=16).chain([24, 32, 40, 48, 56, 64, 128, 256]).collect(),
        |s| s.split(',').map(|n| n.parse().expect("FFT size")).collect(),
    );
    for n in sizes {
        if !enabled("N", &n.to_string()) {
            continue;
        }
        let mut cs = candidates(n, detected_isa(), precision == "f64");
        for c in candidates(n, Isa::Avx2.min(detected_isa()), precision == "f64") {
            if !cs
                .iter()
                .any(|x| x.kernel == c.kernel && x.shape == c.shape && x.radices == c.radices)
            {
                cs.push(c);
            }
        }
        if let Ok(factors) = std::env::var("FASTFFT_TIMING_FACTORS") {
            let mut ss = crate::engine::shapes(detected_isa(), precision == "f64");
            for shape in crate::engine::shapes(Isa::Avx2.min(detected_isa()), precision == "f64") {
                if !ss.contains(&shape) {
                    ss.push(shape);
                }
            }
            for a in factors
                .split(',')
                .map(|s| s.parse::<usize>().expect("panel factor"))
            {
                if a <= 1 || !n.is_multiple_of(a) || n / a <= 1 || !crate::planner::is_smooth(n) {
                    continue;
                }
                for &shape in ss.iter().filter(|s| s.lanes > 1) {
                    let radices = vec![a, n / a];
                    if !cs.iter().any(|c| {
                        c.kernel == crate::planner::CandidateKernel::FourStep
                            && c.shape == shape
                            && c.radices == radices
                    }) {
                        cs.push(crate::planner::Candidate {
                            kernel: crate::planner::CandidateKernel::FourStep,
                            shape,
                            radices,
                            cost: 0.,
                        });
                    }
                }
            }
        }
        for c in cs {
            let identity = format!("{}:{}:{}", c.kernel.name(), c.shape.isa, c.shape.lanes);
            if !enabled("CANDIDATE", &identity) {
                continue;
            }
            for dir in [FftDirection::Forward, FftDirection::Inverse] {
                if !enabled("DIRECTION", &dir.to_string()) {
                    continue;
                }
                let f = black_box(build_candidate::<T>(n, dir, &c));
                verify(f.as_ref());
                let mut samples = wrapper(black_box(f.as_ref()), "public");
                if matches!(
                    c.kernel,
                    crate::planner::CandidateKernel::InterleavedSmall
                        | crate::planner::CandidateKernel::FourStep
                        | crate::planner::CandidateKernel::RectangularSmall
                ) {
                    // These candidates currently expose public timings only.
                } else if c.kernel.is_small() {
                    samples.extend(crate::engine::small::timings::<T>(n, dir, c.shape));
                } else {
                    samples.extend(
                        crate::engine::fixed::timings::<T>(n, dir, c.shape, &c.radices)
                            .unwrap_or_else(|| {
                                crate::engine::timing::stockham::<T>(n, dir, c.shape, &c.radices)
                            }),
                    );
                }
                let decomposition = if matches!(
                    c.kernel,
                    crate::planner::CandidateKernel::FourStep
                        | crate::planner::CandidateKernel::RectangularSmall
                ) {
                    c.radices
                        .iter()
                        .map(usize::to_string)
                        .collect::<Vec<_>>()
                        .join("x")
                } else if c.kernel == crate::planner::CandidateKernel::Stockham {
                    format!(
                        "{}xL{}",
                        c.radices
                            .iter()
                            .map(usize::to_string)
                            .collect::<Vec<_>>()
                            .join("x"),
                        c.shape.lanes
                    )
                } else {
                    format!("{}x{}", n / c.shape.lanes, c.shape.lanes)
                };
                for s in samples {
                    eprintln!(
                        "timing,{pid},{precision},{n},{},{},{},{decomposition},{dir},{},{},{:.6},{:.6}",
                        c.kernel.name(),
                        c.shape.isa,
                        c.shape.lanes,
                        s.placement,
                        s.surface,
                        s.ns[0],
                        s.ns[1]
                    );
                }
            }
        }
        if enabled("CANDIDATE", "rustfft") && enabled("SURFACE", "public") {
            for dir in [FftDirection::Forward, FftDirection::Inverse] {
                let rd = if dir == FftDirection::Forward {
                    rustfft::FftDirection::Forward
                } else {
                    rustfft::FftDirection::Inverse
                };
                let f = black_box(rustfft::FftPlanner::<T>::new().plan_fft(n, rd));
                let zero = Complex::new(T::zero(), T::zero());
                let x: Vec<_> = random_c64(n, 177)
                    .into_iter()
                    .map(|z| Complex::new(T::from_f64(z.re).unwrap(), T::from_f64(z.im).unwrap()))
                    .collect();
                let widen = |x: &[Complex<T>]| {
                    x.iter()
                        .map(|z| Complex::new(z.re.to_f64().unwrap(), z.im.to_f64().unwrap()))
                        .collect::<Vec<_>>()
                };
                let reference = reference_dd(
                    &widen(&x),
                    if dir == FftDirection::Forward {
                        Dir::Forward
                    } else {
                        Dir::Inverse
                    },
                );
                let mut work = vec![
                    zero;
                    f.get_inplace_scratch_len()
                        .max(f.get_outofplace_scratch_len())
                        .max(f.get_immutable_scratch_len())
                ];
                for placement in ["ip", "op", "immutable"] {
                    let mut input = x.clone();
                    let mut output = x.clone();
                    match placement {
                        "ip" => {
                            f.process_with_scratch(&mut input, &mut work);
                            output.copy_from_slice(&input);
                        }
                        "op" => {
                            f.process_outofplace_with_scratch(&mut input, &mut output, &mut work)
                        }
                        _ => {
                            f.process_immutable_with_scratch(&input, &mut output, &mut work);
                            assert_eq!(input, x);
                        }
                    }
                    let e = error_vs_dd(&widen(&output), &reference).rel_l2
                        / T::epsilon().to_f64().unwrap();
                    assert!(e.is_finite() && e <= 2.0 * (n as f64).log2() + 2.0);
                    input.fill(zero);
                    output.fill(zero);
                    work.fill(zero);
                    let ns = match placement {
                        "ip" => sample(|| {
                            f.process_with_scratch(black_box(&mut input), black_box(&mut work));
                            black_box(&input);
                        }),
                        "op" => sample(|| {
                            f.process_outofplace_with_scratch(
                                black_box(&mut input),
                                black_box(&mut output),
                                black_box(&mut work),
                            );
                            black_box(&output);
                        }),
                        _ => sample(|| {
                            f.process_immutable_with_scratch(
                                black_box(&input),
                                black_box(&mut output),
                                black_box(&mut work),
                            );
                            black_box(&output);
                        }),
                    };
                    eprintln!(
                        "timing,{pid},{precision},{n},rustfft,auto,0,auto,{dir},{placement},public,{:.6},{:.6}",
                        ns[0], ns[1]
                    );
                }
            }
        }
    }
}

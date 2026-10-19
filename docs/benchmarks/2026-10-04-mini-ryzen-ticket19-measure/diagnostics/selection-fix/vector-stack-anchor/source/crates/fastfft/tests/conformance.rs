//! API conformance: RustFFT-compatible behavior, panics and contracts.

use fastfft::num_complex::Complex;
use fastfft::{Fft, FftDirection, FftPlanner, Isa, PlannerOptions, detected_isa};
use std::sync::Arc;

fn zeros<T: fastfft::FftNum>(n: usize) -> Vec<Complex<T>> {
    vec![Complex::new(T::zero(), T::zero()); n]
}

fn ramp(n: usize) -> Vec<Complex<f64>> {
    (0..n)
        .map(|i| Complex::new(i as f64 * 0.25 - 1.0, (i % 7) as f64 * 0.5))
        .collect()
}

#[test]
fn traits_are_send_sync_and_names_match() {
    fn assert_send_sync<T: Send + Sync + ?Sized>() {}
    assert_send_sync::<dyn Fft<f32>>();
    assert_send_sync::<FftPlanner<f64>>();
    let mut p = FftPlanner::<f32>::new();
    let f: Arc<dyn Fft<f32>> = p.plan_fft(64, FftDirection::Inverse);
    assert_eq!(f.len(), 64);
    assert_eq!(f.fft_direction(), FftDirection::Inverse);
    assert_eq!(
        FftDirection::Forward.opposite_direction(),
        FftDirection::Inverse
    );
    assert_eq!(FftDirection::Inverse.to_string(), "Inverse");
}

#[test]
fn length_zero_and_one() {
    let mut p = FftPlanner::<f64>::new();
    let f0 = p.plan_fft_forward(0);
    let mut empty: Vec<Complex<f64>> = vec![];
    f0.process(&mut empty);
    // RustFFT: a zero-length FFT ignores any buffer.
    let mut some = ramp(5);
    f0.process_with_scratch(&mut some, &mut []);
    assert_eq!(some, ramp(5));
    let f1 = p.plan_fft_inverse(1);
    let mut b = ramp(3);
    f1.process(&mut b);
    assert_eq!(b, ramp(3));
    let mut i = ramp(3);
    let mut o = zeros(3);
    f1.process_outofplace_with_scratch(&mut i, &mut o, &mut []);
    assert_eq!(o, ramp(3));
}

#[test]
fn matches_rustfft_all_modes_and_batches() {
    let mut ours = FftPlanner::<f64>::new();
    let mut theirs = rustfft::FftPlanner::<f64>::new();
    for n in [
        2usize, 3, 5, 8, 12, 17, 64, 100, 127, 256, 360, 1000, 1024, 2048, 4099,
    ] {
        for dir in [FftDirection::Forward, FftDirection::Inverse] {
            let a = ours.plan_fft(n, dir);
            let b = match dir {
                FftDirection::Forward => theirs.plan_fft_forward(n),
                FftDirection::Inverse => theirs.plan_fft_inverse(n),
            };
            let x = ramp(3 * n);
            let mut want = x.clone();
            b.process(&mut want);
            let tol = 1e-9 * (n as f64).sqrt() * n as f64;
            let close = |got: &[Complex<f64>]| {
                for (g, w) in got.iter().zip(&want) {
                    assert!((g - w).norm() <= tol, "n={n} {dir}: {g} vs {w}");
                }
            };
            let mut ip = x.clone();
            a.process(&mut ip);
            close(&ip);
            let mut ip2 = x.clone();
            let mut s = zeros(a.get_inplace_scratch_len());
            a.process_with_scratch(&mut ip2, &mut s);
            close(&ip2);
            let mut i = x.clone();
            let mut o = zeros(3 * n);
            let mut s = zeros(a.get_outofplace_scratch_len());
            a.process_outofplace_with_scratch(&mut i, &mut o, &mut s);
            close(&o);
            let mut o = zeros(3 * n);
            let mut s = zeros(a.get_immutable_scratch_len());
            a.process_immutable_with_scratch(&x, &mut o, &mut s);
            close(&o);
        }
    }
}

#[test]
#[should_panic]
fn panics_on_non_multiple_buffer() {
    let f = FftPlanner::<f32>::new().plan_fft_forward(8);
    let mut b = zeros::<f32>(12);
    f.process(&mut b);
}

#[test]
#[should_panic]
fn panics_on_short_buffer() {
    let f = FftPlanner::<f32>::new().plan_fft_forward(16);
    let mut b = zeros::<f32>(8);
    let mut s = zeros(f.get_inplace_scratch_len());
    f.process_with_scratch(&mut b, &mut s);
}

#[test]
#[should_panic]
fn panics_on_small_scratch() {
    let f = FftPlanner::<f32>::new().plan_fft_forward(4096);
    assert!(f.get_inplace_scratch_len() > 0);
    let mut b = zeros::<f32>(4096);
    let mut s = zeros(f.get_inplace_scratch_len() - 1);
    f.process_with_scratch(&mut b, &mut s);
}

#[test]
#[should_panic]
fn panics_on_mismatched_outofplace_lengths() {
    let f = FftPlanner::<f64>::new().plan_fft_forward(8);
    let mut i = zeros::<f64>(16);
    let mut o = zeros::<f64>(8);
    let mut s = zeros(f.get_outofplace_scratch_len());
    f.process_outofplace_with_scratch(&mut i, &mut o, &mut s);
}

#[test]
#[should_panic]
fn panics_on_mismatched_immutable_lengths() {
    let f = FftPlanner::<f64>::new().plan_fft_forward(8);
    let i = zeros::<f64>(8);
    let mut o = zeros::<f64>(16);
    let mut s = zeros(f.get_immutable_scratch_len());
    f.process_immutable_with_scratch(&i, &mut o, &mut s);
}

#[test]
fn immutable_input_untouched_and_unaligned_buffers() {
    let mut p = FftPlanner::<f32>::new();
    for n in [16usize, 48, 1024, 1031] {
        let f = p.plan_fft_forward(n);
        let x: Vec<Complex<f32>> = ramp(n + 1)
            .iter()
            .map(|c| Complex::new(c.re as f32, c.im as f32))
            .collect();
        // offset by one element: 8-byte (not 32/64-byte) alignment
        let input = &x[1..];
        let copy = input.to_vec();
        let mut out = zeros::<f32>(n + 1);
        let mut s = zeros(f.get_immutable_scratch_len() + 1);
        f.process_immutable_with_scratch(input, &mut out[1..], &mut s[1..]);
        assert_eq!(input, &copy[..]);
        let mut ip = copy.clone();
        f.process(&mut ip);
        for (a, b) in ip.iter().zip(&out[1..]) {
            assert!((a - b).norm() <= 1e-3 * (n as f32), "n={n}");
        }
    }
}

/// Exercise the large-transform API with exactly the advertised workspace,
/// aligned/misaligned buffers and three transforms sharing that workspace.
fn large_buffer_contracts<T: fastfft::FftNum + fastfft_testkit::metrics::ToDd>() {
    use fastfft_testkit::{error_vs_f64, metrics::fast_path_bound_eps, random_c64};
    use std::panic::{AssertUnwindSafe, catch_unwind};

    let guard = Complex::new(T::from_f64(4321.).unwrap(), T::from_f64(-8765.).unwrap());
    let storage = |len, offset| {
        let buf = vec![guard; len + 16];
        let start = (1..=8)
            .find(|&i| (buf.as_ptr() as usize + i * size_of::<Complex<T>>()) % 64 == offset)
            .unwrap();
        (buf, start)
    };
    let bytes = size_of::<Complex<T>>();
    // The last sample spans 16 MiB in either precision, exercising streamed
    // stores on this ticket's target as well as the unaligned fallback.
    let large = if size_of::<T>() == 4 {
        1 << 21
    } else {
        1 << 20
    };
    for n in [1 << 15, 1 << 18, large] {
        let input: Vec<_> = random_c64(3 * n, n as u64)
            .into_iter()
            .map(|z| Complex::new(T::from_f64(z.re).unwrap(), T::from_f64(z.im).unwrap()))
            .collect();
        for dir in [FftDirection::Forward, FftDirection::Inverse] {
            let f = FftPlanner::<T>::new().plan_fft(n, dir);
            let mut expected: Vec<_> = input
                .iter()
                .map(|z| Complex::new(z.re.to_f64().unwrap(), z.im.to_f64().unwrap()))
                .collect();
            let rdir = if dir == FftDirection::Forward {
                rustfft::FftDirection::Forward
            } else {
                rustfft::FftDirection::Inverse
            };
            rustfft::FftPlanner::<f64>::new()
                .plan_fft(n, rdir)
                .process(&mut expected);
            for case in 0..8 {
                let mode = case % 4;
                let aligned = case >= 4;
                let need = match mode {
                    0 | 3 => f.get_inplace_scratch_len(),
                    1 => f.get_outofplace_scratch_len(),
                    _ => f.get_immutable_scratch_len(),
                };
                let (mut src, i) = storage(input.len(), if aligned { 0 } else { bytes });
                let (mut dst, o) = storage(input.len(), if aligned { 0 } else { 3 * bytes % 64 });
                let (mut scratch, s) = storage(need, 7 * bytes % 64);
                src[i..i + input.len()].copy_from_slice(&input);
                let call =
                    |a: &mut [Complex<T>], b: &mut [Complex<T>], w: &mut [Complex<T>]| match mode {
                        0 => f.process_with_scratch(a, w),
                        1 => f.process_outofplace_with_scratch(a, b, w),
                        2 => f.process_immutable_with_scratch(a, b, w),
                        _ => f.process(a),
                    };
                if mode < 3 && need > 0 {
                    assert!(
                        catch_unwind(AssertUnwindSafe(|| call(
                            &mut src[i..i + input.len()],
                            &mut dst[o..o + input.len()],
                            &mut scratch[s..s + need - 1],
                        )))
                        .is_err()
                    );
                    assert_eq!(&src[i..i + input.len()], &input);
                    assert!(dst.iter().chain(&scratch).all(|&z| z == guard));
                }
                call(
                    &mut src[i..i + input.len()],
                    &mut dst[o..o + input.len()],
                    &mut scratch[s..s + need],
                );
                if mode == 2 {
                    assert_eq!(&src[i..i + input.len()], &input);
                }
                for (buf, start, len) in [
                    (&src, i, input.len()),
                    (&dst, o, input.len()),
                    (&scratch, s, need),
                ] {
                    assert!(
                        buf[..start]
                            .iter()
                            .chain(&buf[start + len..])
                            .all(|&z| z == guard)
                    );
                }
                let got = if mode == 0 || mode == 3 {
                    &src[i..i + input.len()]
                } else {
                    &dst[o..o + input.len()]
                };
                for (chunk, reference) in got.chunks(n).zip(expected.chunks(n)) {
                    let error =
                        error_vs_f64(chunk, reference).rel_l2 / T::epsilon().to_f64().unwrap();
                    assert!(
                        error.is_finite() && error <= fast_path_bound_eps(n),
                        "n={n} {dir} mode={mode}: {error} eps"
                    );
                }
            }
        }
    }
}

#[test]
fn large_buffer_contracts_f32() {
    large_buffer_contracts::<f32>();
}

#[test]
fn large_buffer_contracts_f64() {
    large_buffer_contracts::<f64>();
}

/// A scalar prefix deliberately puts otherwise legal Complex slices halfway
/// between complex-aligned addresses. Guards also catch overrunning SIMD tails.
#[repr(C, align(64))]
struct RoughBuffers<T> {
    prefix: T,
    data: [Complex<T>; 4096],
    suffix: T,
}

fn bluestein_shared_workspace<T: fastfft::FftNum + fastfft_testkit::metrics::ToDd>() {
    use fastfft::PlanMode;
    use fastfft_testkit::{Dir, error_vs_dd, random_c64, reference_dd};
    use std::panic::{AssertUnwindSafe, catch_unwind};
    use std::time::Duration;

    let guard = Complex::new(T::from_f64(4321.).unwrap(), T::from_f64(-8765.).unwrap());
    let storage = || RoughBuffers {
        prefix: guard.re,
        data: [guard; 4096],
        suffix: guard.im,
    };
    for n in [17, 19, 31, 61, 127, 257] {
        let input: Vec<_> = random_c64(3 * n, n as u64)
            .into_iter()
            .map(|z| Complex::new(T::from_f64(z.re).unwrap(), T::from_f64(z.im).unwrap()))
            .collect();
        let wide: Vec<_> = input
            .iter()
            .map(|z| Complex::new(z.re.to_f64().unwrap(), z.im.to_f64().unwrap()))
            .collect();
        for (dir, rdir) in [
            (FftDirection::Forward, Dir::Forward),
            (FftDirection::Inverse, Dir::Inverse),
        ] {
            let references: Vec<_> = wide.chunks(n).map(|x| reference_dd(x, rdir)).collect();
            for mode in [
                PlanMode::Estimate,
                PlanMode::Measure {
                    time_limit: Duration::from_millis(1),
                },
            ] {
                let f = FftPlanner::<T>::with_options(PlannerOptions::default().with_mode(mode))
                    .plan_fft(n, dir);
                // Bluestein stages input before writing output: the same
                // workspace is sufficient in place and with separate output.
                let need = f.get_outofplace_scratch_len();
                assert_eq!(need, f.get_inplace_scratch_len());
                assert_eq!(need, f.get_immutable_scratch_len());
                for placement in 0..3 {
                    let (mut src, mut dst, mut scratch) = (storage(), storage(), storage());
                    let len = input.len();
                    src.data[1..1 + len].copy_from_slice(&input);
                    let call =
                        |a: &mut [Complex<T>], b: &mut [Complex<T>], s: &mut [Complex<T>]| {
                            match placement {
                                0 => f.process_with_scratch(a, s),
                                1 => f.process_outofplace_with_scratch(a, b, s),
                                _ => f.process_immutable_with_scratch(a, b, s),
                            }
                        };
                    assert!(
                        catch_unwind(AssertUnwindSafe(|| call(
                            &mut src.data[1..1 + len],
                            &mut dst.data[3..3 + len],
                            &mut scratch.data[5..5 + need - 1],
                        )))
                        .is_err()
                    );
                    assert_eq!(&src.data[1..1 + len], &input);
                    assert!(dst.data.iter().chain(&scratch.data).all(|&z| z == guard));
                    call(
                        &mut src.data[1..1 + len],
                        &mut dst.data[3..3 + len],
                        &mut scratch.data[5..5 + need],
                    );
                    if placement == 2 {
                        assert_eq!(&src.data[1..1 + len], &input);
                    }
                    for (s, start, count) in [(&src, 1, len), (&dst, 3, len), (&scratch, 5, need)] {
                        assert_eq!(s.prefix, guard.re);
                        assert_eq!(s.suffix, guard.im);
                        assert!(
                            s.data[..start]
                                .iter()
                                .chain(&s.data[start + count..])
                                .all(|&z| z == guard)
                        );
                    }
                    let got = if placement == 0 {
                        &src.data[1..1 + len]
                    } else {
                        &dst.data[3..3 + len]
                    };
                    for (chunk, reference) in got.chunks(n).zip(&references) {
                        let error =
                            error_vs_dd(chunk, reference).rel_l2 / T::epsilon().to_f64().unwrap();
                        let bound = fastfft_testkit::metrics::bluestein_bound_eps(4 * n);
                        assert!(
                            error.is_finite() && error <= bound,
                            "n={n} {dir} {mode:?} placement={placement}: {error} eps"
                        );
                    }
                }
            }
        }
    }
}

#[test]
fn bluestein_shared_workspace_f32() {
    bluestein_shared_workspace::<f32>();
}

#[test]
fn bluestein_shared_workspace_f64() {
    bluestein_shared_workspace::<f64>();
}

#[test]
fn isa_caps_and_describe() {
    let det = detected_isa();
    let mut p =
        FftPlanner::<f32>::with_options(PlannerOptions::default().with_isa_cap(Isa::Scalar));
    assert_eq!(p.isa(), Isa::Scalar);
    let d = p.describe_plan(1024, FftDirection::Forward);
    assert!(d.contains("scalar"), "{d}");
    let mut p = FftPlanner::<f32>::new();
    assert!(p.isa() <= det);
    let d = p.describe_plan(1024, FftDirection::Forward);
    assert!(d.starts_with("stockham"), "{d}");
    let d = p.describe_plan(1031, FftDirection::Forward);
    assert!(d.starts_with("bluestein"), "{d}");
    assert_eq!(Isa::from_name("avx512-ymm"), Some(Isa::Avx512Ymm));
    assert_eq!(Isa::Avx2.name(), "avx2");
}

/// CI sets `FASTFFT_REQUIRE_ISA` (for example under Intel SDE) so a runner or
/// emulator that does not expose the tier fails instead of silently testing a
/// lower one.
#[test]
fn required_isa_is_active() {
    let Ok(want) = std::env::var("FASTFFT_REQUIRE_ISA") else {
        return;
    };
    let want = Isa::from_name(&want)
        .unwrap_or_else(|| panic!("unknown FASTFFT_REQUIRE_ISA value {want:?}"));
    let got = FftPlanner::<f32>::new().isa();
    assert_eq!(
        got,
        want,
        "FASTFFT_REQUIRE_ISA={want} but plans use {got} (detected {})",
        detected_isa()
    );
}

#[test]
fn planner_caches_plans() {
    let mut p = FftPlanner::<f64>::new();
    let a = p.plan_fft_forward(4096);
    let b = p.plan_fft_forward(4096);
    assert!(Arc::ptr_eq(&a, &b));
}

#[test]
fn specialized_plans_cache_describe_measure_and_reject_invalid_buffers() {
    use fastfft::PlanMode;
    use std::panic::{AssertUnwindSafe, catch_unwind};
    use std::time::Duration;
    for mode in [
        PlanMode::Estimate,
        PlanMode::Measure {
            time_limit: Duration::from_millis(2),
        },
    ] {
        let mut p = FftPlanner::<f64>::with_options(PlannerOptions::default().with_mode(mode));
        for n in [0, 1, 2, 3, 8, 16, 17, 19, 32, 64, 128, 256, 512] {
            for dir in [FftDirection::Forward, FftDirection::Inverse] {
                let f = p.plan_fft(n, dir);
                let desc = p.describe_plan(n, dir);
                assert!(Arc::ptr_eq(&f, &p.plan_fft(n, dir)));
                assert_eq!(f.len(), n);
                assert_eq!(f.fft_direction(), dir);
                if desc.starts_with("small") {
                    assert!(
                        desc.contains("decomposition=") && desc.contains("scratch=0"),
                        "{desc}"
                    );
                    assert_eq!(f.get_inplace_scratch_len(), 0);
                    assert_eq!(f.get_outofplace_scratch_len(), 0);
                    assert_eq!(f.get_immutable_scratch_len(), 0);
                }
                if n < 2 {
                    continue;
                }
                for len in [0, n - 1, n + 1] {
                    let mut a = zeros::<f64>(len);
                    let mut b = zeros::<f64>(len);
                    let mut scratch = zeros(
                        f.get_inplace_scratch_len()
                            .max(f.get_immutable_scratch_len()),
                    );
                    assert!(
                        catch_unwind(AssertUnwindSafe(
                            || f.process_with_scratch(&mut a, &mut scratch)
                        ))
                        .is_err()
                    );
                    assert!(
                        catch_unwind(AssertUnwindSafe(|| f.process_outofplace_with_scratch(
                            &mut a,
                            &mut b,
                            &mut scratch
                        )))
                        .is_err()
                    );
                    assert!(
                        catch_unwind(AssertUnwindSafe(|| f.process_immutable_with_scratch(
                            &a,
                            &mut b,
                            &mut scratch
                        )))
                        .is_err()
                    );
                }
            }
        }
    }
}

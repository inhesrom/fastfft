//! Internal tests: every tier and vector shape, every mode and direction,
//! against the independent testkit reference.

use crate::api::{Fft, FftDirection, FftNum};
use crate::engine::shapes;
use crate::isa::{Isa, detected_isa};
use crate::planner::{
    Candidate, CandidateKernel, build_candidate, choose_radices, factorize, is_smooth,
};
use fastfft_testkit::metrics::ToDd;
use fastfft_testkit::{Dir, error_vs_dd, random_c64, reference_dd};
use num_complex::Complex;

fn quick() -> bool {
    std::env::var_os("FASTFFT_TEST_QUICK").is_some() || cfg!(miri)
}

fn to_t<T: FftNum>(x: &[Complex<f64>]) -> Vec<Complex<T>> {
    x.iter()
        .map(|c| Complex::new(T::from_f64(c.re).unwrap(), T::from_f64(c.im).unwrap()))
        .collect()
}

fn widen<T: FftNum>(x: &[Complex<T>]) -> Vec<Complex<f64>> {
    x.iter()
        .map(|c| Complex::new(c.re.to_f64().unwrap(), c.im.to_f64().unwrap()))
        .collect()
}

/// Checks all three modes of `fft` against the reference; returns max error in eps.
fn check_all_modes<T: FftNum + ToDd>(fft: &dyn Fft<T>, dir: FftDirection, eps: f64) -> f64 {
    let n = fft.len();
    let x = to_t::<T>(&random_c64(n, 99 + n as u64));
    let r = reference_dd(
        &widen(&x),
        if dir == FftDirection::Forward {
            Dir::Forward
        } else {
            Dir::Inverse
        },
    );
    let mut worst = 0.0f64;
    // in place
    let mut b = x.clone();
    let mut s = vec![Complex::new(T::zero(), T::zero()); fft.get_inplace_scratch_len()];
    fft.process_with_scratch(&mut b, &mut s);
    let e = error_vs_dd(&b, &r).rel_l2 / eps;
    assert!(e.is_finite(), "n={n} {dir}: non-finite in-place error");
    worst = worst.max(e);
    // out of place
    let mut i = x.clone();
    let mut o = vec![Complex::new(T::zero(), T::zero()); n];
    let mut s = vec![Complex::new(T::zero(), T::zero()); fft.get_outofplace_scratch_len()];
    fft.process_outofplace_with_scratch(&mut i, &mut o, &mut s);
    let e = error_vs_dd(&o, &r).rel_l2 / eps;
    assert!(e.is_finite(), "n={n} {dir}: non-finite out-of-place error");
    worst = worst.max(e);
    // immutable
    let mut o = vec![Complex::new(T::zero(), T::zero()); n];
    let mut s = vec![Complex::new(T::zero(), T::zero()); fft.get_immutable_scratch_len()];
    fft.process_immutable_with_scratch(&x, &mut o, &mut s);
    assert_eq!(
        widen(&x),
        widen(&to_t::<T>(&random_c64(n, 99 + n as u64))),
        "immutable input changed"
    );
    let e = error_vs_dd(&o, &r).rel_l2 / eps;
    assert!(e.is_finite(), "n={n} {dir}: non-finite immutable error");
    worst = worst.max(e);
    worst
}

fn every_shape<T: FftNum + ToDd>(sizes: &[usize], eps: f64) {
    let f64_ = T::precision() == crate::isa::Precision::F64;
    let mut all_shapes = shapes(detected_isa(), f64_);
    // On AVX-512 hosts the planner's candidate list substitutes Avx512Ymm
    // for Avx2. Test the 16-register AVX2 kernels explicitly as well.
    for shape in shapes(Isa::Avx2, f64_) {
        if !all_shapes.contains(&shape) {
            all_shapes.push(shape);
        }
    }
    for shape in all_shapes {
        for &n in sizes {
            let l = shape.lanes;
            if n % l != 0 || !is_smooth(n) || (l > 1 && n < 2 * l) {
                continue;
            }
            let max_pow2 = if shape.isa == Isa::Scalar { 16 } else { 8 };
            let Some(radices) = choose_radices(n / l, max_pow2) else {
                continue;
            };
            let c = Candidate {
                kernel: CandidateKernel::Stockham,
                shape,
                radices,
                cost: 0.0,
            };
            for dir in [FftDirection::Forward, FftDirection::Inverse] {
                let imp = build_candidate::<T>(n, dir, &c);
                let e = check_all_modes::<T>(imp.as_ref(), dir, eps);
                let bound = 2.0 * (n as f64).log2() + 2.0;
                assert!(
                    e <= bound,
                    "{:?} n={n} {dir}: error {e:.2} eps > {bound:.1} ({:?})",
                    shape,
                    c.radices
                );
            }
        }
    }
}

fn sizes() -> Vec<usize> {
    if quick() {
        vec![2, 4, 6, 8, 12, 16, 30, 32, 64, 96, 128, 256, 1000, 1024]
    } else {
        let mut v: Vec<usize> = (2..=260).collect();
        v.extend([
            300, 320, 384, 480, 500, 512, 640, 720, 768, 960, 1000, 1024, 1536, 2048, 2187, 2401,
            3000, 3072, 4096, 4725, 6144, 8192, 10368, 16384, 27000, 32768, 65536,
        ]);
        v
    }
}

#[test]
fn every_tier_f32() {
    every_shape::<f32>(&sizes(), f64::from(f32::EPSILON));
}

#[test]
fn every_tier_f64() {
    every_shape::<f64>(&sizes(), f64::EPSILON);
}

/// Stockham with caller buffers and scratch at every complex offset 0..=8
/// (aligned and misaligned for every vector width), in all three modes, with
/// guards around the input, output and the exact scratch length. The sizes
/// give one to five Phase A passes, so misaligned calls reach the second
/// scratch buffer.
fn stockham_offsets<T: FftNum + ToDd>(eps: f64) {
    let f64_ = T::precision() == crate::isa::Precision::F64;
    let mut all_shapes = shapes(detected_isa(), f64_);
    for shape in shapes(Isa::Avx2, f64_) {
        if !all_shapes.contains(&shape) {
            all_shapes.push(shape);
        }
    }
    let sizes: &[usize] = if quick() {
        &[64, 512, 1024, 8192]
    } else {
        &[32, 64, 96, 512, 1000, 1024, 4096, 8192, 32768]
    };
    let guard = Complex::new(T::from_f64(12345.0).unwrap(), T::from_f64(-6789.0).unwrap());
    for shape in all_shapes {
        for &n in sizes {
            let l = shape.lanes;
            if n % l != 0 || (l > 1 && n < 2 * l) {
                continue;
            }
            let max_pow2 = if shape.isa == Isa::Scalar { 16 } else { 8 };
            let Some(radices) = choose_radices(n / l, max_pow2) else {
                continue;
            };
            let c = Candidate {
                kernel: CandidateKernel::Stockham,
                shape,
                radices,
                cost: 0.0,
            };
            for dir in [FftDirection::Forward, FftDirection::Inverse] {
                let f = build_candidate::<T>(n, dir, &c);
                let input = to_t::<T>(&random_c64(n, 7 + n as u64));
                let reference = reference_dd(
                    &widen(&input),
                    if dir == FftDirection::Forward {
                        Dir::Forward
                    } else {
                        Dir::Inverse
                    },
                );
                for offset in 0..=8 {
                    for mode in 0..3 {
                        let need = match mode {
                            0 => f.get_inplace_scratch_len(),
                            1 => f.get_outofplace_scratch_len(),
                            _ => f.get_immutable_scratch_len(),
                        };
                        let mut src = vec![guard; offset + n + 8];
                        src[offset..offset + n].copy_from_slice(&input);
                        let saved = src.clone();
                        let mut dst = vec![guard; offset + n + 8];
                        let mut scratch = vec![guard; offset + need + 8];
                        let a = &mut src[offset..offset + n];
                        let b = &mut dst[offset..offset + n];
                        let s = &mut scratch[offset..offset + need];
                        match mode {
                            0 => f.process_with_scratch(a, s),
                            1 => f.process_outofplace_with_scratch(a, b, s),
                            _ => f.process_immutable_with_scratch(a, b, s),
                        }
                        let what = format!(
                            "{shape:?} n={n} {:?} {dir} mode={mode} offset={offset}",
                            c.radices
                        );
                        if mode == 2 {
                            assert_eq!(src, saved, "{what}: immutable input changed");
                        }
                        for v in [&src, &dst, &scratch] {
                            let end = v.len() - 8;
                            assert!(
                                v[..offset].iter().chain(&v[end..]).all(|&x| x == guard),
                                "{what}: guard overwritten"
                            );
                        }
                        let got = if mode == 0 { &src } else { &dst };
                        let e = error_vs_dd(&got[offset..offset + n], &reference).rel_l2 / eps;
                        assert!(
                            e.is_finite() && e <= 2.0 * (n as f64).log2() + 2.0,
                            "{what}: error {e}"
                        );
                    }
                }
            }
        }
    }
}

#[test]
fn stockham_offsets_f32() {
    stockham_offsets::<f32>(f64::from(f32::EPSILON));
}

#[test]
fn stockham_offsets_f64() {
    stockham_offsets::<f64>(f64::EPSILON);
}

#[test]
#[ignore = "exhaustive M3 checkpoint across every supported vector shape and placement"]
fn m3_smooth_every_shape() {
    let sizes: Vec<usize> = (2..=32768).filter(|&n| is_smooth(n)).collect();
    every_shape::<f32>(&sizes, f64::from(f32::EPSILON));
    every_shape::<f64>(&sizes, f64::EPSILON);
    eprintln!(
        "checked all {} non-identity smooth lengths through 32768, all supported shapes, both precisions/directions, three placements",
        sizes.len()
    );
}

#[test]
fn radix_choice_covers_smooth_sizes() {
    for m in 1..=5000usize {
        let smooth = factorize(m).iter().all(|&p| p <= 13);
        let r = choose_radices(m, 8);
        assert_eq!(r.is_some(), smooth, "m={m}");
        if let Some(r) = r {
            assert_eq!(r.iter().product::<usize>(), m.max(1));
            assert!(
                r.iter()
                    .all(|&x| x <= 16 && !(x.is_power_of_two() && x > 8))
            );
        }
    }
    assert_eq!(choose_radices(512, 8).unwrap().len(), 3);
}

#[test]
fn smooth_transition_candidate_orders() {
    for cap in [detected_isa(), Isa::Avx2.min(detected_isa())] {
        for n in [108, 120, 240, 504, 720] {
            for f64_ in [false, true] {
                for c in crate::planner::candidates(n, cap, f64_)
                    .iter()
                    .filter(|c| c.kernel == CandidateKernel::Stockham)
                {
                    for dir in [FftDirection::Forward, FftDirection::Inverse] {
                        if f64_ {
                            crate::diagnostic::verify(build_candidate::<f64>(n, dir, c).as_ref());
                        } else {
                            crate::diagnostic::verify(build_candidate::<f32>(n, dir, c).as_ref());
                        }
                    }
                }
            }
        }
    }
}

/// Miri-friendly smoke test on the scalar tier (`cargo miri test -- miri_`).
#[test]
fn miri_scalar_small() {
    let c = Candidate {
        kernel: CandidateKernel::Stockham,
        shape: crate::engine::Shape {
            isa: Isa::Scalar,
            lanes: 1,
        },
        radices: vec![4, 3],
        cost: 0.0,
    };
    let imp = build_candidate::<f64>(12, FftDirection::Forward, &c);
    let e = check_all_modes::<f64>(imp.as_ref(), FftDirection::Forward, f64::EPSILON);
    assert!(e < 10.0, "{e}");
}

fn small_kernels<T: FftNum + ToDd>(eps: f64) {
    use crate::engine::small;
    let f64_ = T::precision() == crate::isa::Precision::F64;
    let mut ss = shapes(detected_isa(), f64_);
    for s in shapes(Isa::Avx2.min(detected_isa()), f64_) {
        if !ss.contains(&s) {
            ss.push(s);
        }
    }
    for isa in [Isa::Avx2, Isa::Avx512Ymm] {
        if crate::isa::available(isa) {
            ss.push(crate::engine::Shape { isa, lanes: 1 });
        }
    }
    for shape in ss {
        for n in 2..=64 {
            if !small::eligible(n, shape) {
                continue;
            }
            for dir in [FftDirection::Forward, FftDirection::Inverse] {
                let f = small::build::<T>(n, dir, shape);
                assert_eq!(f.get_inplace_scratch_len(), 0);
                assert_eq!(f.get_outofplace_scratch_len(), 0);
                assert_eq!(f.get_immutable_scratch_len(), 0);
                let e = check_all_modes(f.as_ref(), dir, eps);
                assert!(
                    e <= 2.0 * (n as f64).log2() + 2.0,
                    "{shape:?} {n} {dir}: {e}"
                );
                // One and three distinct chunks, all SIMD alignment residues, exact
                // slices, and guards on input, output and unused scratch.
                for batch in [1, 3] {
                    let input = to_t::<T>(&random_c64(batch * n, n as u64));
                    let refs: Vec<_> = input
                        .chunks_exact(n)
                        .map(|x| {
                            reference_dd(
                                &widen(x),
                                if dir == FftDirection::Forward {
                                    Dir::Forward
                                } else {
                                    Dir::Inverse
                                },
                            )
                        })
                        .collect();
                    let guard =
                        Complex::new(T::from_f64(12345.0).unwrap(), T::from_f64(-6789.0).unwrap());
                    for offset in 0..=8 {
                        for mode in 0..4 {
                            let mut src = vec![guard; offset + batch * n + 8];
                            src[offset..offset + batch * n].copy_from_slice(&input);
                            let saved = src.clone();
                            let mut dst = vec![guard; src.len()];
                            let mut scratch = [guard; 1];
                            let a = &mut src[offset..offset + batch * n];
                            let b = &mut dst[offset..offset + batch * n];
                            match mode {
                                0 => f.process_with_scratch(a, &mut scratch),
                                1 => f.process_outofplace_with_scratch(a, b, &mut scratch),
                                2 => f.process_immutable_with_scratch(a, b, &mut scratch),
                                _ => f.process(a),
                            }
                            assert_eq!(scratch, [guard]);
                            if mode == 1 || mode == 2 {
                                assert_eq!(src, saved);
                            }
                            for v in [&src, &dst] {
                                assert!(
                                    v[..offset]
                                        .iter()
                                        .chain(&v[offset + batch * n..])
                                        .all(|&x| x == guard)
                                );
                            }
                            let got = if mode == 0 || mode == 3 { &src } else { &dst };
                            for (g, r) in got[offset..offset + batch * n].chunks_exact(n).zip(&refs)
                            {
                                let e = error_vs_dd(g, r).rel_l2 / eps;
                                assert!(
                                    e.is_finite() && e <= 2.0 * (n as f64).log2() + 2.0,
                                    "{shape:?} n={n} {dir} mode={mode} offset={offset} error={e}"
                                );
                            }
                        }
                    }
                }
            }
        }
    }
}

#[test]
fn small_every_kernel_f32() {
    small_kernels::<f32>(f64::from(f32::EPSILON));
}
#[test]
fn small_every_kernel_f64() {
    small_kernels::<f64>(f64::EPSILON);
}

/// Diagnostic only: run the compiled test executable under taskset, with no
/// concurrent compiler. CSV retains every direction and placement separately.
#[test]
#[ignore = "focused timing on an idle pinned core, not a correctness test"]
fn small_candidate_timings() {
    crate::diagnostic::run::<f32>();
    crate::diagnostic::run::<f64>();
}

#[test]
fn fixed_kernels_with_exact_offset_scratch() {
    fn run<T: FftNum + ToDd>(eps: f64) {
        let f64_ = T::precision() == crate::isa::Precision::F64;
        let mut ss = shapes(detected_isa(), f64_);
        for s in shapes(Isa::Avx2.min(detected_isa()), f64_) {
            if !ss.contains(&s) {
                ss.push(s);
            }
        }
        for shape in ss {
            for n in [32, 64, 128, 256] {
                let Some(radices) = choose_radices(n / shape.lanes, 8) else {
                    continue;
                };
                for dir in [FftDirection::Forward, FftDirection::Inverse] {
                    let Some(f) = crate::engine::fixed::build::<T>(n, dir, shape, &radices) else {
                        continue;
                    };
                    let input = to_t::<T>(&random_c64(3 * n, n as u64));
                    let refs: Vec<_> = input
                        .chunks_exact(n)
                        .map(|x| {
                            reference_dd(
                                &widen(x),
                                if dir == FftDirection::Forward {
                                    Dir::Forward
                                } else {
                                    Dir::Inverse
                                },
                            )
                        })
                        .collect();
                    let guard =
                        Complex::new(T::from_f64(12345.0).unwrap(), T::from_f64(-6789.0).unwrap());
                    assert_eq!(f.get_outofplace_scratch_len(), 0);
                    assert_eq!(
                        f.get_inplace_scratch_len(),
                        n + crate::fft::align_slack::<T>()
                    );
                    assert_eq!(f.get_immutable_scratch_len(), f.get_inplace_scratch_len());
                    for offset in 0..8 {
                        for mode in 0..3 {
                            let need = match mode {
                                0 => f.get_inplace_scratch_len(),
                                1 => 0,
                                _ => f.get_immutable_scratch_len(),
                            };
                            let mut scratch = vec![guard; offset + need + 8];
                            let mut a = vec![guard; offset + 3 * n + 8];
                            a[offset..offset + 3 * n].copy_from_slice(&input);
                            let original = a.clone();
                            let mut b = vec![guard; a.len()];
                            let src = &mut a[offset..offset + 3 * n];
                            let dst = &mut b[offset..offset + 3 * n];
                            let work = &mut scratch[offset..offset + need];
                            match mode {
                                0 => f.process_with_scratch(src, work),
                                1 => f.process_outofplace_with_scratch(src, dst, work),
                                _ => f.process_immutable_with_scratch(src, dst, work),
                            }
                            if mode == 2 {
                                assert_eq!(a, original);
                            }
                            for (v, len) in [(&a, 3 * n), (&b, 3 * n), (&scratch, need)] {
                                assert!(
                                    v[..offset]
                                        .iter()
                                        .chain(&v[offset + len..])
                                        .all(|&x| x == guard)
                                );
                            }
                            let got = if mode == 0 { &a } else { &b };
                            for (g, r) in got[offset..offset + 3 * n].chunks_exact(n).zip(&refs) {
                                let e = error_vs_dd(g, r).rel_l2 / eps;
                                assert!(
                                    e.is_finite() && e <= 2.0 * (n as f64).log2() + 2.0,
                                    "{shape:?} {n} {dir} {mode} {offset}: {e}"
                                );
                            }
                        }
                    }
                }
            }
        }
    }
    run::<f32>(f64::from(f32::EPSILON));
    run::<f64>(f64::EPSILON);
}

#[test]
fn small_measure_candidates_include_estimate_and_stockham() {
    for cap in [
        Isa::Scalar,
        Isa::Sse2,
        Isa::Avx2,
        Isa::Avx512Ymm,
        Isa::Avx512,
    ] {
        if cap > detected_isa() {
            continue;
        }
        for f64_ in [false, true] {
            for n in 2..=256 {
                let c = crate::planner::candidates(n, cap, f64_);
                let measured = &c[..c.len().min(8)];
                if c.iter().any(|x| x.kernel.is_small()) {
                    assert!(measured.iter().any(|x| x.kernel.is_small()));
                    assert!(measured.iter().any(|x| !x.kernel.is_small()));
                }
                assert!(
                    c.iter()
                        .all(|x| x.shape.isa <= cap && crate::isa::available(x.shape.isa))
                );
                for special in c.iter().filter(|x| x.kernel.is_leaf()) {
                    assert!(
                        measured
                            .iter()
                            .any(|x| x.kernel == special.kernel && x.shape == special.shape)
                    );
                }
                if let Some((kernel, shape)) = crate::small_dispatch::incumbent(n, cap, f64_)
                    && c.iter().any(|x| x.kernel == kernel && x.shape == shape)
                {
                    assert!(
                        measured
                            .iter()
                            .any(|x| x.kernel == kernel && x.shape == shape)
                    );
                }
                // The measured table can supersede either historical dispatch
                // table. Measure must time the actual Estimate first.
                if let Some(estimate) = crate::planner::estimate(n, cap, f64_) {
                    assert_eq!(
                        (c[0].kernel, c[0].shape, c[0].radices.as_slice()),
                        (estimate.kernel, estimate.shape, estimate.radices.as_slice())
                    );
                }
            }
        }
    }
}

#[test]
fn fixed_scratch_aligned_to_real_but_not_complex_stride() {
    // A valid Complex<T> slice need only have T's alignment. Offsetting a
    // 64-byte-aligned struct by one real makes 64-byte alignment unreachable
    // by stepping whole complex values, for both f32 and f64.
    #[repr(C, align(64))]
    struct Shifted<T> {
        prefix: T,
        data: [Complex<T>; 272],
        suffix: T,
    }
    fn run<T: FftNum + ToDd>(eps: f64) {
        let f64_ = T::precision() == crate::isa::Precision::F64;
        let mut ss = shapes(detected_isa(), f64_);
        for shape in shapes(Isa::Avx2.min(detected_isa()), f64_) {
            if !ss.contains(&shape) {
                ss.push(shape);
            }
        }
        for shape in ss {
            for n in [32, 64, 128, 256] {
                let Some(radices) = choose_radices(n / shape.lanes, 8) else {
                    continue;
                };
                for dir in [FftDirection::Forward, FftDirection::Inverse] {
                    let Some(f) = crate::engine::fixed::build::<T>(n, dir, shape, &radices) else {
                        continue;
                    };
                    let guard =
                        Complex::new(T::from_f64(123.0).unwrap(), T::from_f64(-456.0).unwrap());
                    let input = to_t::<T>(&random_c64(n, 43));
                    let reference = reference_dd(
                        &widen(&input),
                        if dir == FftDirection::Forward {
                            Dir::Forward
                        } else {
                            Dir::Inverse
                        },
                    );
                    for immutable in [false, true] {
                        let mut work = Shifted {
                            prefix: guard.re,
                            data: [guard; 272],
                            suffix: guard.im,
                        };
                        assert_eq!(work.data.as_ptr().align_offset(64), usize::MAX);
                        let need = f.get_inplace_scratch_len();
                        let mut output = input.clone();
                        if immutable {
                            f.process_immutable_with_scratch(
                                &input,
                                &mut output,
                                &mut work.data[..need],
                            );
                        } else {
                            f.process_with_scratch(&mut output, &mut work.data[..need]);
                        }
                        assert_eq!(work.prefix, guard.re);
                        assert_eq!(work.suffix, guard.im);
                        assert!(work.data[need..].iter().all(|&x| x == guard));
                        let e = error_vs_dd(&output, &reference).rel_l2 / eps;
                        assert!(
                            e.is_finite() && e <= 2.0 * (n as f64).log2() + 2.0,
                            "{shape:?} n={n} {dir}: {e}"
                        );
                    }
                }
            }
        }
    }
    run::<f32>(f64::from(f32::EPSILON));
    run::<f64>(f64::EPSILON);
}

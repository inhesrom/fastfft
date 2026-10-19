//! Exercise every interleaved and rectangular candidate, not just Estimate defaults.
use crate::api::{FftDirection, FftNum};
use crate::isa::{Precision, detected_isa};
use fastfft_testkit::{Dir, error_vs_dd, random_c64, reference_dd};
use num_complex::Complex;

/// `P = 1` puts the data one real past a 64-byte boundary (never aligned
/// for SIMD); `P = 0` starts it on the boundary.
#[repr(C, align(64))]
struct Shifted<T, const P: usize> {
    prefix: [T; P],
    data: [Complex<T>; 800],
    suffix: T,
}

fn run<T: FftNum, const P: usize>() {
    let zero = Complex::new(T::zero(), T::zero());
    let guard = Complex::new(T::from_f64(4321.).unwrap(), T::from_f64(-8765.).unwrap());
    for n in [
        2, 4, 6, 8, 9, 12, 15, 16, 18, 24, 32, 36, 48, 64, 80, 96, 108, 120, 128, 160, 210, 240,
        256,
    ] {
        let f64_ = T::precision() == Precision::F64;
        let mut cs = crate::planner::candidates(n, detected_isa(), f64_);
        for c in crate::planner::candidates(n, crate::Isa::Avx2.min(detected_isa()), f64_) {
            if !cs
                .iter()
                .any(|x| x.kernel == c.kernel && x.shape == c.shape && x.radices == c.radices)
            {
                cs.push(c);
            }
        }
        for c in cs.into_iter().filter(|c| {
            matches!(
                c.kernel,
                crate::planner::CandidateKernel::InterleavedSmall
                    | crate::planner::CandidateKernel::RectangularSmall
            )
        }) {
            let shape = c.shape;
            for dir in [FftDirection::Forward, FftDirection::Inverse] {
                let f = crate::planner::build_candidate::<T>(n, dir, &c);
                let inv = crate::planner::build_candidate::<T>(n, dir.opposite_direction(), &c);
                for count in [1, 3] {
                    let input: Vec<_> = random_c64(n * count, 19)
                        .iter()
                        .map(|z| {
                            Complex::new(T::from_f64(z.re).unwrap(), T::from_f64(z.im).unwrap())
                        })
                        .collect();
                    let widen = |b: &[Complex<T>]| {
                        b.iter()
                            .map(|z| Complex::new(z.re.to_f64().unwrap(), z.im.to_f64().unwrap()))
                            .collect::<Vec<_>>()
                    };
                    let refs: Vec<_> = input
                        .chunks(n)
                        .map(|chunk| {
                            reference_dd(
                                &widen(chunk),
                                if dir == FftDirection::Forward {
                                    Dir::Forward
                                } else {
                                    Dir::Inverse
                                },
                            )
                        })
                        .collect();
                    for offset in 0..8 {
                        for mode in 0..4 {
                            let mut a = Shifted::<T, P> {
                                prefix: [guard.re; P],
                                data: [guard; 800],
                                suffix: guard.im,
                            };
                            let mut b = Shifted::<T, P> {
                                prefix: [guard.re; P],
                                data: [guard; 800],
                                suffix: guard.im,
                            };
                            assert_eq!(a.data.as_ptr() as usize % 64, P * size_of::<T>());
                            a.data[offset..offset + n * count].copy_from_slice(&input);
                            let saved = a.data;
                            let src = &mut a.data[offset..offset + n * count];
                            let dst = &mut b.data[offset..offset + n * count];
                            let mut scratch = [guard; 3];
                            match mode {
                                0 => f.process_with_scratch(src, &mut scratch),
                                1 => f.process_outofplace_with_scratch(src, dst, &mut scratch),
                                2 => f.process_immutable_with_scratch(src, dst, &mut scratch),
                                _ => f.process(src),
                            }
                            assert_eq!(scratch, [guard; 3]);
                            if mode == 1 || mode == 2 {
                                assert_eq!(a.data, saved);
                            }
                            for v in [&a, &b] {
                                assert!(v.prefix.iter().all(|&x| x == guard.re));
                                assert_eq!(v.suffix, guard.im);
                                assert!(
                                    v.data[..offset]
                                        .iter()
                                        .chain(&v.data[offset + n * count..])
                                        .all(|&z| z == guard)
                                );
                            }
                            let out = if mode == 0 || mode == 3 {
                                &mut a.data
                            } else {
                                &mut b.data
                            };
                            for (chunk, r) in out[offset..offset + n * count].chunks(n).zip(&refs) {
                                let e = error_vs_dd(&widen(chunk), r).rel_l2
                                    / T::epsilon().to_f64().unwrap();
                                assert!(
                                    e.is_finite() && e <= 2. * (n as f64).log2() + 2.,
                                    "{shape:?} n={n} {dir} mode={mode}: {e}"
                                );
                            }
                            inv.process(&mut out[offset..offset + n * count]);
                            for (z, x) in out[offset..offset + n * count].iter().zip(&input) {
                                let scale = T::from_usize(n).unwrap();
                                let err = ((z.re / scale - x.re).abs()
                                    + (z.im / scale - x.im).abs())
                                .to_f64()
                                .unwrap();
                                assert!(
                                    err.is_finite() && err < 64. * T::epsilon().to_f64().unwrap()
                                );
                            }
                        }
                    }
                }
                for len in [0, n - 1, n + 1] {
                    for mode in 0..4 {
                        let mut src = vec![zero; len];
                        let mut dst = src.clone();
                        let result =
                            std::panic::catch_unwind(std::panic::AssertUnwindSafe(|| match mode {
                                0 => f.process_with_scratch(&mut src, &mut []),
                                1 => f.process_outofplace_with_scratch(&mut src, &mut dst, &mut []),
                                2 => f.process_immutable_with_scratch(&src, &mut dst, &mut []),
                                _ => f.process(&mut src),
                            }));
                        assert!(
                            result.is_err(),
                            "bad buffer accepted: {shape:?} {n} len={len} mode={mode}"
                        );
                    }
                }
                for len in [0, n - 1, n + 1, 2 * n] {
                    let mut src = vec![zero; n];
                    let mut dst = vec![zero; len];
                    assert!(
                        std::panic::catch_unwind(std::panic::AssertUnwindSafe(
                            || f.process_outofplace_with_scratch(&mut src, &mut dst, &mut [])
                        ))
                        .is_err()
                    );
                    assert!(
                        std::panic::catch_unwind(std::panic::AssertUnwindSafe(
                            || f.process_immutable_with_scratch(&src, &mut dst, &mut [])
                        ))
                        .is_err()
                    );
                }
            }
        }
    }
}

fn planner_contracts<T: FftNum>() {
    use crate::isa::Isa;
    use crate::{FftPlanner, PlanMode, PlannerOptions};
    use std::sync::Arc;
    use std::time::Duration;
    for cap in [
        Isa::Scalar,
        Isa::Sse2,
        Isa::Avx2,
        Isa::Avx512Ymm,
        Isa::Avx512,
    ] {
        for mode in [
            PlanMode::Estimate,
            PlanMode::Measure {
                time_limit: Duration::ZERO,
            },
        ] {
            let mut p = FftPlanner::<T>::with_options(
                PlannerOptions::default().with_isa_cap(cap).with_mode(mode),
            );
            for n in [2, 4, 8, 9, 16, 18, 24, 32, 36, 48, 64, 128, 256] {
                for dir in [FftDirection::Forward, FftDirection::Inverse] {
                    let f = p.plan_fft(n, dir);
                    assert!(Arc::ptr_eq(&f, &p.plan_fft(n, dir)));
                    let desc = p.describe_plan(n, dir);
                    assert!(p.isa() <= cap);
                    if desc.starts_with("small") {
                        assert!(
                            desc.contains("kernel=generic")
                                || desc.contains("kernel=interleaved")
                                || desc.contains("kernel=rectangular")
                        );
                        assert!(desc.contains("decomposition=") && desc.contains("scratch=0"));
                        assert_eq!(
                            (
                                f.get_inplace_scratch_len(),
                                f.get_outofplace_scratch_len(),
                                f.get_immutable_scratch_len()
                            ),
                            (0, 0, 0)
                        );
                    }
                    if desc.contains("kernel=interleaved") {
                        assert!(
                            matches!(
                                n,
                                2 | 4 | 8 | 9 | 16 | 18 | 24 | 32 | 36 | 48 | 64 | 128 | 256
                            ) && crate::isa::available(Isa::Avx2)
                        );
                        assert!(
                            (desc.starts_with("small avx2 ") && cap >= Isa::Avx2)
                                || (desc.starts_with("small avx512-ymm ") && cap >= Isa::Avx512Ymm)
                                || (desc.starts_with("small avx512 ") && cap >= Isa::Avx512)
                        );
                    }
                }
            }
        }
    }
}

#[test]
fn preserved_incumbent_dispatch() {
    use crate::isa::Isa;
    // FNV-1a over all 230 choices in the preserved current-Small baseline.
    // Guards the discriminant/table rewrite against unrelated-size tuning.
    let mut fingerprint = 0xcbf29ce484222325u64;
    for f64_ in [false, true] {
        for n in 2..=256 {
            for cap in [
                Isa::Scalar,
                Isa::Sse2,
                Isa::Avx2,
                Isa::Avx512Ymm,
                Isa::Avx512,
            ] {
                if let Some((kernel, shape)) = crate::small_dispatch::incumbent(n, cap, f64_) {
                    for byte in format!(
                        "{f64_}:{n}:{cap}:{}:{}:{};",
                        kernel.name(),
                        shape.isa,
                        shape.lanes
                    )
                    .bytes()
                    {
                        fingerprint = (fingerprint ^ u64::from(byte)).wrapping_mul(0x100000001b3);
                    }
                }
            }
        }
    }
    assert_eq!(fingerprint, 0x0869c8587ef6b4d2);
}

#[test]
fn latency_planner_contracts() {
    planner_contracts::<f32>();
    planner_contracts::<f64>();
}

#[test]
fn all_specialized_contracts_f32() {
    run::<f32, 1>();
    run::<f32, 0>();
}
#[test]
fn all_specialized_contracts_f64() {
    run::<f64, 1>();
    run::<f64, 0>();
}

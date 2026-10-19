//! Verify through the Fft interface against the independent double-double FFT.
use super::*;
use crate::api::{Fft, FftDirection};
use crate::fft::{FftImpl, Kernel};
use crate::isa::{Precision, effective_isa};
use fastfft_testkit::{Dir, error_vs_dd, random_c64, reference_dd};
use num_complex::Complex;
use num_traits::{FromPrimitive, Zero};

#[repr(C, align(64))]
struct Shifted<T> {
    prefix: T,
    data: [Complex<T>; 8192],
    suffix: T,
}

/// Exercise every memory-tail length independently of which smooth matrix
/// dimensions happen to occur in the reference transforms below.
#[inline(always)]
unsafe fn prefix_memory<V: Vector>()
where
    V::S: FftNum,
{
    // SAFETY: the tier-specific entry below supplies the vector's features.
    // Input has exactly the readable prefix after a one-scalar offset; full
    // vector stores target lane arrays, and output has room for the prefix.
    unsafe {
        let guard = V::S::from_f64(-999.).unwrap();
        for valid in 0..=V::LANES {
            let input: Box<[_]> = (0..2 * valid + 1)
                .map(|j| V::S::from_f64(j as f64 + 1.).unwrap())
                .collect();
            let (re, im) = load::<V, true>(input.as_ptr().add(1), valid);
            let (mut real, mut imag) = (vec![guard; V::LANES], vec![guard; V::LANES]);
            V::store(real.as_mut_ptr(), re);
            V::store(imag.as_mut_ptr(), im);
            for lane in 0..V::LANES {
                let expected = if lane < valid {
                    (input[1 + 2 * lane], input[2 + 2 * lane])
                } else {
                    (V::S::zero(), V::S::zero())
                };
                assert_eq!((real[lane], imag[lane]), expected, "valid={valid}");
            }
            let mut output = vec![guard; 2 * V::LANES + 2];
            store::<V>(output.as_mut_ptr().add(1), re, im, valid);
            assert_eq!(&output[1..1 + 2 * valid], &input[1..]);
            assert_eq!(output[0], guard);
            assert!(output[1 + 2 * valid..].iter().all(|&x| x == guard));
        }
    }
}

#[test]
fn fourstep_bounded_prefixes() {
    macro_rules! check {
        ($v:ty, $tier:ident $(, $features:literal)?) => {{
            $(#[target_feature(enable = $features)])?
            unsafe fn run() {
                // SAFETY: the call below verifies this entry's CPU features.
                unsafe { prefix_memory::<$v>() }
            }
            if Isa::$tier.compiled() && Isa::$tier <= effective_isa(None) {
                // SAFETY: compiled, detected and capped tier checked above.
                unsafe { run() }
            }
        }};
    }
    check!(crate::isa::scalar::S32, Scalar);
    check!(crate::isa::scalar::S64, Scalar);
    #[cfg(target_arch = "x86_64")]
    {
        use crate::isa::x86::*;
        check!(F32x4, Sse2, "sse2");
        check!(F64x2, Sse2, "sse2");
        check!(F32x8, Avx2, "avx2,fma");
        check!(F64x4, Avx2, "avx2,fma");
        check!(F32x8v, Avx512Ymm, "avx512f,avx512vl");
        check!(F64x4v, Avx512Ymm, "avx512f,avx512vl");
        check!(F32x16, Avx512, "avx512f");
        check!(F64x8, Avx512, "avx512f");
    }
}

fn shapes<T: FftNum>() -> Vec<Shape> {
    let mut ss = super::super::shapes(effective_isa(None), T::precision() == Precision::F64);
    for s in super::super::shapes(
        Isa::Avx2.min(effective_isa(None)),
        T::precision() == Precision::F64,
    ) {
        if !ss.contains(&s) {
            ss.push(s);
        }
    }
    ss
}

fn fft<T: FftNum>(n: usize, a: usize, shape: Shape, dir: FftDirection) -> FftImpl<T> {
    FftImpl::new(
        n,
        dir,
        Kernel::FourStep {
            shape,
            plan: FourStepPlan::new(n, a, shape.lanes),
        },
    )
}

#[test]
fn panel_groups_use_l1_l2_and_last_level_capacity() {
    use crate::isa::cache::CacheSizes;
    let zen4 = CacheSizes {
        last_level: 16 * 1024 * 1024,
        ..CacheSizes::default()
    };
    let plan = |cache| FourStepPlan::<f32>::with_cache(32768, 128, 8, cache);
    assert_eq!(plan(zen4).groups, 16);
    // Both work panels fit in a larger L1; grouping is unnecessary.
    assert_eq!(
        plan(CacheSizes {
            l1_data: 64 * 1024,
            ..zen4
        })
        .groups,
        1
    );
    // A smaller L2 or LLC bounds group storage separately.
    assert_eq!(
        plan(CacheSizes {
            l2: 64 * 1024,
            ..zen4
        })
        .groups,
        8
    );
    assert_eq!(
        plan(CacheSizes {
            last_level: 512 * 1024,
            ..zen4
        })
        .groups,
        4
    );
    assert_eq!(plan(CacheSizes::default()).groups, 8);
    // Odd/partial panels retain their existing execution path.
    assert_eq!(FourStepPlan::<f32>::with_cache(1331, 11, 8, zen4).groups, 1);
}

#[test]
fn cache_scaled_groups_preserve_public_execution_contracts() {
    use crate::isa::cache::CacheSizes;
    fn check<T: FftNum>() {
        let shape = shapes::<T>()[0];
        for cache in [
            CacheSizes::default(),
            CacheSizes {
                l1_data: 1024 * 1024,
                ..CacheSizes::default()
            },
            CacheSizes {
                l2: 16 * 1024,
                last_level: 16 * 1024 * 1024,
                ..CacheSizes::default()
            },
        ] {
            for dir in [FftDirection::Forward, FftDirection::Inverse] {
                let f = FftImpl::new(
                    32768,
                    dir,
                    Kernel::FourStep {
                        shape,
                        plan: FourStepPlan::<T>::with_cache(32768, 128, shape.lanes, cache),
                    },
                );
                crate::diagnostic::verify(&f);
            }
        }
    }
    check::<f32>();
    check::<f64>();
}

fn references<T: FftNum>() {
    for shape in shapes::<T>() {
        for (n, a) in [
            (9, 3),
            (15, 3),
            (18, 3),
            (27, 3),
            (45, 5),
            (81, 9),
            (108, 9),
            (210, 14),
            (243, 9),
            (504, 21),
            (1000, 25),
            (2000, 1000),
            (1331, 11),
            (2197, 13),
            (4725, 63),
            // Square and rectangular power-of-two panels cover grouping,
            // both orientations, and in-place final panel passes.
            (32768, 128),
            (65536, 1024),
        ] {
            for dir in [FftDirection::Forward, FftDirection::Inverse] {
                // Also exercise rectangular matrices in both orientations.
                for a in [a, n / a] {
                    let f = fft::<T>(n, a, shape, dir);
                    crate::diagnostic::verify(&f);
                }
            }
        }
    }
    // Larger multi-pass panels from the ticket's motivating workloads.
    let shape = shapes::<T>()[0];
    for n in [19683, 165375] {
        for dir in [FftDirection::Forward, FftDirection::Inverse] {
            crate::diagnostic::verify(&fft::<T>(n, decomposition(n).unwrap(), shape, dir));
        }
    }
}

fn contracts<T: FftNum>() {
    let guard = Complex::new(T::from_f64(4321.).unwrap(), T::from_f64(-8765.).unwrap());
    let widen = |v: &[Complex<T>]| {
        v.iter()
            .map(|z| Complex::new(z.re.to_f64().unwrap(), z.im.to_f64().unwrap()))
            .collect::<Vec<_>>()
    };
    for shape in shapes::<T>() {
        for n in [9, 18, 81, 210, 1331] {
            for dir in [FftDirection::Forward, FftDirection::Inverse] {
                let f = fft::<T>(n, decomposition(n).unwrap(), shape, dir);
                let input: Vec<_> = random_c64(n * 3, 41)
                    .iter()
                    .map(|z| Complex::new(T::from_f64(z.re).unwrap(), T::from_f64(z.im).unwrap()))
                    .collect();
                let refs: Vec<_> = input
                    .chunks(n)
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
                for mode in 0..4 {
                    let storage = || {
                        Box::new(Shifted {
                            prefix: guard.re,
                            data: [guard; 8192],
                            suffix: guard.im,
                        })
                    };
                    let (mut src, mut dst, mut scratch) = (storage(), storage(), storage());
                    let (io, oo, so) = (1, 3, 7);
                    let len = input.len();
                    let need = match mode {
                        0 | 3 => f.get_inplace_scratch_len(),
                        1 => f.get_outofplace_scratch_len(),
                        _ => f.get_immutable_scratch_len(),
                    };
                    src.data[io..io + len].copy_from_slice(&input);
                    let a = &mut src.data[io..io + len];
                    let b = &mut dst.data[oo..oo + len];
                    let s = &mut scratch.data[so..so + need];
                    let call = |a: &mut [Complex<T>],
                                b: &mut [Complex<T>],
                                s: &mut [Complex<T>]| match mode {
                        0 => f.process_with_scratch(a, s),
                        1 => f.process_outofplace_with_scratch(a, b, s),
                        2 => f.process_immutable_with_scratch(a, b, s),
                        _ => f.process(a),
                    };
                    if mode < 3 {
                        assert!(
                            std::panic::catch_unwind(std::panic::AssertUnwindSafe(|| call(
                                a,
                                b,
                                &mut s[..need - 1]
                            )))
                            .is_err()
                        );
                    }
                    call(a, b, s);
                    if mode == 2 {
                        assert_eq!(&src.data[io..io + len], &input);
                    }
                    for (buf, start, len) in
                        [(&src, io, len), (&dst, oo, len), (&scratch, so, need)]
                    {
                        assert_eq!(buf.prefix, guard.re);
                        assert_eq!(buf.suffix, guard.im);
                        assert!(
                            buf.data[..start]
                                .iter()
                                .chain(&buf.data[start + len..])
                                .all(|&x| x == guard)
                        );
                    }
                    let out = if mode == 0 || mode == 3 {
                        &src.data[io..io + len]
                    } else {
                        &dst.data[oo..oo + len]
                    };
                    for (chunk, reference) in out.chunks(n).zip(&refs) {
                        let e = error_vs_dd(&widen(chunk), reference).rel_l2
                            / T::epsilon().to_f64().unwrap();
                        assert!(
                            e.is_finite() && e <= 2. * (n as f64).log2() + 2.,
                            "{shape:?} n={n} {dir} mode={mode}: {e}"
                        );
                    }
                }
            }
        }
    }
}

#[test]
fn fourstep_references_f32() {
    references::<f32>();
}
#[test]
fn fourstep_references_f64() {
    references::<f64>();
}
#[test]
fn fourstep_contracts_f32() {
    contracts::<f32>();
}
#[test]
fn fourstep_contracts_f64() {
    contracts::<f64>();
}

#[test]
fn miri_fourstep_panels() {
    let shape = Shape {
        isa: Isa::Scalar,
        lanes: 1,
    };
    for dir in [FftDirection::Forward, FftDirection::Inverse] {
        crate::diagnostic::verify(&fft::<f64>(45, 3, shape, dir));
    }
}

#[test]
fn fourstep_planner_candidates() {
    use crate::{FftPlanner, PlanMode, PlannerOptions};
    for cap in [
        Isa::Scalar,
        Isa::Sse2,
        Isa::Avx2,
        Isa::Avx512Ymm,
        Isa::Avx512,
    ] {
        let mut p =
            FftPlanner::<f64>::with_options(PlannerOptions::default().with_isa_cap(cap).with_mode(
                PlanMode::Measure {
                    time_limit: std::time::Duration::ZERO,
                },
            ));
        for n in [27, 81, 210, 1331] {
            for dir in [FftDirection::Forward, FftDirection::Inverse] {
                let f = p.plan_fft(n, dir);
                crate::diagnostic::verify(f.as_ref());
                assert!(std::sync::Arc::ptr_eq(&f, &p.plan_fft(n, dir)));
                let desc = p.describe_plan(n, dir);
                if desc.starts_with("fourstep") {
                    assert!(desc.contains("decomposition="));
                    assert!(desc.contains(&format!("scratch={}", f.get_inplace_scratch_len())));
                }
            }
        }
    }
}

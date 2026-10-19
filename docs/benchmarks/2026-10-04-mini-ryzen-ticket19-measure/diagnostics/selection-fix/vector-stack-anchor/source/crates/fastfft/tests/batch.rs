//! Consecutive transforms through the public planner and all Fft placements.
use fastfft::{FftDirection, FftNum, FftPlanner, Isa, PlannerOptions, num_complex::Complex};
use fastfft_testkit::{
    error_vs_f64,
    metrics::{ToDd, fast_path_bound_eps},
    random_c64,
};
use std::panic::{AssertUnwindSafe, catch_unwind};

fn batch_contracts<T: FftNum + ToDd>() {
    let zero = Complex::new(T::zero(), T::zero());
    let guard = Complex::new(T::from_f64(123.0).unwrap(), T::from_f64(-456.0).unwrap());
    for cap in [
        Isa::Scalar,
        Isa::Sse2,
        Isa::Avx2,
        Isa::Avx512Ymm,
        Isa::Avx512,
    ] {
        let mut planner =
            FftPlanner::<T>::with_options(PlannerOptions::default().with_isa_cap(cap));
        for n in [8, 16, 32, 64, 128, 256, 512, 1024] {
            let lanes = 4;
            for dir in [FftDirection::Forward, FftDirection::Inverse] {
                let fft = planner.plan_fft(n, dir);
                for count in [1, 3, lanes + 1, 2 * lanes] {
                    let len = n * count;
                    let source = random_c64(len, (n * count) as u64 + 73);
                    let mut reference = source.clone();
                    let rf = rustfft::FftPlanner::<f64>::new().plan_fft(
                        n,
                        if dir == FftDirection::Forward {
                            rustfft::FftDirection::Forward
                        } else {
                            rustfft::FftDirection::Inverse
                        },
                    );
                    rf.process(&mut reference);
                    let mut input = vec![guard; len + 2];
                    for (dst, src) in input[1..len + 1].iter_mut().zip(&source) {
                        *dst = Complex::new(
                            T::from_f64(src.re).unwrap(),
                            T::from_f64(src.im).unwrap(),
                        );
                    }
                    let original = input.clone();
                    let mut automatic = original.clone();
                    fft.process(&mut automatic[1..len + 1]);
                    let error = error_vs_f64(&automatic[1..len + 1], &reference)
                        .in_eps(T::epsilon().to_f64().unwrap());
                    assert!(
                        error.rel_l2 <= fast_path_bound_eps(n)
                            && error.max_rel <= fast_path_bound_eps(n)
                    );
                    assert_eq!(automatic[0], guard);
                    assert_eq!(automatic[len + 1], guard);
                    for mode in 0..3 {
                        let need = match mode {
                            0 => fft.get_inplace_scratch_len(),
                            1 => fft.get_outofplace_scratch_len(),
                            _ => fft.get_immutable_scratch_len(),
                        };
                        let mut scratch = vec![guard; need + 2];
                        let mut output = vec![guard; len + 2];
                        input.copy_from_slice(&original);
                        let s = &mut scratch[1..need + 1];
                        match mode {
                            0 => fft.process_with_scratch(&mut input[1..len + 1], s),
                            1 => fft.process_outofplace_with_scratch(
                                &mut input[1..len + 1],
                                &mut output[1..len + 1],
                                s,
                            ),
                            _ => fft.process_immutable_with_scratch(
                                &input[1..len + 1],
                                &mut output[1..len + 1],
                                s,
                            ),
                        }
                        let got = if mode == 0 {
                            &input[1..len + 1]
                        } else {
                            &output[1..len + 1]
                        };
                        let eps = T::epsilon().to_f64().unwrap();
                        let error = error_vs_f64(got, &reference).in_eps(eps);
                        let bound = fast_path_bound_eps(n);
                        assert!(
                            error.rel_l2 <= bound && error.max_rel <= bound,
                            "cap={cap} n={n} count={count} dir={dir} mode={mode}: {error:?}"
                        );
                        assert_eq!(input[0], guard);
                        assert_eq!(input[len + 1], guard);
                        assert_eq!(output[0], guard);
                        assert_eq!(output[len + 1], guard);
                        assert_eq!(scratch[0], guard);
                        assert_eq!(scratch[need + 1], guard);
                        if mode == 2 {
                            assert_eq!(input, original);
                        }
                        if need > 0 {
                            input.copy_from_slice(&original);
                            output.fill(guard);
                            let result = catch_unwind(AssertUnwindSafe(|| match mode {
                                0 => fft.process_with_scratch(
                                    &mut input[1..len + 1],
                                    &mut vec![zero; need - 1],
                                ),
                                1 => fft.process_outofplace_with_scratch(
                                    &mut input[1..len + 1],
                                    &mut output[1..len + 1],
                                    &mut vec![zero; need - 1],
                                ),
                                _ => fft.process_immutable_with_scratch(
                                    &input[1..len + 1],
                                    &mut output[1..len + 1],
                                    &mut vec![zero; need - 1],
                                ),
                            }));
                            assert!(result.is_err());
                            assert_eq!(input, original);
                            assert!(output.iter().all(|x| *x == guard));
                        }
                    }
                }
            }
        }
    }
}
#[test]
fn batch_f32_all_modes_and_remainders() {
    batch_contracts::<f32>();
}
#[test]
fn batch_f64_all_modes_and_remainders() {
    batch_contracts::<f64>();
}

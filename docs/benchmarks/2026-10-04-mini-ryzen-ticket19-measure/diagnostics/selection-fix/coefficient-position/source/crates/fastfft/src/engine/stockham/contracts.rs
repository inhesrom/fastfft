//! Public Fft contracts with the cache gate forced on/off and scalar-only
//! alignment, including batches whose chunks have different page offsets.

use crate::api::{Fft, FftDirection, FftNum};
use crate::engine::{shapes, stockham::StockhamPlan};
use crate::fft::{FftImpl, Kernel};
use crate::isa::{Precision, detected_isa};
use fastfft_testkit::{Dir, error_vs_dd, random_c64, reference_dd};
use num_complex::Complex;

#[repr(C, align(64))]
struct Storage<T, const P: usize> {
    prefix: [T; P],
    data: [Complex<T>; 8192],
    suffix: T,
}

fn check<T: FftNum, const P: usize>(f: &dyn Fft<T>, dir: FftDirection) {
    let n = f.len();
    let count = 3;
    let guard = Complex::new(T::from_f64(12345.).unwrap(), T::from_f64(-6789.).unwrap());
    let input: Vec<_> = random_c64(n * count, 71)
        .iter()
        .map(|z| Complex::new(T::from_f64(z.re).unwrap(), T::from_f64(z.im).unwrap()))
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
    let storage = || {
        Box::new(Storage::<T, P> {
            prefix: [guard.re; P],
            data: [guard; 8192],
            suffix: guard.im,
        })
    };
    for (io, oo, so) in [(0, 0, 0), (1, 0, 7), (0, 1, 3), (7, 5, 255), (63, 127, 511)] {
        for mode in 0..4 {
            let need = match mode {
                0 | 3 => f.get_inplace_scratch_len(),
                1 => f.get_outofplace_scratch_len(),
                _ => f.get_immutable_scratch_len(),
            };
            let (mut src, mut dst, mut scratch) = (storage(), storage(), storage());
            src.data[io..io + input.len()].copy_from_slice(&input);
            let a = &mut src.data[io..io + input.len()];
            let b = &mut dst.data[oo..oo + input.len()];
            let s = &mut scratch.data[so..so + need];
            if need > 0 && mode < 3 && (io, oo, so) == (0, 0, 0) {
                assert!(
                    std::panic::catch_unwind(std::panic::AssertUnwindSafe(|| match mode {
                        0 => f.process_with_scratch(a, &mut s[..need - 1]),
                        1 => f.process_outofplace_with_scratch(a, b, &mut s[..need - 1]),
                        _ => f.process_immutable_with_scratch(a, b, &mut s[..need - 1]),
                    }))
                    .is_err(),
                    "undersized scratch accepted"
                );
            }
            match mode {
                0 => f.process_with_scratch(a, s),
                1 => f.process_outofplace_with_scratch(a, b, s),
                2 => f.process_immutable_with_scratch(a, b, s),
                _ => f.process(a),
            }
            let what = format!("n={n} dir={dir} P={P} mode={mode} offsets={io},{oo},{so}");
            if mode == 2 {
                assert_eq!(
                    &src.data[io..io + input.len()],
                    &input,
                    "{what}: input modified"
                );
            }
            for (buf, start, len) in [
                (&src, io, input.len()),
                (&dst, oo, input.len()),
                (&scratch, so, need),
            ] {
                assert!(buf.prefix.iter().all(|&x| x == guard.re));
                assert_eq!(buf.suffix, guard.im);
                assert!(
                    buf.data[..start]
                        .iter()
                        .chain(&buf.data[start + len..])
                        .all(|&x| x == guard),
                    "{what}: guard modified"
                );
            }
            let got = if mode == 0 || mode == 3 {
                &src.data[io..io + input.len()]
            } else {
                &dst.data[oo..oo + input.len()]
            };
            for (chunk, reference) in got.chunks(n).zip(&refs) {
                let error =
                    error_vs_dd(&widen(chunk), reference).rel_l2 / T::epsilon().to_f64().unwrap();
                assert!(
                    error.is_finite() && error < 8. * (n as f64).log2() + 8.,
                    "{what}: error {error}"
                );
            }
        }
    }
}

fn contracts<T: FftNum, const P: usize>() {
    let f64_ = T::precision() == Precision::F64;
    let mut ss = vec![shapes(detected_isa(), f64_)[0]];
    // Include a narrow shape to exercise padded_n on non-power-of-two sizes.
    if crate::isa::available(crate::Isa::Sse2) {
        let narrow = crate::engine::Shape {
            isa: crate::Isa::Sse2,
            lanes: if f64_ { 2 } else { 4 },
        };
        if !ss.contains(&narrow) {
            ss.push(narrow);
        }
    }
    for dir in [FftDirection::Forward, FftDirection::Inverse] {
        for &shape in &ss {
            for radices in [vec![8, 2, 8], vec![3, 3, 3]] {
                let n = shape.lanes * radices.iter().product::<usize>();
                for cache in [0, 16 * 1024 * 1024] {
                    let f = FftImpl::new(
                        n,
                        dir,
                        Kernel::Stockham {
                            shape,
                            plan: StockhamPlan::<T>::with_cache(
                                n,
                                shape.lanes,
                                radices.clone(),
                                cache,
                            ),
                        },
                    );
                    check::<T, P>(&f, dir);
                }
            }
        }
        let mut planner = crate::FftPlanner::<T>::new();
        check::<T, P>(planner.plan_fft(257, dir).as_ref(), dir);
    }
}

#[test]
fn cache_gated_public_contracts_f32() {
    contracts::<f32, 0>();
    contracts::<f32, 1>();
}

#[test]
fn cache_gated_public_contracts_f64() {
    contracts::<f64, 0>();
    contracts::<f64, 1>();
}

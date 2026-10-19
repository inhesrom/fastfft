use super::*;
use crate::engine::{Shape, stockham::StockhamPlan};
use crate::fft::Kernel;

fn supported_shape(shape: &Shape) -> bool {
    matches!(
        shape.isa,
        Isa::Scalar | Isa::Sse2 | Isa::Avx2 | Isa::Avx512Ymm | Isa::Avx512
    )
}

fn exercise<T: FftNum>(
    shape: Shape,
    radices: Vec<usize>,
    direction: FftDirection,
    placement: SamplePlacement,
) {
    let n = radices.iter().product::<usize>() * shape.lanes;
    let plan = StockhamPlan::<T>::with_cache(n, shape.lanes, radices.clone(), 0);
    let fft = FftImpl::new(n, direction, Kernel::Stockham { shape, plan });
    let need = match placement {
        SamplePlacement::InPlace => fft.get_inplace_scratch_len(),
        SamplePlacement::OutOfPlace => fft.get_outofplace_scratch_len(),
        SamplePlacement::Immutable => fft.get_immutable_scratch_len(),
    };
    let mut input = vec![Complex::<T>::default(); n + 64];
    let mut output = input.clone();
    let mut scratch = vec![Complex::<T>::default(); need + 64];
    let input = &mut crate::scratch::aligned(&mut input)[..n];
    let output = &mut crate::scratch::aligned(&mut output)[..n];
    let scratch = &mut crate::scratch::aligned(&mut scratch)[..need];
    let data: Vec<_> = (0..n)
        .map(|i| {
            Complex::new(
                T::from_f64(((i * 17 + 3) % 31) as f64 / 31.0).unwrap(),
                T::from_f64(((i * 11 + 5) % 23) as f64 / 23.0).unwrap(),
            )
        })
        .collect();
    let mut diagnostic = StockhamDiagnostic::new(&fft, input, output, scratch, placement).unwrap();
    let geometry = diagnostic.geometry();
    assert_eq!(geometry.passes.len(), radices.len());
    let mut ns = 1;
    for (index, pass) in geometry.passes.iter().enumerate() {
        assert_eq!(pass.ns, ns);
        assert_eq!(pass.radix, radices[index]);
        assert_eq!(pass.user_input, index == 0);
        assert_eq!(
            pass.swap_input,
            index == 0 && direction == FftDirection::Inverse
        );
        let aliases = index + 1 == radices.len()
            && match placement {
                SamplePlacement::InPlace => radices.len().is_multiple_of(2),
                SamplePlacement::OutOfPlace => !radices.len().is_multiple_of(2),
                SamplePlacement::Immutable => false,
            };
        assert_eq!(pass.aliases, aliases);
        ns *= pass.radix;
    }
    diagnostic.reset(&data).unwrap();
    diagnostic.run_calls(StockhamRoute::Public, 1).unwrap();
    let reference = diagnostic.output().to_vec();
    for route in [
        StockhamRoute::Engine,
        StockhamRoute::Prefix(radices.len() + 1),
    ] {
        diagnostic.reset(&data).unwrap();
        diagnostic.run_calls(route, 1).unwrap();
        assert_eq!(
            diagnostic.output(),
            reference,
            "{shape:?} {direction:?} {placement:?} {route:?}"
        );
        if placement == SamplePlacement::Immutable {
            assert_eq!(diagnostic.input(), data);
        }
    }
    diagnostic.reset(&data).unwrap();
    for index in 0..radices.len() {
        diagnostic.run_calls(StockhamRoute::Pass(index), 1).unwrap();
    }
    diagnostic.run_calls(StockhamRoute::PhaseB, 1).unwrap();
    assert_eq!(diagnostic.output(), reference);

    diagnostic.reset(&data).unwrap();
    diagnostic
        .run_calls(StockhamRoute::Prefix(radices.len()), 1)
        .unwrap();
    diagnostic
        .run_calls(StockhamRoute::PhaseBFullBlocks, 1)
        .unwrap();
    if geometry.phase_b_tail_vectors != 0 {
        diagnostic.run_calls(StockhamRoute::PhaseBTail, 1).unwrap();
    } else {
        assert_eq!(
            diagnostic.run_calls(StockhamRoute::PhaseBTail, 1),
            Err(StockhamDiagnosticError::NoTail)
        );
    }
    assert_eq!(diagnostic.output(), reference);
    assert_eq!(diagnostic.geometry().plan, geometry.plan);
    assert_eq!(diagnostic.geometry().scratch, geometry.scratch);
    assert_eq!(
        diagnostic.run_calls(StockhamRoute::Pass(radices.len()), 1),
        Err(StockhamDiagnosticError::InvalidRoute)
    );
    assert_eq!(
        diagnostic.run_calls(StockhamRoute::Prefix(radices.len() + 2), 1),
        Err(StockhamDiagnosticError::InvalidRoute)
    );
}

fn all_shapes<T: FftNum>() {
    let mut shapes = Vec::new();
    for cap in [
        Isa::Scalar,
        Isa::Sse2,
        Isa::Avx2,
        Isa::Avx512Ymm,
        Isa::Avx512,
    ] {
        for shape in crate::engine::shapes(cap, T::precision() == Precision::F64) {
            if supported_shape(&shape) && !shapes.contains(&shape) {
                shapes.push(shape);
            }
        }
    }
    for shape in shapes {
        for radices in [vec![], vec![3], vec![4, 4], vec![4, 4, 2]] {
            for direction in [FftDirection::Forward, FftDirection::Inverse] {
                for placement in [
                    SamplePlacement::InPlace,
                    SamplePlacement::OutOfPlace,
                    SamplePlacement::Immutable,
                ] {
                    exercise::<T>(shape, radices.clone(), direction, placement);
                }
            }
        }
    }
}

fn page_view<T: FftNum>(owner: &mut [Complex<T>], len: usize) -> &mut [Complex<T>] {
    let aligned = crate::scratch::aligned(owner);
    let bytes = (4096 - (aligned.as_ptr() as usize % 4096)) % 4096;
    let offset = bytes / size_of::<Complex<T>>();
    &mut aligned[offset..offset + len]
}

fn collision_routes<T: FftNum>() {
    let mut shapes = Vec::new();
    for cap in [Isa::Avx2, Isa::Avx512Ymm, Isa::Avx512] {
        for shape in crate::engine::shapes(cap, T::precision() == Precision::F64) {
            if shape.lanes == 8 && !shapes.contains(&shape) {
                shapes.push(shape);
            }
        }
    }
    for shape in shapes {
        for radices in [vec![8, 8, 8], vec![8, 4, 4, 4]] {
            for direction in [FftDirection::Forward, FftDirection::Inverse] {
                let n = 4096;
                let plan = StockhamPlan::<T>::with_cache(n, 8, radices.clone(), 1 << 30);
                let fft = FftImpl::new(n, direction, Kernel::Stockham { shape, plan });
                let need = fft.get_inplace_scratch_len();
                let extra = 4096 / size_of::<Complex<T>>() + 64;
                let mut input_owner = vec![Complex::<T>::default(); n + extra];
                let mut scratch_owner = vec![Complex::<T>::default(); need + extra];
                let input = page_view(&mut input_owner, n);
                let scratch = page_view(&mut scratch_owner, need);
                let base = scratch.as_ptr() as usize;
                assert_eq!(input.as_ptr() as usize % 4096, 0);
                assert_eq!(base % 4096, 0);
                let data: Vec<_> = fastfft_testkit::random_c64(n, 37)
                    .into_iter()
                    .map(|v| Complex::new(T::from_f64(v.re).unwrap(), T::from_f64(v.im).unwrap()))
                    .collect();
                let widen = |values: &[Complex<T>]| {
                    values
                        .iter()
                        .map(|v| Complex::new(v.re.to_f64().unwrap(), v.im.to_f64().unwrap()))
                        .collect::<Vec<_>>()
                };
                let expected = fastfft_testkit::reference_dd(
                    &widen(&data),
                    if direction == FftDirection::Forward {
                        fastfft_testkit::Dir::Forward
                    } else {
                        fastfft_testkit::Dir::Inverse
                    },
                );
                let mut diagnostic = StockhamDiagnostic::new(
                    &fft,
                    input,
                    &mut [],
                    scratch,
                    SamplePlacement::InPlace,
                )
                .unwrap();
                let geometry = diagnostic.geometry();
                // Page-congruent caller buffers: the legacy in-place scratch
                // moves half a page away inside its reserved slack (ticket 42).
                assert_eq!(geometry.scratch, base + 2048, "{shape:?}");
                assert_eq!(geometry.passes[0].output, geometry.scratch);
                let placed = 2048 / size_of::<Complex<T>>();
                let mut reference = None;
                for route in [
                    StockhamRoute::Public,
                    StockhamRoute::Engine,
                    StockhamRoute::Prefix(radices.len() + 1),
                ] {
                    diagnostic.reset(&data).unwrap();
                    diagnostic.run_calls(route, 1).unwrap();
                    assert!(
                        diagnostic.scratch[..placed]
                            .iter()
                            .chain(&diagnostic.scratch[placed + n..])
                            .all(|&v| v == Complex::default())
                    );
                    let output = diagnostic.output().to_vec();
                    if let Some(reference) = &reference {
                        assert_eq!(&output, reference, "{shape:?} {direction:?} {route:?}");
                    } else {
                        let error = fastfft_testkit::error_vs_dd(&widen(&output), &expected).rel_l2
                            / T::epsilon().to_f64().unwrap();
                        assert!(error.is_finite() && error < 8. * (n as f64).log2() + 8.);
                        reference = Some(output);
                    }
                }
                diagnostic.reset(&data).unwrap();
                for index in 0..radices.len() {
                    diagnostic.run_calls(StockhamRoute::Pass(index), 1).unwrap();
                }
                diagnostic.run_calls(StockhamRoute::PhaseB, 1).unwrap();
                assert_eq!(diagnostic.output(), reference.unwrap());
            }
        }
    }
}

#[test]
fn collision_views_match_public_engine_and_pass_routes_f32() {
    collision_routes::<f32>();
}

#[test]
fn collision_views_match_public_engine_and_pass_routes_f64() {
    collision_routes::<f64>();
}

#[test]
fn exact_routes_f32_odd_even_tail_directions_placements() {
    all_shapes::<f32>();
}

#[test]
fn exact_routes_f64_odd_even_tail_directions_placements() {
    all_shapes::<f64>();
}

#[test]
fn rejects_incomplete_spans_and_gated_misalignment() {
    let shapes = crate::engine::shapes(crate::detected_isa(), false);
    let shape = shapes.into_iter().find(supported_shape).unwrap();
    let n = shape.lanes * 64;
    let plan = StockhamPlan::<f32>::with_cache(n, shape.lanes, vec![4, 4, 4], 1 << 30);
    let fft = FftImpl::new(n, FftDirection::Forward, Kernel::Stockham { shape, plan });
    let mut input = vec![Complex::<f32>::default(); n + 64];
    let input = crate::scratch::aligned(&mut input);
    let mut output = vec![Complex::default(); n];
    let mut scratch = vec![Complex::default(); fft.get_inplace_scratch_len()];
    assert!(matches!(
        StockhamDiagnostic::new(
            &fft,
            &mut input[..n - 1],
            &mut output,
            &mut scratch,
            SamplePlacement::InPlace
        ),
        Err(StockhamDiagnosticError::InvalidLength)
    ));
    assert!(matches!(
        StockhamDiagnostic::new(
            &fft,
            &mut input[..n],
            &mut output,
            &mut [],
            SamplePlacement::InPlace
        ),
        Err(StockhamDiagnosticError::InsufficientScratch)
    ));
    if shape.lanes > 2 {
        assert!(matches!(
            StockhamDiagnostic::new(
                &fft,
                &mut input[1..n + 1],
                &mut output,
                &mut scratch,
                SamplePlacement::InPlace
            ),
            Err(StockhamDiagnosticError::GatedMisalignment)
        ));
    }
}

#[test]
fn delegated_downcast_uses_concrete_requirements_and_execution() {
    struct Wrapper(FftImpl<f32>);
    impl crate::Length for Wrapper {
        fn len(&self) -> usize {
            1
        }
    }
    impl crate::Direction for Wrapper {
        fn fft_direction(&self) -> FftDirection {
            FftDirection::Inverse
        }
    }
    impl Fft<f32> for Wrapper {
        fn diagnostic_as_any(&self) -> Option<&dyn std::any::Any> {
            Some(&self.0)
        }
        fn get_inplace_scratch_len(&self) -> usize {
            0
        }
        fn get_outofplace_scratch_len(&self) -> usize {
            0
        }
        fn get_immutable_scratch_len(&self) -> usize {
            0
        }
        fn process_with_scratch(&self, _: &mut [Complex<f32>], _: &mut [Complex<f32>]) {
            panic!("diagnostic must execute the concrete inner FFT");
        }
        fn process_outofplace_with_scratch(
            &self,
            _: &mut [Complex<f32>],
            _: &mut [Complex<f32>],
            _: &mut [Complex<f32>],
        ) {
            panic!("diagnostic must execute the concrete inner FFT");
        }
        fn process_immutable_with_scratch(
            &self,
            _: &[Complex<f32>],
            _: &mut [Complex<f32>],
            _: &mut [Complex<f32>],
        ) {
            panic!("diagnostic must execute the concrete inner FFT");
        }
    }
    let shape = Shape {
        isa: Isa::Scalar,
        lanes: 1,
    };
    let n = 64;
    let plan = StockhamPlan::<f32>::with_cache(n, 1, vec![4, 4, 4], 0);
    let wrapped = Wrapper(FftImpl::new(
        n,
        FftDirection::Forward,
        Kernel::Stockham { shape, plan },
    ));
    let data: Vec<_> = (0..n)
        .map(|i| Complex::new(i as f32 / n as f32, 0.0))
        .collect();
    for placement in [
        SamplePlacement::InPlace,
        SamplePlacement::OutOfPlace,
        SamplePlacement::Immutable,
    ] {
        let need = match placement {
            SamplePlacement::InPlace => wrapped.0.get_inplace_scratch_len(),
            SamplePlacement::OutOfPlace => wrapped.0.get_outofplace_scratch_len(),
            SamplePlacement::Immutable => wrapped.0.get_immutable_scratch_len(),
        };
        let mut input = data.clone();
        let mut output = vec![Complex::default(); n];
        if need > 0 {
            assert!(matches!(
                StockhamDiagnostic::new(&wrapped, &mut input, &mut output, &mut [], placement),
                Err(StockhamDiagnosticError::InsufficientScratch)
            ));
        }
        let mut scratch = vec![Complex::default(); need];
        let mut diagnostic =
            StockhamDiagnostic::new(&wrapped, &mut input, &mut output, &mut scratch, placement)
                .unwrap();
        assert!(!diagnostic.geometry().inverse);
        diagnostic.reset(&data).unwrap();
        diagnostic.run_calls(StockhamRoute::Public, 1).unwrap();
        let reference = diagnostic.output().to_vec();
        diagnostic.reset(&data).unwrap();
        diagnostic.run_calls(StockhamRoute::Engine, 1).unwrap();
        assert_eq!(diagnostic.output(), reference);
    }
}

#[cfg(all(target_arch = "aarch64", feature = "neon"))]
#[test]
fn rejects_neon_diagnostics_explicitly() {
    fn reject<T: FftNum>() {
        let shape = crate::engine::shapes(Isa::Neon, T::precision() == Precision::F64)
            .into_iter()
            .find(|s| s.isa == Isa::Neon)
            .expect("native NEON shape");
        let n = shape.lanes * 64;
        for placement in [
            SamplePlacement::InPlace,
            SamplePlacement::OutOfPlace,
            SamplePlacement::Immutable,
        ] {
            let plan = StockhamPlan::<T>::with_cache(n, shape.lanes, vec![4, 4, 4], 0);
            let fft = FftImpl::new(n, FftDirection::Forward, Kernel::Stockham { shape, plan });
            let need = fft
                .get_inplace_scratch_len()
                .max(fft.get_outofplace_scratch_len())
                .max(fft.get_immutable_scratch_len());
            let mut input = vec![Complex::<T>::default(); n];
            let mut output = input.clone();
            let mut scratch = vec![Complex::<T>::default(); need];
            assert!(matches!(
                StockhamDiagnostic::new(&fft, &mut input, &mut output, &mut scratch, placement),
                Err(StockhamDiagnosticError::UnavailableShape)
            ));
        }
    }
    reject::<f32>();
    reject::<f64>();
}

//! Test-only generic Stockham timing; preparation never enters the sample loop.
use super::{
    Shape,
    stockham::{Mode, StockhamPlan},
};
use crate::api::{Fft, FftDirection, FftNum};
use crate::diagnostic::{Sample, enabled, sample, wrapper};
use crate::fft::{FftImpl, Kernel, align_slack};
use crate::isa::Precision;
use num_complex::Complex;
use std::hint::black_box;

pub(crate) fn stockham<T: FftNum>(
    n: usize,
    dir: FftDirection,
    shape: Shape,
    radices: &[usize],
) -> Vec<Sample> {
    assert!(crate::isa::available(shape.isa));
    let f = FftImpl::new(
        n,
        dir,
        Kernel::Stockham {
            shape,
            plan: StockhamPlan::new(n, shape.lanes, radices.to_vec()),
        },
    );
    let mut result = wrapper(&f, "concrete");
    if !enabled("SURFACE", "kernel") {
        return result;
    }
    let zero = Complex::new(T::zero(), T::zero());
    let mut input = vec![zero; n];
    let mut output = input.clone();
    let need = f
        .get_inplace_scratch_len()
        .max(f.get_outofplace_scratch_len())
        .max(f.get_immutable_scratch_len());
    let mut scratch = vec![zero; need];
    let Kernel::Stockham { plan, .. } = f.into_kernel() else {
        unreachable!()
    };
    let ip = input.as_mut_ptr().cast::<T>();
    let op = output.as_mut_ptr().cast::<T>();
    let sp = scratch.as_mut_ptr();
    let offset = if need == 0 {
        0
    } else {
        sp.align_offset(64).min(align_slack::<T>())
    };
    assert_eq!(input.len(), n);
    assert_eq!(output.len(), n);
    // SAFETY: bounded by reserved alignment slack, all buffers stay alive.
    let sp = unsafe { sp.add(offset).cast::<T>() };
    let inverse = dir == FftDirection::Inverse;
    for (placement, mode) in [
        ("ip", Mode::InPlace),
        ("op", Mode::OutOfPlace),
        ("immutable", Mode::Immutable),
    ] {
        assert!(need - offset >= plan.scratch_len(mode));
        let dst = if mode == Mode::InPlace { ip } else { op };
        let ns = sample(|| {
            // SAFETY: validated shape and complete buffers; T is sealed to f32/f64.
            unsafe {
                match T::precision() {
                    Precision::F32 => super::stockham_f32(
                        shape,
                        &*(&plan as *const StockhamPlan<T>).cast::<StockhamPlan<f32>>(),
                        black_box(ip.cast()),
                        black_box(dst.cast()),
                        black_box(sp.cast()),
                        mode,
                        inverse,
                    ),
                    Precision::F64 => super::stockham_f64(
                        shape,
                        &*(&plan as *const StockhamPlan<T>).cast::<StockhamPlan<f64>>(),
                        black_box(ip.cast()),
                        black_box(dst.cast()),
                        black_box(sp.cast()),
                        mode,
                        inverse,
                    ),
                }
            }
            black_box(dst);
        });
        black_box(&input);
        black_box(&output);
        black_box(&scratch);
        result.push(Sample {
            surface: "kernel",
            placement,
            ns,
        });
    }
    result
}

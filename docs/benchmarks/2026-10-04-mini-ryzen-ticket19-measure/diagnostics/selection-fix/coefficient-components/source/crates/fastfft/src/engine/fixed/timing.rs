//! Test-only preparation: raw timing calls the same production target entry.
use super::*;
use crate::diagnostic::{Sample, enabled, sample, wrapper};
use std::hint::black_box;
struct TimingFactory;
impl<T: FftNum> Factory<T> for TimingFactory {
    type Output = Vec<Sample>;
    fn make<
        V: FixedVector,
        const N: usize,
        const L: usize,
        const A: usize,
        const B: usize,
        const INV: bool,
    >(
        plan: Fixed<T, V, N, L, A, B, INV>,
    ) -> Self::Output {
        let mut result = wrapper(&plan, "concrete");
        if !enabled("SURFACE", "kernel") {
            return result;
        }
        let zero = Complex::new(T::zero(), T::zero());
        let mut input = vec![zero; N];
        let mut output = input.clone();
        let mut scratch = vec![zero; plan.get_inplace_scratch_len()];
        assert_eq!(input.len(), N);
        assert_eq!(output.len(), N);
        let ip = input.as_mut_ptr().cast::<V::S>();
        let op = output.as_mut_ptr().cast::<V::S>();
        let sp = scratch.as_mut_ptr();
        let offset = sp.align_offset(64).min(align_slack::<T>());
        assert!(scratch.len() - offset >= N);
        // SAFETY: constructor checked T=V::S, alignment remains within slack.
        let (tables, sp) = unsafe {
            (
                &*(&plan.plan as *const StockhamPlan<T>).cast::<StockhamPlan<V::S>>(),
                sp.add(offset).cast::<V::S>(),
            )
        };
        for (placement, mode) in [
            ("ip", Mode::InPlace),
            ("op", Mode::OutOfPlace),
            ("immutable", Mode::Immutable),
        ] {
            let dst = if mode == Mode::InPlace { ip } else { op };
            let ns = sample(|| {
                // SAFETY: complete chunks, validated scratch/tables, available tier.
                unsafe {
                    V::run::<N, L, A, B, INV>(
                        black_box(tables),
                        black_box(ip),
                        black_box(dst),
                        black_box(sp),
                        1,
                        mode,
                    );
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
}
pub(crate) fn timings<T: FftNum>(
    n: usize,
    dir: FftDirection,
    shape: Shape,
    radices: &[usize],
) -> Option<Vec<Sample>> {
    build_with::<T, TimingFactory>(n, dir, shape, radices)
}

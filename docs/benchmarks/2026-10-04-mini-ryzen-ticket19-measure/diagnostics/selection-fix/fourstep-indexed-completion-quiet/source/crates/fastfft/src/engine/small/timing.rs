//! Private, test-only access to the concrete wrapper and real kernel entry.
use super::*;
use crate::diagnostic::{Sample, enabled, sample, wrapper};
use std::hint::black_box;

struct TimingFactory;
impl<T: FftNum> Factory<T> for TimingFactory {
    type Output = Vec<Sample>;
    fn make<
        V: SmallVector,
        const N: usize,
        const M: usize,
        const L: usize,
        const INV: bool,
        K: Kernel<V>,
    >(
        plan: Small<T, V, N, M, L, INV, K>,
    ) -> Self::Output {
        crate::diagnostic::addresses::<Small<T, V, N, M, L, INV, K>>(
            <Small<T, V, N, M, L, INV, K> as Fft<T>>::process_immutable_with_scratch as *const ()
                as usize,
            K::one::<N, M, L, INV> as *const () as usize,
        );
        let mut result = wrapper(&plan, "concrete");
        if !enabled("SURFACE", "kernel") {
            return result;
        }
        let zero = Complex::new(T::zero(), T::zero());
        let mut input = vec![zero; N];
        let mut output = input.clone();
        // The constructor already checked T=V::S, N=M*L, and CPU features.
        // Complete input/output slices and twiddles stay alive across timing.
        assert_eq!(input.len(), N);
        assert_eq!(output.len(), N);
        let ip = input.as_mut_ptr().cast::<V::S>();
        let op = output.as_mut_ptr().cast::<V::S>();
        let tw = plan.tw.as_ptr().cast::<V::S>();
        for placement in ["ip", "op", "immutable"] {
            let dst = if placement == "ip" { ip } else { op };
            let ns = sample(|| {
                // SAFETY: validated live pointers, same feature entry as production;
                // aliasing only for IP, every input loaded before any store.
                unsafe {
                    K::one::<N, M, L, INV>(black_box(ip), black_box(dst), black_box(tw));
                }
                black_box(dst);
            });
            // Observation after the loop as well as the per-call memory barrier.
            black_box(&input);
            black_box(&output);
            result.push(Sample {
                surface: "kernel",
                placement,
                ns,
            });
        }
        result
    }
}
pub(crate) fn timings<T: FftNum>(n: usize, dir: FftDirection, shape: Shape) -> Vec<Sample> {
    build_with::<T, TimingFactory>(n, dir, shape)
}

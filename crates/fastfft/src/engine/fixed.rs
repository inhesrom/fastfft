//! Length-specialized Stockham execution for the small-range transition.
//! Keeps the balanced arithmetic and caller scratch contract of Stockham;
//! only pass scheduling, ISA and direction dispatch move to planning.

// Without a compiled x86 tier only the build() fallback is reachable.
#![cfg_attr(
    not(all(
        target_arch = "x86_64",
        any(feature = "sse2", feature = "avx2", feature = "avx512")
    )),
    allow(dead_code, unused_imports, unused_macros, unused_variables)
)]

use super::Shape;
use super::stockham::{self, Mode, StockhamPlan};
use crate::api::{Direction, Fft, FftDirection, FftNum, Length};
use crate::fft::{align_slack, fail_inplace, fail_outofplace};
use crate::isa::{Isa, Precision, Vector};
use num_complex::Complex;
use std::marker::PhantomData;
use std::sync::Arc;

#[cfg(test)]
mod timing;
#[cfg(test)]
pub(crate) use timing::timings;

trait FixedVector: Vector + Send + Sync + 'static {
    /// Matching features; complete buffers for count transforms, and aligned
    /// scratch for N complex values (except OutOfPlace, which needs none).
    unsafe fn run<const N: usize, const L: usize, const A: usize, const B: usize, const INV: bool>(
        plan: &StockhamPlan<Self::S>,
        input: *mut Self::S,
        output: *mut Self::S,
        scratch: *mut Self::S,
        count: usize,
        mode: Mode,
    );
}

#[inline(always)]
unsafe fn run<
    V: Vector,
    const N: usize,
    const L: usize,
    const A: usize,
    const B: usize,
    const INV: bool,
>(
    plan: &StockhamPlan<V::S>,
    mut input: *mut V::S,
    mut output: *mut V::S,
    scratch: *mut V::S,
    count: usize,
    mode: Mode,
) {
    // SAFETY: matching shape, tables, features and buffers supplied by caller.
    // Phase A uses the same buffer choreography as generic Stockham. Two
    // passes are sufficient for these shapes; no oversized register arrays.
    unsafe {
        let one = V::splat_f64(core::ptr::read_volatile(&1.0f64));
        for _ in 0..count {
            let src;
            if B == 1 {
                src = if mode == Mode::OutOfPlace {
                    input
                } else {
                    scratch
                };
                stockham::pass::<V, A, true, INV>(
                    input,
                    src,
                    N / L,
                    1,
                    plan.pass_tw(0).as_ptr(),
                    one,
                );
            } else {
                let first = if mode == Mode::InPlace {
                    scratch
                } else {
                    output
                };
                src = if mode == Mode::OutOfPlace {
                    input
                } else {
                    scratch
                };
                stockham::pass::<V, A, true, INV>(
                    input,
                    first,
                    N / L,
                    1,
                    plan.pass_tw(0).as_ptr(),
                    one,
                );
                stockham::pass::<V, B, false, false>(
                    first,
                    src,
                    N / L,
                    A,
                    plan.pass_tw(1).as_ptr(),
                    one,
                );
            }
            stockham::phase_b_blocks::<V, L, false, false, INV, false>(
                src,
                output,
                N / L,
                plan.vtw().as_ptr(),
                one,
            );
            if !(N / L).is_multiple_of(L) {
                stockham::phase_b_blocks::<V, L, false, false, INV, true>(
                    src,
                    output,
                    N / L,
                    plan.vtw().as_ptr(),
                    one,
                );
            }
            input = input.add(2 * N);
            output = output.add(2 * N);
        }
    }
}

#[allow(unused_macros)]
macro_rules! vector {
    ($v:ty, $features:literal) => {
        impl FixedVector for $v {
            #[target_feature(enable=$features)]
            unsafe fn run<
                const N: usize,
                const L: usize,
                const A: usize,
                const B: usize,
                const INV: bool,
            >(
                plan: &StockhamPlan<Self::S>,
                input: *mut Self::S,
                output: *mut Self::S,
                scratch: *mut Self::S,
                count: usize,
                mode: Mode,
            ) {
                // SAFETY: matching features and forwarded pointer contract.
                unsafe { run::<Self, N, L, A, B, INV>(plan, input, output, scratch, count, mode) }
            }
        }
    };
}
#[cfg(all(target_arch = "aarch64", feature = "neon"))]
vector!(crate::isa::neon::F32x4, "neon");
#[cfg(all(target_arch = "aarch64", feature = "neon"))]
vector!(crate::isa::neon::F64x2, "neon");
#[cfg(all(target_arch = "x86_64", feature = "sse2"))]
vector!(crate::isa::x86::F32x4, "sse2");
#[cfg(all(target_arch = "x86_64", feature = "sse2"))]
vector!(crate::isa::x86::F64x2, "sse2");
#[cfg(all(target_arch = "x86_64", feature = "avx2"))]
vector!(crate::isa::x86::F32x8, "avx2,fma");
#[cfg(all(target_arch = "x86_64", feature = "avx2"))]
vector!(crate::isa::x86::F64x4, "avx2,fma");
#[cfg(all(target_arch = "x86_64", feature = "avx512"))]
vector!(
    crate::isa::x86::F32x8v,
    "avx512f,avx512vl,avx512dq,avx512bw,avx512cd,avx2,fma"
);
#[cfg(all(target_arch = "x86_64", feature = "avx512"))]
vector!(
    crate::isa::x86::F64x4v,
    "avx512f,avx512vl,avx512dq,avx512bw,avx512cd,avx2,fma"
);
#[cfg(all(target_arch = "x86_64", feature = "avx512"))]
vector!(
    crate::isa::x86::F32x16,
    "avx512f,avx512vl,avx512dq,avx512bw,avx512cd,avx2,fma"
);
#[cfg(all(target_arch = "x86_64", feature = "avx512"))]
vector!(
    crate::isa::x86::F64x8,
    "avx512f,avx512vl,avx512dq,avx512bw,avx512cd,avx2,fma"
);

struct Fixed<T, V, const N: usize, const L: usize, const A: usize, const B: usize, const INV: bool>
{
    plan: StockhamPlan<T>,
    vector: PhantomData<V>,
}
impl<T, V, const N: usize, const L: usize, const A: usize, const B: usize, const INV: bool> Length
    for Fixed<T, V, N, L, A, B, INV>
{
    fn len(&self) -> usize {
        N
    }
}
impl<T, V, const N: usize, const L: usize, const A: usize, const B: usize, const INV: bool>
    Direction for Fixed<T, V, N, L, A, B, INV>
{
    fn fft_direction(&self) -> FftDirection {
        if INV {
            FftDirection::Inverse
        } else {
            FftDirection::Forward
        }
    }
}
impl<
    T: FftNum,
    V: FixedVector,
    const N: usize,
    const L: usize,
    const A: usize,
    const B: usize,
    const INV: bool,
> Fixed<T, V, N, L, A, B, INV>
{
    unsafe fn execute(
        &self,
        input: *mut Complex<T>,
        output: *mut Complex<T>,
        scratch: &mut [Complex<T>],
        count: usize,
        mode: Mode,
    ) {
        let sp = crate::scratch::aligned(scratch).as_mut_ptr();
        // SAFETY: public entry checks scratch including alignment slack and
        // complete disjoint/aliased buffers. Constructor checks T=V::S and ISA.
        unsafe {
            V::run::<N, L, A, B, INV>(
                &*(&self.plan as *const StockhamPlan<T>).cast::<StockhamPlan<V::S>>(),
                input.cast(),
                output.cast(),
                sp.cast(),
                count,
                mode,
            );
        }
    }
}
impl<
    T: FftNum,
    V: FixedVector,
    const N: usize,
    const L: usize,
    const A: usize,
    const B: usize,
    const INV: bool,
> Fft<T> for Fixed<T, V, N, L, A, B, INV>
{
    fn process_with_scratch(&self, buffer: &mut [Complex<T>], scratch: &mut [Complex<T>]) {
        let need = self.get_inplace_scratch_len();
        if buffer.len() < N || !buffer.len().is_multiple_of(N) || scratch.len() < need {
            fail_inplace(N, buffer.len(), need, scratch.len());
        }
        // SAFETY: complete chunks and exact scratch, input equals output.
        unsafe {
            self.execute(
                buffer.as_mut_ptr(),
                buffer.as_mut_ptr(),
                &mut scratch[..need],
                buffer.len() / N,
                Mode::InPlace,
            );
        }
    }
    fn process_outofplace_with_scratch(
        &self,
        input: &mut [Complex<T>],
        output: &mut [Complex<T>],
        _: &mut [Complex<T>],
    ) {
        if input.len() != output.len() || input.len() < N || !input.len().is_multiple_of(N) {
            fail_outofplace(N, input.len(), output.len(), 0, 0);
        }
        // SAFETY: complete disjoint chunks, no scratch required.
        unsafe {
            self.execute(
                input.as_mut_ptr(),
                output.as_mut_ptr(),
                &mut [],
                input.len() / N,
                Mode::OutOfPlace,
            );
        }
    }
    fn process_immutable_with_scratch(
        &self,
        input: &[Complex<T>],
        output: &mut [Complex<T>],
        scratch: &mut [Complex<T>],
    ) {
        let need = self.get_immutable_scratch_len();
        if input.len() != output.len()
            || input.len() < N
            || !input.len().is_multiple_of(N)
            || scratch.len() < need
        {
            fail_outofplace(N, input.len(), output.len(), need, scratch.len());
        }
        // SAFETY: complete disjoint chunks and exact scratch. Immutable mode
        // only writes output/scratch, never through the cast input pointer.
        unsafe {
            self.execute(
                input.as_ptr().cast_mut(),
                output.as_mut_ptr(),
                &mut scratch[..need],
                input.len() / N,
                Mode::Immutable,
            );
        }
    }
    fn get_inplace_scratch_len(&self) -> usize {
        N + align_slack::<T>()
    }
    fn get_outofplace_scratch_len(&self) -> usize {
        0
    }
    fn get_immutable_scratch_len(&self) -> usize {
        N + align_slack::<T>()
    }
}

trait Factory<T: FftNum> {
    type Output;
    fn make<
        V: FixedVector,
        const N: usize,
        const L: usize,
        const A: usize,
        const B: usize,
        const INV: bool,
    >(
        plan: Fixed<T, V, N, L, A, B, INV>,
    ) -> Self::Output;
}
struct PlanFactory;
impl<T: FftNum> Factory<T> for PlanFactory {
    type Output = Arc<dyn Fft<T>>;
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
        Arc::new(plan)
    }
}

fn sized<
    T: FftNum,
    V: FixedVector,
    F: Factory<T>,
    const N: usize,
    const L: usize,
    const A: usize,
    const B: usize,
>(
    dir: FftDirection,
) -> F::Output {
    assert_eq!(size_of::<T>(), size_of::<V::S>());
    assert_eq!(V::LANES, L);
    assert_eq!(N, L * A * B);
    let plan = StockhamPlan::new(N, L, if B == 1 { vec![A] } else { vec![A, B] });
    if dir == FftDirection::Inverse {
        F::make(Fixed::<T, V, N, L, A, B, true> {
            plan,
            vector: PhantomData,
        })
    } else {
        F::make(Fixed::<T, V, N, L, A, B, false> {
            plan,
            vector: PhantomData,
        })
    }
}

fn for_vector<T: FftNum, V: FixedVector, F: Factory<T>>(
    n: usize,
    dir: FftDirection,
    radices: &[usize],
) -> Option<F::Output> {
    macro_rules! go {
        ($n:literal,$l:literal,$a:literal,$b:literal) => {
            Some(sized::<T, V, F, $n, $l, $a, $b>(dir))
        };
    }
    match (n, V::LANES, radices) {
        (108, 4, [9, 3]) => go!(108, 4, 9, 3),
        (108, 4, [3, 9]) => go!(108, 4, 3, 9),
        (120, 4, [15, 2]) => go!(120, 4, 15, 2),
        (120, 4, [2, 15]) => go!(120, 4, 2, 15),
        (120, 4, [6, 5]) => go!(120, 4, 6, 5),
        (120, 4, [5, 6]) => go!(120, 4, 5, 6),
        (120, 4, [3, 10]) => go!(120, 4, 3, 10),
        (120, 4, [10, 3]) => go!(120, 4, 10, 3),
        (240, 8, [15, 2]) => go!(240, 8, 15, 2),
        (240, 8, [2, 15]) => go!(240, 8, 2, 15),
        (240, 8, [6, 5]) => go!(240, 8, 6, 5),
        (240, 8, [5, 6]) => go!(240, 8, 5, 6),
        (240, 8, [3, 10]) => go!(240, 8, 3, 10),
        (240, 8, [10, 3]) => go!(240, 8, 10, 3),
        (504, 8, [7, 9]) => go!(504, 8, 7, 9),
        (504, 8, [9, 7]) => go!(504, 8, 9, 7),
        (720, 8, [15, 6]) => go!(720, 8, 15, 6),
        (720, 8, [6, 15]) => go!(720, 8, 6, 15),
        (720, 8, [9, 10]) => go!(720, 8, 9, 10),
        (720, 8, [10, 9]) => go!(720, 8, 10, 9),
        (32, 2, [8, 2]) => go!(32, 2, 8, 2),
        (32, 4, [8]) => go!(32, 4, 8, 1),
        (32, 8, [4]) => go!(32, 8, 4, 1),
        (32, 16, [2]) => go!(32, 16, 2, 1),
        (64, 2, [8, 4]) => go!(64, 2, 8, 4),
        (64, 4, [8, 2]) => go!(64, 4, 8, 2),
        (64, 8, [8]) => go!(64, 8, 8, 1),
        (64, 16, [4]) => go!(64, 16, 4, 1),
        (128, 2, [8, 8]) => go!(128, 2, 8, 8),
        (128, 4, [8, 4]) => go!(128, 4, 8, 4),
        (128, 8, [8, 2]) => go!(128, 8, 8, 2),
        (128, 16, [8]) => go!(128, 16, 8, 1),
        (256, 4, [8, 8]) => go!(256, 4, 8, 8),
        (256, 8, [8, 4]) => go!(256, 8, 8, 4),
        (256, 16, [8, 2]) => go!(256, 16, 8, 2),
        _ => None,
    }
}

pub(crate) fn build<T: FftNum>(
    n: usize,
    dir: FftDirection,
    shape: Shape,
    radices: &[usize],
) -> Option<Arc<dyn Fft<T>>> {
    build_with::<T, PlanFactory>(n, dir, shape, radices)
}

fn build_with<T: FftNum, F: Factory<T>>(
    n: usize,
    dir: FftDirection,
    shape: Shape,
    radices: &[usize],
) -> Option<F::Output> {
    if !matches!(n, 32 | 64 | 108 | 120 | 128 | 240 | 256 | 504 | 720) || shape.isa == Isa::Scalar {
        return None;
    }
    assert!(crate::isa::available(shape.isa));
    macro_rules! go {
        ($v:ty) => {{
            assert_eq!(shape.lanes, <$v as Vector>::LANES);
            for_vector::<T, $v, F>(n, dir, radices)
        }};
    }
    match (T::precision(), shape.isa) {
        #[cfg(all(target_arch = "aarch64", feature = "neon"))]
        (Precision::F32, Isa::Neon) => go!(crate::isa::neon::F32x4),
        #[cfg(all(target_arch = "aarch64", feature = "neon"))]
        (Precision::F64, Isa::Neon) => go!(crate::isa::neon::F64x2),
        #[cfg(all(target_arch = "x86_64", feature = "sse2"))]
        (Precision::F32, Isa::Sse2) => go!(crate::isa::x86::F32x4),
        #[cfg(all(target_arch = "x86_64", feature = "sse2"))]
        (Precision::F64, Isa::Sse2) => go!(crate::isa::x86::F64x2),
        #[cfg(all(target_arch = "x86_64", feature = "avx2"))]
        (Precision::F32, Isa::Avx2) => go!(crate::isa::x86::F32x8),
        #[cfg(all(target_arch = "x86_64", feature = "avx2"))]
        (Precision::F64, Isa::Avx2) => go!(crate::isa::x86::F64x4),
        #[cfg(all(target_arch = "x86_64", feature = "avx512"))]
        (Precision::F32, Isa::Avx512Ymm) => go!(crate::isa::x86::F32x8v),
        #[cfg(all(target_arch = "x86_64", feature = "avx512"))]
        (Precision::F64, Isa::Avx512Ymm) => go!(crate::isa::x86::F64x4v),
        #[cfg(all(target_arch = "x86_64", feature = "avx512"))]
        (Precision::F32, Isa::Avx512) => go!(crate::isa::x86::F32x16),
        #[cfg(all(target_arch = "x86_64", feature = "avx512"))]
        (Precision::F64, Isa::Avx512) => go!(crate::isa::x86::F64x8),
        _ => None,
    }
}

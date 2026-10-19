//! Scratch-free, length-specialized codelets and fused two-stage transforms.
//!
//! All inputs are loaded before any output is stored, including partial
//! vectors. ISA, length, decomposition and direction are resolved at planning.

use crate::api::{Direction, Fft, FftDirection, FftNum, Length};
use crate::codelets::generated;
use crate::engine::{Shape, stockham::transpose};
use crate::fft::{fail_inplace, fail_outofplace};
use crate::isa::{Isa, Precision, Vector, scalar};
use num_complex::Complex;
use std::marker::PhantomData;
use std::sync::Arc;

#[cfg(all(target_arch = "x86_64", feature = "avx2"))]
mod interleaved;

#[cfg(all(
    target_arch = "x86_64",
    any(feature = "sse2", feature = "avx2", feature = "avx512")
))]
mod rectangular;

#[cfg(test)]
mod timing;
#[cfg(test)]
pub(crate) use timing::timings;

/// Target-feature boundary enclosing the entire batch loop.
trait SmallVector: Vector + Send + Sync + 'static {
    /// SIMD registers available to the target-feature implementation. Used to
    /// identify fused row families whose nominal capacity can exhaust them;
    /// this is not an exact compiler-liveness or spill-count prediction.
    #[cfg(all(
        target_arch = "x86_64",
        any(feature = "sse2", feature = "avx2", feature = "avx512")
    ))]
    const VECTOR_REGISTERS: usize = 16;

    /// A fixed rectangular transform, using bounded loads at panel edges.
    /// Same buffer contract as `run`; M and B are the two codelet dimensions.
    #[cfg(all(
        target_arch = "x86_64",
        any(feature = "sse2", feature = "avx2", feature = "avx512")
    ))]
    #[inline(always)]
    unsafe fn rectangle<
        const N: usize,
        const M: usize,
        const B: usize,
        const INV: bool,
        const BATCH: bool,
    >(
        input: *const Self::S,
        output: *mut Self::S,
        count: usize,
        tw: *const Self::S,
    ) {
        // SAFETY: the builder validates dimensions, buffers and features.
        unsafe { rectangular::run::<Self, N, M, B, INV, BATCH>(input, output, count, tw) }
    }
    /// One complete transform, with the same pointer/feature contract as run.
    #[inline(always)]
    unsafe fn one<const N: usize, const M: usize, const L: usize, const INV: bool>(
        input: *const Self::S,
        output: *mut Self::S,
        tw: *const Self::S,
    ) {
        // SAFETY: complete buffers and matching features supplied by caller.
        unsafe {
            if L == 1 {
                direct::<Self, N, INV>(input, output);
            } else {
                Self::kernel::<M, L, INV>(input, output, tw);
            }
        }
    }
    #[inline(always)]
    unsafe fn kernel<const M: usize, const L: usize, const INV: bool>(
        input: *const Self::S,
        output: *mut Self::S,
        tw: *const Self::S,
    ) {
        // SAFETY: matching features, M*L inputs/outputs and L-wide tables.
        unsafe { fused::<Self, M, L, INV>(input, output, tw) }
    }

    /// Pointers hold `count * N` complex values; they are identical or
    /// disjoint. Twiddles hold `2 * L * L` scalars for SIMD. Features match V.
    #[inline(always)]
    unsafe fn run<const N: usize, const M: usize, const L: usize, const INV: bool>(
        input: *const Self::S,
        output: *mut Self::S,
        count: usize,
        tw: *const Self::S,
    ) {
        // SAFETY: forwarded buffer and feature contract.
        unsafe { run::<Self, N, M, L, INV>(input, output, count, tw) }
    }
}

#[inline(always)]
unsafe fn direct<V: Vector, const N: usize, const INV: bool>(
    input: *const V::S,
    output: *mut V::S,
) {
    // SAFETY: scalar V, pointers valid for 2N scalars. Every input is read
    // before stores, so input and output may be the same buffer.
    unsafe {
        let zero = V::splat_f64(0.0);
        let mut re = [zero; N];
        let mut im = [zero; N];
        for j in 0..N {
            re[j] = V::load(input.add(2 * j + usize::from(INV)));
            im[j] = V::load(input.add(2 * j + usize::from(!INV)));
        }
        generated::small_notw::<V, N>(&mut re, &mut im);
        for j in 0..N {
            V::store(output.add(2 * j + usize::from(INV)), re[j]);
            V::store(output.add(2 * j + usize::from(!INV)), im[j]);
        }
    }
}

#[inline(always)]
unsafe fn fused<V: Vector, const M: usize, const L: usize, const INV: bool>(
    input: *const V::S,
    output: *mut V::S,
    tw: *const V::S,
) {
    // SAFETY: N=M*L, M<=L, L=V::LANES. Each load reads exactly L complex
    // inputs, all before stores. The short stores copy only M complex outputs.
    unsafe {
        let zero = V::splat_f64(0.0);
        let mut a = [zero; M];
        let mut b = [zero; M];
        for j in 0..M {
            let p = input.add(2 * L * j);
            let (r, i) = V::deinterleave(V::load(p), V::load(p.add(L)));
            (a[j], b[j]) = if INV { (i, r) } else { (r, i) };
        }
        if M > 1 {
            generated::small_notw::<V, M>(&mut a, &mut b);
        }
        let mut re = [zero; L];
        let mut im = [zero; L];
        re[..M].copy_from_slice(&a);
        im[..M].copy_from_slice(&b);
        transpose::<V, L>(&mut re);
        transpose::<V, L>(&mut im);
        if M == 1 {
            generated::small_notw::<V, L>(&mut re, &mut im);
        } else {
            let mut wr = [zero; L];
            let mut wi = [zero; L];
            for j in 1..L {
                wr[j] = V::load(tw.add(2 * L * j));
                wi[j] = V::load(tw.add(2 * L * j + L));
            }
            generated::small_tw::<V, L>(&mut re, &mut im, &wr, &wi);
        }
        for j in 0..L {
            let (lo, hi) = if INV {
                V::interleave(im[j], re[j])
            } else {
                V::interleave(re[j], im[j])
            };
            let p = output.add(2 * M * j);
            if M == L {
                V::store(p, lo);
                V::store(p.add(L), hi);
            } else {
                // Constant-sized copies lower to short unaligned stores; no
                // masked full-width access can overread or overwrite a guard.
                let mut tmp = [V::S::default(); 16];
                V::store(tmp.as_mut_ptr(), lo);
                V::store(tmp.as_mut_ptr().add(L), hi);
                core::ptr::copy_nonoverlapping(tmp.as_ptr(), p, 2 * M);
            }
        }
    }
}

/// Transpose four rows of eight lanes into eight rows of four. Arithmetic
/// after the transpose uses the narrower registers, with no padded lanes.
#[cfg(all(target_arch = "x86_64", any(feature = "avx2", feature = "avx512")))]
#[inline(always)]
unsafe fn fused_4x8<V: crate::isa::HalfVector, const INV: bool>(
    input: *const V::S,
    output: *mut V::S,
    tw: *const V::S,
) {
    use crate::isa::SimdReal;
    // SAFETY: source has 32 complex values, table has 128 scalars, and
    // features cover V and V::Half. Stores begin after every input load.
    unsafe {
        let mut a = [V::splat_f64(0.0); 4];
        let mut b = a;
        for j in 0..4 {
            let (r, i) =
                V::deinterleave(V::load(input.add(j * 16)), V::load(input.add(j * 16 + 8)));
            (a[j], b[j]) = if INV { (i, r) } else { (r, i) };
        }
        generated::small_notw::<V, 4>(&mut a, &mut b);
        transpose::<V, 4>(&mut a);
        transpose::<V, 4>(&mut b);
        let mut re = [V::Half::splat_f64(0.0); 8];
        let mut im = re;
        for j in 0..4 {
            (re[j], re[j + 4]) = V::halves(a[j]);
            (im[j], im[j + 4]) = V::halves(b[j]);
        }
        let mut wr = re;
        let mut wi = im;
        for j in 1..8 {
            wr[j] = V::Half::load(tw.add(j * 16));
            wi[j] = V::Half::load(tw.add(j * 16 + 8));
        }
        generated::small_tw::<V::Half, 8>(&mut re, &mut im, &wr, &wi);
        for j in 0..8 {
            let (lo, hi) = if INV {
                V::Half::interleave(im[j], re[j])
            } else {
                V::Half::interleave(re[j], im[j])
            };
            V::Half::store(output.add(j * 8), lo);
            V::Half::store(output.add(j * 8 + 4), hi);
        }
    }
}

#[inline(always)]
unsafe fn run<V: SmallVector, const N: usize, const M: usize, const L: usize, const INV: bool>(
    mut input: *const V::S,
    mut output: *mut V::S,
    count: usize,
    tw: *const V::S,
) {
    // SAFETY: each iteration consumes exactly N complex values, as validated
    // by the public wrapper. Shape and features were validated when planning.
    unsafe {
        for _ in 0..count {
            if L == 1 {
                direct::<V, N, INV>(input, output);
            } else {
                V::kernel::<M, L, INV>(input, output, tw);
            }
            input = input.add(2 * N);
            output = output.add(2 * N);
        }
    }
}

impl SmallVector for scalar::S32 {}
impl SmallVector for scalar::S64 {}

#[allow(unused_macros)]
macro_rules! vector {
    ($v:ty, $features:literal, $registers:literal $(, $half:ident)?) => {
        impl SmallVector for $v {
            const VECTOR_REGISTERS: usize = $registers;

            #[target_feature(enable = $features)]
            unsafe fn rectangle<const N: usize, const M: usize, const B: usize, const INV: bool, const BATCH: bool>(
                input: *const Self::S, output: *mut Self::S, count: usize, tw: *const Self::S,
            ) {
                // SAFETY: validated rectangular buffers and matching features.
                unsafe { rectangular::run::<Self, N, M, B, INV, BATCH>(input, output, count, tw) }
            }
            #[target_feature(enable = $features)]
            unsafe fn one<const N: usize, const M: usize, const L: usize, const INV: bool>(
                input: *const Self::S, output: *mut Self::S, tw: *const Self::S,
            ) {
                // SAFETY: matching features and complete buffers from caller.
                unsafe {
                    if L == 1 { direct::<Self,N,INV>(input,output); }
                    else { Self::kernel::<M,L,INV>(input,output,tw); }
                }
            }
            $(
                #[inline(always)]
                unsafe fn kernel<const M:usize,const L:usize,const INV:bool>(input:*const Self::S,output:*mut Self::S,tw:*const Self::S) {
                    // SAFETY: matching features and validated buffers/tables.
                    unsafe {
                        if M==4 && L==8 { $half::<Self,INV>(input,output,tw); }
                        else { fused::<Self,M,L,INV>(input,output,tw); }
                    }
                }
            )?
            #[target_feature(enable = $features)]
            unsafe fn run<const N: usize, const M: usize, const L: usize, const INV: bool>(
                input: *const Self::S,
                output: *mut Self::S,
                count: usize,
                tw: *const Self::S,
            ) {
                // SAFETY: matching features and forwarded buffer contract.
                unsafe { run::<Self, N, M, L, INV>(input, output, count, tw) }
            }
        }
    };
}
#[cfg(all(target_arch = "x86_64", feature = "sse2"))]
vector!(crate::isa::x86::F32x4, "sse2", 16);
#[cfg(all(target_arch = "x86_64", feature = "sse2"))]
vector!(crate::isa::x86::F64x2, "sse2", 16);
#[cfg(all(target_arch = "x86_64", feature = "avx2"))]
vector!(crate::isa::x86::F32x8, "avx2,fma", 16, fused_4x8);
#[cfg(all(target_arch = "x86_64", feature = "avx2"))]
vector!(crate::isa::x86::F64x4, "avx2,fma", 16);
#[cfg(all(target_arch = "x86_64", feature = "avx512"))]
vector!(
    crate::isa::x86::F32x16,
    "avx512f,avx512vl,avx512dq,avx512bw,avx512cd,avx2,fma",
    32
);
#[cfg(all(target_arch = "x86_64", feature = "avx512"))]
vector!(
    crate::isa::x86::F32x8v,
    "avx512f,avx512vl,avx512dq,avx512bw,avx512cd,avx2,fma",
    32,
    fused_4x8
);
#[cfg(all(target_arch = "x86_64", feature = "avx512"))]
vector!(
    crate::isa::x86::F64x4v,
    "avx512f,avx512vl,avx512dq,avx512bw,avx512cd,avx2,fma",
    32
);
#[cfg(all(target_arch = "x86_64", feature = "avx512"))]
vector!(
    crate::isa::x86::F64x8,
    "avx512f,avx512vl,avx512dq,avx512bw,avx512cd,avx2,fma",
    32,
    fused_4x8
);

#[cfg(all(target_arch = "x86_64", feature = "avx2"))]
vector!(scalar::A32, "avx2,fma", 16);
#[cfg(all(target_arch = "x86_64", feature = "avx2"))]
vector!(scalar::A64, "avx2,fma", 16);
#[cfg(all(target_arch = "x86_64", feature = "avx512"))]
vector!(
    scalar::Z32,
    "avx512f,avx512vl,avx512dq,avx512bw,avx512cd,avx2,fma",
    32
);
#[cfg(all(target_arch = "x86_64", feature = "avx512"))]
vector!(
    scalar::Z64,
    "avx512f,avx512vl,avx512dq,avx512bw,avx512cd,avx2,fma",
    32
);

trait Kernel<V: SmallVector>: Send + Sync + 'static {
    const TABLES: bool;
    unsafe fn one<const N: usize, const M: usize, const L: usize, const INV: bool>(
        input: *const V::S,
        output: *mut V::S,
        tw: *const V::S,
    );
    unsafe fn run<const N: usize, const M: usize, const L: usize, const INV: bool>(
        input: *const V::S,
        output: *mut V::S,
        count: usize,
        tw: *const V::S,
    );
}
struct Generic;
impl<V: SmallVector> Kernel<V> for Generic {
    const TABLES: bool = true;
    #[inline(always)]
    unsafe fn one<const N: usize, const M: usize, const L: usize, const INV: bool>(
        input: *const V::S,
        output: *mut V::S,
        tw: *const V::S,
    ) {
        // SAFETY: forwarded validated buffers and matching features.
        unsafe {
            V::one::<N, M, L, INV>(input, output, tw);
        }
    }
    #[inline(always)]
    unsafe fn run<const N: usize, const M: usize, const L: usize, const INV: bool>(
        input: *const V::S,
        output: *mut V::S,
        count: usize,
        tw: *const V::S,
    ) {
        // SAFETY: forwarded validated buffers and matching features.
        unsafe {
            V::run::<N, M, L, INV>(input, output, count, tw);
        }
    }
}

struct Small<T, V, const N: usize, const M: usize, const L: usize, const INV: bool, K = Generic> {
    tw: Vec<T>,
    vector: PhantomData<(V, K)>,
}

impl<T, V, const N: usize, const M: usize, const L: usize, const INV: bool, K> Length
    for Small<T, V, N, M, L, INV, K>
{
    fn len(&self) -> usize {
        N
    }
}
impl<T, V, const N: usize, const M: usize, const L: usize, const INV: bool, K> Direction
    for Small<T, V, N, M, L, INV, K>
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
    V: SmallVector,
    const N: usize,
    const M: usize,
    const L: usize,
    const INV: bool,
    K: Kernel<V>,
> Fft<T> for Small<T, V, N, M, L, INV, K>
{
    #[cfg(feature = "tuning")]
    fn diagnostic_as_any_mut(&mut self) -> Option<&mut dyn std::any::Any> {
        Some(self)
    }

    #[cfg(feature = "tuning")]
    fn diagnostic_swap_coefficients(
        &mut self,
        other: &mut dyn Fft<T>,
        exchange: bool,
    ) -> Result<(), crate::tuning::CoefficientSwapError> {
        use crate::tuning::CoefficientSwapError as E;
        // Exact Self checks scalar/vector, dimensions, direction and kernel.
        let other = other
            .diagnostic_as_any_mut()
            .ok_or(E::UnsupportedPlan)?
            .downcast_mut::<Self>()
            .ok_or(E::TypeMismatch)?;
        if self.tw.len() != other.tw.len() || self.tw.capacity() != other.tw.capacity() {
            return Err(E::StorageMismatch);
        }
        if !crate::tuning::coefficient_bits_equal(&self.tw, &other.tw) {
            return Err(E::ValuesMismatch);
        }
        if exchange {
            std::mem::swap(&mut self.tw, &mut other.tw);
        }
        Ok(())
    }

    #[cfg(feature = "tuning")]
    fn diagnostic_regions(&self, sink: &mut dyn FnMut(crate::tuning::DiagnosticRegion)) {
        use crate::tuning::{DiagnosticRegion, RegionKind};
        let object = DiagnosticRegion::object(self);
        sink(object);
        sink(DiagnosticRegion::vector(
            object.owner,
            RegionKind::Twiddles,
            0,
            &self.tw,
        ));
        // Kernel register spills and stack intermediates are not observed.
        sink(DiagnosticRegion::metadata(object.owner, 2, 1));
    }

    fn process(&self, buffer: &mut [Complex<T>]) {
        self.process_with_scratch(buffer, &mut []);
    }
    fn process_with_scratch(&self, buffer: &mut [Complex<T>], _: &mut [Complex<T>]) {
        if buffer.len() == N {
            // SAFETY: one complete aliased transform, matching type and ISA
            // checked in the builder; all inputs are loaded before stores.
            unsafe {
                K::one::<N, M, L, INV>(
                    buffer.as_ptr().cast(),
                    buffer.as_mut_ptr().cast(),
                    self.tw.as_ptr().cast(),
                );
            }
            return;
        }
        if buffer.len() < N || !buffer.len().is_multiple_of(N) {
            fail_inplace(N, buffer.len(), 0, 0);
        }
        // SAFETY: builder checks that T=V::S and the tier is available. Each
        // chunk contains N elements; kernels load before overwriting inputs.
        unsafe {
            K::run::<N, M, L, INV>(
                buffer.as_ptr().cast(),
                buffer.as_mut_ptr().cast(),
                buffer.len() / N,
                self.tw.as_ptr().cast(),
            );
        }
    }
    fn process_outofplace_with_scratch(
        &self,
        input: &mut [Complex<T>],
        output: &mut [Complex<T>],
        scratch: &mut [Complex<T>],
    ) {
        self.process_immutable_with_scratch(input, output, scratch);
    }
    fn process_immutable_with_scratch(
        &self,
        input: &[Complex<T>],
        output: &mut [Complex<T>],
        _: &mut [Complex<T>],
    ) {
        if input.len() == N && output.len() == N {
            // SAFETY: one complete disjoint transform, matching type and ISA
            // checked in the builder. Kernels only read the input pointer.
            unsafe {
                K::one::<N, M, L, INV>(
                    input.as_ptr().cast(),
                    output.as_mut_ptr().cast(),
                    self.tw.as_ptr().cast(),
                );
            }
            return;
        }
        if input.len() != output.len() || input.len() < N || !input.len().is_multiple_of(N) {
            fail_outofplace(N, input.len(), output.len(), 0, 0);
        }
        // SAFETY: validated equal lengths and complete chunks, disjoint
        // buffers, matching scalar type and available features from builder.
        unsafe {
            K::run::<N, M, L, INV>(
                input.as_ptr().cast(),
                output.as_mut_ptr().cast(),
                input.len() / N,
                self.tw.as_ptr().cast(),
            );
        }
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
}

pub(crate) fn eligible(n: usize, shape: Shape) -> bool {
    let l = shape.lanes;
    if l == 1 {
        return (2..=16).contains(&n);
    }
    l <= 8 && n >= l && n.is_multiple_of(l) && n / l <= l.min(8)
}

trait Factory<T: FftNum> {
    type Output;
    fn make<
        V: SmallVector,
        const N: usize,
        const M: usize,
        const L: usize,
        const INV: bool,
        K: Kernel<V>,
    >(
        plan: Small<T, V, N, M, L, INV, K>,
    ) -> Self::Output;
}
struct PlanFactory;
impl<T: FftNum> Factory<T> for PlanFactory {
    type Output = Arc<dyn Fft<T>>;
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
        Arc::new(plan)
    }
}

fn sized<
    T: FftNum,
    V: SmallVector,
    F: Factory<T>,
    const N: usize,
    const M: usize,
    const L: usize,
    K: Kernel<V>,
>(
    dir: FftDirection,
) -> F::Output {
    // FftNum is sealed to f32/f64; Vector's scalar is likewise one of these.
    assert_eq!(size_of::<T>(), size_of::<V::S>());
    assert!(L == V::LANES || (!K::TABLES && N == 32 && L == 8 && V::LANES == 4));
    assert_eq!(N, M * L);
    assert!(L == 1 || (M <= L && M <= 8 && L <= 8));
    let mut tw = if L == 1 || !K::TABLES {
        Vec::new()
    } else {
        vec![T::zero(); 2 * L * L]
    };
    for j in 1..if K::TABLES { L } else { 1 } {
        for k in 0..M {
            let (r, i) = crate::twiddle::omega(j * k, N);
            tw[2 * L * j + k] = T::from_f64(r).unwrap();
            tw[2 * L * j + L + k] = T::from_f64(i).unwrap();
        }
    }
    if dir == FftDirection::Inverse {
        F::make(Small::<T, V, N, M, L, true, K> {
            tw,
            vector: PhantomData,
        })
    } else {
        F::make(Small::<T, V, N, M, L, false, K> {
            tw,
            vector: PhantomData,
        })
    }
}

fn for_vector<T: FftNum, V: SmallVector, F: Factory<T>>(n: usize, dir: FftDirection) -> F::Output {
    macro_rules! size {
        ($n:literal, $m:literal, $l:literal) => {
            sized::<T, V, F, $n, $m, $l, Generic>(dir)
        };
    }
    match (n, V::LANES) {
        (2, 1) => size!(2, 2, 1),
        (3, 1) => size!(3, 3, 1),
        (4, 1) => size!(4, 4, 1),
        (5, 1) => size!(5, 5, 1),
        (6, 1) => size!(6, 6, 1),
        (7, 1) => size!(7, 7, 1),
        (8, 1) => size!(8, 8, 1),
        (9, 1) => size!(9, 9, 1),
        (10, 1) => size!(10, 10, 1),
        (11, 1) => size!(11, 11, 1),
        (12, 1) => size!(12, 12, 1),
        (13, 1) => size!(13, 13, 1),
        (14, 1) => size!(14, 14, 1),
        (15, 1) => size!(15, 15, 1),
        (16, 1) => size!(16, 16, 1),
        (2, 2) => size!(2, 1, 2),
        (4, 2) => size!(4, 2, 2),
        (4, 4) => size!(4, 1, 4),
        (8, 4) => size!(8, 2, 4),
        (12, 4) => size!(12, 3, 4),
        (16, 4) => size!(16, 4, 4),
        (8, 8) => size!(8, 1, 8),
        (16, 8) => size!(16, 2, 8),
        (24, 8) => size!(24, 3, 8),
        (32, 8) => size!(32, 4, 8),
        (40, 8) => size!(40, 5, 8),
        (48, 8) => size!(48, 6, 8),
        (56, 8) => size!(56, 7, 8),
        (64, 8) => size!(64, 8, 8),
        _ => unreachable!("ineligible Small shape"),
    }
}

/// Complex values per register row of the interleaved leaves: rows of four
/// from N=8 (eight for f32 zmm rows), otherwise one xmm.
pub(crate) fn interleaved_lanes(n: usize, isa: Isa, f64_: bool) -> usize {
    match (n, isa, f64_) {
        (4, _, false) => 2,
        (2 | 4 | 9, _, _) | (6, _, true) => 1,
        (18, _, true) => 2,
        (_, Isa::Avx512, false) => 8,
        _ => 4,
    }
}

pub(crate) fn interleaved_decomposition(n: usize) -> (usize, usize) {
    #[cfg(all(target_arch = "x86_64", feature = "avx2"))]
    {
        crate::isa::x86::interleaved::decomposition(n)
    }
    #[cfg(not(all(target_arch = "x86_64", feature = "avx2")))]
    {
        let _ = n;
        unreachable!("no interleaved leaves compiled")
    }
}

/// Interleaved-complex leaves: powers of two and selected small smooth sizes,
/// with AVX2 and AVX-512VL entries. AVX-512 adds zmm candidates for f64 and
/// the f32 N=128 leaf. The builder owns the supported size/tier combinations.
pub(crate) fn interleaved_shapes(n: usize, cap: Isa, f64_: bool) -> Vec<Shape> {
    #[cfg(all(target_arch = "x86_64", feature = "avx2"))]
    {
        interleaved::shapes(n, cap, f64_)
    }
    #[cfg(not(all(target_arch = "x86_64", feature = "avx2")))]
    {
        let _ = (n, cap, f64_);
        Vec::new()
    }
}

pub(crate) fn build_interleaved<T: FftNum>(
    n: usize,
    dir: FftDirection,
    shape: Shape,
) -> Arc<dyn Fft<T>> {
    #[cfg(all(target_arch = "x86_64", feature = "avx2"))]
    {
        interleaved::build::<T>(n, dir, shape)
    }
    #[cfg(not(all(target_arch = "x86_64", feature = "avx2")))]
    {
        let _ = (n, dir, shape);
        unreachable!("no interleaved leaves compiled");
    }
}

pub(crate) fn build<T: FftNum>(n: usize, dir: FftDirection, shape: Shape) -> Arc<dyn Fft<T>> {
    build_with::<T, PlanFactory>(n, dir, shape)
}

pub(crate) fn rectangular_candidates(
    n: usize,
    cap: Isa,
    f64_: bool,
) -> Vec<crate::planner::Candidate> {
    #[cfg(all(
        target_arch = "x86_64",
        any(feature = "sse2", feature = "avx2", feature = "avx512")
    ))]
    {
        rectangular::candidates(n, cap, f64_)
    }
    #[cfg(not(all(
        target_arch = "x86_64",
        any(feature = "sse2", feature = "avx2", feature = "avx512")
    )))]
    {
        let _ = (n, cap, f64_);
        Vec::new()
    }
}

pub(crate) fn build_rectangular<T: FftNum>(
    dir: FftDirection,
    shape: Shape,
    a: usize,
    b: usize,
) -> Arc<dyn Fft<T>> {
    #[cfg(all(
        target_arch = "x86_64",
        any(feature = "sse2", feature = "avx2", feature = "avx512")
    ))]
    {
        rectangular::build(dir, shape, a, b)
    }
    #[cfg(not(all(
        target_arch = "x86_64",
        any(feature = "sse2", feature = "avx2", feature = "avx512")
    )))]
    {
        let _ = (dir, shape, a, b);
        unreachable!("no rectangular leaves compiled")
    }
}

fn build_with<T: FftNum, F: Factory<T>>(n: usize, dir: FftDirection, shape: Shape) -> F::Output {
    assert!(eligible(n, shape) && crate::isa::available(shape.isa));
    macro_rules! go {
        ($v:ty) => {{
            assert_eq!(shape.lanes, <$v as Vector>::LANES);
            for_vector::<T, $v, F>(n, dir)
        }};
    }
    if shape.lanes == 1 {
        match (T::precision(), shape.isa) {
            #[cfg(all(target_arch = "x86_64", feature = "avx2"))]
            (Precision::F32, Isa::Avx2) => return go!(scalar::A32),
            #[cfg(all(target_arch = "x86_64", feature = "avx2"))]
            (Precision::F64, Isa::Avx2) => return go!(scalar::A64),
            #[cfg(all(target_arch = "x86_64", feature = "avx512"))]
            (Precision::F32, Isa::Avx512Ymm) => return go!(scalar::Z32),
            #[cfg(all(target_arch = "x86_64", feature = "avx512"))]
            (Precision::F64, Isa::Avx512Ymm) => return go!(scalar::Z64),
            _ => {}
        }
    }
    match (T::precision(), shape.isa) {
        (Precision::F32, Isa::Scalar) => go!(scalar::S32),
        (Precision::F64, Isa::Scalar) => go!(scalar::S64),
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
        (Precision::F64, Isa::Avx512) => go!(crate::isa::x86::F64x8),
        _ => unreachable!("unsupported Small tier"),
    }
}

#[cfg(all(test, feature = "tuning"))]
mod coefficient_swap_tests {
    use super::*;
    use crate::tuning::CoefficientSwapError as E;

    // Private fixtures intentionally exercise storage validation independently
    // of SIMD availability; no FFT is executed with these synthetic tables.
    type Fixture = Small<f32, scalar::S32, 4, 4, 1, false>;
    fn fixture() -> Fixture {
        Fixture {
            tw: vec![-0.0, f32::from_bits(0x7fc0_0012)],
            vector: PhantomData,
        }
    }

    #[test]
    fn miri_small_coefficient_swap_preserves_bits_and_restores_owner() {
        let mut a = fixture();
        let mut b = fixture();
        let pointers = (a.tw.as_ptr(), b.tw.as_ptr());
        a.diagnostic_swap_coefficients(&mut b, false).unwrap();
        assert_eq!((a.tw.as_ptr(), b.tw.as_ptr()), pointers);
        a.diagnostic_swap_coefficients(&mut b, true).unwrap();
        assert_eq!((a.tw.as_ptr(), b.tw.as_ptr()), (pointers.1, pointers.0));
        assert_eq!(a.tw[0].to_bits(), (-0.0f32).to_bits());
        a.diagnostic_swap_coefficients(&mut b, true).unwrap();
        assert_eq!((a.tw.as_ptr(), b.tw.as_ptr()), pointers);
    }

    #[test]
    fn miri_small_coefficient_swap_rejects_capacity_length_and_bits_atomically() {
        for exchange in [false, true] {
            for fault in 0..4 {
                let mut a = fixture();
                let mut b = fixture();
                let expected = match fault {
                    0 => {
                        b.tw.reserve_exact(b.tw.capacity() + 1);
                        E::StorageMismatch
                    }
                    1 => {
                        b.tw.pop();
                        E::StorageMismatch
                    }
                    2 => {
                        b.tw[0] = 0.0;
                        E::ValuesMismatch
                    }
                    _ => {
                        b.tw[1] = f32::from_bits(0x7fc0_0013);
                        E::ValuesMismatch
                    }
                };
                let pointers = (a.tw.as_ptr(), b.tw.as_ptr());
                let before_a = a.tw.iter().map(|v| v.to_bits()).collect::<Vec<_>>();
                let before_b = b.tw.iter().map(|v| v.to_bits()).collect::<Vec<_>>();
                assert_eq!(
                    a.diagnostic_swap_coefficients(&mut b, exchange),
                    Err(expected)
                );
                assert_eq!((a.tw.as_ptr(), b.tw.as_ptr()), pointers);
                assert_eq!(
                    a.tw.iter().map(|v| v.to_bits()).collect::<Vec<_>>(),
                    before_a
                );
                assert_eq!(
                    b.tw.iter().map(|v| v.to_bits()).collect::<Vec<_>>(),
                    before_b
                );
            }
        }
    }
}

//! Bluestein's chirp-z algorithm for lengths with prime factors above 13.
//!
//! With `c_k = exp(-i pi k^2 / N)`,
//! `X[k] = c_k * sum_n (x_n c_n) conj(c_{k-n})`, a convolution evaluated
//! with a fast inner FFT of length `M >= 2N - 2`. At equality the two
//! endpoints of the even convolution kernel coincide and are stored once.
//! The chirp angles use the exact integer reduction `k^2 mod 2N`.

use crate::api::{Fft, FftNum};
use crate::isa::{Isa, Precision, Vector};
use num_complex::Complex;
use std::sync::Arc;

/// A planned Bluestein transform (forward chirps; the inverse conjugates).
pub(crate) struct BluesteinPlan<T: FftNum> {
    pub n: usize,
    pub m: usize,
    /// Forward inner FFT of length `m`.
    pub inner: Arc<dyn Fft<T>>,
    isa: Isa,
    /// `c_k = exp(-i pi k^2 / n)`, `k < n`, in padded split-vector blocks.
    chirp: Vec<T>,
    /// `FFT_m(b) / m` in the same layout, `b_j = conj(c_j)` wrapped circularly.
    kernel: Vec<T>,
}

impl<T: FftNum> std::fmt::Debug for BluesteinPlan<T> {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        f.debug_struct("BluesteinPlan")
            .field("n", &self.n)
            .field("m", &self.m)
            .finish_non_exhaustive()
    }
}

fn to_t<T: FftNum>(re: f64, im: f64) -> Complex<T> {
    Complex::new(
        T::from_f64(re).expect("f64 converts"),
        T::from_f64(im).expect("f64 converts"),
    )
}

/// Prepare full [real lanes][imaginary lanes] blocks once, including padding
/// for the last block. Execution only deinterleaves the user's values.
fn pack<T: FftNum>(values: &[Complex<T>], lanes: usize) -> Vec<T> {
    let mut packed = vec![T::zero(); values.len().next_multiple_of(lanes) * 2];
    for (block, chunk) in values.chunks(lanes).enumerate() {
        let base = 2 * block * lanes;
        for (i, x) in chunk.iter().enumerate() {
            packed[base + i] = x.re;
            packed[base + lanes + i] = x.im;
        }
    }
    packed
}

impl<T: FftNum> BluesteinPlan<T> {
    /// Tier used by the chirp and pointwise passes; the inner FFT can differ.
    pub(crate) fn isa(&self) -> Isa {
        self.isa
    }

    pub(crate) fn new(n: usize, inner: Arc<dyn Fft<T>>, isa: Isa) -> Self {
        let m = inner.len();
        debug_assert!(m >= 2 * (n - 1));
        // Caps can name tiers omitted by cargo features. Select only a
        // compiled, detected vector shape, just as the other engines do.
        let f64_ = T::precision() == Precision::F64;
        // Below two full f32 vectors, 256-bit products avoid wide shuffle
        // overhead. The N=17 arena comparison favors this narrower entry.
        let product_isa = if !f64_ && n < 32 {
            isa.min(Isa::Avx512Ymm)
        } else {
            isa
        };
        let shape = super::shapes(product_isa, f64_)[0];
        assert!(m >= n.next_multiple_of(shape.lanes));
        let two_n = 2 * n;
        let roots = crate::twiddle::Roots::new(two_n, n);
        let chirp64: Vec<(f64, f64)> = (0..n)
            .map(|k| {
                let e = k.checked_mul(k).map_or_else(
                    || ((k as u128 * k as u128) % two_n as u128) as usize,
                    |square| square % two_n,
                );
                roots.get(e)
            })
            .collect();
        let chirp: Vec<Complex<T>> = chirp64.iter().map(|&(c, s)| to_t(c, s)).collect();
        // b_j = conj(c_j) for |j| < n, circular in m; scaled by 1/m here so
        // the inverse inner FFT needs no normalization pass.
        let mut b = vec![Complex::new(T::zero(), T::zero()); m];
        let inv_m = 1.0 / m as f64;
        for (j, &(c, s)) in chirp64.iter().enumerate() {
            let v = to_t::<T>(c * inv_m, -s * inv_m);
            b[j] = v;
            if j > 0 {
                b[m - j] = v;
            }
        }
        let mut scratch = vec![Complex::new(T::zero(), T::zero()); inner.get_inplace_scratch_len()];
        inner.process_with_scratch(&mut b, &mut scratch);
        BluesteinPlan {
            n,
            m,
            inner,
            isa: shape.isa,
            chirp: pack(&chirp, shape.lanes),
            kernel: pack(&b, shape.lanes),
        }
    }

    /// Scratch: the length-`m` work buffer (with slack to align it) plus the
    /// inner FFT's scratch.
    pub(crate) fn scratch_len(&self) -> usize {
        self.m + crate::fft::align_slack::<T>() + self.inner.get_inplace_scratch_len()
    }

    /// # Safety
    /// Input/output contain `n` complex values and are identical or disjoint.
    /// Scratch has `scratch_len()` values and is disjoint from both. All input
    /// is consumed into the work buffer before any output is written.
    pub(crate) unsafe fn process(
        &self,
        input: *const Complex<T>,
        output: *mut Complex<T>,
        scratch: &mut [Complex<T>],
        inverse: bool,
    ) {
        macro_rules! go {
            ($v:ty, $s:ty) => {{
                // SAFETY: FftNum is sealed; the precision match guarantees
                // T=$s. Construction checked the available ISA. Buffer sizes
                // and aliasing follow this function's contract.
                unsafe {
                    <$v>::execute(
                        &*(self as *const Self).cast::<BluesteinPlan<$s>>(),
                        input.cast(),
                        output.cast(),
                        core::slice::from_raw_parts_mut(scratch.as_mut_ptr().cast(), scratch.len()),
                        inverse,
                    )
                }
            }};
        }
        match (T::precision(), self.isa) {
            (Precision::F32, Isa::Scalar) => go!(crate::isa::scalar::S32, f32),
            (Precision::F64, Isa::Scalar) => go!(crate::isa::scalar::S64, f64),
            #[cfg(all(target_arch = "aarch64", feature = "neon"))]
            (Precision::F32, Isa::Neon) => go!(crate::isa::neon::F32x4, f32),
            #[cfg(all(target_arch = "aarch64", feature = "neon"))]
            (Precision::F64, Isa::Neon) => go!(crate::isa::neon::F64x2, f64),
            #[cfg(all(target_arch = "x86_64", feature = "sse2"))]
            (Precision::F32, Isa::Sse2) => go!(crate::isa::x86::F32x4, f32),
            #[cfg(all(target_arch = "x86_64", feature = "sse2"))]
            (Precision::F64, Isa::Sse2) => go!(crate::isa::x86::F64x2, f64),
            #[cfg(all(target_arch = "x86_64", feature = "avx2"))]
            (Precision::F32, Isa::Avx2) => go!(crate::isa::x86::F32x8, f32),
            #[cfg(all(target_arch = "x86_64", feature = "avx2"))]
            (Precision::F64, Isa::Avx2) => go!(crate::isa::x86::F64x4, f64),
            #[cfg(all(target_arch = "x86_64", feature = "avx512"))]
            (Precision::F32, Isa::Avx512Ymm) => go!(crate::isa::x86::F32x8v, f32),
            #[cfg(all(target_arch = "x86_64", feature = "avx512"))]
            (Precision::F64, Isa::Avx512Ymm) => go!(crate::isa::x86::F64x4v, f64),
            #[cfg(all(target_arch = "x86_64", feature = "avx512"))]
            (Precision::F32, Isa::Avx512) => go!(crate::isa::x86::F32x16, f32),
            #[cfg(all(target_arch = "x86_64", feature = "avx512"))]
            (Precision::F64, Isa::Avx512) => go!(crate::isa::x86::F64x8, f64),
            #[allow(unreachable_patterns)]
            _ => unreachable!("unavailable Bluestein tier"),
        }
    }
}

/// Multiplies interleaved complex buffers, fusing the conjugations needed
/// around the inner forward FFTs. Only the final prefix uses bounded loads.
#[inline(always)]
unsafe fn product<V: Vector, const CONJ_INPUT: bool, const CONJ_OUTPUT: bool, const PAD: bool>(
    input: *const V::S,
    factors: *const V::S,
    output: *mut V::S,
    n: usize,
) {
    // SAFETY: matching vector features, n readable/writable complex values,
    // and factors packed in full [re][im] vector blocks. With PAD, output
    // holds n rounded UP to a full vector and is disjoint from input; unused
    // factor lanes are zero. Otherwise output is identical to input or
    // disjoint. Each input block is loaded before storing, and its tail
    // accesses only the remaining complex values.
    unsafe {
        let l = V::LANES;
        let full = n / l * l;
        for k in (0..n).step_by(l) {
            let x = input.add(2 * k);
            let c = factors.add(2 * k);
            // Keep the loads in the target-feature entry's inlining chain.
            // A closure here can become baseline-ISA code that calls every
            // intrinsic out of line and spills the vectors between calls.
            let (ar, mut ai) = if k < full {
                V::deinterleave(V::load(x), V::load(x.add(l)))
            } else {
                V::load_complex_prefix(x, n - k)
            };
            let (br, bi) = (V::load(c), V::load(c.add(l)));
            if CONJ_INPUT {
                ai = V::neg(ai);
            }
            let re = V::fmsub(ar, br, V::mul(ai, bi));
            let mut im = V::fmadd(ar, bi, V::mul(ai, br));
            if CONJ_OUTPUT {
                im = V::neg(im);
            }
            let dst = output.add(2 * k);
            if k < full || PAD {
                let (lo, hi) = V::interleave(re, im);
                V::store(dst, lo);
                V::store(dst.add(l), hi);
            } else {
                V::store_complex_prefix(dst, re, im, n - k);
            }
        }
    }
}

#[inline(always)]
unsafe fn zero_suffix<V: Vector>(work: *mut V::S, start: usize, end: usize) {
    // SAFETY: matching ISA, a writable workspace through end complex values,
    // and start <= end. Only the final partial block uses a bounded store.
    unsafe {
        let zero = V::splat_f64(0.0);
        for k in (start..end).step_by(V::LANES) {
            let p = work.add(2 * k);
            if end - k >= V::LANES {
                V::store(p, zero);
                V::store(p.add(V::LANES), zero);
            } else {
                V::store_complex_prefix(p, zero, zero, end - k);
            }
        }
    }
}

#[inline(always)]
unsafe fn execute<V: Vector, const INV: bool>(
    plan: &BluesteinPlan<V::S>,
    input: *const V::S,
    output: *mut V::S,
    scratch: &mut [Complex<V::S>],
) where
    V::S: FftNum,
{
    let (work, inner_scratch) = crate::scratch::aligned(scratch).split_at_mut(plan.m);
    let chirp = plan.chirp.as_ptr().cast();
    // SAFETY: the caller checked n inputs/outputs, disjoint scratch and the
    // vector ISA. Input is fully consumed before any aliased output is stored.
    unsafe {
        // IFFT(x) = conj(FFT(conj(x))): both directions share forward chirps
        // and the contiguous kernel; no reverse indexing is needed.
        product::<V, INV, false, true>(input, chirp, work.as_mut_ptr().cast(), plan.n);
        // The input product zeroes its partial vector into internal workspace.
        // Small convolutions can finish padding there, without a memset call.
        zero_suffix::<V>(
            work.as_mut_ptr().cast(),
            plan.n.next_multiple_of(V::LANES),
            plan.m,
        );
        plan.inner.process_with_scratch(work, inner_scratch);
        // Reborrow after the inner FFT; do not retain raw workspace pointers
        // across its exclusive slice borrow.
        let p = work.as_mut_ptr().cast();
        product::<V, false, true, false>(p, plan.kernel.as_ptr().cast(), p, plan.m);
        plan.inner.process_with_scratch(work, inner_scratch);
        product::<V, true, INV, false>(work.as_ptr().cast(), chirp, output, plan.n);
    }
}

trait BluesteinVector: Vector {
    /// Same buffer contract as BluesteinPlan::process, with the matching ISA.
    unsafe fn execute(
        plan: &BluesteinPlan<Self::S>,
        input: *const Self::S,
        output: *mut Self::S,
        scratch: &mut [Complex<Self::S>],
        inverse: bool,
    ) where
        Self::S: FftNum;
}

macro_rules! entry {
    ($v:ty $(, $features:literal)?) => {
        impl BluesteinVector for $v {
            $(#[target_feature(enable = $features)])?
            unsafe fn execute(
                plan: &BluesteinPlan<Self::S>, input: *const Self::S,
                output: *mut Self::S, scratch: &mut [Complex<Self::S>], inverse: bool,
            ) {
                // SAFETY: forwarded buffer contract, matching vector features.
                unsafe {
                    if inverse { execute::<Self, true>(plan, input, output, scratch); }
                    else { execute::<Self, false>(plan, input, output, scratch); }
                }
            }
        }
    };
}
entry!(crate::isa::scalar::S32);
entry!(crate::isa::scalar::S64);
#[cfg(all(target_arch = "aarch64", feature = "neon"))]
entry!(crate::isa::neon::F32x4, "neon");
#[cfg(all(target_arch = "aarch64", feature = "neon"))]
entry!(crate::isa::neon::F64x2, "neon");
#[cfg(all(target_arch = "x86_64", feature = "sse2"))]
entry!(crate::isa::x86::F32x4, "sse2");
#[cfg(all(target_arch = "x86_64", feature = "sse2"))]
entry!(crate::isa::x86::F64x2, "sse2");
#[cfg(all(target_arch = "x86_64", feature = "avx2"))]
entry!(crate::isa::x86::F32x8, "avx2,fma");
#[cfg(all(target_arch = "x86_64", feature = "avx2"))]
entry!(crate::isa::x86::F64x4, "avx2,fma");
#[cfg(all(target_arch = "x86_64", feature = "avx512"))]
entry!(
    crate::isa::x86::F32x8v,
    "avx512f,avx512vl,avx512dq,avx512bw,avx512cd,avx2,fma"
);
#[cfg(all(target_arch = "x86_64", feature = "avx512"))]
entry!(
    crate::isa::x86::F64x4v,
    "avx512f,avx512vl,avx512dq,avx512bw,avx512cd,avx2,fma"
);
#[cfg(all(target_arch = "x86_64", feature = "avx512"))]
entry!(
    crate::isa::x86::F32x16,
    "avx512f,avx512vl,avx512dq,avx512bw,avx512cd,avx2,fma"
);
#[cfg(all(target_arch = "x86_64", feature = "avx512"))]
entry!(
    crate::isa::x86::F64x8,
    "avx512f,avx512vl,avx512dq,avx512bw,avx512cd,avx2,fma"
);

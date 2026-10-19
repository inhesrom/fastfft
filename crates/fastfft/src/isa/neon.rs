//! AArch64 NEON split vectors. Arithmetic uses the baseline NEON FMA
//! instructions; complex values retain the engines' separate real/imaginary
//! vectors, without requiring the optional FCMA extension.

use super::{SimdReal, Vector};
use core::arch::aarch64::*;

#[derive(Clone, Copy, Debug)]
pub(crate) struct F32x4(float32x4_t);

#[derive(Clone, Copy, Debug)]
pub(crate) struct F64x2(float64x2_t);

macro_rules! arithmetic {
    ($v:ident, $s:ty, $splat:ident, $add:ident, $sub:ident, $mul:ident,
     $neg:ident, $fma:ident, $fms:ident) => {
        // SAFETY: callers enable NEON before entering these operations.
        unsafe impl SimdReal for $v {
            #[inline(always)]
            unsafe fn splat_f64(x: f64) -> Self {
                // SAFETY: the caller enables NEON.
                unsafe { Self($splat(x as $s)) }
            }
            #[inline(always)]
            unsafe fn add(a: Self, b: Self) -> Self {
                // SAFETY: the caller enables NEON.
                unsafe { Self($add(a.0, b.0)) }
            }
            #[inline(always)]
            unsafe fn sub(a: Self, b: Self) -> Self {
                // SAFETY: the caller enables NEON.
                unsafe { Self($sub(a.0, b.0)) }
            }
            #[inline(always)]
            unsafe fn mul(a: Self, b: Self) -> Self {
                // SAFETY: the caller enables NEON.
                unsafe { Self($mul(a.0, b.0)) }
            }
            #[inline(always)]
            unsafe fn neg(a: Self) -> Self {
                // SAFETY: the caller enables NEON.
                unsafe { Self($neg(a.0)) }
            }
            #[inline(always)]
            unsafe fn fmadd(a: Self, b: Self, c: Self) -> Self {
                // SAFETY: the caller enables NEON. Its accumulator is the
                // first operand: vfmaq(c, a, b) computes a*b+c.
                unsafe { Self($fma(c.0, a.0, b.0)) }
            }
            #[inline(always)]
            unsafe fn fmsub(a: Self, b: Self, c: Self) -> Self {
                // SAFETY: the caller enables NEON. Negating the accumulator
                // gives a*b-c with one rounding of the multiply-add.
                unsafe { Self($fma($neg(c.0), a.0, b.0)) }
            }
            #[inline(always)]
            unsafe fn fnmadd(a: Self, b: Self, c: Self) -> Self {
                // SAFETY: the caller enables NEON. vfmsq subtracts the
                // product from the first operand, computing c-a*b.
                unsafe { Self($fms(c.0, a.0, b.0)) }
            }
        }
    };
}

arithmetic!(
    F32x4,
    f32,
    vdupq_n_f32,
    vaddq_f32,
    vsubq_f32,
    vmulq_f32,
    vnegq_f32,
    vfmaq_f32,
    vfmsq_f32
);
arithmetic!(
    F64x2,
    f64,
    vdupq_n_f64,
    vaddq_f64,
    vsubq_f64,
    vmulq_f64,
    vnegq_f64,
    vfmaq_f64,
    vfmsq_f64
);

macro_rules! memory {
    ($s:ty, $lanes:literal, $splat:ident, $load:ident, $store:ident,
     $unzip_lo:ident, $unzip_hi:ident, $zip_lo:ident, $zip_hi:ident) => {
        type S = $s;
        const LANES: usize = $lanes;

        #[inline(always)]
        unsafe fn splat(x: Self::S) -> Self {
            // SAFETY: the caller enables NEON.
            unsafe { Self($splat(x)) }
        }
        #[inline(always)]
        unsafe fn load(p: *const Self::S) -> Self {
            // SAFETY: the caller enables NEON and supplies LANES readable
            // scalars. NEON loads do not require vector alignment.
            unsafe { Self($load(p)) }
        }
        #[inline(always)]
        unsafe fn store(p: *mut Self::S, v: Self) {
            // SAFETY: the caller enables NEON and supplies LANES writable
            // scalars. NEON stores do not require vector alignment.
            unsafe { $store(p, v.0) }
        }
        #[inline(always)]
        unsafe fn deinterleave(a: Self, b: Self) -> (Self, Self) {
            // SAFETY: the caller enables NEON. Unzip gathers even and odd
            // real lanes from the two consecutive interleaved vectors.
            unsafe { (Self($unzip_lo(a.0, b.0)), Self($unzip_hi(a.0, b.0))) }
        }
        #[inline(always)]
        unsafe fn interleave(re: Self, im: Self) -> (Self, Self) {
            // SAFETY: the caller enables NEON. Zip restores the two
            // consecutive vectors of interleaved complex values.
            unsafe { (Self($zip_lo(re.0, im.0)), Self($zip_hi(re.0, im.0))) }
        }
    };
}

// SAFETY: these four-lane operations require only NEON. Memory operations
// honor the Vector pointer contract, including scalar-aligned addresses.
unsafe impl Vector for F32x4 {
    memory!(
        f32,
        4,
        vdupq_n_f32,
        vld1q_f32,
        vst1q_f32,
        vuzp1q_f32,
        vuzp2q_f32,
        vzip1q_f32,
        vzip2q_f32
    );

    #[inline(always)]
    unsafe fn zip(a: Self, b: Self, k: usize) -> (Self, Self) {
        debug_assert!(matches!(k, 1 | 2));
        // SAFETY: the caller enables NEON. The one-lane block transpose
        // selects alternating lanes; two-lane blocks join matching halves.
        unsafe {
            if k == 2 {
                (
                    Self(vcombine_f32(vget_low_f32(a.0), vget_low_f32(b.0))),
                    Self(vcombine_f32(vget_high_f32(a.0), vget_high_f32(b.0))),
                )
            } else {
                (Self(vtrn1q_f32(a.0, b.0)), Self(vtrn2q_f32(a.0, b.0)))
            }
        }
    }
}

// SAFETY: AArch64 NEON supports two-lane f64 arithmetic and shuffles.
// Memory operations honor the Vector pointer contract.
unsafe impl Vector for F64x2 {
    memory!(
        f64,
        2,
        vdupq_n_f64,
        vld1q_f64,
        vst1q_f64,
        vuzp1q_f64,
        vuzp2q_f64,
        vzip1q_f64,
        vzip2q_f64
    );

    #[inline(always)]
    unsafe fn zip(a: Self, b: Self, k: usize) -> (Self, Self) {
        debug_assert_eq!(k, 1);
        // SAFETY: the caller enables NEON. Each vector contains two
        // one-lane blocks, so the low/high zips implement the block zip.
        unsafe { (Self(vzip1q_f64(a.0, b.0)), Self(vzip2q_f64(a.0, b.0))) }
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    macro_rules! check_vector {
        ($module:ident, $v:ty, $s:ty, $lanes:literal, $epsilon:expr) => {
            mod $module {
                use super::*;
                type V = $v;
                type S = $s;
                const LANES: usize = $lanes;

                unsafe fn values(v: V) -> [S; LANES] {
                    let mut result = [0.; LANES];
                    // SAFETY: the caller enables NEON; result holds LANES scalars.
                    unsafe { V::store(result.as_mut_ptr(), v) };
                    result
                }

                #[test]
                fn arithmetic_and_fused_signs() {
                    if !std::arch::is_aarch64_feature_detected!("neon") {
                        return;
                    }
                    // SAFETY: NEON was detected; all local arrays hold full vectors.
                    unsafe {
                        let a = [3., -5., 7., -11.];
                        let b = [-2., 4., -6., 8.];
                        let c = [13., -17., 19., -23.];
                        let av = V::load(a.as_ptr());
                        let bv = V::load(b.as_ptr());
                        let cv = V::load(c.as_ptr());
                        let cases: [([S; LANES], [S; LANES]); 7] = [
                            (values(V::add(av, bv)), std::array::from_fn(|i| a[i] + b[i])),
                            (values(V::sub(av, bv)), std::array::from_fn(|i| a[i] - b[i])),
                            (values(V::mul(av, bv)), std::array::from_fn(|i| a[i] * b[i])),
                            (values(V::neg(av)), std::array::from_fn(|i| -a[i])),
                            (
                                values(V::fmadd(av, bv, cv)),
                                std::array::from_fn(|i| a[i].mul_add(b[i], c[i])),
                            ),
                            (
                                values(V::fmsub(av, bv, cv)),
                                std::array::from_fn(|i| a[i].mul_add(b[i], -c[i])),
                            ),
                            (
                                values(V::fnmadd(av, bv, cv)),
                                std::array::from_fn(|i| (-a[i]).mul_add(b[i], c[i])),
                            ),
                        ];
                        for (actual, expected) in cases {
                            assert_eq!(actual, expected);
                        }
                        assert_eq!(values(V::splat_f64(1.25)), [1.25; LANES]);

                        // The separately rounded product is 1, but the fused
                        // result retains the negative square of epsilon.
                        let eps: S = $epsilon;
                        let a = V::splat(1. + eps);
                        let b = V::splat(1. - eps);
                        assert_eq!(values(V::mul(a, b)), [1.; LANES]);
                        assert_eq!(values(V::fmadd(a, b, V::splat(-1.))), [-eps * eps; LANES]);
                        assert_eq!(values(V::fmsub(a, b, V::splat(1.))), [-eps * eps; LANES]);
                        assert_eq!(values(V::fnmadd(a, b, V::splat(1.))), [eps * eps; LANES]);
                        assert!(
                            values(V::neg(V::splat(0.)))
                                .iter()
                                .all(|x| x.is_sign_negative())
                        );
                        assert!(
                            values(V::neg(V::splat(-0.)))
                                .iter()
                                .all(|x| x.is_sign_positive())
                        );
                    }
                }

                #[test]
                fn complex_layout_and_block_zips() {
                    if !std::arch::is_aarch64_feature_detected!("neon") {
                        return;
                    }
                    let interleaved: [S; 2 * LANES] = std::array::from_fn(|i| i as S + 1.);
                    // SAFETY: NEON was detected; each load reads a full local vector.
                    unsafe {
                        let lo = V::load(interleaved.as_ptr());
                        let hi = V::load(interleaved.as_ptr().add(LANES));
                        let (re, im) = V::deinterleave(lo, hi);
                        assert_eq!(
                            values(re),
                            std::array::from_fn::<_, LANES, _>(|i| interleaved[2 * i])
                        );
                        assert_eq!(
                            values(im),
                            std::array::from_fn::<_, LANES, _>(|i| interleaved[2 * i + 1])
                        );
                        let (a, b) = V::interleave(re, im);
                        assert_eq!(values(a), values(lo));
                        assert_eq!(values(b), values(hi));
                        for k in [1, 2].into_iter().filter(|&k| k < LANES) {
                            let (even, odd) = V::zip(lo, hi, k);
                            let expected = |parity: usize| -> [S; LANES] {
                                std::array::from_fn(|i| {
                                    let block = i / k;
                                    let source = (block % 2) * LANES;
                                    interleaved[source + (2 * (block / 2) + parity) * k + i % k]
                                })
                            };
                            assert_eq!(values(even), expected(0), "k={k}");
                            assert_eq!(values(odd), expected(1), "k={k}");
                        }
                    }
                }

                #[test]
                fn bounded_complex_prefixes() {
                    if !std::arch::is_aarch64_feature_detected!("neon") {
                        return;
                    }
                    for valid in 0..=LANES {
                        // The source allocation contains exactly the readable prefix.
                        let input: Vec<S> = (0..2 * valid).map(|i| i as S + 1.).collect();
                        let mut output = [987.; 2 * LANES + 2];
                        // SAFETY: NEON was detected. Input holds exactly valid
                        // complex values; output has that many after its guard.
                        unsafe {
                            let (re, im) = V::load_complex_prefix(input.as_ptr(), valid);
                            assert_eq!(
                                values(re),
                                std::array::from_fn::<_, LANES, _>(|i| if i < valid {
                                    input[2 * i]
                                } else {
                                    0.
                                })
                            );
                            assert_eq!(
                                values(im),
                                std::array::from_fn::<_, LANES, _>(|i| if i < valid {
                                    input[2 * i + 1]
                                } else {
                                    0.
                                })
                            );
                            V::store_complex_prefix(output.as_mut_ptr().add(1), re, im, valid);
                        }
                        assert_eq!(&output[1..1 + 2 * valid], input.as_slice());
                        assert_eq!(output[0], 987.);
                        assert!(output[1 + 2 * valid..].iter().all(|&x| x == 987.));
                    }
                }

                #[test]
                fn unaligned_load_store_preserves_guards() {
                    if !std::arch::is_aarch64_feature_detected!("neon") {
                        return;
                    }
                    #[repr(align(16))]
                    struct Guarded([S; LANES + 2]);
                    let input = Guarded(std::array::from_fn(|i| i as S + 1.));
                    let mut output = Guarded([987.; LANES + 2]);
                    // SAFETY: NEON was detected. Offsetting by one scalar leaves
                    // LANES valid scalars while deliberately breaking SIMD alignment.
                    unsafe {
                        let src = input.0.as_ptr().add(1);
                        let dst = output.0.as_mut_ptr().add(1);
                        assert_ne!(src as usize % 16, 0);
                        assert_ne!(dst as usize % 16, 0);
                        V::store(dst, V::load(src));
                    }
                    assert_eq!(&output.0[1..1 + LANES], &input.0[1..1 + LANES]);
                    assert_eq!(output.0[0], 987.);
                    assert_eq!(output.0[LANES + 1], 987.);
                }
            }
        };
    }

    check_vector!(f32x4, F32x4, f32, 4, 1. / 8192.);
    check_vector!(f64x2, F64x2, f64, 2, 1. / 134217728.);
}

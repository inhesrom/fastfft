//! x86_64 vector types for the SSE2, AVX2, AVX-512 (256-bit) and AVX-512
//! (512-bit) tiers.

#![allow(clippy::missing_safety_doc)]

use super::{SimdReal, Vector};
use core::arch::x86_64::*;

// Masked memory instructions suppress accesses to inactive lanes. A complex
// prefix can end in either half of the interleaved pair; do not even form a
// pointer to the second vector unless that half contains a readable value.
macro_rules! complex_prefix {
    ($load:ident, $store:ident) => {
        #[inline(always)]
        unsafe fn load_complex_prefix(p: *const Self::S, valid: usize) -> (Self, Self) {
            debug_assert!(valid <= Self::LANES);
            // SAFETY: the caller enables AVX-512 (and VL at 256 bits), and
            // each mask enables only lanes in the readable complex prefix.
            unsafe {
                let low = (2 * valid).min(Self::LANES);
                let lo = Self($load(((1u32 << low) - 1) as _, p));
                let hi = if 2 * valid > Self::LANES {
                    Self($load(
                        ((1u32 << (2 * valid - Self::LANES)) - 1) as _,
                        p.add(Self::LANES),
                    ))
                } else {
                    Self::splat(0.)
                };
                Self::deinterleave(lo, hi)
            }
        }
        #[inline(always)]
        unsafe fn store_complex_prefix(p: *mut Self::S, re: Self, im: Self, valid: usize) {
            debug_assert!(valid <= Self::LANES);
            // SAFETY: matching features and only the writable prefix's mask
            // bits are set. No second-vector pointer is formed for short tails.
            unsafe {
                let (lo, hi) = Self::interleave(re, im);
                let low = (2 * valid).min(Self::LANES);
                $store(p, ((1u32 << low) - 1) as _, lo.0);
                if 2 * valid > Self::LANES {
                    $store(
                        p.add(Self::LANES),
                        ((1u32 << (2 * valid - Self::LANES)) - 1) as _,
                        hi.0,
                    );
                }
            }
        }
    };
}

// SAFETY: these extracts run only under the source vector's features;
// the destination vectors require no additional features.
#[cfg(any(feature = "avx2", feature = "avx512"))]
unsafe impl super::HalfVector for F32x8 {
    type Half = F32x4;
    #[inline(always)]
    unsafe fn halves(v: Self) -> (F32x4, F32x4) {
        // SAFETY: AVX2 is enabled by the caller.
        unsafe {
            (
                F32x4(_mm256_castps256_ps128(v.0)),
                F32x4(_mm256_extractf128_ps::<1>(v.0)),
            )
        }
    }
}
// SAFETY: AVX-512 includes the AVX extracts and SSE2 destination arithmetic.
#[cfg(any(feature = "avx2", feature = "avx512"))]
unsafe impl super::HalfVector for F32x8v {
    type Half = F32x4;
    #[inline(always)]
    unsafe fn halves(v: Self) -> (F32x4, F32x4) {
        // SAFETY: AVX-512 and AVX2 are enabled by the caller.
        unsafe {
            (
                F32x4(_mm256_castps256_ps128(v.0)),
                F32x4(_mm256_extractf128_ps::<1>(v.0)),
            )
        }
    }
}
// SAFETY: both vector types require the same AVX-512 feature set.
#[cfg(any(feature = "avx2", feature = "avx512"))]
unsafe impl super::HalfVector for F64x8 {
    type Half = F64x4v;
    #[inline(always)]
    unsafe fn halves(v: Self) -> (F64x4v, F64x4v) {
        // SAFETY: AVX-512DQ is enabled by the caller.
        unsafe {
            (
                F64x4v(_mm512_castpd512_pd256(v.0)),
                F64x4v(_mm512_extractf64x4_pd::<1>(v.0)),
            )
        }
    }
}

macro_rules! arith {
    ($t:ident, $s:ty, $set1:ident, $add:ident, $sub:ident, $mul:ident, $xor:ident,
     fma($fmadd:ident, $fmsub:ident, $fnmadd:ident)) => {
        arith!(@base $t, $s, $set1, $add, $sub, $mul, $xor,
            // SAFETY: FMA is part of every tier that uses these types.
            |a, b, c| unsafe { $t($fmadd(a.0, b.0, c.0)) },
            // SAFETY: as above.
            |a, b, c| unsafe { $t($fmsub(a.0, b.0, c.0)) },
            // SAFETY: as above.
            |a, b, c| unsafe { $t($fnmadd(a.0, b.0, c.0)) });
    };
    ($t:ident, $s:ty, $set1:ident, $add:ident, $sub:ident, $mul:ident, $xor:ident, nofma) => {
        arith!(@base $t, $s, $set1, $add, $sub, $mul, $xor,
            // SAFETY: SSE2 is baseline on x86_64; two roundings without FMA.
            |a, b, c| unsafe { $t($add($mul(a.0, b.0), c.0)) },
            // SAFETY: as above.
            |a, b, c| unsafe { $t($sub($mul(a.0, b.0), c.0)) },
            // SAFETY: as above.
            |a, b, c| unsafe { $t($sub(c.0, $mul(a.0, b.0))) });
    };
    (@base $t:ident, $s:ty, $set1:ident, $add:ident, $sub:ident, $mul:ident, $xor:ident,
     |$a1:ident, $b1:ident, $c1:ident| $e1:expr,
     |$a2:ident, $b2:ident, $c2:ident| $e2:expr,
     |$a3:ident, $b3:ident, $c3:ident| $e3:expr) => {
        // SAFETY: see the trait docs; only used under the matching target features.
        unsafe impl SimdReal for $t {
            #[inline(always)]
            unsafe fn splat_f64(x: f64) -> Self {
                // SAFETY: caller runs with this tier's target features.
                unsafe { $t($set1(x as $s)) }
            }
            #[inline(always)]
            unsafe fn add(a: Self, b: Self) -> Self {
                // SAFETY: as above.
                unsafe { $t($add(a.0, b.0)) }
            }
            #[inline(always)]
            unsafe fn sub(a: Self, b: Self) -> Self {
                // SAFETY: as above.
                unsafe { $t($sub(a.0, b.0)) }
            }
            #[inline(always)]
            unsafe fn mul(a: Self, b: Self) -> Self {
                // SAFETY: as above.
                unsafe { $t($mul(a.0, b.0)) }
            }
            #[inline(always)]
            unsafe fn neg(a: Self) -> Self {
                // SAFETY: as above.
                unsafe { $t($xor(a.0, $set1(-0.0))) }
            }
            #[inline(always)]
            unsafe fn fmadd($a1: Self, $b1: Self, $c1: Self) -> Self {
                $e1
            }
            #[inline(always)]
            unsafe fn fmsub($a2: Self, $b2: Self, $c2: Self) -> Self {
                $e2
            }
            #[inline(always)]
            unsafe fn fnmadd($a3: Self, $b3: Self, $c3: Self) -> Self {
                $e3
            }
        }
    };
}

macro_rules! mem {
    ($t:ident, $s:ty, $lanes:expr, $set1:ident, $load:ident, $store:ident, $stream:ident) => {
        #[inline(always)]
        unsafe fn splat(x: $s) -> Self {
            // SAFETY: tier features available (caller contract).
            unsafe { $t($set1(x)) }
        }
        #[inline(always)]
        unsafe fn load(p: *const $s) -> Self {
            // SAFETY: caller guarantees `p` is valid for LANES reads.
            unsafe { $t($load(p)) }
        }
        #[inline(always)]
        unsafe fn store(p: *mut $s, v: Self) {
            // SAFETY: caller guarantees `p` is valid for LANES writes.
            unsafe { $store(p, v.0) }
        }
        #[inline(always)]
        unsafe fn stream_store(p: *mut $s, v: Self) {
            // SAFETY: caller guarantees vector alignment, writable lanes,
            // and the vector tier's features.
            unsafe { $stream(p, v.0) }
        }
        #[inline(always)]
        unsafe fn stream_fence() {
            // SAFETY: SSE2 is included in every x86 vector tier.
            unsafe { _mm_sfence() }
        }
    };
}

#[cfg(feature = "avx2")]
pub(crate) mod interleaved;

// ------------------------------------------------------------------ AVX-512 (zmm)

#[derive(Clone, Copy, Debug)]
pub(crate) struct F32x16(__m512);
#[derive(Clone, Copy, Debug)]
pub(crate) struct F64x8(__m512d);

arith!(
    F32x16,
    f32,
    _mm512_set1_ps,
    _mm512_add_ps,
    _mm512_sub_ps,
    _mm512_mul_ps,
    _mm512_xor_ps,
    fma(_mm512_fmadd_ps, _mm512_fmsub_ps, _mm512_fnmadd_ps)
);
arith!(
    F64x8,
    f64,
    _mm512_set1_pd,
    _mm512_add_pd,
    _mm512_sub_pd,
    _mm512_mul_pd,
    _mm512_xor_pd,
    fma(_mm512_fmadd_pd, _mm512_fmsub_pd, _mm512_fnmadd_pd)
);

#[inline(always)]
unsafe fn idx16(v: [i32; 16]) -> __m512i {
    // SAFETY: reads 64 bytes from a local array.
    unsafe { _mm512_loadu_si512(v.as_ptr().cast()) }
}
#[inline(always)]
unsafe fn idx8q(v: [i64; 8]) -> __m512i {
    // SAFETY: reads 64 bytes from a local array.
    unsafe { _mm512_loadu_si512(v.as_ptr().cast()) }
}

const ZIP16: [[[i32; 16]; 2]; 4] = [
    [
        [0, 16, 2, 18, 4, 20, 6, 22, 8, 24, 10, 26, 12, 28, 14, 30],
        [1, 17, 3, 19, 5, 21, 7, 23, 9, 25, 11, 27, 13, 29, 15, 31],
    ],
    [
        [0, 1, 16, 17, 4, 5, 20, 21, 8, 9, 24, 25, 12, 13, 28, 29],
        [2, 3, 18, 19, 6, 7, 22, 23, 10, 11, 26, 27, 14, 15, 30, 31],
    ],
    [
        [0, 1, 2, 3, 16, 17, 18, 19, 8, 9, 10, 11, 24, 25, 26, 27],
        [4, 5, 6, 7, 20, 21, 22, 23, 12, 13, 14, 15, 28, 29, 30, 31],
    ],
    [
        [0, 1, 2, 3, 4, 5, 6, 7, 16, 17, 18, 19, 20, 21, 22, 23],
        [8, 9, 10, 11, 12, 13, 14, 15, 24, 25, 26, 27, 28, 29, 30, 31],
    ],
];
const ZIP8Q: [[[i64; 8]; 2]; 3] = [
    [[0, 8, 2, 10, 4, 12, 6, 14], [1, 9, 3, 11, 5, 13, 7, 15]],
    [[0, 1, 8, 9, 4, 5, 12, 13], [2, 3, 10, 11, 6, 7, 14, 15]],
    [[0, 1, 2, 3, 8, 9, 10, 11], [4, 5, 6, 7, 12, 13, 14, 15]],
];

// SAFETY: 512-bit AVX-512F vectors; used only on the Avx512 tier.
unsafe impl Vector for F32x16 {
    type S = f32;
    const LANES: usize = 16;
    complex_prefix!(_mm512_maskz_loadu_ps, _mm512_mask_storeu_ps);
    mem!(
        F32x16,
        f32,
        16,
        _mm512_set1_ps,
        _mm512_loadu_ps,
        _mm512_storeu_ps,
        _mm512_stream_ps
    );
    #[inline(always)]
    unsafe fn deinterleave(a: Self, b: Self) -> (Self, Self) {
        // SAFETY: AVX-512F available (tier contract).
        unsafe {
            let e = idx16([0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30]);
            let o = idx16([1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31]);
            (
                F32x16(_mm512_permutex2var_ps(a.0, e, b.0)),
                F32x16(_mm512_permutex2var_ps(a.0, o, b.0)),
            )
        }
    }
    #[inline(always)]
    unsafe fn interleave(re: Self, im: Self) -> (Self, Self) {
        // SAFETY: AVX-512F available (tier contract).
        unsafe {
            let lo = idx16([0, 16, 1, 17, 2, 18, 3, 19, 4, 20, 5, 21, 6, 22, 7, 23]);
            let hi = idx16([8, 24, 9, 25, 10, 26, 11, 27, 12, 28, 13, 29, 14, 30, 15, 31]);
            (
                F32x16(_mm512_permutex2var_ps(re.0, lo, im.0)),
                F32x16(_mm512_permutex2var_ps(re.0, hi, im.0)),
            )
        }
    }
    #[inline(always)]
    unsafe fn zip(a: Self, b: Self, k: usize) -> (Self, Self) {
        // SAFETY: AVX-512F available (tier contract).
        unsafe {
            if k == 2 {
                let (x, y) = (_mm512_castps_pd(a.0), _mm512_castps_pd(b.0));
                return (
                    F32x16(_mm512_castpd_ps(_mm512_unpacklo_pd(x, y))),
                    F32x16(_mm512_castpd_ps(_mm512_unpackhi_pd(x, y))),
                );
            }
            let t = &ZIP16[k.trailing_zeros() as usize];
            (
                F32x16(_mm512_permutex2var_ps(a.0, idx16(t[0]), b.0)),
                F32x16(_mm512_permutex2var_ps(a.0, idx16(t[1]), b.0)),
            )
        }
    }
}

// SAFETY: 512-bit AVX-512F vectors; used only on the Avx512 tier.
unsafe impl Vector for F64x8 {
    type S = f64;
    const LANES: usize = 8;
    complex_prefix!(_mm512_maskz_loadu_pd, _mm512_mask_storeu_pd);
    mem!(
        F64x8,
        f64,
        8,
        _mm512_set1_pd,
        _mm512_loadu_pd,
        _mm512_storeu_pd,
        _mm512_stream_pd
    );
    #[inline(always)]
    unsafe fn deinterleave(a: Self, b: Self) -> (Self, Self) {
        // SAFETY: AVX-512F available (tier contract).
        unsafe {
            (
                F64x8(_mm512_permutex2var_pd(
                    a.0,
                    idx8q([0, 2, 4, 6, 8, 10, 12, 14]),
                    b.0,
                )),
                F64x8(_mm512_permutex2var_pd(
                    a.0,
                    idx8q([1, 3, 5, 7, 9, 11, 13, 15]),
                    b.0,
                )),
            )
        }
    }
    #[inline(always)]
    unsafe fn interleave(re: Self, im: Self) -> (Self, Self) {
        // SAFETY: AVX-512F available (tier contract).
        unsafe {
            (
                F64x8(_mm512_permutex2var_pd(
                    re.0,
                    idx8q([0, 8, 1, 9, 2, 10, 3, 11]),
                    im.0,
                )),
                F64x8(_mm512_permutex2var_pd(
                    re.0,
                    idx8q([4, 12, 5, 13, 6, 14, 7, 15]),
                    im.0,
                )),
            )
        }
    }
    #[inline(always)]
    unsafe fn zip(a: Self, b: Self, k: usize) -> (Self, Self) {
        // SAFETY: AVX-512F available (tier contract).
        unsafe {
            if k == 1 {
                return (
                    F64x8(_mm512_unpacklo_pd(a.0, b.0)),
                    F64x8(_mm512_unpackhi_pd(a.0, b.0)),
                );
            }
            let t = &ZIP8Q[k.trailing_zeros() as usize];
            (
                F64x8(_mm512_permutex2var_pd(a.0, idx8q(t[0]), b.0)),
                F64x8(_mm512_permutex2var_pd(a.0, idx8q(t[1]), b.0)),
            )
        }
    }
}

// ------------------------------------------------------------------ 256-bit (AVX2 and AVX-512VL)

#[derive(Clone, Copy, Debug)]
pub(crate) struct F32x8(__m256);
#[derive(Clone, Copy, Debug)]
pub(crate) struct F64x4(__m256d);
/// 256-bit vectors using AVX-512VL two-source permutes (Avx512Ymm tier).
#[derive(Clone, Copy, Debug)]
pub(crate) struct F32x8v(__m256);
/// 256-bit f64 vectors using AVX-512VL permutes (Avx512Ymm tier).
#[derive(Clone, Copy, Debug)]
pub(crate) struct F64x4v(__m256d);

arith!(
    F32x8,
    f32,
    _mm256_set1_ps,
    _mm256_add_ps,
    _mm256_sub_ps,
    _mm256_mul_ps,
    _mm256_xor_ps,
    fma(_mm256_fmadd_ps, _mm256_fmsub_ps, _mm256_fnmadd_ps)
);
arith!(
    F64x4,
    f64,
    _mm256_set1_pd,
    _mm256_add_pd,
    _mm256_sub_pd,
    _mm256_mul_pd,
    _mm256_xor_pd,
    fma(_mm256_fmadd_pd, _mm256_fmsub_pd, _mm256_fnmadd_pd)
);
arith!(
    F32x8v,
    f32,
    _mm256_set1_ps,
    _mm256_add_ps,
    _mm256_sub_ps,
    _mm256_mul_ps,
    _mm256_xor_ps,
    fma(_mm256_fmadd_ps, _mm256_fmsub_ps, _mm256_fnmadd_ps)
);
arith!(
    F64x4v,
    f64,
    _mm256_set1_pd,
    _mm256_add_pd,
    _mm256_sub_pd,
    _mm256_mul_pd,
    _mm256_xor_pd,
    fma(_mm256_fmadd_pd, _mm256_fmsub_pd, _mm256_fnmadd_pd)
);

#[inline(always)]
unsafe fn idx8(v: [i32; 8]) -> __m256i {
    // SAFETY: reads 32 bytes from a local array.
    unsafe { _mm256_loadu_si256(v.as_ptr().cast()) }
}
#[inline(always)]
unsafe fn idx4q(v: [i64; 4]) -> __m256i {
    // SAFETY: reads 32 bytes from a local array.
    unsafe { _mm256_loadu_si256(v.as_ptr().cast()) }
}

// SAFETY: AVX2 vectors; used only on the Avx2 tier.
unsafe impl Vector for F32x8 {
    type S = f32;
    const LANES: usize = 8;
    mem!(
        F32x8,
        f32,
        8,
        _mm256_set1_ps,
        _mm256_loadu_ps,
        _mm256_storeu_ps,
        _mm256_stream_ps
    );
    #[inline(always)]
    unsafe fn deinterleave(a: Self, b: Self) -> (Self, Self) {
        // SAFETY: AVX2 available (tier contract).
        unsafe {
            let re = _mm256_shuffle_ps::<0b10_00_10_00>(a.0, b.0);
            let im = _mm256_shuffle_ps::<0b11_01_11_01>(a.0, b.0);
            let fix = |v: __m256| {
                _mm256_castpd_ps(_mm256_permute4x64_pd::<0b11_01_10_00>(_mm256_castps_pd(v)))
            };
            (F32x8(fix(re)), F32x8(fix(im)))
        }
    }
    #[inline(always)]
    unsafe fn interleave(re: Self, im: Self) -> (Self, Self) {
        // SAFETY: AVX2 available (tier contract).
        unsafe {
            let lo = _mm256_unpacklo_ps(re.0, im.0);
            let hi = _mm256_unpackhi_ps(re.0, im.0);
            (
                F32x8(_mm256_permute2f128_ps::<0x20>(lo, hi)),
                F32x8(_mm256_permute2f128_ps::<0x31>(lo, hi)),
            )
        }
    }
    #[inline(always)]
    unsafe fn zip(a: Self, b: Self, k: usize) -> (Self, Self) {
        // SAFETY: AVX2 available (tier contract).
        unsafe {
            match k {
                4 => (
                    F32x8(_mm256_permute2f128_ps::<0x20>(a.0, b.0)),
                    F32x8(_mm256_permute2f128_ps::<0x31>(a.0, b.0)),
                ),
                2 => {
                    let (x, y) = (_mm256_castps_pd(a.0), _mm256_castps_pd(b.0));
                    (
                        F32x8(_mm256_castpd_ps(_mm256_unpacklo_pd(x, y))),
                        F32x8(_mm256_castpd_ps(_mm256_unpackhi_pd(x, y))),
                    )
                }
                _ => {
                    let lo = _mm256_castps_pd(_mm256_unpacklo_ps(a.0, b.0));
                    let hi = _mm256_castps_pd(_mm256_unpackhi_ps(a.0, b.0));
                    (
                        F32x8(_mm256_castpd_ps(_mm256_unpacklo_pd(lo, hi))),
                        F32x8(_mm256_castpd_ps(_mm256_unpackhi_pd(lo, hi))),
                    )
                }
            }
        }
    }
}

// SAFETY: AVX2 vectors; used only on the Avx2 tier.
unsafe impl Vector for F64x4 {
    type S = f64;
    const LANES: usize = 4;
    mem!(
        F64x4,
        f64,
        4,
        _mm256_set1_pd,
        _mm256_loadu_pd,
        _mm256_storeu_pd,
        _mm256_stream_pd
    );
    #[inline(always)]
    unsafe fn deinterleave(a: Self, b: Self) -> (Self, Self) {
        // SAFETY: AVX2 available (tier contract).
        unsafe {
            let lo = _mm256_permute2f128_pd::<0x20>(a.0, b.0);
            let hi = _mm256_permute2f128_pd::<0x31>(a.0, b.0);
            (
                F64x4(_mm256_unpacklo_pd(lo, hi)),
                F64x4(_mm256_unpackhi_pd(lo, hi)),
            )
        }
    }
    #[inline(always)]
    unsafe fn interleave(re: Self, im: Self) -> (Self, Self) {
        // SAFETY: AVX2 available (tier contract).
        unsafe {
            let lo = _mm256_unpacklo_pd(re.0, im.0);
            let hi = _mm256_unpackhi_pd(re.0, im.0);
            (
                F64x4(_mm256_permute2f128_pd::<0x20>(lo, hi)),
                F64x4(_mm256_permute2f128_pd::<0x31>(lo, hi)),
            )
        }
    }
    #[inline(always)]
    unsafe fn zip(a: Self, b: Self, k: usize) -> (Self, Self) {
        // SAFETY: AVX2 available (tier contract).
        unsafe {
            if k == 2 {
                (
                    F64x4(_mm256_permute2f128_pd::<0x20>(a.0, b.0)),
                    F64x4(_mm256_permute2f128_pd::<0x31>(a.0, b.0)),
                )
            } else {
                (
                    F64x4(_mm256_unpacklo_pd(a.0, b.0)),
                    F64x4(_mm256_unpackhi_pd(a.0, b.0)),
                )
            }
        }
    }
}

// SAFETY: 256-bit vectors with AVX-512VL permutes; used only on the Avx512Ymm tier.
unsafe impl Vector for F32x8v {
    type S = f32;
    const LANES: usize = 8;
    complex_prefix!(_mm256_maskz_loadu_ps, _mm256_mask_storeu_ps);
    mem!(
        F32x8v,
        f32,
        8,
        _mm256_set1_ps,
        _mm256_loadu_ps,
        _mm256_storeu_ps,
        _mm256_stream_ps
    );
    #[inline(always)]
    unsafe fn deinterleave(a: Self, b: Self) -> (Self, Self) {
        // SAFETY: AVX-512VL available (tier contract).
        unsafe {
            (
                F32x8v(_mm256_permutex2var_ps(
                    a.0,
                    idx8([0, 2, 4, 6, 8, 10, 12, 14]),
                    b.0,
                )),
                F32x8v(_mm256_permutex2var_ps(
                    a.0,
                    idx8([1, 3, 5, 7, 9, 11, 13, 15]),
                    b.0,
                )),
            )
        }
    }
    #[inline(always)]
    unsafe fn interleave(re: Self, im: Self) -> (Self, Self) {
        // SAFETY: AVX-512VL available (tier contract).
        unsafe {
            (
                F32x8v(_mm256_permutex2var_ps(
                    re.0,
                    idx8([0, 8, 1, 9, 2, 10, 3, 11]),
                    im.0,
                )),
                F32x8v(_mm256_permutex2var_ps(
                    re.0,
                    idx8([4, 12, 5, 13, 6, 14, 7, 15]),
                    im.0,
                )),
            )
        }
    }
    #[inline(always)]
    unsafe fn zip(a: Self, b: Self, k: usize) -> (Self, Self) {
        // SAFETY: AVX-512VL available (tier contract).
        unsafe {
            match k {
                4 => (
                    F32x8v(_mm256_permute2f128_ps::<0x20>(a.0, b.0)),
                    F32x8v(_mm256_permute2f128_ps::<0x31>(a.0, b.0)),
                ),
                2 => {
                    let (x, y) = (_mm256_castps_pd(a.0), _mm256_castps_pd(b.0));
                    (
                        F32x8v(_mm256_castpd_ps(_mm256_unpacklo_pd(x, y))),
                        F32x8v(_mm256_castpd_ps(_mm256_unpackhi_pd(x, y))),
                    )
                }
                _ => (
                    F32x8v(_mm256_permutex2var_ps(
                        a.0,
                        idx8([0, 8, 2, 10, 4, 12, 6, 14]),
                        b.0,
                    )),
                    F32x8v(_mm256_permutex2var_ps(
                        a.0,
                        idx8([1, 9, 3, 11, 5, 13, 7, 15]),
                        b.0,
                    )),
                ),
            }
        }
    }
}

// SAFETY: 256-bit vectors with AVX-512VL permutes; used only on the Avx512Ymm tier.
unsafe impl Vector for F64x4v {
    type S = f64;
    const LANES: usize = 4;
    complex_prefix!(_mm256_maskz_loadu_pd, _mm256_mask_storeu_pd);
    mem!(
        F64x4v,
        f64,
        4,
        _mm256_set1_pd,
        _mm256_loadu_pd,
        _mm256_storeu_pd,
        _mm256_stream_pd
    );
    #[inline(always)]
    unsafe fn deinterleave(a: Self, b: Self) -> (Self, Self) {
        // SAFETY: AVX-512VL available (tier contract).
        unsafe {
            (
                F64x4v(_mm256_permutex2var_pd(a.0, idx4q([0, 2, 4, 6]), b.0)),
                F64x4v(_mm256_permutex2var_pd(a.0, idx4q([1, 3, 5, 7]), b.0)),
            )
        }
    }
    #[inline(always)]
    unsafe fn interleave(re: Self, im: Self) -> (Self, Self) {
        // SAFETY: AVX-512VL available (tier contract).
        unsafe {
            (
                F64x4v(_mm256_permutex2var_pd(re.0, idx4q([0, 4, 1, 5]), im.0)),
                F64x4v(_mm256_permutex2var_pd(re.0, idx4q([2, 6, 3, 7]), im.0)),
            )
        }
    }
    #[inline(always)]
    unsafe fn zip(a: Self, b: Self, k: usize) -> (Self, Self) {
        // SAFETY: AVX-512VL available (tier contract).
        unsafe {
            if k == 2 {
                (
                    F64x4v(_mm256_permute2f128_pd::<0x20>(a.0, b.0)),
                    F64x4v(_mm256_permute2f128_pd::<0x31>(a.0, b.0)),
                )
            } else {
                (
                    F64x4v(_mm256_unpacklo_pd(a.0, b.0)),
                    F64x4v(_mm256_unpackhi_pd(a.0, b.0)),
                )
            }
        }
    }
}

// ------------------------------------------------------------------ SSE2 (xmm)

#[derive(Clone, Copy, Debug)]
pub(crate) struct F32x4(__m128);
#[derive(Clone, Copy, Debug)]
pub(crate) struct F64x2(__m128d);

arith!(
    F32x4,
    f32,
    _mm_set1_ps,
    _mm_add_ps,
    _mm_sub_ps,
    _mm_mul_ps,
    _mm_xor_ps,
    nofma
);
arith!(
    F64x2,
    f64,
    _mm_set1_pd,
    _mm_add_pd,
    _mm_sub_pd,
    _mm_mul_pd,
    _mm_xor_pd,
    nofma
);

// SAFETY: SSE2 is baseline on x86_64.
unsafe impl Vector for F32x4 {
    type S = f32;
    const LANES: usize = 4;
    mem!(
        F32x4,
        f32,
        4,
        _mm_set1_ps,
        _mm_loadu_ps,
        _mm_storeu_ps,
        _mm_stream_ps
    );
    #[inline(always)]
    unsafe fn deinterleave(a: Self, b: Self) -> (Self, Self) {
        // SAFETY: SSE2 baseline.
        unsafe {
            (
                F32x4(_mm_shuffle_ps::<0b10_00_10_00>(a.0, b.0)),
                F32x4(_mm_shuffle_ps::<0b11_01_11_01>(a.0, b.0)),
            )
        }
    }
    #[inline(always)]
    unsafe fn interleave(re: Self, im: Self) -> (Self, Self) {
        // SAFETY: SSE2 baseline.
        unsafe {
            (
                F32x4(_mm_unpacklo_ps(re.0, im.0)),
                F32x4(_mm_unpackhi_ps(re.0, im.0)),
            )
        }
    }
    #[inline(always)]
    unsafe fn zip(a: Self, b: Self, k: usize) -> (Self, Self) {
        // SAFETY: SSE2 baseline.
        unsafe {
            if k == 2 {
                (
                    F32x4(_mm_movelh_ps(a.0, b.0)),
                    F32x4(_mm_movehl_ps(b.0, a.0)),
                )
            } else {
                let lo = _mm_unpacklo_ps(a.0, b.0);
                let hi = _mm_unpackhi_ps(a.0, b.0);
                (F32x4(_mm_movelh_ps(lo, hi)), F32x4(_mm_movehl_ps(hi, lo)))
            }
        }
    }
}

// SAFETY: SSE2 is baseline on x86_64.
unsafe impl Vector for F64x2 {
    type S = f64;
    const LANES: usize = 2;
    mem!(
        F64x2,
        f64,
        2,
        _mm_set1_pd,
        _mm_loadu_pd,
        _mm_storeu_pd,
        _mm_stream_pd
    );
    #[inline(always)]
    unsafe fn deinterleave(a: Self, b: Self) -> (Self, Self) {
        // SAFETY: SSE2 baseline.
        unsafe {
            (
                F64x2(_mm_unpacklo_pd(a.0, b.0)),
                F64x2(_mm_unpackhi_pd(a.0, b.0)),
            )
        }
    }
    #[inline(always)]
    unsafe fn interleave(re: Self, im: Self) -> (Self, Self) {
        // SAFETY: SSE2 baseline.
        unsafe {
            (
                F64x2(_mm_unpacklo_pd(re.0, im.0)),
                F64x2(_mm_unpackhi_pd(re.0, im.0)),
            )
        }
    }
    #[inline(always)]
    unsafe fn zip(a: Self, b: Self, _k: usize) -> (Self, Self) {
        // SAFETY: SSE2 baseline.
        unsafe {
            (
                F64x2(_mm_unpacklo_pd(a.0, b.0)),
                F64x2(_mm_unpackhi_pd(a.0, b.0)),
            )
        }
    }
}

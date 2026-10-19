//! Real SIMD vectors used by the kernel-lab experiments.
//!
//! All methods are `#[inline(always)]` and must only be reached from
//! `#[target_feature]` entry points (see `engine.rs`).

#![allow(clippy::missing_safety_doc)]

use core::arch::x86_64::*;

/// A vector of `LANES` reals.
pub trait V: Copy {
    type S: Copy + Default + Into<f64>;
    const LANES: usize;
    unsafe fn splat(x: Self::S) -> Self;
    unsafe fn load(p: *const Self::S) -> Self;
    unsafe fn store(p: *mut Self::S, v: Self);
    unsafe fn add(a: Self, b: Self) -> Self;
    unsafe fn sub(a: Self, b: Self) -> Self;
    unsafe fn mul(a: Self, b: Self) -> Self;
    /// a*b + c
    unsafe fn fmadd(a: Self, b: Self, c: Self) -> Self;
    /// a*b - c
    unsafe fn fmsub(a: Self, b: Self, c: Self) -> Self;
    /// c - a*b
    unsafe fn fnmadd(a: Self, b: Self, c: Self) -> Self;
    /// even lanes a*b - c, odd lanes a*b + c
    unsafe fn fmaddsub(a: Self, b: Self, c: Self) -> Self;
    /// even lanes a*b + c, odd lanes a*b - c
    unsafe fn fmsubadd(a: Self, b: Self, c: Self) -> Self;
    /// swaps adjacent lanes (0<->1, 2<->3, ...)
    unsafe fn swap_pairs(a: Self) -> Self;
    /// [a0 a0 a2 a2 ...]
    unsafe fn dup_even(a: Self) -> Self;
    /// [a1 a1 a3 a3 ...]
    unsafe fn dup_odd(a: Self) -> Self;
    /// Block zip for transposes: with blocks of `k` lanes,
    /// even = [a.b0, b.b0, a.b2, b.b2, ...], odd = [a.b1, b.b1, a.b3, b.b3, ...].
    unsafe fn zip(a: Self, b: Self, k: usize) -> (Self, Self);
    /// (a, b) holding interleaved [r0 i0 r1 i1 ...] -> (re, im)
    unsafe fn deinterleave(a: Self, b: Self) -> (Self, Self);
    /// inverse of `deinterleave`
    unsafe fn interleave(re: Self, im: Self) -> (Self, Self);
}

// ---------------------------------------------------------------- f32 x16 (zmm)

#[derive(Clone, Copy)]
pub struct F32x16(pub __m512);

#[inline(always)]
unsafe fn idx32(v: [i32; 16]) -> __m512i {
    _mm512_loadu_si512(v.as_ptr().cast())
}

const ZIP32: [[[i32; 16]; 2]; 4] = [
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

impl V for F32x16 {
    type S = f32;
    const LANES: usize = 16;
    #[inline(always)]
    unsafe fn splat(x: f32) -> Self {
        F32x16(_mm512_set1_ps(x))
    }
    #[inline(always)]
    unsafe fn load(p: *const f32) -> Self {
        F32x16(_mm512_loadu_ps(p))
    }
    #[inline(always)]
    unsafe fn store(p: *mut f32, v: Self) {
        _mm512_storeu_ps(p, v.0)
    }
    #[inline(always)]
    unsafe fn add(a: Self, b: Self) -> Self {
        F32x16(_mm512_add_ps(a.0, b.0))
    }
    #[inline(always)]
    unsafe fn sub(a: Self, b: Self) -> Self {
        F32x16(_mm512_sub_ps(a.0, b.0))
    }
    #[inline(always)]
    unsafe fn mul(a: Self, b: Self) -> Self {
        F32x16(_mm512_mul_ps(a.0, b.0))
    }
    #[inline(always)]
    unsafe fn fmadd(a: Self, b: Self, c: Self) -> Self {
        F32x16(_mm512_fmadd_ps(a.0, b.0, c.0))
    }
    #[inline(always)]
    unsafe fn fmsub(a: Self, b: Self, c: Self) -> Self {
        F32x16(_mm512_fmsub_ps(a.0, b.0, c.0))
    }
    #[inline(always)]
    unsafe fn fnmadd(a: Self, b: Self, c: Self) -> Self {
        F32x16(_mm512_fnmadd_ps(a.0, b.0, c.0))
    }
    #[inline(always)]
    unsafe fn fmaddsub(a: Self, b: Self, c: Self) -> Self {
        F32x16(_mm512_fmaddsub_ps(a.0, b.0, c.0))
    }
    #[inline(always)]
    unsafe fn fmsubadd(a: Self, b: Self, c: Self) -> Self {
        F32x16(_mm512_fmsubadd_ps(a.0, b.0, c.0))
    }
    #[inline(always)]
    unsafe fn swap_pairs(a: Self) -> Self {
        F32x16(_mm512_permute_ps::<0xB1>(a.0))
    }
    #[inline(always)]
    unsafe fn dup_even(a: Self) -> Self {
        F32x16(_mm512_moveldup_ps(a.0))
    }
    #[inline(always)]
    unsafe fn dup_odd(a: Self) -> Self {
        F32x16(_mm512_movehdup_ps(a.0))
    }
    #[inline(always)]
    unsafe fn zip(a: Self, b: Self, k: usize) -> (Self, Self) {
        match k {
            2 => {
                let (x, y) = (_mm512_castps_pd(a.0), _mm512_castps_pd(b.0));
                (
                    F32x16(_mm512_castpd_ps(_mm512_unpacklo_pd(x, y))),
                    F32x16(_mm512_castpd_ps(_mm512_unpackhi_pd(x, y))),
                )
            }
            _ => {
                let t = &ZIP32[k.trailing_zeros() as usize];
                (
                    F32x16(_mm512_permutex2var_ps(a.0, idx32(t[0]), b.0)),
                    F32x16(_mm512_permutex2var_ps(a.0, idx32(t[1]), b.0)),
                )
            }
        }
    }
    #[inline(always)]
    unsafe fn deinterleave(a: Self, b: Self) -> (Self, Self) {
        let ie = idx32([0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26, 28, 30]);
        let io = idx32([1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31]);
        (
            F32x16(_mm512_permutex2var_ps(a.0, ie, b.0)),
            F32x16(_mm512_permutex2var_ps(a.0, io, b.0)),
        )
    }
    #[inline(always)]
    unsafe fn interleave(re: Self, im: Self) -> (Self, Self) {
        let lo = idx32([0, 16, 1, 17, 2, 18, 3, 19, 4, 20, 5, 21, 6, 22, 7, 23]);
        let hi = idx32([8, 24, 9, 25, 10, 26, 11, 27, 12, 28, 13, 29, 14, 30, 15, 31]);
        (
            F32x16(_mm512_permutex2var_ps(re.0, lo, im.0)),
            F32x16(_mm512_permutex2var_ps(re.0, hi, im.0)),
        )
    }
}

// ---------------------------------------------------------------- f64 x8 (zmm)

#[derive(Clone, Copy)]
pub struct F64x8(pub __m512d);

const ZIP64: [[[i64; 8]; 2]; 3] = [
    [[0, 8, 2, 10, 4, 12, 6, 14], [1, 9, 3, 11, 5, 13, 7, 15]],
    [[0, 1, 8, 9, 4, 5, 12, 13], [2, 3, 10, 11, 6, 7, 14, 15]],
    [[0, 1, 2, 3, 8, 9, 10, 11], [4, 5, 6, 7, 12, 13, 14, 15]],
];

#[inline(always)]
unsafe fn idx64(v: [i64; 8]) -> __m512i {
    _mm512_loadu_si512(v.as_ptr().cast())
}

impl V for F64x8 {
    type S = f64;
    const LANES: usize = 8;
    #[inline(always)]
    unsafe fn splat(x: f64) -> Self {
        F64x8(_mm512_set1_pd(x))
    }
    #[inline(always)]
    unsafe fn load(p: *const f64) -> Self {
        F64x8(_mm512_loadu_pd(p))
    }
    #[inline(always)]
    unsafe fn store(p: *mut f64, v: Self) {
        _mm512_storeu_pd(p, v.0)
    }
    #[inline(always)]
    unsafe fn add(a: Self, b: Self) -> Self {
        F64x8(_mm512_add_pd(a.0, b.0))
    }
    #[inline(always)]
    unsafe fn sub(a: Self, b: Self) -> Self {
        F64x8(_mm512_sub_pd(a.0, b.0))
    }
    #[inline(always)]
    unsafe fn mul(a: Self, b: Self) -> Self {
        F64x8(_mm512_mul_pd(a.0, b.0))
    }
    #[inline(always)]
    unsafe fn fmadd(a: Self, b: Self, c: Self) -> Self {
        F64x8(_mm512_fmadd_pd(a.0, b.0, c.0))
    }
    #[inline(always)]
    unsafe fn fmsub(a: Self, b: Self, c: Self) -> Self {
        F64x8(_mm512_fmsub_pd(a.0, b.0, c.0))
    }
    #[inline(always)]
    unsafe fn fnmadd(a: Self, b: Self, c: Self) -> Self {
        F64x8(_mm512_fnmadd_pd(a.0, b.0, c.0))
    }
    #[inline(always)]
    unsafe fn fmaddsub(a: Self, b: Self, c: Self) -> Self {
        F64x8(_mm512_fmaddsub_pd(a.0, b.0, c.0))
    }
    #[inline(always)]
    unsafe fn fmsubadd(a: Self, b: Self, c: Self) -> Self {
        F64x8(_mm512_fmsubadd_pd(a.0, b.0, c.0))
    }
    #[inline(always)]
    unsafe fn swap_pairs(a: Self) -> Self {
        F64x8(_mm512_permute_pd::<0x55>(a.0))
    }
    #[inline(always)]
    unsafe fn dup_even(a: Self) -> Self {
        F64x8(_mm512_movedup_pd(a.0))
    }
    #[inline(always)]
    unsafe fn dup_odd(a: Self) -> Self {
        F64x8(_mm512_permute_pd::<0xFF>(a.0))
    }
    #[inline(always)]
    unsafe fn zip(a: Self, b: Self, k: usize) -> (Self, Self) {
        match k {
            1 => (
                F64x8(_mm512_unpacklo_pd(a.0, b.0)),
                F64x8(_mm512_unpackhi_pd(a.0, b.0)),
            ),
            _ => {
                let t = &ZIP64[k.trailing_zeros() as usize];
                (
                    F64x8(_mm512_permutex2var_pd(a.0, idx64(t[0]), b.0)),
                    F64x8(_mm512_permutex2var_pd(a.0, idx64(t[1]), b.0)),
                )
            }
        }
    }
    #[inline(always)]
    unsafe fn deinterleave(a: Self, b: Self) -> (Self, Self) {
        let ie = idx64([0, 2, 4, 6, 8, 10, 12, 14]);
        let io = idx64([1, 3, 5, 7, 9, 11, 13, 15]);
        (
            F64x8(_mm512_permutex2var_pd(a.0, ie, b.0)),
            F64x8(_mm512_permutex2var_pd(a.0, io, b.0)),
        )
    }
    #[inline(always)]
    unsafe fn interleave(re: Self, im: Self) -> (Self, Self) {
        let lo = idx64([0, 8, 1, 9, 2, 10, 3, 11]);
        let hi = idx64([4, 12, 5, 13, 6, 14, 7, 15]);
        (
            F64x8(_mm512_permutex2var_pd(re.0, lo, im.0)),
            F64x8(_mm512_permutex2var_pd(re.0, hi, im.0)),
        )
    }
}

// ---------------------------------------------------------------- f32 x8 (ymm)

#[derive(Clone, Copy)]
pub struct F32x8(pub __m256);

impl V for F32x8 {
    type S = f32;
    const LANES: usize = 8;
    #[inline(always)]
    unsafe fn splat(x: f32) -> Self {
        F32x8(_mm256_set1_ps(x))
    }
    #[inline(always)]
    unsafe fn load(p: *const f32) -> Self {
        F32x8(_mm256_loadu_ps(p))
    }
    #[inline(always)]
    unsafe fn store(p: *mut f32, v: Self) {
        _mm256_storeu_ps(p, v.0)
    }
    #[inline(always)]
    unsafe fn add(a: Self, b: Self) -> Self {
        F32x8(_mm256_add_ps(a.0, b.0))
    }
    #[inline(always)]
    unsafe fn sub(a: Self, b: Self) -> Self {
        F32x8(_mm256_sub_ps(a.0, b.0))
    }
    #[inline(always)]
    unsafe fn mul(a: Self, b: Self) -> Self {
        F32x8(_mm256_mul_ps(a.0, b.0))
    }
    #[inline(always)]
    unsafe fn fmadd(a: Self, b: Self, c: Self) -> Self {
        F32x8(_mm256_fmadd_ps(a.0, b.0, c.0))
    }
    #[inline(always)]
    unsafe fn fmsub(a: Self, b: Self, c: Self) -> Self {
        F32x8(_mm256_fmsub_ps(a.0, b.0, c.0))
    }
    #[inline(always)]
    unsafe fn fnmadd(a: Self, b: Self, c: Self) -> Self {
        F32x8(_mm256_fnmadd_ps(a.0, b.0, c.0))
    }
    #[inline(always)]
    unsafe fn fmaddsub(a: Self, b: Self, c: Self) -> Self {
        F32x8(_mm256_fmaddsub_ps(a.0, b.0, c.0))
    }
    #[inline(always)]
    unsafe fn fmsubadd(a: Self, b: Self, c: Self) -> Self {
        F32x8(_mm256_fmsubadd_ps(a.0, b.0, c.0))
    }
    #[inline(always)]
    unsafe fn swap_pairs(a: Self) -> Self {
        F32x8(_mm256_permute_ps::<0xB1>(a.0))
    }
    #[inline(always)]
    unsafe fn dup_even(a: Self) -> Self {
        F32x8(_mm256_moveldup_ps(a.0))
    }
    #[inline(always)]
    unsafe fn dup_odd(a: Self) -> Self {
        F32x8(_mm256_movehdup_ps(a.0))
    }
    #[inline(always)]
    unsafe fn zip(a: Self, b: Self, k: usize) -> (Self, Self) {
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
    #[inline(always)]
    unsafe fn deinterleave(a: Self, b: Self) -> (Self, Self) {
        // [r0 i0 r1 i1 | r2 i2 r3 i3], [r4 i4 r5 i5 | r6 i6 r7 i7]
        let re = _mm256_shuffle_ps::<0b10_00_10_00>(a.0, b.0); // r0 r1 r4 r5 | r2 r3 r6 r7
        let im = _mm256_shuffle_ps::<0b11_01_11_01>(a.0, b.0);
        let fix = |v: __m256| {
            _mm256_castpd_ps(_mm256_permute4x64_pd::<0b11_01_10_00>(_mm256_castps_pd(v)))
        };
        (F32x8(fix(re)), F32x8(fix(im)))
    }
    #[inline(always)]
    unsafe fn interleave(re: Self, im: Self) -> (Self, Self) {
        let lo = _mm256_unpacklo_ps(re.0, im.0); // r0 i0 r1 i1 | r4 i4 r5 i5
        let hi = _mm256_unpackhi_ps(re.0, im.0); // r2 i2 r3 i3 | r6 i6 r7 i7
        (
            F32x8(_mm256_permute2f128_ps::<0x20>(lo, hi)),
            F32x8(_mm256_permute2f128_ps::<0x31>(lo, hi)),
        )
    }
}

// ---------------------------------------------------------------- f64 x4 (ymm)

#[derive(Clone, Copy)]
pub struct F64x4(pub __m256d);

impl V for F64x4 {
    type S = f64;
    const LANES: usize = 4;
    #[inline(always)]
    unsafe fn splat(x: f64) -> Self {
        F64x4(_mm256_set1_pd(x))
    }
    #[inline(always)]
    unsafe fn load(p: *const f64) -> Self {
        F64x4(_mm256_loadu_pd(p))
    }
    #[inline(always)]
    unsafe fn store(p: *mut f64, v: Self) {
        _mm256_storeu_pd(p, v.0)
    }
    #[inline(always)]
    unsafe fn add(a: Self, b: Self) -> Self {
        F64x4(_mm256_add_pd(a.0, b.0))
    }
    #[inline(always)]
    unsafe fn sub(a: Self, b: Self) -> Self {
        F64x4(_mm256_sub_pd(a.0, b.0))
    }
    #[inline(always)]
    unsafe fn mul(a: Self, b: Self) -> Self {
        F64x4(_mm256_mul_pd(a.0, b.0))
    }
    #[inline(always)]
    unsafe fn fmadd(a: Self, b: Self, c: Self) -> Self {
        F64x4(_mm256_fmadd_pd(a.0, b.0, c.0))
    }
    #[inline(always)]
    unsafe fn fmsub(a: Self, b: Self, c: Self) -> Self {
        F64x4(_mm256_fmsub_pd(a.0, b.0, c.0))
    }
    #[inline(always)]
    unsafe fn fnmadd(a: Self, b: Self, c: Self) -> Self {
        F64x4(_mm256_fnmadd_pd(a.0, b.0, c.0))
    }
    #[inline(always)]
    unsafe fn fmaddsub(a: Self, b: Self, c: Self) -> Self {
        F64x4(_mm256_fmaddsub_pd(a.0, b.0, c.0))
    }
    #[inline(always)]
    unsafe fn fmsubadd(a: Self, b: Self, c: Self) -> Self {
        F64x4(_mm256_fmsubadd_pd(a.0, b.0, c.0))
    }
    #[inline(always)]
    unsafe fn swap_pairs(a: Self) -> Self {
        F64x4(_mm256_permute_pd::<0x5>(a.0))
    }
    #[inline(always)]
    unsafe fn dup_even(a: Self) -> Self {
        F64x4(_mm256_movedup_pd(a.0))
    }
    #[inline(always)]
    unsafe fn dup_odd(a: Self) -> Self {
        F64x4(_mm256_permute_pd::<0xF>(a.0))
    }
    #[inline(always)]
    unsafe fn zip(a: Self, b: Self, k: usize) -> (Self, Self) {
        match k {
            2 => (
                F64x4(_mm256_permute2f128_pd::<0x20>(a.0, b.0)),
                F64x4(_mm256_permute2f128_pd::<0x31>(a.0, b.0)),
            ),
            _ => (
                F64x4(_mm256_unpacklo_pd(a.0, b.0)),
                F64x4(_mm256_unpackhi_pd(a.0, b.0)),
            ),
        }
    }
    #[inline(always)]
    unsafe fn deinterleave(a: Self, b: Self) -> (Self, Self) {
        // [r0 i0 | r1 i1], [r2 i2 | r3 i3]
        let lo = _mm256_permute2f128_pd::<0x20>(a.0, b.0); // r0 i0 | r2 i2
        let hi = _mm256_permute2f128_pd::<0x31>(a.0, b.0); // r1 i1 | r3 i3
        (
            F64x4(_mm256_unpacklo_pd(lo, hi)), // r0 r1 | r2 r3
            F64x4(_mm256_unpackhi_pd(lo, hi)),
        )
    }
    #[inline(always)]
    unsafe fn interleave(re: Self, im: Self) -> (Self, Self) {
        let lo = _mm256_unpacklo_pd(re.0, im.0); // r0 i0 | r2 i2
        let hi = _mm256_unpackhi_pd(re.0, im.0); // r1 i1 | r3 i3
        (
            F64x4(_mm256_permute2f128_pd::<0x20>(lo, hi)),
            F64x4(_mm256_permute2f128_pd::<0x31>(lo, hi)),
        )
    }
}

// ---------------------------------------------------------------- 256-bit with AVX-512VL permutes

/// `F32x8` whose shuffles use AVX-512VL two-source permutes (one op per output).
#[derive(Clone, Copy)]
pub struct F32x8e(pub __m256);

#[inline(always)]
unsafe fn i8x(v: [i32; 8]) -> __m256i {
    unsafe { _mm256_loadu_si256(v.as_ptr().cast()) }
}

impl V for F32x8e {
    type S = f32;
    const LANES: usize = 8;
    #[inline(always)]
    unsafe fn splat(x: f32) -> Self {
        F32x8e(unsafe { F32x8::splat(x) }.0)
    }
    #[inline(always)]
    unsafe fn load(p: *const f32) -> Self {
        F32x8e(unsafe { _mm256_loadu_ps(p) })
    }
    #[inline(always)]
    unsafe fn store(p: *mut f32, v: Self) {
        unsafe { _mm256_storeu_ps(p, v.0) }
    }
    #[inline(always)]
    unsafe fn add(a: Self, b: Self) -> Self {
        F32x8e(unsafe { _mm256_add_ps(a.0, b.0) })
    }
    #[inline(always)]
    unsafe fn sub(a: Self, b: Self) -> Self {
        F32x8e(unsafe { _mm256_sub_ps(a.0, b.0) })
    }
    #[inline(always)]
    unsafe fn mul(a: Self, b: Self) -> Self {
        F32x8e(unsafe { _mm256_mul_ps(a.0, b.0) })
    }
    #[inline(always)]
    unsafe fn fmadd(a: Self, b: Self, c: Self) -> Self {
        F32x8e(unsafe { _mm256_fmadd_ps(a.0, b.0, c.0) })
    }
    #[inline(always)]
    unsafe fn fmsub(a: Self, b: Self, c: Self) -> Self {
        F32x8e(unsafe { _mm256_fmsub_ps(a.0, b.0, c.0) })
    }
    #[inline(always)]
    unsafe fn fnmadd(a: Self, b: Self, c: Self) -> Self {
        F32x8e(unsafe { _mm256_fnmadd_ps(a.0, b.0, c.0) })
    }
    #[inline(always)]
    unsafe fn fmaddsub(a: Self, b: Self, c: Self) -> Self {
        F32x8e(unsafe { _mm256_fmaddsub_ps(a.0, b.0, c.0) })
    }
    #[inline(always)]
    unsafe fn fmsubadd(a: Self, b: Self, c: Self) -> Self {
        F32x8e(unsafe { _mm256_fmsubadd_ps(a.0, b.0, c.0) })
    }
    #[inline(always)]
    unsafe fn swap_pairs(a: Self) -> Self {
        F32x8e(unsafe { _mm256_permute_ps::<0xB1>(a.0) })
    }
    #[inline(always)]
    unsafe fn dup_even(a: Self) -> Self {
        F32x8e(unsafe { _mm256_moveldup_ps(a.0) })
    }
    #[inline(always)]
    unsafe fn dup_odd(a: Self) -> Self {
        F32x8e(unsafe { _mm256_movehdup_ps(a.0) })
    }
    #[inline(always)]
    unsafe fn zip(a: Self, b: Self, k: usize) -> (Self, Self) {
        unsafe {
            match k {
                4 => (
                    F32x8e(_mm256_permute2f128_ps::<0x20>(a.0, b.0)),
                    F32x8e(_mm256_permute2f128_ps::<0x31>(a.0, b.0)),
                ),
                2 => {
                    let (x, y) = (_mm256_castps_pd(a.0), _mm256_castps_pd(b.0));
                    (
                        F32x8e(_mm256_castpd_ps(_mm256_unpacklo_pd(x, y))),
                        F32x8e(_mm256_castpd_ps(_mm256_unpackhi_pd(x, y))),
                    )
                }
                _ => (
                    F32x8e(_mm256_permutex2var_ps(
                        a.0,
                        i8x([0, 8, 2, 10, 4, 12, 6, 14]),
                        b.0,
                    )),
                    F32x8e(_mm256_permutex2var_ps(
                        a.0,
                        i8x([1, 9, 3, 11, 5, 13, 7, 15]),
                        b.0,
                    )),
                ),
            }
        }
    }
    #[inline(always)]
    unsafe fn deinterleave(a: Self, b: Self) -> (Self, Self) {
        unsafe {
            (
                F32x8e(_mm256_permutex2var_ps(
                    a.0,
                    i8x([0, 2, 4, 6, 8, 10, 12, 14]),
                    b.0,
                )),
                F32x8e(_mm256_permutex2var_ps(
                    a.0,
                    i8x([1, 3, 5, 7, 9, 11, 13, 15]),
                    b.0,
                )),
            )
        }
    }
    #[inline(always)]
    unsafe fn interleave(re: Self, im: Self) -> (Self, Self) {
        unsafe {
            (
                F32x8e(_mm256_permutex2var_ps(
                    re.0,
                    i8x([0, 8, 1, 9, 2, 10, 3, 11]),
                    im.0,
                )),
                F32x8e(_mm256_permutex2var_ps(
                    re.0,
                    i8x([4, 12, 5, 13, 6, 14, 7, 15]),
                    im.0,
                )),
            )
        }
    }
}

/// `F64x4` with AVX-512VL permutes.
#[derive(Clone, Copy)]
pub struct F64x4e(pub __m256d);

#[inline(always)]
unsafe fn i4x(v: [i64; 4]) -> __m256i {
    unsafe { _mm256_loadu_si256(v.as_ptr().cast()) }
}

impl V for F64x4e {
    type S = f64;
    const LANES: usize = 4;
    #[inline(always)]
    unsafe fn splat(x: f64) -> Self {
        F64x4e(unsafe { _mm256_set1_pd(x) })
    }
    #[inline(always)]
    unsafe fn load(p: *const f64) -> Self {
        F64x4e(unsafe { _mm256_loadu_pd(p) })
    }
    #[inline(always)]
    unsafe fn store(p: *mut f64, v: Self) {
        unsafe { _mm256_storeu_pd(p, v.0) }
    }
    #[inline(always)]
    unsafe fn add(a: Self, b: Self) -> Self {
        F64x4e(unsafe { _mm256_add_pd(a.0, b.0) })
    }
    #[inline(always)]
    unsafe fn sub(a: Self, b: Self) -> Self {
        F64x4e(unsafe { _mm256_sub_pd(a.0, b.0) })
    }
    #[inline(always)]
    unsafe fn mul(a: Self, b: Self) -> Self {
        F64x4e(unsafe { _mm256_mul_pd(a.0, b.0) })
    }
    #[inline(always)]
    unsafe fn fmadd(a: Self, b: Self, c: Self) -> Self {
        F64x4e(unsafe { _mm256_fmadd_pd(a.0, b.0, c.0) })
    }
    #[inline(always)]
    unsafe fn fmsub(a: Self, b: Self, c: Self) -> Self {
        F64x4e(unsafe { _mm256_fmsub_pd(a.0, b.0, c.0) })
    }
    #[inline(always)]
    unsafe fn fnmadd(a: Self, b: Self, c: Self) -> Self {
        F64x4e(unsafe { _mm256_fnmadd_pd(a.0, b.0, c.0) })
    }
    #[inline(always)]
    unsafe fn fmaddsub(a: Self, b: Self, c: Self) -> Self {
        F64x4e(unsafe { _mm256_fmaddsub_pd(a.0, b.0, c.0) })
    }
    #[inline(always)]
    unsafe fn fmsubadd(a: Self, b: Self, c: Self) -> Self {
        F64x4e(unsafe { _mm256_fmsubadd_pd(a.0, b.0, c.0) })
    }
    #[inline(always)]
    unsafe fn swap_pairs(a: Self) -> Self {
        F64x4e(unsafe { _mm256_permute_pd::<0x5>(a.0) })
    }
    #[inline(always)]
    unsafe fn dup_even(a: Self) -> Self {
        F64x4e(unsafe { _mm256_movedup_pd(a.0) })
    }
    #[inline(always)]
    unsafe fn dup_odd(a: Self) -> Self {
        F64x4e(unsafe { _mm256_permute_pd::<0xF>(a.0) })
    }
    #[inline(always)]
    unsafe fn zip(a: Self, b: Self, k: usize) -> (Self, Self) {
        unsafe {
            match k {
                2 => (
                    F64x4e(_mm256_permute2f128_pd::<0x20>(a.0, b.0)),
                    F64x4e(_mm256_permute2f128_pd::<0x31>(a.0, b.0)),
                ),
                _ => (
                    F64x4e(_mm256_unpacklo_pd(a.0, b.0)),
                    F64x4e(_mm256_unpackhi_pd(a.0, b.0)),
                ),
            }
        }
    }
    #[inline(always)]
    unsafe fn deinterleave(a: Self, b: Self) -> (Self, Self) {
        unsafe {
            (
                F64x4e(_mm256_permutex2var_pd(a.0, i4x([0, 2, 4, 6]), b.0)),
                F64x4e(_mm256_permutex2var_pd(a.0, i4x([1, 3, 5, 7]), b.0)),
            )
        }
    }
    #[inline(always)]
    unsafe fn interleave(re: Self, im: Self) -> (Self, Self) {
        unsafe {
            (
                F64x4e(_mm256_permutex2var_pd(re.0, i4x([0, 4, 1, 5]), im.0)),
                F64x4e(_mm256_permutex2var_pd(re.0, i4x([2, 6, 3, 7]), im.0)),
            )
        }
    }
}

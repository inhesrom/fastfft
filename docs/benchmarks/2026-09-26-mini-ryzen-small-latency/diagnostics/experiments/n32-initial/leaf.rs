//! Private fixed split-layout leaves. All arithmetic/lane operations live here;
//! the Small engine owns validation, target-feature entries and batch scheduling.
use super::*;

#[derive(Clone, Copy, Debug)]
pub(crate) struct F32x4f(__m128);
#[derive(Clone, Copy, Debug)]
pub(crate) struct F32x4z(__m128);

macro_rules! narrow_f32 {
    ($v:ident,$wide:ident) => {
        arith!(
            $v,
            f32,
            _mm_set1_ps,
            _mm_add_ps,
            _mm_sub_ps,
            _mm_mul_ps,
            _mm_xor_ps,
            fma(_mm_fmadd_ps, _mm_fmsub_ps, _mm_fnmadd_ps)
        );
        // SAFETY: four unaligned f32 lanes; arithmetic requires AVX2+FMA.
        unsafe impl Vector for $v {
            type S = f32;
            const LANES: usize = 4;
            mem!($v, f32, 4, _mm_set1_ps, _mm_loadu_ps, _mm_storeu_ps);
            #[inline(always)]
            unsafe fn deinterleave(a: Self, b: Self) -> (Self, Self) {
                // SAFETY: source/destination have the same four lanes.
                unsafe {
                    let (r, i) = F32x4::deinterleave(F32x4(a.0), F32x4(b.0));
                    (Self(r.0), Self(i.0))
                }
            }
            #[inline(always)]
            unsafe fn interleave(a: Self, b: Self) -> (Self, Self) {
                // SAFETY: source/destination have the same four lanes.
                unsafe {
                    let (r, i) = F32x4::interleave(F32x4(a.0), F32x4(b.0));
                    (Self(r.0), Self(i.0))
                }
            }
            #[inline(always)]
            unsafe fn zip(a: Self, b: Self, k: usize) -> (Self, Self) {
                // SAFETY: source/destination have the same four lanes.
                unsafe {
                    let (r, i) = F32x4::zip(F32x4(a.0), F32x4(b.0), k);
                    (Self(r.0), Self(i.0))
                }
            }
        }
        // SAFETY: transpose and constant loads require only the enclosing tier.
        unsafe impl Leaf for $v {
            type Wide = $wide;
            #[inline(always)]
            unsafe fn halves(w: Self::Wide) -> (Self, Self) {
                // SAFETY: AVX2 extract; both halves retain FMA arithmetic.
                unsafe {
                    (
                        Self(_mm256_castps256_ps128(w.0)),
                        Self(_mm256_extractf128_ps::<1>(w.0)),
                    )
                }
            }
            #[inline(always)]
            unsafe fn constants<const J: usize>() -> (Self, Self) {
                // Compile-time constants, never a plan-owned runtime table.
                let [r, i] = const { roots32(J) };
                // SAFETY: four local scalar constants in each load.
                unsafe {
                    (
                        Self(_mm_setr_ps(
                            r[0] as f32,
                            r[1] as f32,
                            r[2] as f32,
                            r[3] as f32,
                        )),
                        Self(_mm_setr_ps(
                            i[0] as f32,
                            i[1] as f32,
                            i[2] as f32,
                            i[3] as f32,
                        )),
                    )
                }
            }
            #[inline(always)]
            unsafe fn transpose(a: [Self; 4]) -> [Self; 4] {
                // SAFETY: all operations use the same four lanes.
                unsafe {
                    let lo0 = _mm_unpacklo_ps(a[0].0, a[1].0);
                    let hi0 = _mm_unpackhi_ps(a[0].0, a[1].0);
                    let lo1 = _mm_unpacklo_ps(a[2].0, a[3].0);
                    let hi1 = _mm_unpackhi_ps(a[2].0, a[3].0);
                    [
                        Self(_mm_movelh_ps(lo0, lo1)),
                        Self(_mm_movehl_ps(lo1, lo0)),
                        Self(_mm_movelh_ps(hi0, hi1)),
                        Self(_mm_movehl_ps(hi1, hi0)),
                    ]
                }
            }
        }
    };
}

/// Four-lane SIMD operations used only under the leaf's matching features.
/// # Safety
/// Implementations must keep four lanes in natural order and preserve FMA.
pub(crate) unsafe trait Leaf: Vector {
    type Wide: Vector<S = Self::S>;
    unsafe fn halves(w: Self::Wide) -> (Self, Self);
    unsafe fn constants<const J: usize>() -> (Self, Self);
    unsafe fn transpose(a: [Self; 4]) -> [Self; 4];
}

narrow_f32!(F32x4f, F32x8);
narrow_f32!(F32x4z, F32x8v);

macro_rules! leaf_f64 {
    ($v:ident) => {
        // SAFETY: four f64 lanes with matching AVX2/AVX-512 feature entry.
        unsafe impl Leaf for $v {
            type Wide = F64x8;
            #[inline(always)]
            unsafe fn halves(w: Self::Wide) -> (Self, Self) {
                // SAFETY: N32 f64 is constructed only with the AVX-512 tier.
                unsafe {
                    (
                        Self(_mm512_castpd512_pd256(w.0)),
                        Self(_mm512_extractf64x4_pd::<1>(w.0)),
                    )
                }
            }
            #[inline(always)]
            unsafe fn constants<const J: usize>() -> (Self, Self) {
                let [r, i] = const { roots32(J) };
                // SAFETY: local arrays contain four readable scalars each.
                unsafe {
                    (
                        Self(_mm256_loadu_pd(r.as_ptr())),
                        Self(_mm256_loadu_pd(i.as_ptr())),
                    )
                }
            }
            #[inline(always)]
            unsafe fn transpose(a: [Self; 4]) -> [Self; 4] {
                // SAFETY: AVX2 is included in both supported tiers.
                unsafe {
                    let lo0 = _mm256_unpacklo_pd(a[0].0, a[1].0);
                    let hi0 = _mm256_unpackhi_pd(a[0].0, a[1].0);
                    let lo1 = _mm256_unpacklo_pd(a[2].0, a[3].0);
                    let hi1 = _mm256_unpackhi_pd(a[2].0, a[3].0);
                    [
                        Self(_mm256_permute2f128_pd::<0x20>(lo0, lo1)),
                        Self(_mm256_permute2f128_pd::<0x20>(hi0, hi1)),
                        Self(_mm256_permute2f128_pd::<0x31>(lo0, lo1)),
                        Self(_mm256_permute2f128_pd::<0x31>(hi0, hi1)),
                    ]
                }
            }
        }
    };
}
leaf_f64!(F64x4);
leaf_f64!(F64x4v);

const fn roots32(j: usize) -> [[f64; 4]; 2] {
    use core::f64::consts::FRAC_1_SQRT_2 as H;
    const ROOTS: [(f64, f64); 8] = [
        (1., 0.),
        (0.9807852804032304, -0.19509032201612825),
        (0.9238795325112867, -0.3826834323650898),
        (0.8314696123025452, -0.5555702330196022),
        (H, -H),
        (0.5555702330196022, -0.8314696123025452),
        (0.3826834323650898, -0.9238795325112867),
        (0.19509032201612825, -0.9807852804032304),
    ];
    let mut out = [[0.; 4]; 2];
    let mut k = 0;
    while k < 4 {
        let index = j * k % 32;
        let (r, i) = ROOTS[index % 8];
        let (r, i) = match index / 8 {
            0 => (r, i),
            1 => (i, -r),
            2 => (-r, -i),
            _ => (-i, r),
        };
        out[0][k] = r;
        out[1][k] = i;
        k += 1;
    }
    out
}

#[inline(always)]
unsafe fn radix4<V: SimdReal>(r: [V; 4], i: [V; 4]) -> ([V; 4], [V; 4]) {
    // SAFETY: caller enables V's features. Quarter turns are swaps/signs,
    // not complex multiplies or opaque add-pipe balancing.
    unsafe {
        let a = V::add(r[0], r[2]);
        let b = V::sub(r[0], r[2]);
        let c = V::add(r[1], r[3]);
        let d = V::sub(r[1], r[3]);
        let e = V::add(i[0], i[2]);
        let f = V::sub(i[0], i[2]);
        let g = V::add(i[1], i[3]);
        let h = V::sub(i[1], i[3]);
        (
            [V::add(a, c), V::add(b, h), V::sub(a, c), V::sub(b, h)],
            [V::add(e, g), V::sub(f, d), V::sub(e, g), V::add(f, d)],
        )
    }
}

#[inline(always)]
unsafe fn twiddle<V: Leaf, const J: usize>(r: V, i: V) -> (V, V) {
    // SAFETY: matching features, all constants are compile-time values.
    unsafe {
        let (c, s) = V::constants::<J>();
        (V::fmsub(r, c, V::mul(i, s)), V::fmadd(r, s, V::mul(i, c)))
    }
}

#[inline(always)]
unsafe fn radix8<V: SimdReal>(r: [V; 8], i: [V; 8]) -> ([V; 8], [V; 8]) {
    // SAFETY: matching SIMD features; all eighth/quarter turns are fixed.
    unsafe {
        let (e, f) = radix4([r[0], r[2], r[4], r[6]], [i[0], i[2], i[4], i[6]]);
        let (mut o, mut p) = radix4([r[1], r[3], r[5], r[7]], [i[1], i[3], i[5], i[7]]);
        let h = V::splat_f64(core::f64::consts::FRAC_1_SQRT_2);
        (o[1], p[1]) = (V::mul(V::add(o[1], p[1]), h), V::mul(V::sub(p[1], o[1]), h));
        (o[2], p[2]) = (p[2], V::neg(o[2]));
        (o[3], p[3]) = (
            V::mul(V::sub(p[3], o[3]), h),
            V::mul(V::neg(V::add(o[3], p[3])), h),
        );
        let mut r = [e[0]; 8];
        let mut i = r;
        for k in 0..4 {
            r[k] = V::add(e[k], o[k]);
            r[k + 4] = V::sub(e[k], o[k]);
            i[k] = V::add(f[k], p[k]);
            i[k + 4] = V::sub(f[k], p[k]);
        }
        (r, i)
    }
}

#[inline(always)]
unsafe fn rectangular<V: Leaf>(a: [V::Wide; 4]) -> [V; 8] {
    // SAFETY: wide tier available and four independent rows. No padded lanes.
    unsafe {
        let (a0, a4) = V::halves(a[0]);
        let (a1, a5) = V::halves(a[1]);
        let (a2, a6) = V::halves(a[2]);
        let (a3, a7) = V::halves(a[3]);
        let lo = V::transpose([a0, a1, a2, a3]);
        let hi = V::transpose([a4, a5, a6, a7]);
        [lo[0], lo[1], lo[2], lo[3], hi[0], hi[1], hi[2], hi[3]]
    }
}

/// N=32, 4x8 DIT: wide radix-4, rectangular transpose, narrow radix-8.
/// All 64 scalar inputs are loaded before any exact-width output store.
#[inline(always)]
pub(crate) unsafe fn leaf32<V: Leaf, const INV: bool>(input: *const V::S, output: *mut V::S) {
    // SAFETY: validated N32 buffers, matching wide and narrow target features.
    unsafe {
        let mut a = [V::Wide::splat_f64(0.); 4];
        let mut b = a;
        for j in 0..4 {
            let (r, i) = V::Wide::deinterleave(
                V::Wide::load(input.add(j * 16)),
                V::Wide::load(input.add(j * 16 + 8)),
            );
            (a[j], b[j]) = if INV { (i, r) } else { (r, i) };
        }
        (a, b) = radix4(a, b);
        let mut r = rectangular::<V>(a);
        let mut i = rectangular::<V>(b);
        (r[1], i[1]) = twiddle::<V, 1>(r[1], i[1]);
        (r[2], i[2]) = twiddle::<V, 2>(r[2], i[2]);
        (r[3], i[3]) = twiddle::<V, 3>(r[3], i[3]);
        (r[4], i[4]) = twiddle::<V, 4>(r[4], i[4]);
        (r[5], i[5]) = twiddle::<V, 5>(r[5], i[5]);
        (r[6], i[6]) = twiddle::<V, 6>(r[6], i[6]);
        (r[7], i[7]) = twiddle::<V, 7>(r[7], i[7]);
        (r, i) = radix8(r, i);
        for j in 0..8 {
            let (lo, hi) = if INV {
                V::interleave(i[j], r[j])
            } else {
                V::interleave(r[j], i[j])
            };
            V::store(output.add(j * 8), lo);
            V::store(output.add(j * 8 + 4), hi);
        }
    }
}

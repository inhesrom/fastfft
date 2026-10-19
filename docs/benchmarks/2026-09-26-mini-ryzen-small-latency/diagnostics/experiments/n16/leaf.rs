//! Private fixed split-layout leaves. All arithmetic/lane operations live here;
//! the Small engine owns validation, target-feature entries and batch scheduling.
use super::*;

#[derive(Clone, Copy, Debug)]
pub(crate) struct F32x4f(__m128);
#[derive(Clone, Copy, Debug)]
pub(crate) struct F32x4z(__m128);

macro_rules! narrow_f32 {
    ($v:ident) => {
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
            #[inline(always)]
            unsafe fn constants<const J: usize>() -> (Self, Self) {
                const {
                    assert!(J < 4);
                }
                // Compile-time constants, never a plan-owned runtime table.
                let [r, i] = const { roots16(J) };
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
    unsafe fn constants<const J: usize>() -> (Self, Self);
    unsafe fn transpose(a: [Self; 4]) -> [Self; 4];
}

narrow_f32!(F32x4f);
narrow_f32!(F32x4z);

macro_rules! leaf_f64 {
    ($v:ident) => {
        // SAFETY: four f64 lanes with matching AVX2/AVX-512 feature entry.
        unsafe impl Leaf for $v {
            #[inline(always)]
            unsafe fn constants<const J: usize>() -> (Self, Self) {
                let [r, i] = const { roots16(J) };
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

const fn roots16(j: usize) -> [[f64; 4]; 2] {
    use core::f64::consts::FRAC_1_SQRT_2 as H;
    const C: f64 = 0.9238795325112867;
    const S: f64 = 0.3826834323650898;
    const ROOTS: [(f64, f64); 16] = [
        (1., 0.),
        (C, -S),
        (H, -H),
        (S, -C),
        (0., -1.),
        (-S, -C),
        (-H, -H),
        (-C, -S),
        (-1., 0.),
        (-C, S),
        (-H, H),
        (-S, C),
        (0., 1.),
        (S, C),
        (H, H),
        (C, S),
    ];
    let mut out = [[0.; 4]; 2];
    let mut k = 0;
    while k < 4 {
        let (r, i) = ROOTS[j * k % 16];
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

/// N=16, fixed 4x4 DIT. Input/output hold 32 scalars, aliased or disjoint.
/// All loads precede every store. No alignment stronger than the scalar's.
#[inline(always)]
pub(crate) unsafe fn leaf16<V: Leaf, const INV: bool>(input: *const V::S, output: *mut V::S) {
    // SAFETY: complete validated buffers and matching target features.
    unsafe {
        let mut r = [V::splat_f64(0.); 4];
        let mut i = r;
        for j in 0..4 {
            let (a, b) = V::deinterleave(V::load(input.add(j * 8)), V::load(input.add(j * 8 + 4)));
            (r[j], i[j]) = if INV { (b, a) } else { (a, b) };
        }
        (r, i) = radix4(r, i);
        r = V::transpose(r);
        i = V::transpose(i);
        // Row zero is exactly the identity. The radix-4 quarter turns above
        // and below are exact. Mixed-lane rows use constant vector FMA.
        (r[1], i[1]) = twiddle::<V, 1>(r[1], i[1]);
        (r[2], i[2]) = twiddle::<V, 2>(r[2], i[2]);
        (r[3], i[3]) = twiddle::<V, 3>(r[3], i[3]);
        (r, i) = radix4(r, i);
        for j in 0..4 {
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

//! Private interleaved-complex leaves for N = 2 through 256.
//!
//! Tiny transforms are latency- and shuffle-bound: the split layout pays a
//! deinterleave and an interleave per call. These leaves keep `re, im` pairs
//! adjacent, so every load and store is a plain 256-bit move. The Small engine
//! owns validation, target-feature entries and batch scheduling.
use core::arch::x86_64::*;

mod odd;
pub(crate) use odd::{rect_f32, square6};

/// Adjacent complex values in registers: four for `R32` (one `__m256`), `R64`
/// (two `__m256d`) and `R64z` (one `__m512d`); eight for `R32z` (one
/// `__m512`).
///
/// # Safety
///
/// Every method requires AVX2+FMA, and the zmm rows AVX-512, except
/// `Quad::leaf2`, `Quad::leaf4` and the f64 N=6 leaf, which use only SSE2 so
/// they can inline without a target-feature call. Pointers must be valid for
/// every scalar the method touches.
pub(crate) unsafe trait Row: Copy {
    type S: Copy;
    /// Scalars per row.
    const W: usize;
    unsafe fn load(p: *const Self::S) -> Self;
    unsafe fn store(self, p: *mut Self::S);
    /// Vector-aligned streaming output; fence before exposing results.
    #[inline(always)]
    unsafe fn stream_store(self, p: *mut Self::S) {
        // SAFETY: streaming-store contract includes ordinary store validity.
        unsafe { self.store(p) }
    }
    #[inline(always)]
    unsafe fn stream_fence() {
        // SAFETY: every Row requires at least SSE2.
        unsafe { _mm_sfence() }
    }
    unsafe fn add(self, o: Self) -> Self;
    unsafe fn sub(self, o: Self) -> Self;
    unsafe fn mul(self, o: Self) -> Self;
    /// `self * m + a`, fused.
    unsafe fn mul_add(self, m: Self, a: Self) -> Self;
    /// `self * m - a`, fused.
    unsafe fn mul_sub(self, m: Self, a: Self) -> Self;
    /// `a - self * m`, fused.
    unsafe fn neg_mul_add(self, m: Self, a: Self) -> Self;
    /// `(re - o.re, im + o.im)` for every complex value.
    unsafe fn addsub(self, o: Self) -> Self;
    /// Swaps the real and imaginary part of every complex value.
    unsafe fn swap(self) -> Self;
    /// Multiplies by -i (forward) or +i (inverse).
    unsafe fn rot<const INV: bool>(self) -> Self;
    /// `(re, im)` in every complex position.
    unsafe fn signs(re: f64, im: f64) -> Self;
    /// Whether latency-bound leaves fold the radix-4 rotation into `addsub`
    /// (see `radix4`). It saves a step on the critical path but costs two
    /// more operations, which loses where a row is two registers or 512-bit
    /// ops run split.
    const FUSED_ROT: bool;
    /// The complete size-N transform with these rows (`quad` or `wide`).
    /// `LATENCY` marks a single in-place transform: the next call on the
    /// buffer waits for this one, so a leaf may spend an operation to shorten
    /// its critical path. Out of place and in batches, transforms overlap and
    /// the operation count matters instead.
    unsafe fn leaf<const N: usize, const INV: bool, const LATENCY: bool>(
        input: *const Self::S,
        output: *mut Self::S,
        tw: *const Self::S,
    );
}

/// Rows of four complex values, the shape of every leaf except `wide`.
///
/// # Safety
///
/// As for `Row`.
pub(crate) unsafe trait Quad: Row {
    /// Transposes a 4x4 block of complex values.
    unsafe fn transpose(r: [Self; 4]) -> [Self; 4];
    /// N=8's second stage: radix-4 across the lane pairs `(s[j], d[j])`,
    /// j = 0..3. Result pair k2 is outputs 2·k2 and 2·k2 + 1.
    unsafe fn pairs4<const INV: bool>(s: Self, d: Self, output: *mut Self::S);
    /// Complete N=2 transform (identical in both directions); SSE2 only.
    unsafe fn leaf2(input: *const Self::S, output: *mut Self::S);
    /// Complete N=4 transform; SSE2 only.
    unsafe fn leaf4<const INV: bool>(input: *const Self::S, output: *mut Self::S);
}

#[derive(Clone, Copy, Debug)]
pub(crate) struct R32(__m256);
#[derive(Clone, Copy, Debug)]
pub(crate) struct R64(__m256d, __m256d);

/// Swaps real and imaginary parts within each complex f32.
const SWAP32: i32 = 0b10_11_00_01;
/// Swaps real and imaginary parts within each complex f64 of a 128-bit lane.
const SWAP64: i32 = 0b0101;

// SAFETY: AVX2+FMA intrinsics on unaligned eight-scalar rows.
unsafe impl Row for R32 {
    type S = f32;
    const W: usize = 8;
    const FUSED_ROT: bool = true;
    #[inline(always)]
    unsafe fn load(p: *const f32) -> Self {
        // SAFETY: caller guarantees eight readable scalars.
        unsafe { Self(_mm256_loadu_ps(p)) }
    }
    #[inline(always)]
    unsafe fn store(self, p: *mut f32) {
        // SAFETY: caller guarantees eight writable scalars.
        unsafe { _mm256_storeu_ps(p, self.0) }
    }
    #[inline(always)]
    unsafe fn stream_store(self, p: *mut f32) {
        // SAFETY: caller supplies vector alignment and writable row scalars.
        unsafe {
            _mm256_stream_ps(p, self.0);
        }
    }
    #[inline(always)]
    unsafe fn add(self, o: Self) -> Self {
        // SAFETY: AVX enabled by the caller.
        unsafe { Self(_mm256_add_ps(self.0, o.0)) }
    }
    #[inline(always)]
    unsafe fn sub(self, o: Self) -> Self {
        // SAFETY: AVX enabled by the caller.
        unsafe { Self(_mm256_sub_ps(self.0, o.0)) }
    }
    #[inline(always)]
    unsafe fn mul(self, o: Self) -> Self {
        // SAFETY: AVX enabled by the caller.
        unsafe { Self(_mm256_mul_ps(self.0, o.0)) }
    }
    #[inline(always)]
    unsafe fn mul_add(self, m: Self, a: Self) -> Self {
        // SAFETY: FMA enabled by the caller.
        unsafe { Self(_mm256_fmadd_ps(self.0, m.0, a.0)) }
    }
    #[inline(always)]
    unsafe fn mul_sub(self, m: Self, a: Self) -> Self {
        // SAFETY: FMA enabled by the caller.
        unsafe { Self(_mm256_fmsub_ps(self.0, m.0, a.0)) }
    }
    #[inline(always)]
    unsafe fn neg_mul_add(self, m: Self, a: Self) -> Self {
        // SAFETY: FMA enabled by the caller.
        unsafe { Self(_mm256_fnmadd_ps(self.0, m.0, a.0)) }
    }
    #[inline(always)]
    unsafe fn addsub(self, o: Self) -> Self {
        // SAFETY: AVX enabled by the caller.
        unsafe { Self(_mm256_addsub_ps(self.0, o.0)) }
    }
    #[inline(always)]
    unsafe fn swap(self) -> Self {
        // SAFETY: AVX enabled by the caller.
        unsafe { Self(_mm256_permute_ps::<SWAP32>(self.0)) }
    }
    #[inline(always)]
    unsafe fn rot<const INV: bool>(self) -> Self {
        // SAFETY: AVX enabled by the caller. (re, im)·(∓i) = (±im, ∓re).
        unsafe {
            let sign = if INV {
                _mm256_setr_ps(-0., 0., -0., 0., -0., 0., -0., 0.)
            } else {
                _mm256_setr_ps(0., -0., 0., -0., 0., -0., 0., -0.)
            };
            Self(_mm256_xor_ps(self.swap().0, sign))
        }
    }
    #[inline(always)]
    unsafe fn signs(re: f64, im: f64) -> Self {
        // SAFETY: AVX enabled by the caller.
        unsafe {
            let (re, im) = (re as f32, im as f32);
            Self(_mm256_setr_ps(re, im, re, im, re, im, re, im))
        }
    }
    #[inline(always)]
    unsafe fn leaf<const N: usize, const INV: bool, const LATENCY: bool>(
        input: *const f32,
        output: *mut f32,
        tw: *const f32,
    ) {
        // SAFETY: forwarded.
        unsafe { quad::<Self, N, INV, LATENCY>(input, output, tw) }
    }
}

// SAFETY: as for `Row`.
unsafe impl Quad for R32 {
    #[inline(always)]
    unsafe fn transpose(r: [Self; 4]) -> [Self; 4] {
        // SAFETY: AVX enabled by the caller. Each complex f32 is one f64 lane.
        // Leaf code avoids closures: they would not inherit target features.
        unsafe {
            let (r0, r1) = (_mm256_castps_pd(r[0].0), _mm256_castps_pd(r[1].0));
            let (r2, r3) = (_mm256_castps_pd(r[2].0), _mm256_castps_pd(r[3].0));
            let t0 = _mm256_unpacklo_pd(r0, r1);
            let t1 = _mm256_unpackhi_pd(r0, r1);
            let t2 = _mm256_unpacklo_pd(r2, r3);
            let t3 = _mm256_unpackhi_pd(r2, r3);
            [
                Self(_mm256_castpd_ps(lo128(t0, t2))),
                Self(_mm256_castpd_ps(lo128(t1, t3))),
                Self(_mm256_castpd_ps(hi128(t0, t2))),
                Self(_mm256_castpd_ps(hi128(t1, t3))),
            ]
        }
    }
    #[inline(always)]
    unsafe fn pairs4<const INV: bool>(s: Self, d: Self, output: *mut f32) {
        // SAFETY: AVX enabled by the caller; sixteen writable scalars.
        unsafe {
            let (s, d) = (_mm256_castps_pd(s.0), _mm256_castps_pd(d.0));
            // [s0 d0 | s2 d2] and [s1 d1 | s3 d3], one complex per f64 lane.
            let e = fold32(_mm256_castpd_ps(_mm256_unpacklo_pd(s, d)));
            let f = fold32(_mm256_castpd_ps(_mm256_unpackhi_pd(s, d)));
            let f = _mm256_blend_ps::<0xF0>(f, Self(f).rot::<INV>().0);
            _mm256_storeu_ps(output, _mm256_add_ps(e, f));
            _mm256_storeu_ps(output.add(8), _mm256_sub_ps(e, f));
        }
    }
    #[inline(always)]
    unsafe fn leaf2(input: *const f32, output: *mut f32) {
        // SAFETY: four readable/writable scalars; SSE2 is baseline on x86_64.
        // One complex per 8-byte load: each lies within one earlier store.
        unsafe {
            let a = _mm_castpd_ps(_mm_load_sd(input.cast()));
            let b = _mm_castpd_ps(_mm_load_sd(input.add(2).cast()));
            _mm_store_sd(output.cast(), _mm_castps_pd(_mm_add_ps(a, b)));
            _mm_store_sd(output.add(2).cast(), _mm_castps_pd(_mm_sub_ps(a, b)));
        }
    }
    #[inline(always)]
    unsafe fn leaf4<const INV: bool>(input: *const f32, output: *mut f32) {
        // SAFETY: eight readable/writable scalars; SSE2 is baseline on x86_64.
        unsafe {
            let a = _mm_loadu_ps(input);
            let b = _mm_loadu_ps(input.add(4));
            let s = _mm_add_ps(a, b);
            let d = _mm_sub_ps(a, b);
            // [s0 d0] and [s1 d1]; rotate only d1 by ∓i.
            let u = _mm_movelh_ps(s, d);
            let v = _mm_movehl_ps(d, s);
            let v = _mm_shuffle_ps::<0b10_11_01_00>(v, v);
            let sign = if INV {
                _mm_setr_ps(0., 0., -0., 0.)
            } else {
                _mm_setr_ps(0., 0., 0., -0.)
            };
            let v = _mm_xor_ps(v, sign);
            _mm_storeu_ps(output, _mm_add_ps(u, v));
            _mm_storeu_ps(output.add(4), _mm_sub_ps(u, v));
        }
    }
}

// SAFETY: AVX2+FMA intrinsics on unaligned eight-scalar rows.
unsafe impl Row for R64 {
    type S = f64;
    const W: usize = 8;
    const FUSED_ROT: bool = false;
    #[inline(always)]
    unsafe fn load(p: *const f64) -> Self {
        // SAFETY: caller guarantees eight readable scalars.
        unsafe { Self(_mm256_loadu_pd(p), _mm256_loadu_pd(p.add(4))) }
    }
    #[inline(always)]
    unsafe fn store(self, p: *mut f64) {
        // SAFETY: caller guarantees eight writable scalars.
        unsafe {
            _mm256_storeu_pd(p, self.0);
            _mm256_storeu_pd(p.add(4), self.1);
        }
    }
    #[inline(always)]
    unsafe fn stream_store(self, p: *mut f64) {
        // SAFETY: caller supplies vector alignment and writable row scalars.
        unsafe {
            _mm256_stream_pd(p, self.0);
            _mm256_stream_pd(p.add(4), self.1);
        }
    }
    #[inline(always)]
    unsafe fn add(self, o: Self) -> Self {
        // SAFETY: AVX enabled by the caller.
        unsafe { Self(_mm256_add_pd(self.0, o.0), _mm256_add_pd(self.1, o.1)) }
    }
    #[inline(always)]
    unsafe fn sub(self, o: Self) -> Self {
        // SAFETY: AVX enabled by the caller.
        unsafe { Self(_mm256_sub_pd(self.0, o.0), _mm256_sub_pd(self.1, o.1)) }
    }
    #[inline(always)]
    unsafe fn mul(self, o: Self) -> Self {
        // SAFETY: AVX enabled by the caller.
        unsafe { Self(_mm256_mul_pd(self.0, o.0), _mm256_mul_pd(self.1, o.1)) }
    }
    #[inline(always)]
    unsafe fn mul_add(self, m: Self, a: Self) -> Self {
        // SAFETY: FMA enabled by the caller.
        unsafe {
            Self(
                _mm256_fmadd_pd(self.0, m.0, a.0),
                _mm256_fmadd_pd(self.1, m.1, a.1),
            )
        }
    }
    #[inline(always)]
    unsafe fn mul_sub(self, m: Self, a: Self) -> Self {
        // SAFETY: FMA enabled by the caller.
        unsafe {
            Self(
                _mm256_fmsub_pd(self.0, m.0, a.0),
                _mm256_fmsub_pd(self.1, m.1, a.1),
            )
        }
    }
    #[inline(always)]
    unsafe fn neg_mul_add(self, m: Self, a: Self) -> Self {
        // SAFETY: FMA enabled by the caller.
        unsafe {
            Self(
                _mm256_fnmadd_pd(self.0, m.0, a.0),
                _mm256_fnmadd_pd(self.1, m.1, a.1),
            )
        }
    }
    #[inline(always)]
    unsafe fn addsub(self, o: Self) -> Self {
        // SAFETY: AVX enabled by the caller.
        unsafe { Self(_mm256_addsub_pd(self.0, o.0), _mm256_addsub_pd(self.1, o.1)) }
    }
    #[inline(always)]
    unsafe fn swap(self) -> Self {
        // SAFETY: AVX enabled by the caller.
        unsafe {
            Self(
                _mm256_permute_pd::<SWAP64>(self.0),
                _mm256_permute_pd::<SWAP64>(self.1),
            )
        }
    }
    #[inline(always)]
    unsafe fn rot<const INV: bool>(self) -> Self {
        // SAFETY: AVX enabled by the caller.
        unsafe { Self(rot64::<INV>(self.0), rot64::<INV>(self.1)) }
    }
    #[inline(always)]
    unsafe fn signs(re: f64, im: f64) -> Self {
        // SAFETY: AVX enabled by the caller.
        unsafe {
            let v = _mm256_setr_pd(re, im, re, im);
            Self(v, v)
        }
    }
    #[inline(always)]
    unsafe fn leaf<const N: usize, const INV: bool, const LATENCY: bool>(
        input: *const f64,
        output: *mut f64,
        tw: *const f64,
    ) {
        // SAFETY: forwarded.
        unsafe {
            if N == 6 {
                odd::six::<INV>(input, output);
            } else if N == 9 {
                odd::nine::<INV>(input, output);
            } else if N == 18 {
                odd::eighteen::<INV>(input, output);
            } else {
                quad::<Self, N, INV, LATENCY>(input, output, tw);
            }
        }
    }
}

// SAFETY: as for `Row`.
unsafe impl Quad for R64 {
    #[inline(always)]
    unsafe fn transpose(r: [Self; 4]) -> [Self; 4] {
        // SAFETY: AVX enabled by the caller. Four 2x2 blocks of 128-bit lanes.
        unsafe {
            [
                Self(lo128(r[0].0, r[1].0), lo128(r[2].0, r[3].0)),
                Self(hi128(r[0].0, r[1].0), hi128(r[2].0, r[3].0)),
                Self(lo128(r[0].1, r[1].1), lo128(r[2].1, r[3].1)),
                Self(hi128(r[0].1, r[1].1), hi128(r[2].1, r[3].1)),
            ]
        }
    }
    #[inline(always)]
    unsafe fn pairs4<const INV: bool>(s: Self, d: Self, output: *mut f64) {
        // SAFETY: AVX enabled by the caller; sixteen writable scalars.
        unsafe {
            let (p0, p1) = (lo128(s.0, d.0), hi128(s.0, d.0));
            let (p2, p3) = (lo128(s.1, d.1), hi128(s.1, d.1));
            let s02 = _mm256_add_pd(p0, p2);
            let d02 = _mm256_sub_pd(p0, p2);
            let s13 = _mm256_add_pd(p1, p3);
            // d02 ∓ i·(p1 - p3) as addsub of swapped differences (see radix4).
            let (q1, q3) = (
                _mm256_permute_pd::<SWAP64>(p1),
                _mm256_permute_pd::<SWAP64>(p3),
            );
            let (sw, nsw) = (_mm256_sub_pd(q1, q3), _mm256_sub_pd(q3, q1));
            let (y1, y3) = if INV {
                (_mm256_addsub_pd(d02, sw), _mm256_addsub_pd(d02, nsw))
            } else {
                (_mm256_addsub_pd(d02, nsw), _mm256_addsub_pd(d02, sw))
            };
            _mm256_storeu_pd(output, _mm256_add_pd(s02, s13));
            _mm256_storeu_pd(output.add(4), y1);
            _mm256_storeu_pd(output.add(8), _mm256_sub_pd(s02, s13));
            _mm256_storeu_pd(output.add(12), y3);
        }
    }
    #[inline(always)]
    unsafe fn leaf2(input: *const f64, output: *mut f64) {
        // SAFETY: four readable/writable scalars; SSE2 is baseline on x86_64.
        unsafe {
            let a = _mm_loadu_pd(input);
            let b = _mm_loadu_pd(input.add(2));
            _mm_storeu_pd(output, _mm_add_pd(a, b));
            _mm_storeu_pd(output.add(2), _mm_sub_pd(a, b));
        }
    }
    #[inline(always)]
    unsafe fn leaf4<const INV: bool>(input: *const f64, output: *mut f64) {
        // SAFETY: eight readable/writable scalars; SSE2 is baseline on x86_64.
        // One complex per xmm: no cross-lane shuffles on the latency path.
        unsafe {
            let x0 = _mm_loadu_pd(input);
            let x1 = _mm_loadu_pd(input.add(2));
            let x2 = _mm_loadu_pd(input.add(4));
            let x3 = _mm_loadu_pd(input.add(6));
            let s02 = _mm_add_pd(x0, x2);
            let d02 = _mm_sub_pd(x0, x2);
            let s13 = _mm_add_pd(x1, x3);
            let t = _mm_sub_pd(x1, x3);
            let sign = if INV {
                _mm_setr_pd(-0., 0.)
            } else {
                _mm_setr_pd(0., -0.)
            };
            let d13 = _mm_xor_pd(_mm_shuffle_pd::<0b01>(t, t), sign);
            _mm_storeu_pd(output, _mm_add_pd(s02, s13));
            _mm_storeu_pd(output.add(2), _mm_add_pd(d02, d13));
            _mm_storeu_pd(output.add(4), _mm_sub_pd(s02, s13));
            _mm_storeu_pd(output.add(6), _mm_sub_pd(d02, d13));
        }
    }
}

/// Four adjacent complex f64 in one zmm, for the AVX-512 (512-bit) tier.
#[cfg(feature = "avx512")]
#[derive(Clone, Copy, Debug)]
pub(crate) struct R64z(__m512d);

// SAFETY: AVX-512F/DQ intrinsics on unaligned eight-scalar rows; the caller
// enables AVX-512 (which implies AVX2+FMA for the shared helpers).
#[cfg(feature = "avx512")]
unsafe impl Row for R64z {
    type S = f64;
    const W: usize = 8;
    const FUSED_ROT: bool = false;
    #[inline(always)]
    unsafe fn load(p: *const f64) -> Self {
        // SAFETY: caller guarantees eight readable scalars.
        unsafe { Self(_mm512_loadu_pd(p)) }
    }
    #[inline(always)]
    unsafe fn store(self, p: *mut f64) {
        // SAFETY: caller guarantees eight writable scalars.
        unsafe { _mm512_storeu_pd(p, self.0) }
    }
    #[inline(always)]
    unsafe fn stream_store(self, p: *mut f64) {
        // SAFETY: caller supplies vector alignment and writable row scalars.
        unsafe {
            _mm512_stream_pd(p, self.0);
        }
    }
    #[inline(always)]
    unsafe fn add(self, o: Self) -> Self {
        // SAFETY: AVX-512F enabled by the caller.
        unsafe { Self(_mm512_add_pd(self.0, o.0)) }
    }
    #[inline(always)]
    unsafe fn sub(self, o: Self) -> Self {
        // SAFETY: AVX-512F enabled by the caller.
        unsafe { Self(_mm512_sub_pd(self.0, o.0)) }
    }
    #[inline(always)]
    unsafe fn mul(self, o: Self) -> Self {
        // SAFETY: AVX-512F enabled by the caller.
        unsafe { Self(_mm512_mul_pd(self.0, o.0)) }
    }
    #[inline(always)]
    unsafe fn mul_add(self, m: Self, a: Self) -> Self {
        // SAFETY: AVX-512F enabled by the caller.
        unsafe { Self(_mm512_fmadd_pd(self.0, m.0, a.0)) }
    }
    #[inline(always)]
    unsafe fn mul_sub(self, m: Self, a: Self) -> Self {
        // SAFETY: AVX-512F enabled by the caller.
        unsafe { Self(_mm512_fmsub_pd(self.0, m.0, a.0)) }
    }
    #[inline(always)]
    unsafe fn neg_mul_add(self, m: Self, a: Self) -> Self {
        // SAFETY: AVX-512F enabled by the caller.
        unsafe { Self(_mm512_fnmadd_pd(self.0, m.0, a.0)) }
    }
    #[inline(always)]
    unsafe fn addsub(self, o: Self) -> Self {
        // SAFETY: AVX-512F enabled by the caller. No 512-bit addsub exists.
        unsafe { Self(_mm512_fmaddsub_pd(self.0, _mm512_set1_pd(1.), o.0)) }
    }
    #[inline(always)]
    unsafe fn swap(self) -> Self {
        // SAFETY: AVX-512F enabled by the caller.
        unsafe { Self(_mm512_permute_pd::<0x55>(self.0)) }
    }
    #[inline(always)]
    unsafe fn rot<const INV: bool>(self) -> Self {
        // SAFETY: AVX-512F/DQ enabled by the caller.
        unsafe {
            let sign = if INV {
                _mm512_setr_pd(-0., 0., -0., 0., -0., 0., -0., 0.)
            } else {
                _mm512_setr_pd(0., -0., 0., -0., 0., -0., 0., -0.)
            };
            Self(_mm512_xor_pd(self.swap().0, sign))
        }
    }
    #[inline(always)]
    unsafe fn signs(re: f64, im: f64) -> Self {
        // SAFETY: AVX-512F enabled by the caller.
        unsafe { Self(_mm512_setr_pd(re, im, re, im, re, im, re, im)) }
    }
    #[inline(always)]
    unsafe fn leaf<const N: usize, const INV: bool, const LATENCY: bool>(
        input: *const f64,
        output: *mut f64,
        tw: *const f64,
    ) {
        // SAFETY: forwarded.
        unsafe { quad::<Self, N, INV, LATENCY>(input, output, tw) }
    }
}

// SAFETY: as for `Row`.
#[cfg(feature = "avx512")]
unsafe impl Quad for R64z {
    #[inline(always)]
    unsafe fn transpose(r: [Self; 4]) -> [Self; 4] {
        // SAFETY: AVX-512F enabled by the caller. Each complex is one 128-bit
        // lane: pair rows, then pick lanes across pairs.
        unsafe {
            let t0 = _mm512_shuffle_f64x2::<0b01_00_01_00>(r[0].0, r[1].0);
            let t1 = _mm512_shuffle_f64x2::<0b11_10_11_10>(r[0].0, r[1].0);
            let t2 = _mm512_shuffle_f64x2::<0b01_00_01_00>(r[2].0, r[3].0);
            let t3 = _mm512_shuffle_f64x2::<0b11_10_11_10>(r[2].0, r[3].0);
            [
                Self(_mm512_shuffle_f64x2::<0b10_00_10_00>(t0, t2)),
                Self(_mm512_shuffle_f64x2::<0b11_01_11_01>(t0, t2)),
                Self(_mm512_shuffle_f64x2::<0b10_00_10_00>(t1, t3)),
                Self(_mm512_shuffle_f64x2::<0b11_01_11_01>(t1, t3)),
            ]
        }
    }
    #[inline(always)]
    unsafe fn pairs4<const INV: bool>(s: Self, d: Self, output: *mut f64) {
        // SAFETY: AVX-512F enabled by the caller; forwarded to the ymm rows.
        unsafe { R64::pairs4::<INV>(ymm(s.0), ymm(d.0), output) }
    }
    #[inline(always)]
    unsafe fn leaf2(input: *const f64, output: *mut f64) {
        // SAFETY: forwarded; SSE2 only.
        unsafe { R64::leaf2(input, output) }
    }
    #[inline(always)]
    unsafe fn leaf4<const INV: bool>(input: *const f64, output: *mut f64) {
        // SAFETY: forwarded; SSE2 only.
        unsafe { R64::leaf4::<INV>(input, output) }
    }
}

/// The two ymm halves of a zmm row.
#[cfg(feature = "avx512")]
#[inline(always)]
unsafe fn ymm(x: __m512d) -> R64 {
    // SAFETY: AVX-512F enabled by the caller.
    unsafe { R64(_mm512_castpd512_pd256(x), _mm512_extractf64x4_pd::<1>(x)) }
}

/// Eight adjacent complex f32 in one zmm, for the AVX-512 (512-bit) tier.
#[cfg(feature = "avx512")]
#[derive(Clone, Copy, Debug)]
pub(crate) struct R32z(__m512);

// SAFETY: AVX-512F/DQ intrinsics on unaligned sixteen-scalar rows; the caller
// enables AVX-512 (which implies AVX2+FMA for the shared helpers).
#[cfg(feature = "avx512")]
unsafe impl Row for R32z {
    type S = f32;
    const W: usize = 16;
    const FUSED_ROT: bool = false;
    #[inline(always)]
    unsafe fn load(p: *const f32) -> Self {
        // SAFETY: caller guarantees sixteen readable scalars.
        unsafe { Self(_mm512_loadu_ps(p)) }
    }
    #[inline(always)]
    unsafe fn store(self, p: *mut f32) {
        // SAFETY: caller guarantees sixteen writable scalars.
        unsafe { _mm512_storeu_ps(p, self.0) }
    }
    #[inline(always)]
    unsafe fn add(self, o: Self) -> Self {
        // SAFETY: AVX-512F enabled by the caller.
        unsafe { Self(_mm512_add_ps(self.0, o.0)) }
    }
    #[inline(always)]
    unsafe fn sub(self, o: Self) -> Self {
        // SAFETY: AVX-512F enabled by the caller.
        unsafe { Self(_mm512_sub_ps(self.0, o.0)) }
    }
    #[inline(always)]
    unsafe fn mul(self, o: Self) -> Self {
        // SAFETY: AVX-512F enabled by the caller.
        unsafe { Self(_mm512_mul_ps(self.0, o.0)) }
    }
    #[inline(always)]
    unsafe fn mul_add(self, m: Self, a: Self) -> Self {
        // SAFETY: AVX-512F enabled by the caller.
        unsafe { Self(_mm512_fmadd_ps(self.0, m.0, a.0)) }
    }
    #[inline(always)]
    unsafe fn mul_sub(self, m: Self, a: Self) -> Self {
        // SAFETY: AVX-512F enabled by the caller.
        unsafe { Self(_mm512_fmsub_ps(self.0, m.0, a.0)) }
    }
    #[inline(always)]
    unsafe fn neg_mul_add(self, m: Self, a: Self) -> Self {
        // SAFETY: AVX-512F enabled by the caller.
        unsafe { Self(_mm512_fnmadd_ps(self.0, m.0, a.0)) }
    }
    #[inline(always)]
    unsafe fn addsub(self, o: Self) -> Self {
        // SAFETY: AVX-512F enabled by the caller. No 512-bit addsub exists.
        unsafe { Self(_mm512_fmaddsub_ps(self.0, _mm512_set1_ps(1.), o.0)) }
    }
    #[inline(always)]
    unsafe fn swap(self) -> Self {
        // SAFETY: AVX-512F enabled by the caller.
        unsafe { Self(_mm512_permute_ps::<SWAP32>(self.0)) }
    }
    #[inline(always)]
    unsafe fn rot<const INV: bool>(self) -> Self {
        // SAFETY: AVX-512F/DQ enabled by the caller.
        unsafe {
            let sign = if INV {
                Self::signs(-0., 0.).0
            } else {
                Self::signs(0., -0.).0
            };
            Self(_mm512_xor_ps(self.swap().0, sign))
        }
    }
    #[inline(always)]
    unsafe fn signs(re: f64, im: f64) -> Self {
        // SAFETY: AVX-512F enabled by the caller.
        unsafe {
            let (re, im) = (re as f32, im as f32);
            Self(_mm512_setr_ps(
                re, im, re, im, re, im, re, im, re, im, re, im, re, im, re, im,
            ))
        }
    }
    #[inline(always)]
    unsafe fn leaf<const N: usize, const INV: bool, const LATENCY: bool>(
        input: *const f32,
        output: *mut f32,
        tw: *const f32,
    ) {
        // SAFETY: forwarded.
        unsafe { wide::<N, INV>(input, output, tw) }
    }
}

/// Low 128-bit lanes of `a` and `b`.
#[inline(always)]
unsafe fn lo128(a: __m256d, b: __m256d) -> __m256d {
    // SAFETY: AVX enabled by the caller.
    unsafe { _mm256_permute2f128_pd::<0x20>(a, b) }
}

/// High 128-bit lanes of `a` and `b`.
#[inline(always)]
unsafe fn hi128(a: __m256d, b: __m256d) -> __m256d {
    // SAFETY: AVX enabled by the caller.
    unsafe { _mm256_permute2f128_pd::<0x31>(a, b) }
}

/// `[x.lo + x.hi | x.lo - x.hi]` for 128-bit halves of f32 lanes.
#[inline(always)]
unsafe fn fold32(x: __m256) -> __m256 {
    // SAFETY: AVX enabled by the caller.
    unsafe {
        let neg_hi = _mm256_setr_ps(0., 0., 0., 0., -0., -0., -0., -0.);
        _mm256_add_ps(
            _mm256_permute2f128_ps::<0x01>(x, x),
            _mm256_xor_ps(x, neg_hi),
        )
    }
}

#[inline(always)]
unsafe fn rot64<const INV: bool>(x: __m256d) -> __m256d {
    // SAFETY: AVX enabled by the caller.
    unsafe {
        let sign = if INV {
            _mm256_setr_pd(-0., 0., -0., 0.)
        } else {
            _mm256_setr_pd(0., -0., 0., -0.)
        };
        _mm256_xor_pd(_mm256_permute_pd::<SWAP64>(x), sign)
    }
}

/// Complex multiply by a table row: a row of duplicated real parts, then the
/// imaginary parts as `(-im, im)` pairs. One multiply and one fused add
/// after the swap, so the latency is a multiply plus an FMA.
#[inline(always)]
unsafe fn cmul<R: Row>(v: R, w: *const R::S) -> R {
    // SAFETY: row arithmetic under the caller's features; 2·W table scalars.
    unsafe { v.swap().mul_add(R::load(w.add(R::W)), v.mul(R::load(w))) }
}

/// Radix-4 across rows. The ∓i rotation of `a1 - a3` folds into the two
/// FMAs that add it to `a0 - a2` (`add_rot`). With `FUSED` (and
/// `R::FUSED_ROT`) it folds into `addsub` of swapped differences instead:
/// one step shorter on the critical path, for two more operations.
#[inline(always)]
unsafe fn radix4<R: Row, const INV: bool, const FUSED: bool>(a: [R; 4]) -> [R; 4] {
    // SAFETY: row arithmetic under the caller's features.
    unsafe { radix4_sd::<R, INV, FUSED>(a[0].add(a[2]), a[0].sub(a[2]), a[1], a[3]) }
}

/// `radix4` from `a0 + a2` (`s02`), `a0 - a2` (`d02`), `a1` and `a3`.
#[inline(always)]
unsafe fn radix4_sd<R: Row, const INV: bool, const FUSED: bool>(
    s02: R,
    d02: R,
    a1: R,
    a3: R,
) -> [R; 4] {
    // SAFETY: row arithmetic under the caller's features.
    unsafe {
        let s13 = a1.add(a3);
        if !(FUSED && R::FUSED_ROT) {
            let (y1, y3) = add_rot::<R, INV>(d02, a1.sub(a3));
            return [s02.add(s13), y1, s02.sub(s13), y3];
        }
        let (p, q) = (a1.swap(), a3.swap());
        // swap(a1 - a3) and its negation: d02 ∓ i·(a1 - a3) as addsub.
        let (sw, nsw) = (p.sub(q), q.sub(p));
        let (y1, y3) = if INV {
            (d02.addsub(sw), d02.addsub(nsw))
        } else {
            (d02.addsub(nsw), d02.addsub(sw))
        };
        [s02.add(s13), y1, s02.sub(s13), y3]
    }
}

/// `(a + ∓i·x, a - ∓i·x)` as two FMAs on `swap(x)`: ∓i·x = swap(x)·(±1, ∓1).
/// Rotating with an xor and then adding would put three operations on the
/// add pipes, which bind these leaves while the FMA pipes idle; the FMAs
/// make N >= 16 up to 12% faster.
#[inline(always)]
unsafe fn add_rot<R: Row, const INV: bool>(a: R, x: R) -> (R, R) {
    // SAFETY: row arithmetic under the caller's features.
    unsafe {
        let m = if INV {
            R::signs(-1., 1.)
        } else {
            R::signs(1., -1.)
        };
        let t = x.swap();
        (t.mul_add(m, a), t.neg_mul_add(m, a))
    }
}

/// `(a + ω8·v, a - ω8·v)` (or ω8³ with `CUBE`) as four FMAs.
#[inline(always)]
unsafe fn add_w8<R: Row, const INV: bool, const CUBE: bool>(a: R, v: R) -> (R, R) {
    // SAFETY: row arithmetic under the caller's features.
    unsafe {
        let h = core::f64::consts::FRAC_1_SQRT_2;
        let (hh, rh) = (R::signs(h, h), rot_half::<R, INV>());
        let t = v.swap();
        // ω8·v = swap(v)·rh + v·hh; ω8³·v = swap(v)·rh - v·hh.
        if CUBE {
            (
                t.mul_add(rh, v.neg_mul_add(hh, a)),
                t.neg_mul_add(rh, v.mul_add(hh, a)),
            )
        } else {
            (
                t.mul_add(rh, v.mul_add(hh, a)),
                t.neg_mul_add(rh, v.neg_mul_add(hh, a)),
            )
        }
    }
}

/// `(h, ∓h)` with h = 1/√2: `swap(v)` times this is `∓i·v/√2`.
#[inline(always)]
unsafe fn rot_half<R: Row, const INV: bool>() -> R {
    // SAFETY: constant construction under the caller's features.
    unsafe {
        let h = core::f64::consts::FRAC_1_SQRT_2;
        if INV {
            R::signs(-h, h)
        } else {
            R::signs(h, -h)
        }
    }
}

/// Multiplies by ω8 = (1 ∓ i)/√2 as one multiply and one FMA.
#[inline(always)]
unsafe fn mul_w8<R: Row, const INV: bool>(v: R) -> R {
    // SAFETY: row arithmetic under the caller's features.
    unsafe {
        let h = core::f64::consts::FRAC_1_SQRT_2;
        v.swap()
            .mul_add(rot_half::<R, INV>(), v.mul(R::signs(h, h)))
    }
}

/// Multiplies by ω8³ = (-1 ∓ i)/√2 as one multiply and one FMA.
#[inline(always)]
unsafe fn mul_w8_3<R: Row, const INV: bool>(v: R) -> R {
    // SAFETY: row arithmetic under the caller's features.
    unsafe {
        let h = core::f64::consts::FRAC_1_SQRT_2;
        v.swap()
            .mul_sub(rot_half::<R, INV>(), v.mul(R::signs(h, h)))
    }
}

#[inline(always)]
pub(crate) unsafe fn radix8<R: Row, const INV: bool, const FUSED: bool>(a: [R; 8]) -> [R; 8] {
    // SAFETY: row arithmetic under the caller's features.
    unsafe {
        let e = radix4::<R, INV, FUSED>([a[0], a[2], a[4], a[6]]);
        let o = radix4::<R, INV, FUSED>([a[1], a[3], a[5], a[7]]);
        // The ω8 products stay unfolded here (`add_w8` measured neutral).
        let o1 = mul_w8::<R, INV>(o[1]);
        let (p2, m2) = add_rot::<R, INV>(e[2], o[2]);
        let o3 = mul_w8_3::<R, INV>(o[3]);
        [
            e[0].add(o[0]),
            e[1].add(o1),
            p2,
            e[3].add(o3),
            e[0].sub(o[0]),
            e[1].sub(o1),
            m2,
            e[3].sub(o3),
        ]
    }
}

/// Rows of the first stage: N = rows x cols with n = cols·n1 + n2.
const fn rows(n: usize) -> usize {
    match n {
        8 => 2,
        16 => 4,
        18 => 9,
        24 => 6,
        36 => 9,
        48 => 12,
        256 => 16,
        _ => 8,
    }
}

/// Top-level leaf stages. Register width is not a radix: the 64/128/256
/// leaves have multiple columns per register row.
pub(crate) const fn decomposition(n: usize) -> (usize, usize) {
    match n {
        2 | 4 | 9 => (n, 1),
        6 => (3, 2),
        _ => (rows(n), n / rows(n)),
    }
}

/// Offset of the broadcast ω16, ω16³, ω16⁹ rows used by radix-16 stages:
/// 4·lanes scalars for each of the (rows - 1)·n/rows/lanes first-stage rows.
const fn broadcast(n: usize) -> usize {
    4 * (n / rows(n)) * (rows(n) - 1)
}

/// Table length in scalars for size `n` with `lanes` complex values per row.
pub(crate) const fn table_len(n: usize, lanes: usize) -> usize {
    if n <= 6 || n == 9 || n == 18 {
        return 0;
    }
    broadcast(n) + if n >= 128 { 12 * lanes } else { 0 }
}

/// Offset of the first-stage twiddle row for column group `g` and `k1 >= 1`.
const fn tw_row(n: usize, lanes: usize, g: usize, k1: usize) -> usize {
    4 * lanes * (g * (rows(n) - 1) + k1 - 1)
}

/// Fills the twiddle table in `cmul` layout: for each group of `lanes`
/// columns, rows k1 = 1..rows hold ω_n^(k1·n2). N=128 and N=256 append
/// broadcast ω16, ω16³ and ω16⁹ for their radix-16 stages. `omega(k, n)`
/// returns (cos, sin) of the direction's angle.
pub(crate) fn table<S: Copy + core::ops::Neg<Output = S>>(
    n: usize,
    lanes: usize,
    omega: impl Fn(usize, usize) -> (S, S),
) -> Vec<S> {
    let mut t = Vec::with_capacity(table_len(n, lanes));
    let mut push = |w: &[(S, S)]| {
        t.extend(w.iter().flat_map(|&(r, _)| [r, r]));
        t.extend(w.iter().flat_map(|&(_, i)| [-i, i]));
    };
    if n > 6 && n != 9 && n != 18 {
        let lanes = lanes.min(n / rows(n));
        for g in 0..n / rows(n) / lanes {
            for k1 in 1..rows(n) {
                let w: Vec<_> = (0..lanes).map(|j| omega(k1 * (lanes * g + j), n)).collect();
                push(&w);
            }
        }
    }
    if n >= 128 {
        for k in [1, 3, 9] {
            push(&vec![omega(k, 16); lanes]);
        }
    }
    assert_eq!(t.len(), table_len(n, lanes));
    t
}

/// Leaves with rows of four. N=16 (4x4) and N=32 (8x4): columns across
/// rows, twiddle, 4x4 transposes, then radix-4 across rows, fused when
/// `LATENCY` (in place it is up to 3% faster than the FMA rotation; out of
/// place its extra operations cost more). Other sizes use dedicated
/// sequences, unfused: even in place, N >= 64 run 14-29% slower fused. Every
/// leaf loads each input before it can be overwritten.
#[inline(always)]
unsafe fn quad<R: Quad, const N: usize, const INV: bool, const LATENCY: bool>(
    input: *const R::S,
    output: *mut R::S,
    tw: *const R::S,
) {
    assert!(matches!(
        N,
        2 | 4 | 8 | 16 | 24 | 32 | 36 | 48 | 64 | 128 | 256
    ));
    // SAFETY: 2N readable/writable scalars, table_len(N, 4) table scalars and
    // AVX2+FMA from the caller (SSE2 suffices for N <= 4). Input and output
    // may be identical.
    unsafe {
        if N == 2 {
            return R::leaf2(input, output);
        }
        if N == 4 {
            return R::leaf4::<INV>(input, output);
        }
        if N == 8 {
            return leaf8::<R, INV>(input, output, tw);
        }
        if N == 24 {
            return odd::quad::<R, 6, INV>(input, output, tw);
        }
        if N == 36 {
            return odd::quad::<R, 9, INV>(input, output, tw);
        }
        if N == 48 {
            return odd::quad::<R, 12, INV>(input, output, tw);
        }
        if N == 64 {
            return leaf64::<R, INV>(input, output, tw);
        }
        if N == 128 {
            return leaf128::<R, INV>(input, output, tw);
        }
        if N == 256 {
            return leaf256::<R, INV>(input, output, tw);
        }
        if N == 16 {
            let mut a = [R::load(input); 4];
            for (k, row) in a.iter_mut().enumerate().skip(1) {
                *row = R::load(input.add(8 * k));
            }
            let mut a = radix4::<R, INV, LATENCY>(a);
            for (k, row) in a.iter_mut().enumerate().skip(1) {
                *row = cmul(*row, tw.add(16 * (k - 1)));
            }
            let a = radix4::<R, INV, LATENCY>(R::transpose(a));
            for (k, row) in a.iter().enumerate() {
                row.store(output.add(8 * k));
            }
        } else {
            let mut a = [R::load(input); 8];
            for (k, row) in a.iter_mut().enumerate().skip(1) {
                *row = R::load(input.add(8 * k));
            }
            let mut a = radix8::<R, INV, LATENCY>(a);
            for (k, row) in a.iter_mut().enumerate().skip(1) {
                *row = cmul(*row, tw.add(16 * (k - 1)));
            }
            let x = radix4::<R, INV, LATENCY>(R::transpose([a[0], a[1], a[2], a[3]]));
            let y = radix4::<R, INV, LATENCY>(R::transpose([a[4], a[5], a[6], a[7]]));
            for k in 0..4 {
                x[k].store(output.add(16 * k));
                y[k].store(output.add(16 * k + 8));
            }
        }
    }
}

/// N=8: radix-2 across two rows, one twiddled row, then a radix-4 over the
/// four lane pairs. Each result pair is two adjacent outputs.
#[inline(always)]
unsafe fn leaf8<R: Quad, const INV: bool>(input: *const R::S, output: *mut R::S, tw: *const R::S) {
    // SAFETY: forwarded from `leaf`.
    unsafe {
        let a = R::load(input);
        let b = R::load(input.add(8));
        R::pairs4::<INV>(a.add(b), cmul(a.sub(b), tw), output);
    }
}

/// First stage of an 8-row decomposition for column group `g`: radix-8 down
/// the rows, then twiddles. Rows are `stride` scalars apart.
#[inline(always)]
unsafe fn columns8<R: Row, const N: usize, const INV: bool, const FUSED: bool>(
    input: *const R::S,
    stride: usize,
    g: usize,
    tw: *const R::S,
) -> [R; 8] {
    // SAFETY: forwarded from `leaf`.
    unsafe {
        let mut a = [R::load(input.add(R::W * g)); 8];
        for (k, row) in a.iter_mut().enumerate().skip(1) {
            *row = R::load(input.add(stride * k + R::W * g));
        }
        let mut a = radix8::<R, INV, FUSED>(a);
        for (k1, row) in a.iter_mut().enumerate().skip(1) {
            *row = cmul(*row, tw.add(tw_row(N, R::W / 2, g, k1)));
        }
        a
    }
}

/// N=64 (8x8), register-resident: two column groups, four 4x4 transposes,
/// then radix-8 across the transposed rows.
#[inline(always)]
unsafe fn leaf64<R: Quad, const INV: bool>(input: *const R::S, output: *mut R::S, tw: *const R::S) {
    // SAFETY: forwarded from `leaf`; every load precedes every store.
    unsafe {
        let m0 = columns8::<R, 64, INV, false>(input, 16, 0, tw);
        let m1 = columns8::<R, 64, INV, false>(input, 16, 1, tw);
        let a = R::transpose([m0[0], m0[1], m0[2], m0[3]]);
        let b = R::transpose([m0[4], m0[5], m0[6], m0[7]]);
        let c = R::transpose([m1[0], m1[1], m1[2], m1[3]]);
        let d = R::transpose([m1[4], m1[5], m1[6], m1[7]]);
        let lo = radix8::<R, INV, false>([a[0], a[1], a[2], a[3], c[0], c[1], c[2], c[3]]);
        let hi = radix8::<R, INV, false>([b[0], b[1], b[2], b[3], d[0], d[1], d[2], d[3]]);
        for k in 0..8 {
            lo[k].store(output.add(16 * k));
            hi[k].store(output.add(16 * k + 8));
        }
    }
}

/// N=128 (8 rows x 16 columns) in two passes through a stack intermediate:
/// radix-8 columns with twiddles and transposes, then radix-16 across its 16
/// rows. The intermediate sits where no address matches the input or the
/// output modulo 4 KiB; otherwise loads falsely wait on earlier stores
/// (4K aliasing), costing up to 45%.
#[inline(always)]
unsafe fn leaf128<R: Quad, const INV: bool>(
    input: *const R::S,
    output: *mut R::S,
    tw: *const R::S,
) {
    // SAFETY: forwarded from `leaf`. The first pass reads only the input and
    // writes only the stack intermediate, so input and output may coincide.
    unsafe {
        let mut stack = core::mem::MaybeUninit::<Aligned<[[R::S; 256]; 5]>>::uninit();
        let bytes = 256 * size_of::<R::S>();
        let mid = window(
            stack.as_mut_ptr().cast(),
            input as usize,
            output as usize,
            bytes,
        );
        let mid = mid.cast::<R::S>();
        for g in 0..4 {
            let m = columns8::<R, 128, INV, false>(input, 32, g, tw);
            let lo = R::transpose([m[0], m[1], m[2], m[3]]);
            let hi = R::transpose([m[4], m[5], m[6], m[7]]);
            for j in 0..4 {
                lo[j].store(mid.add(16 * (4 * g + j)));
                hi[j].store(mid.add(16 * (4 * g + j) + 8));
            }
        }
        let w = tw.add(broadcast(128));
        for h in 0..2 {
            let mut x = [R::load(mid.add(8 * h)); 16];
            for (n2, row) in x.iter_mut().enumerate().skip(1) {
                *row = R::load(mid.add(16 * n2 + 8 * h));
            }
            let z = radix16::<R, INV, false>(x, w);
            for (k2, row) in z.iter().enumerate() {
                row.store(output.add(16 * k2 + 8 * h));
            }
        }
    }
}

/// N=256 (16 rows x 16 columns) in two passes: radix-16 columns with
/// twiddles and transposes into an intermediate, then radix-16 across its
/// rows. Out of place, the output is the intermediate and the second pass
/// runs in place on it. In place, the intermediate is a stack window placed
/// against 4K aliasing (see `leaf128`). Staging misaligned out-of-place calls
/// through that window was measured in ticket 12 and did not help.
#[inline(always)]
unsafe fn leaf256<R: Quad, const INV: bool>(
    input: *const R::S,
    output: *mut R::S,
    tw: *const R::S,
) {
    // SAFETY: forwarded from `leaf`. The first pass reads only the input and
    // writes only the intermediate, which is disjoint from the input.
    unsafe {
        let w = tw.add(broadcast(256));
        let mut stack = core::mem::MaybeUninit::<Aligned<[[R::S; 512]; 3]>>::uninit();
        let mid = if core::ptr::eq(input, output) {
            let bytes = 512 * size_of::<R::S>();
            window(
                stack.as_mut_ptr().cast(),
                input as usize,
                output as usize,
                bytes,
            )
            .cast()
        } else {
            output
        };
        for g in 0..4 {
            let mut x = [R::load(input.add(8 * g)); 16];
            for (n1, row) in x.iter_mut().enumerate().skip(1) {
                *row = R::load(input.add(32 * n1 + 8 * g));
            }
            let mut a = radix16::<R, INV, false>(x, w);
            for (k1, row) in a.iter_mut().enumerate().skip(1) {
                *row = cmul(*row, tw.add(tw_row(256, 4, g, k1)));
            }
            for h in 0..4 {
                let t = R::transpose([a[4 * h], a[4 * h + 1], a[4 * h + 2], a[4 * h + 3]]);
                for (j, row) in t.iter().enumerate() {
                    row.store(mid.add(32 * (4 * g + j) + 8 * h));
                }
            }
        }
        for h in 0..4 {
            let mut x = [R::load(mid.add(8 * h)); 16];
            for (n2, row) in x.iter_mut().enumerate().skip(1) {
                *row = R::load(mid.add(32 * n2 + 8 * h));
            }
            let z = radix16::<R, INV, false>(x, w);
            for (k2, row) in z.iter().enumerate() {
                row.store(output.add(32 * k2 + 8 * h));
            }
        }
    }
}

#[repr(C, align(64))]
struct Aligned<T>(T);

/// A 64-byte aligned window of `bytes` inside `stack` (at least 4 KiB plus
/// `bytes` long) that overlaps neither `a..a+bytes` nor `b..b+bytes` modulo
/// 4 KiB. A start qualifies when it is at least `bytes` after each buffer's
/// start and `bytes` before it, modulo 4 KiB; for `bytes` <= 1 KiB some start
/// always qualifies, and rounding up to 64 bytes keeps it unless the two
/// buffers sit almost exactly 2 KiB apart.
#[inline(always)]
fn window(stack: *mut u8, a: usize, b: usize, bytes: usize) -> *mut u8 {
    let delta = b.wrapping_sub(a) % 4096;
    let target = if delta <= 2048 {
        a.wrapping_add(delta + bytes)
    } else {
        a.wrapping_add(bytes)
    };
    let offset = (target.wrapping_sub(stack as usize) % 4096 + 63) & !63;
    stack.wrapping_add(offset)
}

/// Radix-16 across rows as 4x4: `w` holds broadcast ω16, ω16³ and ω16⁹.
#[inline(always)]
unsafe fn radix16<R: Row, const INV: bool, const FUSED: bool>(
    x: [R; 16],
    w: *const R::S,
) -> [R; 16] {
    // SAFETY: row arithmetic under the caller's features; 6·W table scalars.
    unsafe {
        let y0 = radix4::<R, INV, FUSED>([x[0], x[4], x[8], x[12]]);
        let y1 = radix4::<R, INV, FUSED>([x[1], x[5], x[9], x[13]]);
        let y2 = radix4::<R, INV, FUSED>([x[2], x[6], x[10], x[14]]);
        let y3 = radix4::<R, INV, FUSED>([x[3], x[7], x[11], x[15]]);
        // ω16^(b·c): 1, 2 and 3 for b = 1; 2, 4 and 6 for b = 2; 3, 6, 9.
        // b = 2's ω8, -i and ω8³ fold into the FMAs that form a0 ± a2.
        let t1 = [
            y1[0],
            cmul(y1[1], w),
            mul_w8::<R, INV>(y1[2]),
            cmul(y1[3], w.add(2 * R::W)),
        ];
        let t3 = [
            y3[0],
            cmul(y3[1], w.add(2 * R::W)),
            mul_w8_3::<R, INV>(y3[2]),
            cmul(y3[3], w.add(4 * R::W)),
        ];
        let sd = [
            (y0[0].add(y2[0]), y0[0].sub(y2[0])),
            add_w8::<R, INV, false>(y0[1], y2[1]),
            add_rot::<R, INV>(y0[2], y2[2]),
            add_w8::<R, INV, true>(y0[3], y2[3]),
        ];
        let mut z = [x[0]; 16];
        for c in 0..4 {
            let r = radix4_sd::<R, INV, FUSED>(sd[c].0, sd[c].1, t1[c], t3[c]);
            for d in 0..4 {
                z[c + 4 * d] = r[d];
            }
        }
        z
    }
}

/// Transposes an 8x8 block of complex f32, one complex per f64 lane: pairs
/// of rows within 128-bit lanes, then quads across lane pairs, then halves.
#[cfg(feature = "avx512")]
#[inline(always)]
unsafe fn transpose8(r: [R32z; 8]) -> [R32z; 8] {
    // SAFETY: AVX-512F enabled by the caller.
    unsafe {
        let (r0, r1) = (_mm512_castps_pd(r[0].0), _mm512_castps_pd(r[1].0));
        let (r2, r3) = (_mm512_castps_pd(r[2].0), _mm512_castps_pd(r[3].0));
        let (r4, r5) = (_mm512_castps_pd(r[4].0), _mm512_castps_pd(r[5].0));
        let (r6, r7) = (_mm512_castps_pd(r[6].0), _mm512_castps_pd(r[7].0));
        // a0 = [r0[0] r1[0] | r0[2] r1[2] | r0[4] r1[4] | r0[6] r1[6]].
        let (a0, a1) = (_mm512_unpacklo_pd(r0, r1), _mm512_unpackhi_pd(r0, r1));
        let (a2, a3) = (_mm512_unpacklo_pd(r2, r3), _mm512_unpackhi_pd(r2, r3));
        let (a4, a5) = (_mm512_unpacklo_pd(r4, r5), _mm512_unpackhi_pd(r4, r5));
        let (a6, a7) = (_mm512_unpacklo_pd(r6, r7), _mm512_unpackhi_pd(r6, r7));
        // b0 = [r0[0] r1[0] r2[0] r3[0] | r0[4] r1[4] r2[4] r3[4]].
        let lo = _mm512_setr_epi64(0, 1, 8, 9, 4, 5, 12, 13);
        let hi = _mm512_setr_epi64(2, 3, 10, 11, 6, 7, 14, 15);
        let (b0, b2) = (
            _mm512_permutex2var_pd(a0, lo, a2),
            _mm512_permutex2var_pd(a0, hi, a2),
        );
        let (b1, b3) = (
            _mm512_permutex2var_pd(a1, lo, a3),
            _mm512_permutex2var_pd(a1, hi, a3),
        );
        let (b4, b6) = (
            _mm512_permutex2var_pd(a4, lo, a6),
            _mm512_permutex2var_pd(a4, hi, a6),
        );
        let (b5, b7) = (
            _mm512_permutex2var_pd(a5, lo, a7),
            _mm512_permutex2var_pd(a5, hi, a7),
        );
        let (c0, c4) = (
            _mm512_shuffle_f64x2::<0b01_00_01_00>(b0, b4),
            _mm512_shuffle_f64x2::<0b11_10_11_10>(b0, b4),
        );
        let (c1, c5) = (
            _mm512_shuffle_f64x2::<0b01_00_01_00>(b1, b5),
            _mm512_shuffle_f64x2::<0b11_10_11_10>(b1, b5),
        );
        let (c2, c6) = (
            _mm512_shuffle_f64x2::<0b01_00_01_00>(b2, b6),
            _mm512_shuffle_f64x2::<0b11_10_11_10>(b2, b6),
        );
        let (c3, c7) = (
            _mm512_shuffle_f64x2::<0b01_00_01_00>(b3, b7),
            _mm512_shuffle_f64x2::<0b11_10_11_10>(b3, b7),
        );
        [
            R32z(_mm512_castpd_ps(c0)),
            R32z(_mm512_castpd_ps(c1)),
            R32z(_mm512_castpd_ps(c2)),
            R32z(_mm512_castpd_ps(c3)),
            R32z(_mm512_castpd_ps(c4)),
            R32z(_mm512_castpd_ps(c5)),
            R32z(_mm512_castpd_ps(c6)),
            R32z(_mm512_castpd_ps(c7)),
        ]
    }
}

/// N=128 with rows of eight complex f32, register-resident as 8x16:
/// radix-8 columns with twiddles for each half, two 8x8 transposes, then
/// radix-16 across the sixteen transposed rows. (Eight-complex rows lose at
/// N=64, where the transposes lengthen the critical path, and gain nothing
/// at N=256.)
#[cfg(feature = "avx512")]
#[inline(always)]
unsafe fn wide<const N: usize, const INV: bool>(
    input: *const f32,
    output: *mut f32,
    tw: *const f32,
) {
    const {
        assert!(N == 128);
    }
    // SAFETY: 2N readable/writable scalars, table_len(N, 8) table scalars and
    // AVX-512 from the caller; every load precedes every store.
    unsafe {
        let a = transpose8(columns8::<R32z, N, INV, false>(input, 32, 0, tw));
        let b = transpose8(columns8::<R32z, N, INV, false>(input, 32, 1, tw));
        let x = [
            a[0], a[1], a[2], a[3], a[4], a[5], a[6], a[7], b[0], b[1], b[2], b[3], b[4], b[5],
            b[6], b[7],
        ];
        let z = radix16::<R32z, INV, false>(x, tw.add(broadcast(N)));
        for (k2, row) in z.iter().enumerate() {
            row.store(output.add(16 * k2));
        }
    }
}

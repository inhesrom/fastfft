//! Smooth-size leaves keep real/imaginary pairs together through arithmetic.
use super::{Quad, R32, R64, Row, cmul, hi128, lo128, radix4, radix16};
use core::arch::x86_64::*;

#[inline(always)]
pub(super) unsafe fn eighteen<const INV: bool>(input: *const f64, output: *mut f64) {
    const M: usize = 9;
    // SAFETY: AVX2+FMA and 4*M readable/writable scalars.
    // The coprime 2*M leaf uses n=(2*b+M*a) mod 2*M. Thus the two
    // M-point transforms combine without cross twiddles; frequency k has
    // coordinates (k mod 2, k mod M). All input loads precede stores.
    unsafe {
        let zero = _mm256_setzero_pd();
        let mut a = [R64(zero, zero); M];
        for (k, row) in a.iter_mut().enumerate() {
            let lo = _mm_loadu_pd(input.add(4 * k));
            let hi = _mm_loadu_pd(input.add(2 * ((2 * k + M) % (2 * M))));
            *row = R64(
                _mm256_insertf128_pd::<1>(_mm256_castpd128_pd256(lo), hi),
                zero,
            );
        }
        let a = first::<R64, M, INV>(a);
        for (k, row) in a.into_iter().enumerate() {
            let lo = _mm256_castpd256_pd128(row.0);
            let hi = _mm256_extractf128_pd::<1>(row.0);
            let even = if k % 2 == 0 { k } else { k + M };
            let odd = if k % 2 == 0 { k + M } else { k };
            _mm_storeu_pd(output.add(2 * even), _mm_add_pd(lo, hi));
            _mm_storeu_pd(output.add(2 * odd), _mm_sub_pd(lo, hi));
        }
    }
}

#[inline(always)]
pub(super) unsafe fn six<const INV: bool>(input: *const f64, output: *mut f64) {
    // SAFETY: SSE2 is baseline; twelve readable/writable scalars. Load the
    // entire coprime 2x3 leaf before storing, including for aliased buffers.
    unsafe {
        let mut a = [_mm_setzero_pd(); 3];
        let mut b = a;
        for j in 0..3 {
            a[j] = _mm_loadu_pd(input.add(4 * j));
            b[j] = _mm_loadu_pd(input.add(2 * ((2 * j + 3) % 6)));
        }
        for x in [&mut a, &mut b] {
            let s = _mm_add_pd(x[1], x[2]);
            let d = _mm_sub_pd(x[1], x[2]);
            let t = _mm_sub_pd(x[0], _mm_mul_pd(s, _mm_set1_pd(0.5)));
            let h = if INV {
                -0.8660254037844386
            } else {
                0.8660254037844386
            };
            let u = _mm_mul_pd(_mm_shuffle_pd::<1>(d, d), _mm_setr_pd(h, -h));
            *x = [_mm_add_pd(x[0], s), _mm_add_pd(t, u), _mm_sub_pd(t, u)];
        }
        for j in 0..3 {
            let even = if j % 2 == 0 { j } else { j + 3 };
            let odd = if j % 2 == 0 { j + 3 } else { j };
            _mm_storeu_pd(output.add(2 * even), _mm_add_pd(a[j], b[j]));
            _mm_storeu_pd(output.add(2 * odd), _mm_sub_pd(a[j], b[j]));
        }
    }
}

#[inline(always)]
unsafe fn butterfly3<R: Row, const INV: bool>(a: R, b: R, c: R) -> [R; 3] {
    // SAFETY: row arithmetic under the caller's features.
    unsafe {
        let s = b.add(c);
        let d = b.sub(c);
        let t = s.neg_mul_add(R::signs(0.5, 0.5), a);
        let h = if INV {
            -0.8660254037844386
        } else {
            0.8660254037844386
        };
        let u = d.swap().mul(R::signs(h, -h));
        [a.add(s), t.add(u), t.sub(u)]
    }
}

#[inline(always)]
unsafe fn multiply<R: Row, const INV: bool>(x: R, re: f64, im: f64) -> R {
    // SAFETY: row arithmetic under the caller's features.
    unsafe {
        let im = if INV { -im } else { im };
        x.swap().mul_add(R::signs(-im, im), x.mul(R::signs(re, re)))
    }
}

#[inline(always)]
unsafe fn first<R: Row, const M: usize, const INV: bool>(a: [R; M]) -> [R; M] {
    // SAFETY: M is 5, 6, 9 or 12 and the entry supplies the row's features.
    unsafe {
        let mut y = a;
        if M == 5 {
            let s1 = a[1].add(a[4]);
            let s2 = a[2].add(a[3]);
            let d1 = a[1].sub(a[4]);
            let d2 = a[2].sub(a[3]);
            let c1 = R::signs(0.30901699437494745, 0.30901699437494745);
            let c2 = R::signs(-0.8090169943749475, -0.8090169943749475);
            let h1 = R::signs(0.9510565162951535, 0.9510565162951535);
            let h2 = R::signs(0.5877852522924731, 0.5877852522924731);
            let t1 = s2.mul_add(c2, s1.mul_add(c1, a[0]));
            let t2 = s2.mul_add(c1, s1.mul_add(c2, a[0]));
            let u1 = d2.mul_add(h2, d1.mul(h1)).rot::<INV>();
            let u2 = d2.neg_mul_add(h1, d1.mul(h2)).rot::<INV>();
            y[..5].copy_from_slice(&[
                a[0].add(s1.add(s2)),
                t1.add(u1),
                t2.add(u2),
                t2.sub(u2),
                t1.sub(u1),
            ]);
        } else if M == 6 {
            // Coprime 2x3 coordinates remove the cross twiddles.
            let even = butterfly3::<R, INV>(a[0], a[2], a[4]);
            let odd = butterfly3::<R, INV>(a[3], a[5], a[1]);
            for k in 0..3 {
                y[if k % 2 == 0 { k } else { k + 3 }] = even[k].add(odd[k]);
                y[if k % 2 == 0 { k + 3 } else { k }] = even[k].sub(odd[k]);
            }
        } else if M == 9 {
            let mut rows = [[a[0]; 3]; 3];
            for j in 0..3 {
                rows[j] = butterfly3::<R, INV>(a[j], a[j + 3], a[j + 6]);
            }
            rows[1][1] = multiply::<R, INV>(rows[1][1], 0.766044443118978, -0.6427876096865393);
            rows[1][2] = multiply::<R, INV>(rows[1][2], 0.17364817766693036, -0.984807753012208);
            rows[2][1] = multiply::<R, INV>(rows[2][1], 0.17364817766693036, -0.984807753012208);
            rows[2][2] = multiply::<R, INV>(rows[2][2], -0.9396926207859084, -0.3420201433256687);
            for k in 0..3 {
                let v = butterfly3::<R, INV>(rows[0][k], rows[1][k], rows[2][k]);
                for j in 0..3 {
                    y[k + 3 * j] = v[j];
                }
            }
        } else {
            let mut rows = [[a[0]; 3]; 4];
            for j in 0..4 {
                rows[j] = butterfly3::<R, INV>(a[j], a[j + 4], a[j + 8]);
            }
            rows[1][1] = multiply::<R, INV>(rows[1][1], 0.8660254037844386, -0.5);
            rows[1][2] = multiply::<R, INV>(rows[1][2], 0.5, -0.8660254037844386);
            rows[2][1] = multiply::<R, INV>(rows[2][1], 0.5, -0.8660254037844386);
            rows[2][2] = multiply::<R, INV>(rows[2][2], -0.5, -0.8660254037844386);
            rows[3][1] = rows[3][1].rot::<INV>();
            rows[3][2] = rows[3][2].mul(R::signs(-1., -1.));
            for k in 0..3 {
                let v = radix4::<R, INV, false>([rows[0][k], rows[1][k], rows[2][k], rows[3][k]]);
                for j in 0..4 {
                    y[k + 3 * j] = v[j];
                }
            }
        }
        y
    }
}

#[inline(always)]
pub(crate) unsafe fn rect_f32<const A: usize, const B: usize, const INV: bool>(
    input: *const f32,
    output: *mut f32,
    tw: *const f32,
) {
    // SAFETY: AVX2+FMA; (A,B) is (16,5), (16,6) or (12,9); complete A*B buffers.
    // A is a multiple of four, so only input columns need a bounded tail.
    // All A*B complex matrix cells are written before reading; caller input
    // is consumed before output stores. Cross tables hold A/4*(B-1)*16
    // scalars, followed by 48 radix-16 scalars when A=16.
    unsafe {
        let zero = R32::signs(0., 0.);
        // Fix the intermediate's alignment independently of the caller's
        // stack position. This does not constrain unrelated compiler spills.
        #[repr(align(64))]
        struct AlignedMatrix([core::mem::MaybeUninit<f32>; 512]);
        let mut matrix = AlignedMatrix([core::mem::MaybeUninit::<f32>::uninit(); 512]);
        let mid = matrix.0.as_mut_ptr().cast::<f32>();
        for col in (0..B).step_by(4) {
            let mut a = [zero; A];
            for (j, value) in a.iter_mut().enumerate() {
                let p = input.add(2 * (B * j + col));
                *value = if col + 4 <= B {
                    R32::load(p)
                } else {
                    let mut tail = [0.; 8];
                    core::ptr::copy_nonoverlapping(p, tail.as_mut_ptr(), 2 * (B % 4));
                    R32::load(tail.as_ptr())
                };
            }
            if A == 16 {
                let mut x = [zero; 16];
                x.copy_from_slice(&a);
                a.copy_from_slice(&radix16::<R32, INV, false>(x, tw.add(A / 4 * (B - 1) * 16)));
            } else {
                a = first::<R32, A, INV>(a);
            }
            for row in (0..A).step_by(4) {
                let mut tile = [zero; 4];
                tile.copy_from_slice(&a[row..row + 4]);
                let tile = R32::transpose(tile);
                for (j, value) in tile.into_iter().enumerate().take(4.min(B - col)) {
                    value.store(mid.add(2 * (A * (col + j) + row)));
                }
            }
        }
        for col in (0..A).step_by(4) {
            let mut b = [zero; B];
            for (j, value) in b.iter_mut().enumerate() {
                *value = R32::load(mid.add(2 * (A * j + col)));
                if j > 0 {
                    *value = cmul(*value, tw.add(16 * (col / 4 * (B - 1) + j - 1)));
                }
            }
            let b = first::<R32, B, INV>(b);
            for (j, value) in b.into_iter().enumerate() {
                value.store(output.add(2 * (A * j + col)));
            }
        }
    }
}

#[inline(always)]
pub(crate) unsafe fn square6<const INV: bool>(input: *const f64, output: *mut f64, tw: *const f64) {
    // SAFETY: AVX2+FMA, 72 readable/writable scalars, 120 table scalars.
    // Three two-complex panels cover the 6x6 matrix exactly. All panels
    // consume caller input before the first output store; no tails/padding.
    unsafe {
        let zero = _mm256_setzero_pd();
        let mut mid = [[zero; 6]; 3];
        for (g, panel) in mid.iter_mut().enumerate() {
            let mut a = [R64(zero, zero); 6];
            for (j, row) in a.iter_mut().enumerate() {
                *row = R64(_mm256_loadu_pd(input.add(12 * j + 4 * g)), zero);
            }
            let a = first::<R64, 6, INV>(a);
            panel[0] = a[0].0;
            for j in 1..6 {
                let w = tw.add(8 * (g * 5 + j - 1));
                let v = a[j].0;
                panel[j] = _mm256_fmadd_pd(
                    _mm256_permute_pd::<5>(v),
                    _mm256_loadu_pd(w.add(4)),
                    _mm256_mul_pd(v, _mm256_loadu_pd(w)),
                );
            }
        }
        for g in 0..3 {
            let mut a = [R64(zero, zero); 6];
            for j in 0..3 {
                a[2 * j] = R64(lo128(mid[j][2 * g], mid[j][2 * g + 1]), zero);
                a[2 * j + 1] = R64(hi128(mid[j][2 * g], mid[j][2 * g + 1]), zero);
            }
            let a = first::<R64, 6, INV>(a);
            for (j, row) in a.into_iter().enumerate() {
                _mm256_storeu_pd(output.add(12 * j + 4 * g), row.0);
            }
        }
    }
}

#[inline(always)]
pub(super) unsafe fn quad<R: Quad, const M: usize, const INV: bool>(
    input: *const R::S,
    output: *mut R::S,
    tw: *const R::S,
) {
    // SAFETY: M=6/9/12, four complex values per row, complete 4*M buffers,
    // matching features and (M-1) cross-twiddle rows. Consume all input before
    // storing, and bound the final partial row to caller memory.
    unsafe {
        let mut a = [R::load(input); M];
        for (k, row) in a.iter_mut().enumerate().skip(1) {
            *row = R::load(input.add(R::W * k));
        }
        let mut a = first::<R, M, INV>(a);
        for (k, row) in a.iter_mut().enumerate().skip(1) {
            *row = cmul(*row, tw.add(2 * R::W * (k - 1)));
        }
        for base in (0..M).step_by(4) {
            let count = 4.min(M - base);
            let mut rows = [R::signs(0., 0.); 4];
            if count == 4 {
                rows.copy_from_slice(&a[base..base + 4]);
            } else {
                rows[..M % 4].copy_from_slice(&a[base..base + M % 4]);
            }
            let rows = radix4::<R, INV, false>(R::transpose(rows));
            for (j, value) in rows.into_iter().enumerate() {
                let dst = output.add(2 * (j * M + base));
                if count == 4 {
                    value.store(dst);
                } else {
                    let mut tmp = [*input; 8];
                    value.store(tmp.as_mut_ptr());
                    core::ptr::copy_nonoverlapping(tmp.as_ptr(), dst, 2 * (M % 4));
                }
            }
        }
    }
}

#[inline(always)]
unsafe fn three<const INV: bool>(a: __m128d, b: __m128d, c: __m128d) -> [__m128d; 3] {
    // SAFETY: SSE2 and FMA supplied by the entry. Each vector is (re, im).
    unsafe {
        let s = _mm_add_pd(b, c);
        let d = _mm_sub_pd(b, c);
        let t = _mm_fnmadd_pd(_mm_set1_pd(0.5), s, a);
        let h = if INV {
            -0.8660254037844386
        } else {
            0.8660254037844386
        };
        let u = _mm_mul_pd(_mm_shuffle_pd::<1>(d, d), _mm_setr_pd(h, -h));
        [_mm_add_pd(a, s), _mm_add_pd(t, u), _mm_sub_pd(t, u)]
    }
}

#[inline(always)]
unsafe fn twiddle<const INV: bool>(x: __m128d, re: f64, im: f64) -> __m128d {
    // SAFETY: SSE2 and FMA supplied by the entry. im is the forward sine.
    unsafe {
        let im = if INV { -im } else { im };
        _mm_fmadd_pd(
            _mm_shuffle_pd::<1>(x, x),
            _mm_setr_pd(-im, im),
            _mm_mul_pd(x, _mm_set1_pd(re)),
        )
    }
}

#[inline(always)]
pub(super) unsafe fn nine<const INV: bool>(input: *const f64, output: *mut f64) {
    // SAFETY: entry supplies AVX2+FMA and 18 readable/writable scalars. All
    // nine complex inputs are consumed before the first store, permitting aliasing.
    unsafe {
        let mut rows = [[_mm_setzero_pd(); 3]; 3];
        for (j, row) in rows.iter_mut().enumerate() {
            *row = three::<INV>(
                _mm_loadu_pd(input.add(2 * j)),
                _mm_loadu_pd(input.add(2 * (j + 3))),
                _mm_loadu_pd(input.add(2 * (j + 6))),
            );
        }
        rows[1][1] = twiddle::<INV>(rows[1][1], 0.766044443118978, -0.6427876096865393);
        rows[1][2] = twiddle::<INV>(rows[1][2], 0.17364817766693036, -0.984807753012208);
        rows[2][1] = twiddle::<INV>(rows[2][1], 0.17364817766693036, -0.984807753012208);
        rows[2][2] = twiddle::<INV>(rows[2][2], -0.9396926207859084, -0.3420201433256687);
        for (k, &a) in rows[0].iter().enumerate() {
            let y = three::<INV>(a, rows[1][k], rows[2][k]);
            for (j, value) in y.into_iter().enumerate() {
                _mm_storeu_pd(output.add(2 * (k + 3 * j)), value);
            }
        }
    }
}

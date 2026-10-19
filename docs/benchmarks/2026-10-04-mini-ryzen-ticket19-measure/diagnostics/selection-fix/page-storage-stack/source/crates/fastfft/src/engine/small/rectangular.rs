//! Fixed rectangular leaves. The small case keeps both dimensions in
//! registers. Larger rectangles use a bounded local intermediate matrix.
//! Generated split codelets handle general shapes; selected shapes use packed
//! complex butterflies. No path requires caller scratch.
use super::*;

const fn uses_packed_six(m: usize, b: usize, lanes: usize, scalar_bytes: usize) -> bool {
    cfg!(feature = "avx2") && m == 6 && b == 6 && lanes == 4 && scalar_bytes == 8
}

const fn uses_packed_f32(m: usize, b: usize, lanes: usize, scalar_bytes: usize) -> bool {
    cfg!(feature = "avx2")
        && lanes == 8
        && scalar_bytes == 4
        && matches!((m, b), (16, 5 | 6) | (12, 9))
}

#[inline(always)]
unsafe fn load<V: Vector, const ROW: usize, const W: usize>(
    p: *const V::S,
    start: usize,
) -> (V, V) {
    // SAFETY: ROW complex values are readable, start < ROW is a multiple of
    // W, and W=V::LANES. The final panel always has ROW%W complex values.
    unsafe {
        if start + W <= ROW {
            V::deinterleave(V::load(p.add(2 * start)), V::load(p.add(2 * start + W)))
        } else {
            let mut tmp = [V::S::default(); 32];
            core::ptr::copy_nonoverlapping(p.add(2 * start), tmp.as_mut_ptr(), 2 * (ROW % W));
            V::deinterleave(V::load(tmp.as_ptr()), V::load(tmp.as_ptr().add(W)))
        }
    }
}

#[inline(always)]
unsafe fn store<V: Vector, const ROW: usize, const W: usize>(
    p: *mut V::S,
    start: usize,
    re: V,
    im: V,
) {
    // SAFETY: ROW complex values are writable, start < ROW is a multiple of
    // W, and W=V::LANES. The final panel always has ROW%W complex values.
    unsafe {
        let (lo, hi) = V::interleave(re, im);
        if start + W <= ROW {
            V::store(p.add(2 * start), lo);
            V::store(p.add(2 * start + W), hi);
        } else {
            let mut tmp = [V::S::default(); 32];
            V::store(tmp.as_mut_ptr(), lo);
            V::store(tmp.as_mut_ptr().add(W), hi);
            core::ptr::copy_nonoverlapping(tmp.as_ptr(), p.add(2 * start), 2 * (ROW % W));
        }
    }
}

#[inline(always)]
unsafe fn fused<V: Vector, const M: usize, const B: usize, const W: usize, const INV: bool>(
    input: *const V::S,
    output: *mut V::S,
    tw: *const V::S,
) {
    // SAFETY: B<=W; input/output hold M*B complex values. All caller
    // inputs are read before the first output store. The table holds
    // M.div_ceil(W) panels of B split W-wide cross twiddles.
    unsafe {
        let zero = V::splat_f64(0.);
        let mut a = [zero; M];
        let mut b = [zero; M];
        for j in 0..M {
            let (r, i) = load::<V, B, W>(input.add(2 * B * j), 0);
            (a[j], b[j]) = if INV { (i, r) } else { (r, i) };
        }
        generated::small_notw::<V, M>(&mut a, &mut b);
        for base in (0..M).step_by(W) {
            let count = W.min(M - base);
            let mut rows_re = [zero; W];
            let mut rows_im = [zero; W];
            rows_re[..count].copy_from_slice(&a[base..base + count]);
            rows_im[..count].copy_from_slice(&b[base..base + count]);
            transpose::<V, W>(&mut rows_re);
            transpose::<V, W>(&mut rows_im);
            let mut re = [zero; B];
            let mut im = [zero; B];
            re.copy_from_slice(&rows_re[..B]);
            im.copy_from_slice(&rows_im[..B]);
            let mut wr = [zero; B];
            let mut wi = [zero; B];
            for j in 1..B {
                wr[j] = V::load(tw.add(2 * (base * B + W * j)));
                wi[j] = V::load(tw.add(2 * (base * B + W * j) + W));
            }
            generated::small_tw::<V, B>(&mut re, &mut im, &wr, &wi);
            for j in 0..B {
                let (r, i) = if INV { (im[j], re[j]) } else { (re[j], im[j]) };
                store::<V, M, W>(output.add(2 * M * j), base, r, i);
            }
        }
    }
}

#[inline(always)]
unsafe fn tiled<V: Vector, const M: usize, const B: usize, const W: usize, const INV: bool>(
    input: *const V::S,
    output: *mut V::S,
    tw: *const V::S,
) {
    // SAFETY: dimensions are <=16, hence at most 256 complex intermediates.
    // Every one of the M*B matrix cells is initialized by the first pass;
    // bounded second-pass loads read only those cells. No typed reference
    // to the uninitialized scalars is formed. All caller input is consumed
    // before output stores. Tables hold M.div_ceil(W) panels of B twiddles.
    unsafe {
        let zero = V::splat_f64(0.);
        // Fix the intermediate's alignment independently of the caller's
        // stack position. This does not constrain unrelated compiler spills.
        #[repr(align(64))]
        struct AlignedMatrix<S>([core::mem::MaybeUninit<S>; 512]);
        let mut matrix = AlignedMatrix([core::mem::MaybeUninit::<V::S>::uninit(); 512]);
        let matrix_ptr = matrix.0.as_mut_ptr().cast::<V::S>();
        for col in (0..B).step_by(W) {
            let mut a = [zero; M];
            let mut b = [zero; M];
            for j in 0..M {
                let (r, i) = load::<V, B, W>(input.add(2 * B * j), col);
                (a[j], b[j]) = if INV { (i, r) } else { (r, i) };
            }
            generated::small_notw::<V, M>(&mut a, &mut b);
            for row in (0..M).step_by(W) {
                let mut re = [zero; W];
                let mut im = [zero; W];
                if row + W <= M {
                    re.copy_from_slice(&a[row..row + W]);
                    im.copy_from_slice(&b[row..row + W]);
                } else {
                    re[..M % W].copy_from_slice(&a[row..row + M % W]);
                    im[..M % W].copy_from_slice(&b[row..row + M % W]);
                }
                transpose::<V, W>(&mut re);
                transpose::<V, W>(&mut im);
                for j in 0..W.min(B - col) {
                    store::<V, M, W>(matrix_ptr.add(2 * M * (col + j)), row, re[j], im[j]);
                }
            }
        }
        for col in (0..M).step_by(W) {
            let mut re = [zero; B];
            let mut im = [zero; B];
            let mut wr = [zero; B];
            let mut wi = [zero; B];
            for j in 0..B {
                (re[j], im[j]) = load::<V, M, W>(matrix_ptr.add(2 * M * j), col);
                if j > 0 {
                    wr[j] = V::load(tw.add(2 * (col * B + W * j)));
                    wi[j] = V::load(tw.add(2 * (col * B + W * j) + W));
                }
            }
            generated::small_tw::<V, B>(&mut re, &mut im, &wr, &wi);
            for j in 0..B {
                let (r, i) = if INV { (im[j], re[j]) } else { (re[j], im[j]) };
                store::<V, M, W>(output.add(2 * M * j), col, r, i);
            }
        }
    }
}

#[inline(always)]
unsafe fn one<V: Vector, const M: usize, const B: usize, const W: usize, const INV: bool>(
    input: *const V::S,
    output: *mut V::S,
    tw: *const V::S,
) {
    // SAFETY: dimensions and width are validated by the builder.
    unsafe {
        if M <= W && B <= W {
            fused::<V, M, B, W, INV>(input, output, tw);
        } else {
            tiled::<V, M, B, W, INV>(input, output, tw);
        }
    }
}

#[inline(always)]
pub(super) unsafe fn run<
    V: Vector,
    const N: usize,
    const M: usize,
    const B: usize,
    const INV: bool,
    const BATCH: bool,
>(
    input: *const V::S,
    output: *mut V::S,
    count: usize,
    tw: *const V::S,
) {
    for chunk in 0..if BATCH { count } else { 1 } {
        // SAFETY: complete N=M*B chunks, all read before writing each output.
        unsafe {
            let i = input.add(2 * N * chunk);
            let o = output.add(2 * N * chunk);
            #[cfg(feature = "avx2")]
            if uses_packed_six(M, B, V::LANES, size_of::<V::S>()) {
                // F64x4 entries enable AVX2+FMA; this exact 6x6 shape uses
                // two-complex packed panels and its own cross-twiddle table.
                crate::isa::x86::interleaved::square6::<INV>(i.cast(), o.cast(), tw.cast());
                continue;
            }
            #[cfg(feature = "avx2")]
            if uses_packed_f32(M, B, V::LANES, size_of::<V::S>()) {
                crate::isa::x86::interleaved::rect_f32::<M, B, INV>(i.cast(), o.cast(), tw.cast());
                continue;
            }
            match V::LANES {
                2 => one::<V, M, B, 2, INV>(i, o, tw),
                4 => one::<V, M, B, 4, INV>(i, o, tw),
                8 => one::<V, M, B, 8, INV>(i, o, tw),
                16 => one::<V, M, B, 16, INV>(i, o, tw),
                _ => unreachable!("rectangles require SIMD"),
            }
        }
    }
}

struct Rectangular;
impl<V: SmallVector> Kernel<V> for Rectangular {
    const TABLES: bool = true;
    #[inline(always)]
    unsafe fn one<const N: usize, const M: usize, const L: usize, const INV: bool>(
        input: *const V::S,
        output: *mut V::S,
        tw: *const V::S,
    ) {
        // SAFETY: validated complete rectangular transform and features.
        unsafe {
            V::rectangle::<N, M, L, INV, false>(input, output, 1, tw);
        }
    }
    #[inline(always)]
    unsafe fn run<const N: usize, const M: usize, const L: usize, const INV: bool>(
        input: *const V::S,
        output: *mut V::S,
        count: usize,
        tw: *const V::S,
    ) {
        // SAFETY: validated complete rectangular chunks and features.
        unsafe {
            V::rectangle::<N, M, L, INV, true>(input, output, count, tw);
        }
    }
}

fn sized<T: FftNum, V: SmallVector, const N: usize, const M: usize, const B: usize>(
    dir: FftDirection,
) -> Arc<dyn Fft<T>> {
    assert_eq!(size_of::<T>(), size_of::<V::S>());
    assert_eq!(N, M * B);
    assert!(M <= 16 && B <= 16 && V::LANES > 1);
    let w = V::LANES;
    let tw = if uses_packed_six(M, B, w, size_of::<V::S>()) {
        packed_twiddles(N, M, B, 2, dir)
    } else if uses_packed_f32(M, B, w, size_of::<V::S>()) {
        let mut tw = packed_twiddles(N, B, M, 4, dir);
        if M == 16 {
            for k in [1, 3, 9] {
                let (r, i) = crate::twiddle::omega(k, 16);
                let i = if dir == FftDirection::Inverse { -i } else { i };
                tw.extend([T::from_f64(r).unwrap(); 8]);
                for _ in 0..4 {
                    tw.extend([T::from_f64(-i).unwrap(), T::from_f64(i).unwrap()]);
                }
            }
        }
        tw
    } else {
        let mut tw = vec![T::zero(); M.div_ceil(w) * B * 2 * w];
        for col in (0..M).step_by(w) {
            for j in 1..B {
                for k in 0..w.min(M - col) {
                    let (r, i) = crate::twiddle::omega(j * (col + k), N);
                    tw[2 * (col * B + w * j) + k] = T::from_f64(r).unwrap();
                    tw[2 * (col * B + w * j) + w + k] = T::from_f64(i).unwrap();
                }
            }
        }
        tw
    };
    if dir == FftDirection::Forward {
        Arc::new(Small::<T, V, N, M, B, false, Rectangular> {
            tw,
            vector: PhantomData,
        })
    } else {
        Arc::new(Small::<T, V, N, M, B, true, Rectangular> {
            tw,
            vector: PhantomData,
        })
    }
}

fn packed_twiddles<T: FftNum>(
    n: usize,
    rows: usize,
    cols: usize,
    c: usize,
    dir: FftDirection,
) -> Vec<T> {
    let mut tw = vec![T::zero(); cols.div_ceil(c) * (rows - 1) * 4 * c];
    for g in 0..cols.div_ceil(c) {
        for j in 1..rows {
            for k in 0..c.min(cols - c * g) {
                let (re, im) = crate::twiddle::omega(j * (c * g + k), n);
                let im = if dir == FftDirection::Inverse {
                    -im
                } else {
                    im
                };
                let base = 4 * c * (g * (rows - 1) + j - 1) + 2 * k;
                tw[base] = T::from_f64(re).unwrap();
                tw[base + 1] = tw[base];
                tw[base + 2 * c] = T::from_f64(-im).unwrap();
                tw[base + 2 * c + 1] = T::from_f64(im).unwrap();
            }
        }
    }
    tw
}

macro_rules! decompositions {
    ($(($a:literal,$b:literal)),* $(,)?) => {
        const DECOMPOSITIONS: &[(usize,usize)] = &[$(($a,$b)),*];
        fn for_vector<T:FftNum,V:SmallVector>(a:usize,b:usize,dir:FftDirection) -> Arc<dyn Fft<T>> {
            match (a,b) {
                $(($a,$b) => sized::<T,V,{$a*$b},$a,$b>(dir),)*
                _ => unreachable!("unsupported rectangle"),
            }
        }
    };
}
decompositions!(
    (2, 3),
    (3, 3),
    (3, 4),
    (4, 3),
    (3, 5),
    (5, 3),
    (3, 6),
    (6, 3),
    (3, 8),
    (8, 3),
    (4, 6),
    (6, 4),
    (6, 6),
    (4, 9),
    (9, 4),
    (6, 8),
    (8, 6),
    (4, 12),
    (12, 4),
    (5, 16),
    (16, 5),
    (8, 10),
    (10, 8),
    (6, 16),
    (16, 6),
    (8, 12),
    (12, 8),
    (9, 12),
    (12, 9),
    (8, 15),
    (15, 8),
    (10, 12),
    (12, 10),
    (10, 16),
    (16, 10),
    (14, 15),
    (15, 14),
    (15, 16),
    (16, 15),
);

pub(crate) fn candidates(n: usize, cap: Isa, f64_: bool) -> Vec<crate::planner::Candidate> {
    let mut result = Vec::new();
    let mut shapes = crate::engine::shapes(cap, f64_);
    // AVX2 entries can have lower latency even on an AVX-512 host.
    let avx2 = Shape {
        isa: Isa::Avx2,
        lanes: if f64_ { 4 } else { 8 },
    };
    if cap >= Isa::Avx2 && crate::isa::available(Isa::Avx2) && !shapes.contains(&avx2) {
        shapes.push(avx2);
    }
    for shape in shapes.into_iter().filter(|s| s.lanes > 1) {
        for &(a, b) in DECOMPOSITIONS.iter().filter(|&&(a, b)| a * b == n) {
            result.push(crate::planner::Candidate {
                kernel: crate::planner::CandidateKernel::RectangularSmall,
                shape,
                radices: vec![a, b],
                cost: 0.,
            });
        }
    }
    result
}

pub(crate) fn build<T: FftNum>(
    dir: FftDirection,
    shape: Shape,
    a: usize,
    b: usize,
) -> Arc<dyn Fft<T>> {
    assert!(crate::isa::available(shape.isa));
    macro_rules! go {
        ($v:ty) => {{
            assert_eq!(shape.lanes, <$v as Vector>::LANES);
            for_vector::<T, $v>(a, b, dir)
        }};
    }
    match (T::precision(), shape.isa) {
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
        _ => unreachable!("unsupported rectangular tier"),
    }
}

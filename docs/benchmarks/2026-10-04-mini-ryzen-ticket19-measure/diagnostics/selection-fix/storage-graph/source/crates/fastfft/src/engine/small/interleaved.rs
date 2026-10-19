//! Planning, validation and target-feature entries for the interleaved leaves.
use super::*;
use crate::isa::x86::interleaved::{R32, R64, Row, table, table_len};
#[cfg(feature = "avx512")]
use crate::isa::x86::interleaved::{R32z, R64z};

struct Interleaved<T, R, E, const N: usize, const INV: bool> {
    tw: Vec<T>,
    row: PhantomData<fn() -> (R, E)>,
}

/// Target-feature boundary. The leaves are identical; AVX-512VL gives them
/// 32 vector registers, which the register-resident N=64/128 stages need.
trait Entry: 'static {
    /// One transform. Pointers hold N complex values and are identical or
    /// disjoint; the table holds `table_len(N, R::W / 2)` scalars; features
    /// match. `LATENCY` as for `Row::leaf`: set for in-place calls.
    unsafe fn one<R: Row, const N: usize, const INV: bool, const LATENCY: bool>(
        input: *const R::S,
        output: *mut R::S,
        tw: *const R::S,
    );
    /// As `one`, for `count` consecutive transforms, which overlap: never
    /// `LATENCY`.
    unsafe fn run<R: Row, const N: usize, const INV: bool>(
        input: *const R::S,
        output: *mut R::S,
        count: usize,
        tw: *const R::S,
    );
}

macro_rules! entry {
    ($name:ident, $features:literal) => {
        struct $name;
        impl Entry for $name {
            #[target_feature(enable = $features)]
            unsafe fn one<R: Row, const N: usize, const INV: bool, const LATENCY: bool>(
                input: *const R::S,
                output: *mut R::S,
                tw: *const R::S,
            ) {
                // SAFETY: forwarded buffer, table and feature contract.
                unsafe { R::leaf::<N, INV, LATENCY>(input, output, tw) }
            }
            #[target_feature(enable = $features)]
            unsafe fn run<R: Row, const N: usize, const INV: bool>(
                mut input: *const R::S,
                mut output: *mut R::S,
                count: usize,
                tw: *const R::S,
            ) {
                // SAFETY: each iteration consumes exactly N complex values, as
                // validated by the public wrapper; leaves load before storing.
                unsafe {
                    for k in 0..count {
                        // f64 two-pass leaves read each chunk one full-line
                        // row at a time in a strided order; stream the chunk
                        // after next in line order meanwhile (DRAM latency is
                        // about one chunk's work).
                        if N >= 128 && size_of::<R::S>() == 8 && k + 2 < count {
                            let next = input.add(4 * N).cast::<i8>();
                            let bytes = 2 * N * size_of::<R::S>();
                            for line in (0..bytes).step_by(64) {
                                core::arch::x86_64::_mm_prefetch::<
                                    { core::arch::x86_64::_MM_HINT_T0 },
                                >(next.add(line));
                            }
                        }
                        R::leaf::<N, INV, false>(input, output, tw);
                        input = input.add(2 * N);
                        output = output.add(2 * N);
                    }
                }
            }
        }
    };
}
entry!(Avx2, "avx2,fma");
#[cfg(feature = "avx512")]
entry!(
    Avx512,
    "avx512f,avx512vl,avx512dq,avx512bw,avx512cd,avx2,fma"
);

impl<T, R, E, const N: usize, const INV: bool> Length for Interleaved<T, R, E, N, INV> {
    fn len(&self) -> usize {
        N
    }
}
impl<T, R, E, const N: usize, const INV: bool> Direction for Interleaved<T, R, E, N, INV> {
    fn fft_direction(&self) -> FftDirection {
        if INV {
            FftDirection::Inverse
        } else {
            FftDirection::Forward
        }
    }
}
impl<T: FftNum, R: Row + 'static, E: Entry, const N: usize, const INV: bool> Fft<T>
    for Interleaved<T, R, E, N, INV>
{
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
        sink(DiagnosticRegion::metadata(object.owner, 2, 1));
    }

    fn process(&self, buffer: &mut [Complex<T>]) {
        self.process_with_scratch(buffer, &mut []);
    }
    fn process_with_scratch(&self, buffer: &mut [Complex<T>], _: &mut [Complex<T>]) {
        let tw = self.tw.as_ptr().cast();
        if buffer.len() == N {
            let (input, output) = (buffer.as_ptr().cast(), buffer.as_mut_ptr().cast());
            // SAFETY: one complete aliased transform; T=R::S and the entry's
            // features checked in the builder; leaves load before storing.
            // N <= 4 and f64 N=6 need only SSE2, so they inline here.
            unsafe {
                if N <= 4 || (N == 6 && size_of::<R::S>() == 8) {
                    R::leaf::<N, INV, true>(input, output, tw);
                } else {
                    E::one::<R, N, INV, true>(input, output, tw);
                }
            }
            return;
        }
        if buffer.len() < N || !buffer.len().is_multiple_of(N) {
            fail_inplace(N, buffer.len(), 0, 0);
        }
        // SAFETY: complete chunks, matching scalar type and features.
        unsafe {
            E::run::<R, N, INV>(
                buffer.as_ptr().cast(),
                buffer.as_mut_ptr().cast(),
                buffer.len() / N,
                tw,
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
        let tw = self.tw.as_ptr().cast();
        if input.len() == N && output.len() == N {
            let (input, output) = (input.as_ptr().cast(), output.as_mut_ptr().cast());
            // SAFETY: one complete disjoint transform; leaves only read input.
            // N <= 4 and f64 N=6 need only SSE2, so they inline here.
            unsafe {
                if N <= 4 || (N == 6 && size_of::<R::S>() == 8) {
                    R::leaf::<N, INV, false>(input, output, tw);
                } else {
                    E::one::<R, N, INV, false>(input, output, tw);
                }
            }
            return;
        }
        if input.len() != output.len() || input.len() < N || !input.len().is_multiple_of(N) {
            fail_outofplace(N, input.len(), output.len(), 0, 0);
        }
        // SAFETY: equal lengths of complete chunks in disjoint buffers.
        unsafe {
            E::run::<R, N, INV>(
                input.as_ptr().cast(),
                output.as_mut_ptr().cast(),
                input.len() / N,
                tw,
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

/// Sizes per tier. The ymm tiers hold f64 rows in two registers, so f64
/// N=64-256 run with zmm rows (the AVX-512 tier). Small smooth sizes expose
/// both ymm and zmm candidates; f32 zmm rows are used only at N=128.
fn sizes(isa: Isa, f64_: bool) -> &'static [usize] {
    match (isa, f64_) {
        (Isa::Avx2 | Isa::Avx512Ymm, false) => &[2, 4, 8, 16, 24, 32, 36, 48, 64, 128, 256],
        (Isa::Avx2 | Isa::Avx512Ymm, true) => &[2, 4, 6, 8, 9, 16, 18, 24, 32, 36, 48],
        (Isa::Avx512, false) => &[128],
        (Isa::Avx512, true) => &[24, 36, 48, 64, 128, 256],
        _ => &[],
    }
}

pub(super) fn shapes(n: usize, cap: Isa, f64_: bool) -> Vec<Shape> {
    [Isa::Avx2, Isa::Avx512Ymm, Isa::Avx512]
        .into_iter()
        .filter(|&isa| isa <= cap && crate::isa::available(isa) && sizes(isa, f64_).contains(&n))
        .map(|isa| Shape {
            isa,
            lanes: interleaved_lanes(n, isa, f64_),
        })
        .collect()
}

fn sized<T: FftNum, R: Row + 'static, E: Entry, const N: usize>(
    dir: FftDirection,
) -> Arc<dyn Fft<T>> {
    assert_eq!(size_of::<T>(), size_of::<R::S>());
    let tw = table(N, R::W / 2, |k, n| {
        let (r, i) = crate::twiddle::omega(k, n);
        let i = if dir == FftDirection::Inverse { -i } else { i };
        (T::from_f64(r).unwrap(), T::from_f64(i).unwrap())
    });
    assert_eq!(tw.len(), table_len(N, R::W / 2));
    if dir == FftDirection::Inverse {
        Arc::new(Interleaved::<T, R, E, N, true> {
            tw,
            row: PhantomData,
        })
    } else {
        Arc::new(Interleaved::<T, R, E, N, false> {
            tw,
            row: PhantomData,
        })
    }
}

pub(super) fn build<T: FftNum>(n: usize, dir: FftDirection, shape: Shape) -> Arc<dyn Fft<T>> {
    let f64_ = T::precision() == Precision::F64;
    assert!(shapes(n, shape.isa, f64_).contains(&shape));
    macro_rules! go {
        ($e:ty) => {
            match (f64_, n) {
                (false, 2) => sized::<T, R32, $e, 2>(dir),
                (false, 4) => sized::<T, R32, $e, 4>(dir),
                (false, 8) => sized::<T, R32, $e, 8>(dir),
                (false, 16) => sized::<T, R32, $e, 16>(dir),
                (false, 32) => sized::<T, R32, $e, 32>(dir),
                (false, 24) => sized::<T, R32, $e, 24>(dir),
                (false, 36) => sized::<T, R32, $e, 36>(dir),
                (false, 48) => sized::<T, R32, $e, 48>(dir),
                (false, 64) => sized::<T, R32, $e, 64>(dir),
                (false, 128) => sized::<T, R32, $e, 128>(dir),
                (false, 256) => sized::<T, R32, $e, 256>(dir),
                (true, 2) => sized::<T, R64, $e, 2>(dir),
                (true, 4) => sized::<T, R64, $e, 4>(dir),
                (true, 6) => sized::<T, R64, $e, 6>(dir),
                (true, 8) => sized::<T, R64, $e, 8>(dir),
                (true, 9) => sized::<T, R64, $e, 9>(dir),
                (true, 16) => sized::<T, R64, $e, 16>(dir),
                (true, 18) => sized::<T, R64, $e, 18>(dir),
                (true, 32) => sized::<T, R64, $e, 32>(dir),
                (true, 24) => sized::<T, R64, $e, 24>(dir),
                (true, 36) => sized::<T, R64, $e, 36>(dir),
                (true, 48) => sized::<T, R64, $e, 48>(dir),
                _ => unreachable!("unsupported interleaved Small size"),
            }
        };
    }
    match shape.isa {
        Isa::Avx2 => go!(Avx2),
        #[cfg(feature = "avx512")]
        Isa::Avx512Ymm => go!(Avx512),
        #[cfg(feature = "avx512")]
        Isa::Avx512 => match (f64_, n) {
            (false, 128) => sized::<T, R32z, Avx512, 128>(dir),
            (true, 24) => sized::<T, R64z, Avx512, 24>(dir),
            (true, 36) => sized::<T, R64z, Avx512, 36>(dir),
            (true, 48) => sized::<T, R64z, Avx512, 48>(dir),
            (true, 64) => sized::<T, R64z, Avx512, 64>(dir),
            (true, 128) => sized::<T, R64z, Avx512, 128>(dir),
            (true, 256) => sized::<T, R64z, Avx512, 256>(dir),
            _ => unreachable!("unsupported zmm interleaved size"),
        },
        _ => unreachable!("unsupported interleaved tier"),
    }
}

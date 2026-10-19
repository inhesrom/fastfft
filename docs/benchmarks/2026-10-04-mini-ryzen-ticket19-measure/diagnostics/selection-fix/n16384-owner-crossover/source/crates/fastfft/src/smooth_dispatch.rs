//! Focused smooth-size choices from ticket 13's Zen 4 measurements.
//! Separate from the general cost-model work in ticket 18.
use crate::engine::Shape;
use crate::isa::Isa;
use crate::planner::CandidateKernel;
use CandidateKernel::{FourStep as F, InterleavedSmall as I, RectangularSmall as R, Stockham as S};
use Isa::{Avx2, Avx512, Avx512Ymm};

pub(super) fn preferred(
    n: usize,
    cap: Isa,
    f64_: bool,
) -> Option<(CandidateKernel, Shape, &'static [usize])> {
    let (kernel, isa, lanes, radices): (_, _, _, &[usize]) = match (f64_, n) {
        (false, 18) => (R, Avx2, 8, &[6, 3]),
        (false, 24) => (R, Avx2, 8, &[6, 4]),
        (false, 36) => (R, Avx512Ymm, 8, &[6, 6]),
        (false, 48) => (I, Avx512Ymm, 4, &[12]),
        (false, 80) => (R, Avx512Ymm, 8, &[16, 5]),
        (false, 96) => (R, Avx512Ymm, 8, &[16, 6]),
        (false, 108) => (R, Avx512Ymm, 8, &[12, 9]),
        (false, 120) => (R, Avx512Ymm, 8, &[8, 15]),
        (false, 160) => (R, Avx512, 16, &[16, 10]),
        (false, 210) => (R, Avx512, 16, &[14, 15]),
        (false, 240) => (S, Avx512Ymm, 8, &[10, 3]),
        (false, 504) => (S, Avx512Ymm, 8, &[9, 7]),
        (false, 720) => (S, Avx512Ymm, 8, &[10, 9]),
        (true, 6) => (I, Avx2, 1, &[6]),
        (true, 9) => (I, Avx2, 1, &[9]),
        (true, 18) => (I, Avx512Ymm, 2, &[9]),
        (true, 24) => (I, Avx512Ymm, 4, &[6]),
        (true, 36) if crate::isa::available(Avx2) => (R, Avx512Ymm, 4, &[6, 6]),
        (true, 108) => (S, Avx512Ymm, 4, &[9, 3]),
        (true, 120) => (S, Avx512Ymm, 4, &[10, 3]),
        (true, 210) => (R, Avx512Ymm, 4, &[15, 14]),
        (false, 4725) => (F, Avx512Ymm, 8, &[63, 75]),
        (true, 4725) => (F, Avx512, 8, &[63, 75]),
        (false, 165375) => (F, Avx512Ymm, 8, &[375, 441]),
        (true, 165375) => (F, Avx512, 8, &[375, 441]),
        (true, 1000000) => (F, Avx512, 8, &[1000, 1000]),
        _ => return None,
    };
    (isa <= cap && crate::isa::available(isa)).then_some((kernel, Shape { isa, lanes }, radices))
}

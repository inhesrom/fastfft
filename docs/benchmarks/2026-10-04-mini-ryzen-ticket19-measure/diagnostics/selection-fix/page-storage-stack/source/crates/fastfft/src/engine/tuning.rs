//! Isolated timings call the same per-tier pass entry points as Stockham.
use super::stockham::{self, StockhamPlan, StockhamVector};
use crate::isa::{Isa, scalar};
use std::hint::black_box;
use std::time::{Duration, Instant};

fn sample(mut run: impl FnMut(), milliseconds: u64) -> f64 {
    let mut count = 1;
    loop {
        let start = Instant::now();
        for _ in 0..count {
            run();
        }
        if start.elapsed() >= Duration::from_micros(50) {
            break;
        }
        count *= 2;
    }
    let start = Instant::now();
    let mut values = Vec::new();
    while start.elapsed() < Duration::from_millis(milliseconds.max(1)) || values.len() < 16 {
        let t = Instant::now();
        for _ in 0..count {
            run();
        }
        values.push(t.elapsed().as_secs_f64() * 1e9 / count as f64);
    }
    values.sort_by(f64::total_cmp);
    values[values.len() / 100]
}

#[inline(always)]
unsafe fn measure<V: StockhamVector>(milliseconds: u64) -> Vec<(u8, usize, f64)>
where
    V::S: num_traits::FromPrimitive + 'static,
{
    let mut rows = Vec::new();
    for kind in 0..=2 {
        for radix in 2..=16 {
            if kind == 2 && radix != V::LANES {
                continue;
            }
            let ns = if kind == 0 { 1 } else { 32 };
            let m = if kind == 2 {
                V::LANES * 32
            } else {
                radix * 128
            };
            let n = m * V::LANES;
            let radices = if kind == 2 {
                vec![8, 4, V::LANES]
            } else if kind == 0 {
                vec![radix, 8, 16]
            } else {
                vec![8, 4, radix, 4]
            };
            let plan = StockhamPlan::<V::S>::new(n, V::LANES, radices);
            let mut input = vec![V::S::default(); 2 * n + 64];
            let mut output = input.clone();
            let ip = input.as_mut_ptr();
            let op = output.as_mut_ptr();
            // SAFETY: allocation slack covers alignment; buffers are disjoint
            // and contain 2*n reals after alignment. The caller enabled V's ISA.
            let timing = unsafe {
                let ip = ip.add(ip.align_offset(64));
                let op = op.add(op.align_offset(64));
                let one = V::splat_f64(core::ptr::read_volatile(&1.0));
                sample(
                    || {
                        if kind == 2 {
                            stockham::run_phase_b::<V>(
                                false,
                                false,
                                black_box(ip),
                                black_box(op),
                                m,
                                plan.vtw().as_ptr(),
                                one,
                            );
                        } else {
                            let tw = plan.pass_tw(if kind == 0 { 0 } else { 2 });
                            stockham::run_pass::<V>(
                                radix,
                                kind == 0,
                                false,
                                black_box(ip),
                                black_box(op),
                                m,
                                ns,
                                tw.as_ptr(),
                                one,
                            );
                        }
                        black_box(&output);
                    },
                    milliseconds,
                )
            };
            rows.push((kind, radix, timing / n as f64));
        }
    }
    rows
}

#[allow(unused_macros)] // Scalar-only builds have no target-feature entries.
macro_rules! entry {
    ($name:ident, $v:ty, $features:literal) => {
        #[target_feature(enable = $features)]
        unsafe fn $name(ms: u64) -> Vec<(u8, usize, f64)> {
            // SAFETY: this entry point enables the vector's features.
            unsafe { measure::<$v>(ms) }
        }
    };
}
#[cfg(all(target_arch = "x86_64", feature = "sse2"))]
mod sse2 {
    use super::*;
    entry!(f32_, crate::isa::x86::F32x4, "sse2");
    entry!(f64_, crate::isa::x86::F64x2, "sse2");
    pub(super) fn run(f64_: bool, ms: u64) -> Vec<(u8, usize, f64)> {
        // SAFETY: dispatch checked that SSE2 is compiled and available.
        unsafe { if f64_ { self::f64_(ms) } else { self::f32_(ms) } }
    }
}
#[cfg(all(target_arch = "x86_64", feature = "avx2"))]
mod avx2 {
    use super::*;
    entry!(f32_, crate::isa::x86::F32x8, "avx2,fma");
    entry!(f64_, crate::isa::x86::F64x4, "avx2,fma");
    pub(super) fn run(f64_: bool, ms: u64) -> Vec<(u8, usize, f64)> {
        // SAFETY: dispatch checked that AVX2+FMA is compiled and available.
        unsafe { if f64_ { self::f64_(ms) } else { self::f32_(ms) } }
    }
}
#[cfg(all(target_arch = "x86_64", feature = "avx512"))]
mod avx512 {
    use super::*;
    entry!(
        ymm32,
        crate::isa::x86::F32x8v,
        "avx512f,avx512vl,avx512dq,avx512bw,avx512cd,avx2,fma"
    );
    entry!(
        ymm64,
        crate::isa::x86::F64x4v,
        "avx512f,avx512vl,avx512dq,avx512bw,avx512cd,avx2,fma"
    );
    entry!(
        zmm32,
        crate::isa::x86::F32x16,
        "avx512f,avx512vl,avx512dq,avx512bw,avx512cd,avx2,fma"
    );
    entry!(
        zmm64,
        crate::isa::x86::F64x8,
        "avx512f,avx512vl,avx512dq,avx512bw,avx512cd,avx2,fma"
    );
    pub(super) fn run(f64_: bool, zmm: bool, ms: u64) -> Vec<(u8, usize, f64)> {
        // SAFETY: dispatch checked that the complete AVX-512 tier is available.
        unsafe {
            match (f64_, zmm) {
                (false, false) => ymm32(ms),
                (true, false) => ymm64(ms),
                (false, true) => zmm32(ms),
                (true, true) => zmm64(ms),
            }
        }
    }
}

pub(crate) fn passes(f64_: bool, ms: u64) -> Vec<(Isa, u8, usize, f64)> {
    let mut result = Vec::new();
    for isa in [
        Isa::Scalar,
        Isa::Sse2,
        Isa::Avx2,
        Isa::Avx512Ymm,
        Isa::Avx512,
    ] {
        if isa > crate::isa::effective_isa(None) || !crate::isa::available(isa) {
            continue;
        }
        #[allow(unreachable_patterns)] // Feature-restricted builds need the fallback.
        let rows = match isa {
            // SAFETY: scalar vectors require no target features.
            Isa::Scalar => unsafe {
                if f64_ {
                    measure::<scalar::S64>(ms)
                } else {
                    measure::<scalar::S32>(ms)
                }
            },
            #[cfg(all(target_arch = "x86_64", feature = "sse2"))]
            Isa::Sse2 => sse2::run(f64_, ms),
            #[cfg(all(target_arch = "x86_64", feature = "avx2"))]
            Isa::Avx2 => avx2::run(f64_, ms),
            #[cfg(all(target_arch = "x86_64", feature = "avx512"))]
            Isa::Avx512Ymm | Isa::Avx512 => avx512::run(f64_, isa == Isa::Avx512, ms),
            _ => continue,
        };
        result.extend(
            rows.into_iter()
                .map(|(kind, radix, ns)| (isa, kind, radix, ns)),
        );
    }
    result
}

//! Across-transform radix-8 and streaming output from existing Small leaves.
use super::*;
use crate::isa::Precision;
#[cfg(feature = "avx512")]
use crate::isa::x86::interleaved::R64z;
use crate::isa::x86::interleaved::{Quad, R32, R64, Row, radix8};

#[inline(always)]
unsafe fn across_eight<R: Quad, const INV: bool, const STREAM: bool>(
    mut input: *const R::S,
    mut output: *mut R::S,
    groups: usize,
) {
    // SAFETY: four full size-8 transforms per group, matching row ISA.
    // Both four-column panels are loaded before any output store. STREAM also
    // requires disjoint input/output and 64-byte-aligned output.
    unsafe {
        for _ in 0..groups {
            let a = R::transpose([
                R::load(input),
                R::load(input.add(16)),
                R::load(input.add(32)),
                R::load(input.add(48)),
            ]);
            let b = R::transpose([
                R::load(input.add(8)),
                R::load(input.add(24)),
                R::load(input.add(40)),
                R::load(input.add(56)),
            ]);
            let v = radix8::<R, INV, false>([a[0], a[1], a[2], a[3], b[0], b[1], b[2], b[3]]);
            let a = R::transpose([v[0], v[1], v[2], v[3]]);
            let b = R::transpose([v[4], v[5], v[6], v[7]]);
            for t in 0..4 {
                if STREAM {
                    a[t].stream_store(output.add(16 * t));
                    b[t].stream_store(output.add(16 * t + 8));
                } else {
                    a[t].store(output.add(16 * t));
                    b[t].store(output.add(16 * t + 8));
                }
            }
            input = input.add(64);
            output = output.add(64);
        }
        if STREAM {
            R::stream_fence();
        }
    }
}

#[inline(always)]
unsafe fn leaf_stream<R: Quad, const N: usize, const INV: bool>(
    plan: &Plan<R::S>,
    mut input: *const R::S,
    mut output: *mut R::S,
    count: usize,
) where
    R::S: Default,
{
    // SAFETY: N<=256, matching leaf table, available ISA, complete disjoint
    // buffers. Output is 64-byte aligned; temporary stores may be unaligned.
    unsafe {
        let mut tmp = [[R::S::default(); 2]; N];
        let p = tmp.as_mut_ptr().cast::<R::S>();
        for k in 0..count {
            // f64 leaves visit a chunk in strided row order. Fetch the chunk
            // after next in line order while the current FFT is computing.
            if N >= 128 && size_of::<R::S>() == 8 && k + 2 < count {
                let next = input.add(4 * N).cast::<i8>();
                for line in (0..2 * N * size_of::<R::S>()).step_by(64) {
                    core::arch::x86_64::_mm_prefetch::<{ core::arch::x86_64::_MM_HINT_T0 }>(
                        next.add(line),
                    );
                }
            }
            R::leaf::<N, INV, false>(input, p, plan.leaf_twiddles.as_ptr());
            for j in (0..2 * N).step_by(R::W) {
                R::load(p.add(j)).stream_store(output.add(j));
            }
            input = input.add(2 * N);
            output = output.add(2 * N);
        }
        R::stream_fence();
    }
}

#[inline(always)]
unsafe fn copy_stream<R: Row>(input: *const R::S, output: *mut R::S, scalars: usize, fence: bool) {
    // SAFETY: full scalar rows, aligned disjoint writable output, available ISA.
    // A zero-length call may fence the preceding tiles without accessing memory.
    unsafe {
        for j in (0..scalars).step_by(R::W) {
            R::load(input.add(j)).stream_store(output.add(j));
        }
        if fence {
            R::stream_fence();
        }
    }
}

macro_rules! entry {
    ($name:ident,$copy:ident,$s:ty,$r:ty,$features:literal) => {
        #[target_feature(enable=$features)]
        unsafe fn $name<const N: usize, const INV: bool>(
            plan: &Plan<$s>,
            input: *const $s,
            output: *mut $s,
            groups: usize,
            streaming: bool,
        ) {
            // SAFETY: matching available row ISA, validated complete groups.
            unsafe {
                if streaming && N == 8 {
                    across_eight::<$r, INV, true>(input, output, groups);
                } else if streaming {
                    leaf_stream::<$r, N, INV>(plan, input, output, 4 * groups);
                } else if N == 8 {
                    across_eight::<$r, INV, false>(input, output, groups);
                } else {
                    unreachable!("across-transform dispatch only supports size 8");
                }
            }
        }
        #[target_feature(enable=$features)]
        unsafe fn $copy(input: *const $s, output: *mut $s, scalars: usize, fence: bool) {
            // SAFETY: forwarded row, alignment and feature contract.
            unsafe { copy_stream::<$r>(input, output, scalars, fence) }
        }
    };
}
entry!(a32, copy_a32, f32, R32, "avx2,fma");
entry!(a64, copy_a64, f64, R64, "avx2,fma");
#[cfg(feature = "avx512")]
entry!(
    y32,
    copy_y32,
    f32,
    R32,
    "avx512f,avx512vl,avx512dq,avx512bw,avx512cd,avx2,fma"
);
#[cfg(feature = "avx512")]
entry!(
    y64,
    copy_y64,
    f64,
    R64,
    "avx512f,avx512vl,avx512dq,avx512bw,avx512cd,avx2,fma"
);
#[cfg(feature = "avx512")]
entry!(
    z64,
    copy_z64,
    f64,
    R64z,
    "avx512f,avx512vl,avx512dq,avx512bw,avx512cd,avx2,fma"
);

fn entry<T: FftNum, const N: usize, const INV: bool>(isa: Isa) -> Entry<T> {
    // SAFETY: sealed FftNum and exact scalar precision checked in each arm.
    unsafe {
        match (T::precision(), isa) {
            (Precision::F32, Isa::Avx2) => {
                core::mem::transmute::<Entry<f32>, Entry<T>>(a32::<N, INV>)
            }
            (Precision::F64, Isa::Avx2) => {
                core::mem::transmute::<Entry<f64>, Entry<T>>(a64::<N, INV>)
            }
            #[cfg(feature = "avx512")]
            (Precision::F32, Isa::Avx512Ymm) => {
                core::mem::transmute::<Entry<f32>, Entry<T>>(y32::<N, INV>)
            }
            #[cfg(feature = "avx512")]
            (Precision::F64, Isa::Avx512Ymm) => {
                core::mem::transmute::<Entry<f64>, Entry<T>>(y64::<N, INV>)
            }
            #[cfg(feature = "avx512")]
            (Precision::F64, Isa::Avx512) => {
                core::mem::transmute::<Entry<f64>, Entry<T>>(z64::<N, INV>)
            }
            _ => unreachable!(),
        }
    }
}
fn copy_entry<T: FftNum>(isa: Isa) -> CopyEntry<T> {
    // SAFETY: sealed FftNum and exact scalar precision checked in each arm.
    unsafe {
        match (T::precision(), isa) {
            (Precision::F32, Isa::Avx2) => {
                core::mem::transmute::<CopyEntry<f32>, CopyEntry<T>>(copy_a32)
            }
            (Precision::F64, Isa::Avx2) => {
                core::mem::transmute::<CopyEntry<f64>, CopyEntry<T>>(copy_a64)
            }
            #[cfg(feature = "avx512")]
            (Precision::F32, Isa::Avx512Ymm) => {
                core::mem::transmute::<CopyEntry<f32>, CopyEntry<T>>(copy_y32)
            }
            #[cfg(feature = "avx512")]
            (Precision::F64, Isa::Avx512Ymm) => {
                core::mem::transmute::<CopyEntry<f64>, CopyEntry<T>>(copy_y64)
            }
            #[cfg(feature = "avx512")]
            (Precision::F64, Isa::Avx512) => {
                core::mem::transmute::<CopyEntry<f64>, CopyEntry<T>>(copy_z64)
            }
            _ => unreachable!(),
        }
    }
}

pub(super) fn select<T: FftNum>(
    n: usize,
    dir: FftDirection,
    isa: Isa,
) -> Option<(Option<Entry<T>>, CopyEntry<T>, Shape)> {
    if !(8..=1024).contains(&n) || !n.is_power_of_two() || isa < Isa::Avx2 {
        return None;
    }
    let isa = if T::precision() == Precision::F32 && isa == Isa::Avx512 {
        Isa::Avx512Ymm
    } else {
        isa
    };
    macro_rules! size {
        ($n:literal) => {
            Some(if dir == FftDirection::Inverse {
                entry::<T, $n, true>(isa)
            } else {
                entry::<T, $n, false>(isa)
            })
        };
    }
    let entry = match n {
        8 => size!(8),
        16 => size!(16),
        32 => size!(32),
        64 => size!(64),
        128 => size!(128),
        256 => size!(256),
        512 | 1024 => None,
        _ => unreachable!(),
    };
    Some((entry, copy_entry(isa), Shape { isa, lanes: 4 }))
}

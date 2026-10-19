//! Planning and target-feature scheduling for fixed split-layout leaves.
use super::*;
use crate::isa::x86::small::{F32x4f, F32x4z, Leaf, leaf32};

// These types are never exposed as general Stockham shapes.
impl SmallVector for F32x4f {}
impl SmallVector for F32x4z {}

#[cfg(feature = "avx2")]
struct Avx2Leaf;
#[cfg(feature = "avx512")]
struct Avx512Leaf;
macro_rules! entry {
    ($k:ident,$features:literal) => {
        impl<V: SmallVector + Leaf> Kernel<V> for $k {
            const TABLES: bool = false;
            #[target_feature(enable=$features)]
            unsafe fn one<const N: usize, const M: usize, const L: usize, const INV: bool>(
                input: *const V::S,
                output: *mut V::S,
                _tw: *const V::S,
            ) {
                const {
                    assert!(N == 32);
                }
                // SAFETY: builder verifies size and tier; wrapper validates buffers.
                unsafe {
                    leaf32::<V, INV>(input, output);
                }
            }
            #[target_feature(enable=$features)]
            unsafe fn run<const N: usize, const M: usize, const L: usize, const INV: bool>(
                mut input: *const V::S,
                mut output: *mut V::S,
                count: usize,
                _tw: *const V::S,
            ) {
                const {
                    assert!(N == 32);
                }
                // SAFETY: count complete chunks, aliasing only in-place, matching ISA.
                unsafe {
                    for _ in 0..count {
                        leaf32::<V, INV>(input, output);
                        input = input.add(2 * N);
                        output = output.add(2 * N);
                    }
                }
            }
        }
    };
}
#[cfg(feature = "avx2")]
entry!(Avx2Leaf, "avx2,fma");
#[cfg(feature = "avx512")]
entry!(
    Avx512Leaf,
    "avx512f,avx512vl,avx512dq,avx512bw,avx512cd,avx2,fma"
);

pub(super) fn build_with<T: FftNum, F: Factory<T>>(
    n: usize,
    dir: FftDirection,
    shape: Shape,
) -> F::Output {
    assert!(specialized_shapes(n, shape.isa, T::precision() == Precision::F64).contains(&shape));
    macro_rules! go {
        ($v:ty,$k:ty) => {
            sized::<T, $v, F, 32, 4, 8, $k>(dir)
        };
    }
    match (T::precision(), shape.isa) {
        #[cfg(feature = "avx2")]
        (Precision::F32, Isa::Avx2) => go!(F32x4f, Avx2Leaf),
        #[cfg(feature = "avx512")]
        (Precision::F32, Isa::Avx512Ymm) => go!(F32x4z, Avx512Leaf),
        #[cfg(feature = "avx512")]
        (Precision::F64, Isa::Avx512) => go!(crate::isa::x86::F64x4v, Avx512Leaf),
        _ => unreachable!("unsupported specialized Small shape"),
    }
}

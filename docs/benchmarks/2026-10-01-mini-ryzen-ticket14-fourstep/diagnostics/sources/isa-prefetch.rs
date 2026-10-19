//! Instruction-set layer: tier detection, capping, and the SIMD traits the
//! generated codelets and engines are written against.
//!
//! Every method is `#[inline(always)] unsafe fn`. They are only reached from
//! `#[target_feature]` entry points (see `engine`) after the tier was
//! detected, which is what makes calling the intrinsics sound.

pub(crate) mod cache;
pub(crate) mod scalar;
#[cfg(target_arch = "x86_64")]
pub(crate) mod x86;

use std::sync::OnceLock;

/// Instruction-set tiers, lowest to highest.
#[non_exhaustive]
#[derive(Copy, Clone, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
pub enum Isa {
    /// Portable scalar code (every platform).
    Scalar,
    /// x86_64 SSE2 (128-bit).
    Sse2,
    /// x86_64 AVX2 + FMA (256-bit, 16 registers).
    Avx2,
    /// AVX-512 (F, VL, DQ, BW, CD) using 256-bit vectors: 32 registers and
    /// two-source permutes at AVX2 width.
    Avx512Ymm,
    /// AVX-512 with 512-bit vectors.
    Avx512,
}

impl Isa {
    /// Lower-case name as used by `FASTFFT_ISA_CAP`.
    pub fn name(self) -> &'static str {
        match self {
            Isa::Scalar => "scalar",
            Isa::Sse2 => "sse2",
            Isa::Avx2 => "avx2",
            Isa::Avx512Ymm => "avx512-ymm",
            Isa::Avx512 => "avx512",
        }
    }

    /// Parses a `FASTFFT_ISA_CAP` value.
    pub fn from_name(s: &str) -> Option<Isa> {
        match s.trim().to_ascii_lowercase().as_str() {
            "scalar" => Some(Isa::Scalar),
            "sse2" => Some(Isa::Sse2),
            "avx2" => Some(Isa::Avx2),
            "avx512-ymm" | "avx512ymm" => Some(Isa::Avx512Ymm),
            "avx512" => Some(Isa::Avx512),
            _ => None,
        }
    }

    /// Tiers compiled into this build (cargo features, target architecture).
    pub(crate) fn compiled(self) -> bool {
        match self {
            Isa::Scalar => true,
            Isa::Sse2 => cfg!(all(target_arch = "x86_64", feature = "sse2")),
            Isa::Avx2 => cfg!(all(target_arch = "x86_64", feature = "avx2")),
            Isa::Avx512Ymm | Isa::Avx512 => cfg!(all(target_arch = "x86_64", feature = "avx512")),
        }
    }
}

impl std::fmt::Display for Isa {
    fn fmt(&self, f: &mut std::fmt::Formatter<'_>) -> std::fmt::Result {
        f.write_str(self.name())
    }
}

#[cfg(target_arch = "x86_64")]
fn detect_raw() -> Isa {
    let avx512 = std::arch::is_x86_feature_detected!("avx512f")
        && std::arch::is_x86_feature_detected!("avx512vl")
        && std::arch::is_x86_feature_detected!("avx512dq")
        && std::arch::is_x86_feature_detected!("avx512bw")
        && std::arch::is_x86_feature_detected!("avx512cd")
        && std::arch::is_x86_feature_detected!("avx2")
        && std::arch::is_x86_feature_detected!("fma");
    if avx512 && Isa::Avx512.compiled() {
        return Isa::Avx512;
    }
    if std::arch::is_x86_feature_detected!("avx2")
        && std::arch::is_x86_feature_detected!("fma")
        && Isa::Avx2.compiled()
    {
        return Isa::Avx2;
    }
    if Isa::Sse2.compiled() {
        return Isa::Sse2;
    }
    Isa::Scalar
}

#[cfg(not(target_arch = "x86_64"))]
fn detect_raw() -> Isa {
    Isa::Scalar
}

/// The highest tier this CPU supports that was compiled in (ignores caps).
pub fn detected_isa() -> Isa {
    static DETECTED: OnceLock<Isa> = OnceLock::new();
    *DETECTED.get_or_init(detect_raw)
}

/// `FASTFFT_ISA_CAP`, read once.
pub(crate) fn env_cap() -> Option<Isa> {
    static CAP: OnceLock<Option<Isa>> = OnceLock::new();
    *CAP.get_or_init(|| {
        std::env::var("FASTFFT_ISA_CAP")
            .ok()
            .and_then(|v| Isa::from_name(&v))
    })
}

/// The tier to use given an optional cap: never above the detected tier.
/// `Avx512Ymm` is available whenever `Avx512` is.
pub(crate) fn effective_isa(cap: Option<Isa>) -> Isa {
    let det = detected_isa();
    let mut isa = det;
    for c in [env_cap(), cap].into_iter().flatten() {
        if c < isa {
            isa = c;
        }
    }
    isa
}

/// Whether `isa` may be used on this machine.
pub(crate) fn available(isa: Isa) -> bool {
    isa.compiled() && isa <= detected_isa()
}

/// Floating-point precision of a plan.
#[doc(hidden)]
#[derive(Copy, Clone, Debug, PartialEq, Eq, Hash)]
pub enum Precision {
    F32,
    F64,
}

/// Real SIMD arithmetic used by the generated codelets.
///
/// # Safety
///
/// Implementations wrap target-specific intrinsics; callers must only use
/// them after verifying that the CPU supports the implementing tier and from
/// code compiled with (or inlined into) the matching `#[target_feature]`s.
pub(crate) unsafe trait SimdReal: Copy {
    unsafe fn splat_f64(x: f64) -> Self;
    unsafe fn add(a: Self, b: Self) -> Self;
    unsafe fn sub(a: Self, b: Self) -> Self;
    unsafe fn mul(a: Self, b: Self) -> Self;
    #[allow(dead_code)]
    unsafe fn neg(a: Self) -> Self;
    /// `a * b + c`
    unsafe fn fmadd(a: Self, b: Self, c: Self) -> Self;
    /// `a * b - c`
    unsafe fn fmsub(a: Self, b: Self, c: Self) -> Self;
    /// `c - a * b`
    unsafe fn fnmadd(a: Self, b: Self, c: Self) -> Self;
}

/// Memory and lane operations used by the engines, on top of [`SimdReal`].
///
/// A *split vector* is a pair `(re, im)` of `Self` holding `LANES` complex
/// values. In memory, the user format is interleaved complex (`2 * LANES`
/// reals) and the internal format is a block `[re x LANES][im x LANES]`.
///
/// # Safety
///
/// As for [`SimdReal`]; pointer arguments must be valid for the accessed
/// `LANES` (or `2 * LANES`) reals, except for the explicitly bounded prefix
/// operations. Implementations have at most 16 lanes.
pub(crate) unsafe trait Vector: SimdReal {
    type S: Copy + Default + Into<f64>;
    const LANES: usize;
    unsafe fn splat(x: Self::S) -> Self;
    unsafe fn load(p: *const Self::S) -> Self;
    unsafe fn store(p: *mut Self::S, v: Self);
    /// Aligned non-temporal store when supported. Call `stream_fence` before
    /// exposing the result to a reader. The pointer is vector-size aligned.
    #[inline(always)]
    unsafe fn stream_store(p: *mut Self::S, v: Self) {
        // SAFETY: the streaming-store contract includes ordinary writes.
        unsafe { Self::store(p, v) }
    }
    #[inline(always)]
    unsafe fn stream_fence() {}
    /// Hint that a valid element will be read soon, without filling L1.
    #[inline(always)]
    unsafe fn prefetch(_p: *const Self::S) {}
    /// Load `valid <= LANES` interleaved complex values into split vectors,
    /// zeroing the remaining lanes. Only `2 * valid` reals need be readable.
    #[inline(always)]
    unsafe fn load_complex_prefix(p: *const Self::S, valid: usize) -> (Self, Self) {
        debug_assert!(valid <= Self::LANES && Self::LANES <= 16);
        // SAFETY: the caller supplies the readable prefix. The initialized
        // local array holds two full vectors, including the zero padding.
        unsafe {
            let mut tmp = [Self::S::default(); 32];
            core::ptr::copy_nonoverlapping(p, tmp.as_mut_ptr(), 2 * valid);
            Self::deinterleave(
                Self::load(tmp.as_ptr()),
                Self::load(tmp.as_ptr().add(Self::LANES)),
            )
        }
    }
    /// Store the first `valid <= LANES` lanes as interleaved complex values.
    /// Only `2 * valid` reals need be writable; adjacent values are untouched.
    #[inline(always)]
    unsafe fn store_complex_prefix(p: *mut Self::S, re: Self, im: Self, valid: usize) {
        debug_assert!(valid <= Self::LANES && Self::LANES <= 16);
        // SAFETY: both vectors fit in the local array, and only the caller's
        // writable prefix is copied out.
        unsafe {
            let (lo, hi) = Self::interleave(re, im);
            let mut tmp = [Self::S::default(); 32];
            Self::store(tmp.as_mut_ptr(), lo);
            Self::store(tmp.as_mut_ptr().add(Self::LANES), hi);
            core::ptr::copy_nonoverlapping(tmp.as_ptr(), p, 2 * valid);
        }
    }
    /// `(a, b)` hold interleaved complex values; returns `(re, im)`.
    unsafe fn deinterleave(a: Self, b: Self) -> (Self, Self);
    /// Inverse of [`Vector::deinterleave`].
    unsafe fn interleave(re: Self, im: Self) -> (Self, Self);
    /// Block zip for register transposes: with blocks of `k` lanes,
    /// even = `[a.b0, b.b0, a.b2, b.b2, ...]`, odd = `[a.b1, b.b1, a.b3, b.b3, ...]`.
    unsafe fn zip(a: Self, b: Self, k: usize) -> (Self, Self);
}

/// Splits a vector into two narrower registers for a rectangular transpose.
///
/// # Safety
/// The caller enables the features of both vector types.
#[cfg(all(target_arch = "x86_64", any(feature = "avx2", feature = "avx512")))]
pub(crate) unsafe trait HalfVector: Vector {
    type Half: Vector<S = Self::S>;
    unsafe fn halves(v: Self) -> (Self::Half, Self::Half);
}

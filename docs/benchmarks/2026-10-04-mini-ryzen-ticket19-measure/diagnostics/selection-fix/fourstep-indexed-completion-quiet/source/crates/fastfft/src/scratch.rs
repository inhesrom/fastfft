//! Per-thread scratch for `Fft::process`: grows on demand, never shrinks.

use num_complex::Complex;
use std::cell::RefCell;

thread_local! {
    // u64 storage: 8-byte aligned, and all-zero bits are valid complex floats.
    static SCRATCH: RefCell<Vec<u64>> = const { RefCell::new(Vec::new()) };
}

/// Returns the 64-byte-aligned tail, consuming at most one cache line of
/// reserved slack. Works even when the original base is only scalar-aligned.
#[inline(always)]
pub(crate) fn aligned<T: crate::FftNum>(buffer: &mut [Complex<T>]) -> &mut [Complex<T>] {
    if buffer.is_empty() {
        return buffer;
    }
    // Complex<T> has scalar alignment: a legal slice may start half a
    // complex value past a SIMD boundary. Align in reals, not complexes.
    let ptr = buffer.as_mut_ptr().cast::<T>();
    let offset = ptr.align_offset(64);
    let len = buffer
        .len()
        .checked_sub(offset.div_ceil(2))
        .expect("scratch must include one cache line of alignment slack");
    // SAFETY: FftNum is sealed to f32/f64 and Complex<T> is repr(C), two
    // adjacent reals without padding. Its initialized storage may be viewed
    // from any scalar-aligned start. `offset <= 2 * buffer.len()` by the
    // subtraction above; rounding consumed reals UP to complexes leaves the
    // new tail wholly inside the original slice. The raw pointer retains its
    // allocation provenance, and the exclusive borrow is transferred to the
    // returned slice. No references into `buffer` are retained here.
    unsafe { core::slice::from_raw_parts_mut(ptr.add(offset).cast::<Complex<T>>(), len) }
}

/// Runs `f` with a scratch slice of at least `len` complex values.
pub(crate) fn with_scratch<T: Copy, R>(len: usize, f: impl FnOnce(&mut [Complex<T>]) -> R) -> R {
    let bytes = len * core::mem::size_of::<Complex<T>>();
    let words = bytes.div_ceil(8);
    debug_assert!(core::mem::align_of::<Complex<T>>() <= 8);
    let mut f = Some(f);
    let mut run = |buf: &mut Vec<u64>| {
        if buf.len() < words {
            buf.resize(words, 0);
        }
        // SAFETY: the buffer holds at least `len` complex values' worth of
        // initialized bytes, is 8-byte aligned (>= Complex<f32/f64> alignment),
        // and any bit pattern is a valid float.
        let s =
            unsafe { core::slice::from_raw_parts_mut(buf.as_mut_ptr().cast::<Complex<T>>(), len) };
        (f.take().expect("called once"))(s)
    };
    let r = SCRATCH.with(|cell| match cell.try_borrow_mut() {
        Ok(mut buf) => Some(run(&mut buf)),
        Err(_) => None,
    });
    match r {
        Some(r) => r,
        // Re-entrant use (e.g. from inside a callback): fall back to a fresh buffer.
        None => run(&mut vec![0u64; words]),
    }
}

#[cfg(test)]
mod tests {
    use super::aligned;
    use crate::FftNum;
    use num_complex::Complex;

    #[repr(C, align(64))]
    struct Storage<T, const P: usize> {
        prefix: [T; P],
        data: [Complex<T>; 32],
        suffix: T,
    }

    fn check<T: FftNum, const P: usize>() {
        let guard = Complex::new(T::from_f64(12345.).unwrap(), T::from_f64(-6789.).unwrap());
        for offset in 0..=8 {
            let mut s = Storage::<T, P> {
                prefix: [guard.re; P],
                data: [guard; 32],
                suffix: guard.im,
            };
            let tail = aligned(&mut s.data[offset..offset + 16]);
            assert_eq!(tail.as_ptr() as usize % 64, 0);
            assert!(tail.len() >= 16 - crate::fft::align_slack::<T>());
            tail.fill(Complex::new(T::zero(), T::zero()));
            assert_eq!(s.prefix, [guard.re; P]);
            assert_eq!(s.suffix, guard.im);
            assert!(
                s.data[..offset]
                    .iter()
                    .chain(&s.data[offset + 16..])
                    .all(|&x| x == guard)
            );
        }
        assert!(aligned::<T>(&mut []).is_empty());
    }

    #[test]
    fn scalar_aligned_scratch_gets_a_simd_aligned_tail() {
        check::<f32, 0>();
        check::<f32, 1>();
        check::<f64, 0>();
        check::<f64, 1>();
    }
}

use super::*;
#[cfg(feature = "tuning")]
use crate::engine::aligned_storage::Block;
use crate::engine::aligned_storage::PAGE_ALIGN;

fn bytes<T: FftNum>(values: &[T]) -> &[u8] {
    // SAFETY: FftNum is sealed to initialized, padding-free f32/f64.
    unsafe { std::slice::from_raw_parts(values.as_ptr().cast(), std::mem::size_of_val(values)) }
}

// Retain the pre-canonical constructor's Vec generation as a bitwise oracle.
// It intentionally uses extend/resize and independent allocations, not the
// production layout/population helpers being tested.
fn legacy_panel<T: FftNum>(rows: usize) -> (Vec<usize>, Vec<Vec<T>>) {
    let radices = crate::planner::choose_radices(rows, 8).unwrap();
    let mut ns = 1;
    let twiddles = radices
        .iter()
        .map(|&r| {
            let mut tw = Vec::with_capacity(ns * (r - 1) * 2);
            for k in 0..ns {
                for j in 1..r {
                    let (re, im) = omega(j * k, ns * r);
                    tw.extend([T::from_f64(re).unwrap(), T::from_f64(im).unwrap()]);
                }
            }
            ns *= r;
            tw
        })
        .collect();
    (radices, twiddles)
}

fn oracle<T: FftNum>() {
    for (n, a, lanes) in [
        (15, 3, 1),
        (135, 15, 4),
        (256, 16, 4),
        (32768, 128, 8),
        (165375, 375, 8),
    ] {
        let p = super::super::FourStepPlan::<T>::new(n, a, lanes);
        for (index, rows) in [(0, a), (1, n / a)] {
            let (radices, expected) = legacy_panel::<T>(rows);
            let panel = p.tables.panel(index, rows);
            assert_eq!(
                panel.passes.iter().map(|p| p.radix).collect::<Vec<_>>(),
                radices
            );
            for (pass, expected) in expected.iter().enumerate() {
                assert_eq!(bytes(panel.twiddles(pass)), bytes(expected));
                assert_eq!(panel.twiddles(pass).as_ptr() as usize % ALIGN, 0);
            }
        }
        let b = n / a;
        let blocked = n.is_power_of_two() && a.is_multiple_of(lanes) && b.is_multiple_of(lanes);
        let step = if blocked {
            (1 << (a.ilog2() / 2)).max(lanes)
        } else {
            1
        };
        let coarse = a / step;
        let mut cross = vec![T::zero(); b.div_ceil(lanes) * coarse * 2 * lanes];
        for panel in 0..b.div_ceil(lanes) {
            for ka in 0..coarse {
                for lane in 0..lanes.min(b - panel * lanes) {
                    let (re, im) = omega(ka * step * (panel * lanes + lane), n);
                    let at = (panel * coarse + ka) * 2 * lanes;
                    cross[at + lane] = T::from_f64(re).unwrap();
                    cross[at + lanes + lane] = T::from_f64(im).unwrap();
                }
            }
        }
        let mut fine = Vec::new();
        if blocked {
            fine.resize(b * step * 2, T::zero());
            for panel in 0..b / lanes {
                for ka in 0..step {
                    for lane in 0..lanes {
                        let (re, im) = omega(ka * (panel * lanes + lane), n);
                        let at = (panel * step + ka) * 2 * lanes;
                        fine[at + lane] = T::from_f64(re).unwrap();
                        fine[at + lanes + lane] = T::from_f64(im).unwrap();
                    }
                }
            }
        }
        assert_eq!(bytes(p.tables.cross()), bytes(&cross));
        assert_eq!(bytes(p.tables.fine()), bytes(&fine));
        assert_eq!(p.tables.cross().as_ptr() as usize % ALIGN, 0);
        assert_eq!(p.tables.fine().as_ptr() as usize % ALIGN, 0);
        if n == 165375 && size_of::<T>() == 8 {
            assert_eq!(p.tables.layout.cross_offset, 13312);
            assert_eq!(p.tables.backing.layout(), (PAGE_ALIGN, 660, 660));
            assert_eq!(p.scratch_len() + crate::fft::align_slack::<T>(), 172436);
        }
    }
}

#[test]
fn fourstep_storage_matches_legacy_coefficient_bits_both_precisions() {
    oracle::<f32>();
    oracle::<f64>();
}

fn boundaries<T: FftNum>() {
    for (cross_len, unit, allocated) in [
        (0, ALIGN, ALIGN),
        (1, ALIGN, ALIGN),
        (4032 / size_of::<T>(), ALIGN, 4032),
        (4032 / size_of::<T>() + 1, PAGE_ALIGN, PAGE_ALIGN),
        (4096 / size_of::<T>(), PAGE_ALIGN, PAGE_ALIGN),
        (4096 / size_of::<T>() + 1, PAGE_ALIGN, 8192),
    ] {
        let mut a = Storage::<T>::new(&[], &[], cross_len, 0);
        assert_eq!(a.backing.layout().0, unit);
        assert_eq!(a.backing.bytes().len(), allocated);
        assert_eq!(a.backing.as_ptr() as usize % unit, 0);
        assert!(a.panel(0, 0).passes.is_empty());
        assert!(a.panel(1, 0).passes.is_empty());
        assert!(a.fine().is_empty());
        let b = a.clone();
        assert_ne!(a.backing.as_ptr(), b.backing.as_ptr());
        assert_eq!(a.backing.bytes(), b.backing.bytes());
        if cross_len != 0 {
            a.cross_mut()[0] = T::from_f64(-0.0).unwrap();
        }
        drop(a);
        assert_eq!(b.cross().len(), cross_len);
        assert!(b.backing.bytes().iter().all(|&v| v == 0));
    }
}

#[test]
fn miri_fourstep_storage_boundaries_empty_views_and_independent_clone() {
    boundaries::<f32>();
    boundaries::<f64>();
}

#[test]
fn fourstep_storage_overflow_rejected_before_allocation() {
    for build in [
        (|| {
            Storage::<f64>::new(&[], &[], usize::MAX, 0);
        }) as fn(),
        || {
            Storage::<f64>::new(&[], &[], 0, usize::MAX);
        },
        || {
            Storage::<f32>::new(&[usize::MAX], &[], 0, 0);
        },
        || {
            Storage::<f64>::new(&[0], &[], 0, 0);
        },
    ] {
        assert!(std::panic::catch_unwind(build).is_err());
    }
}

#[cfg(feature = "tuning")]
fn rejection<T: FftNum>() {
    use crate::tuning::CoefficientSwapError as E;
    for exchange in [false, true] {
        for fault in 0..15 {
            let mut a = Storage::<T>::new(&[3, 5], &[3, 3], 1025, 17);
            a.fill_panels();
            let mut b = a.clone();
            let expected = match fault {
                0 => {
                    match &mut b.backing {
                        Backing::Small(v) => v.reserve_exact(v.capacity() + 1),
                        Backing::Paged(v) => v.reserve_exact(v.capacity() + 1),
                    };
                    E::StorageMismatch
                }
                1 => {
                    b.layout.counts[0] += 1;
                    E::StorageMismatch
                }
                2 => {
                    b.layout.counts[1] += 1;
                    E::StorageMismatch
                }
                3 => {
                    b.layout.cross_offset += ALIGN;
                    E::StorageMismatch
                }
                4 => {
                    b.layout.cross_len += 1;
                    E::StorageMismatch
                }
                5 => {
                    b.layout.fine_offset += ALIGN;
                    E::StorageMismatch
                }
                6 => {
                    b.layout.fine_len += 1;
                    E::StorageMismatch
                }
                7 => {
                    // SAFETY: first initialized descriptor, exclusive owner.
                    unsafe {
                        (*b.backing.as_mut_ptr().cast::<Pass>()).radix += 1;
                    }
                    E::ValuesMismatch
                }
                8 => {
                    b.cross_mut()[0] = T::from_f64(-0.0).unwrap();
                    E::ValuesMismatch
                }
                9 => {
                    b.fine_mut()[0] = T::one();
                    E::ValuesMismatch
                }
                10 => {
                    let pass = b.panel(1, 9).passes[1];
                    b.values_mut(pass.offset, pass.len)[0] = T::from_f64(7.0).unwrap();
                    E::ValuesMismatch
                }
                12 => {
                    match &mut b.backing {
                        Backing::Small(v) => {
                            v.pop();
                        }
                        Backing::Paged(v) => {
                            v.pop();
                        }
                    }
                    E::StorageMismatch
                }
                13 => {
                    // SAFETY: first initialized descriptor, exclusive owner.
                    // Validation must reject without following this bad offset.
                    unsafe {
                        (*b.backing.as_mut_ptr().cast::<Pass>()).offset += ALIGN;
                    }
                    E::ValuesMismatch
                }
                14 => {
                    // SAFETY: first initialized descriptor, exclusive owner.
                    unsafe {
                        (*b.backing.as_mut_ptr().cast::<Pass>()).len += 1;
                    }
                    E::ValuesMismatch
                }
                _ => {
                    // The checked descriptor prefix ends at byte96. Padding
                    // through byte127 is initialized and participates in scans.
                    // SAFETY: allocated initialized byte, outside typed views.
                    unsafe {
                        *b.backing.as_mut_ptr().add(127) = 1;
                    }
                    E::ValuesMismatch
                }
            };
            let owners = (a.backing.as_ptr(), b.backing.as_ptr());
            let before = (a.backing.bytes().to_vec(), b.backing.bytes().to_vec());
            assert_eq!(a.diagnostic_swap_backing(&mut b, exchange), Err(expected));
            assert_eq!((a.backing.as_ptr(), b.backing.as_ptr()), owners);
            assert_eq!(
                (a.backing.bytes().to_vec(), b.backing.bytes().to_vec()),
                before
            );
        }
    }
}

#[cfg(feature = "tuning")]
#[test]
fn miri_coefficient_swap_fourstep_storage_rejects_atomically_both_precisions() {
    rejection::<f32>();
    rejection::<f64>();
}

#[cfg(feature = "tuning")]
#[test]
fn miri_coefficient_swap_fourstep_storage_restores_bits_and_owner() {
    for len in [17, 1025] {
        let mut a = Storage::<f64>::new(&[3, 5], &[3, 3], len, 17);
        a.fill_panels();
        a.cross_mut()[0] = f64::from_bits(0x7ff8_0000_0000_0012);
        a.fine_mut()[0] = -0.0;
        let mut b = a.clone();
        let owners = (a.backing.as_ptr(), b.backing.as_ptr());
        let expected = a.backing.bytes().to_vec();
        a.diagnostic_swap_backing(&mut b, false).unwrap();
        assert_eq!((a.backing.as_ptr(), b.backing.as_ptr()), owners);
        a.diagnostic_swap_backing(&mut b, true).unwrap();
        assert_eq!(
            (a.backing.as_ptr(), b.backing.as_ptr()),
            (owners.1, owners.0)
        );
        assert_eq!(a.backing.bytes(), expected);
        a.diagnostic_swap_backing(&mut b, true).unwrap();
        assert_eq!((a.backing.as_ptr(), b.backing.as_ptr()), owners);
    }
    let mut a = Storage::<f32>::new(&[], &[], 1024, 0);
    let mut b = a.clone();
    b.backing = Backing::Small(vec![Block([0; ALIGN]); PAGE_ALIGN / ALIGN]);
    for exchange in [false, true] {
        assert_eq!(
            a.diagnostic_swap_backing(&mut b, exchange),
            Err(crate::tuning::CoefficientSwapError::StorageMismatch)
        );
        assert_eq!(a.backing.bytes(), b.backing.bytes());
    }
}

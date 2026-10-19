use super::*;
use crate::tuning::{CoefficientSwapError as E, RegionKind};

#[derive(Debug, PartialEq)]
struct Snapshot {
    configuration_and_values: String,
    regions: Vec<[usize; 7]>,
    coefficient_bytes: Vec<Vec<u8>>,
}

fn snapshot<T: FftNum>(p: &FourStepPlan<T>) -> Snapshot {
    let mut regions = Vec::new();
    p.diagnostic_regions(p as *const _ as usize, &mut |r| {
        regions.push([
            r.owner,
            r.kind as usize,
            r.index,
            r.ptr,
            r.element_bytes,
            r.len,
            r.capacity,
        ]);
    });
    let coefficient_bytes = p
        .columns
        .twiddles
        .iter()
        .chain(&p.rows.twiddles)
        .chain([&p.twiddles, &p.fine_twiddles])
        .map(|v| {
            // SAFETY: FftNum is sealed to initialized, padding-free f32/f64.
            // Read only the initialized length, never Vec spare capacity.
            unsafe {
                std::slice::from_raw_parts(
                    v.as_ptr().cast::<u8>(),
                    std::mem::size_of_val(v.as_slice()),
                )
                .to_vec()
            }
        })
        .collect();
    Snapshot {
        configuration_and_values: format!("{p:?}"),
        regions,
        coefficient_bytes,
    }
}

fn blocked<T: FftNum>() -> FourStepPlan<T> {
    FourStepPlan::new(256, 16, 4)
}

fn reject<T: FftNum>(mutate: fn(&mut FourStepPlan<T>), expected: E) {
    let mut a = blocked::<T>();
    let mut b = blocked::<T>();
    mutate(&mut b);
    let before = (snapshot(&a), snapshot(&b));
    for exchange in [false, true] {
        assert_eq!(
            a.diagnostic_swap_coefficients(&mut b, exchange),
            Err(expected)
        );
        assert_eq!((snapshot(&a), snapshot(&b)), before);
    }
}

fn more_capacity<T>(v: &mut Vec<T>) {
    v.reserve_exact(v.capacity() + 1);
}

fn reject_cases<T: FftNum>() {
    let configurations: [fn(&mut FourStepPlan<T>); 14] = [
        |p| p.n += 1,
        |p| p.a += 1,
        |p| p.b += 1,
        |p| p.lanes += 1,
        |p| p.columns.rows += 1,
        |p| p.rows.rows += 1,
        |p| p.twiddle_step += 1,
        |p| p.matrix_len += 1,
        |p| p.work_len += 1,
        |p| p.groups += 1,
        |p| p.group_stride += 1,
        |p| p.blocked = !p.blocked,
        |p| p.streaming = !p.streaming,
        |p| p.profile = !p.profile,
    ];
    for mutate in configurations {
        reject(mutate, E::ConfigurationMismatch);
    }
    let layouts: [fn(&mut FourStepPlan<T>); 16] = [
        |p| {
            p.columns.radices.pop();
        },
        |p| more_capacity(&mut p.columns.radices),
        |p| {
            p.rows.radices.pop();
        },
        |p| more_capacity(&mut p.rows.radices),
        |p| {
            p.columns.twiddles.pop();
        },
        |p| more_capacity(&mut p.columns.twiddles),
        |p| {
            p.rows.twiddles.pop();
        },
        |p| more_capacity(&mut p.rows.twiddles),
        |p| {
            p.columns.twiddles.last_mut().unwrap().pop();
        },
        |p| more_capacity(p.columns.twiddles.last_mut().unwrap()),
        |p| {
            p.rows.twiddles.last_mut().unwrap().pop();
        },
        |p| more_capacity(p.rows.twiddles.last_mut().unwrap()),
        |p| {
            p.twiddles.pop();
        },
        |p| more_capacity(&mut p.twiddles),
        |p| {
            p.fine_twiddles.pop();
        },
        |p| more_capacity(&mut p.fine_twiddles),
    ];
    for mutate in layouts {
        reject(mutate, E::StorageMismatch);
    }
    for mutate in [
        (|p: &mut FourStepPlan<T>| p.columns.radices[0] += 1) as fn(&mut FourStepPlan<T>),
        |p| p.rows.radices[0] += 1,
    ] {
        reject(mutate, E::ConfigurationMismatch);
    }
    let values: [fn(&mut FourStepPlan<T>); 4] = [
        |p| *p.columns.twiddles.last_mut().unwrap().last_mut().unwrap() = T::from_f64(7.0).unwrap(),
        |p| *p.rows.twiddles.last_mut().unwrap().last_mut().unwrap() = T::from_f64(7.0).unwrap(),
        |p| *p.twiddles.last_mut().unwrap() = T::from_f64(7.0).unwrap(),
        |p| *p.fine_twiddles.last_mut().unwrap() = T::from_f64(7.0).unwrap(),
    ];
    for mutate in values {
        reject(mutate, E::ValuesMismatch);
    }
    // Nonblocked dimensions have initialized, unused cross-table tail lanes.
    // A signed-zero change in that padding must still reject atomically.
    let mut a = FourStepPlan::<T>::new(135, 15, 4);
    let mut b = FourStepPlan::<T>::new(135, 15, 4);
    assert_eq!(*b.twiddles.last().unwrap(), T::zero());
    *b.twiddles.last_mut().unwrap() = T::from_f64(-0.0).unwrap();
    let before = (snapshot(&a), snapshot(&b));
    for exchange in [false, true] {
        assert_eq!(
            a.diagnostic_swap_coefficients(&mut b, exchange),
            Err(E::ValuesMismatch)
        );
        assert_eq!((snapshot(&a), snapshot(&b)), before);
    }
}

#[test]
fn coefficient_swap_fourstep_rejects_atomically_both_precisions() {
    reject_cases::<f32>();
    reject_cases::<f64>();
}

fn graph<T: FftNum>() {
    for (n, a) in [(256, 16), (135, 15)] {
        let mut x = FourStepPlan::<T>::new(n, a, 4);
        let mut y = FourStepPlan::<T>::new(n, a, 4);
        let before = (snapshot(&x), snapshot(&y));
        x.diagnostic_swap_coefficients(&mut y, false).unwrap();
        assert_eq!((snapshot(&x), snapshot(&y)), before);
        x.diagnostic_swap_coefficients(&mut y, true).unwrap();
        let swapped = (snapshot(&x), snapshot(&y));
        for (old, peer, now) in [
            (&before.0, &before.1, &swapped.0),
            (&before.1, &before.0, &swapped.1),
        ] {
            assert_eq!(old.configuration_and_values, now.configuration_and_values);
            assert_eq!(old.coefficient_bytes, now.coefficient_bytes);
            for ((a, b), actual) in old.regions.iter().zip(&peer.regions).zip(&now.regions) {
                let mut expected = *a;
                if ![
                    RegionKind::EmbeddedPlan as usize,
                    RegionKind::Metadata as usize,
                ]
                .contains(&a[1])
                {
                    expected[3] = b[3];
                }
                assert_eq!(*actual, expected);
            }
        }
        x.diagnostic_swap_coefficients(&mut y, true).unwrap();
        assert_eq!((snapshot(&x), snapshot(&y)), before);
    }
}

#[test]
fn coefficient_swap_fourstep_exchanges_full_graph_and_restores_both_precisions() {
    graph::<f32>();
    graph::<f64>();
}

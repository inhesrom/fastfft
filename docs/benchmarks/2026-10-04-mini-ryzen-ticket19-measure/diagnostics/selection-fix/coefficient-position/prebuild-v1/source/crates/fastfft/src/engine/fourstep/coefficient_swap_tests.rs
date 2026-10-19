use super::*;
use crate::tuning::{CoefficientSwapError as E, RegionKind};

#[derive(Debug, PartialEq)]
struct Snapshot {
    configuration_and_values: String,
    regions: Vec<[usize; 7]>,
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
    Snapshot {
        configuration_and_values: format!("{p:?}"),
        regions,
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

fn reject_cases<T: FftNum>() {
    let configurations: [fn(&mut FourStepPlan<T>); 12] = [
        |p| p.n += 1,
        |p| p.a += 1,
        |p| p.b += 1,
        |p| p.lanes += 1,
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

    let mut a = FourStepPlan::<T>::new(135, 15, 4);
    let mut b = FourStepPlan::<T>::new(135, 15, 4);
    assert_eq!(*b.tables.cross().last().unwrap(), T::zero());
    *b.tables.cross_mut().last_mut().unwrap() = T::from_f64(-0.0).unwrap();
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

//! Fixed N=96 context controls on retained plans and original allocations.
//! These records are unofficial and never replace the original arena result.

use crate::adapters::ArenaFloat;
use crate::buffers::Buffers;
use crate::spec::CellSpec;
use crate::timing::Stats;
use fastfft::tuning::{MeasureTrace, SamplePlacement, SelectorBuffers, sample_public_slices};
use fastfft::{Fft, FftNum};
use num_complex::Complex;
use serde_json::{Value, json};
use std::time::{Duration, Instant};

type Pair = [Vec<(f64, u64)>; 2];
const COUNTS: [usize; 4] = [718, 992, 1024, 2048];
const QUALIFICATION_COUNTS: [usize; 2] = [1024, 2048];

// One generated sampler entry for every buffer/count condition. Acquisition
// and three warm invocations are outside the returned timed sample.
#[inline(never)]
fn timed<T: FftNum>(
    fft: &dyn Fft<T>,
    input: &mut [Complex<T>],
    output: &mut [Complex<T>],
    scratch: &mut [Complex<T>],
    calls: usize,
) -> Duration {
    sample_public_slices(fft, input, output, scratch, SamplePlacement::InPlace, calls)
}

fn views<'a, T: ArenaFloat + FftNum>(
    selector: &'a mut SelectorBuffers<T>,
    arena: &'a mut Buffers<T>,
    fft: &dyn Fft<T>,
    location: usize,
) -> (
    &'a mut [Complex<T>],
    &'a mut [Complex<T>],
    &'a mut [Complex<T>],
) {
    if location < 3 {
        let view = selector
            .slices_mut(fft, location, SamplePlacement::InPlace, 96)
            .expect("retained original selector window");
        (view.input, view.output, view.scratch)
    } else {
        assert_eq!(location, 3);
        let (x, y, scratch) = arena.io_scratch_mut();
        let need = fft.get_inplace_scratch_len();
        (&mut x[..96], &mut y[..96], &mut scratch[..need])
    }
}

fn sample<T: ArenaFloat + FftNum>(
    selector: &mut SelectorBuffers<T>,
    arena: &mut Buffers<T>,
    fft: &dyn Fft<T>,
    location: usize,
    calls: usize,
) -> (f64, u64) {
    let (x, y, scratch) = views(selector, arena, fft, location);
    for _ in 0..3 {
        let _ = timed(fft, x, y, scratch, 1);
    }
    let elapsed_ns = u64::try_from(timed(fft, x, y, scratch, calls).as_nanos())
        .expect("diagnostic sample duration fits u64 nanoseconds");
    (elapsed_ns as f64 / calls as f64, elapsed_ns)
}

fn reset<T: ArenaFloat + FftNum>(
    selector: &mut SelectorBuffers<T>,
    arena: &mut Buffers<T>,
    fft: &dyn Fft<T>,
    location: usize,
) {
    let (x, y, scratch) = views(selector, arena, fft, location);
    let zero = Complex::new(T::zero(), T::zero());
    x.fill(zero);
    y.fill(zero);
    scratch.fill(zero);
}

fn regions<T: FftNum>(fft: &dyn Fft<T>) -> Vec<[usize; 7]> {
    let mut out = Vec::new();
    fft.diagnostic_regions(&mut |r| {
        out.push([
            r.owner,
            r.kind as usize,
            r.index,
            r.ptr,
            r.element_bytes,
            r.len,
            r.capacity,
        ])
    });
    out
}

fn pair_json(samples: &Pair, counts: [usize; 2]) -> Value {
    let members = [0usize, 1].map(|plan| {
        let ns: Vec<_> = samples[plan].iter().map(|sample| sample.0).collect();
        let batch_ns: Vec<_> = samples[plan].iter().map(|sample| sample.1).collect();
        json!({
            "role": if plan == 0 { "internal-baseline" } else { "nominated-contender" },
            "stats": Stats::from_samples(&ns), "ns_per_call": ns, "timed_batch_ns": batch_ns,
        })
    });
    json!({"calls": counts, "members": members})
}

pub fn run<T: ArenaFloat + FftNum>(
    trace: &mut MeasureTrace<T>,
    spec: &CellSpec,
    arena: &mut Buffers<T>,
) -> Value {
    let Some((candidate_index, contender)) = trace.nominated_contender.as_ref() else {
        return json!({"capture": "nominated-contender-unavailable", "acceptance": false});
    };
    let Some(mut selector) = trace.selector_buffers.take() else {
        return json!({"capture": "original-selector-buffers-unavailable", "acceptance": false});
    };
    assert_eq!(*candidate_index, 1);
    assert_eq!(trace.configurations[0].radices(), &[8, 12]);
    assert_eq!(trace.configurations[1].radices(), &[16, 6]);
    let plans = [trace.baseline.as_ref(), contender.as_ref()];
    let before = plans.map(regions);
    let mut addresses = [[[0usize; 3]; 2]; 4];
    for (location, pair) in addresses.iter_mut().enumerate() {
        for (plan, address) in pair.iter_mut().enumerate() {
            let (x, _, scratch) = views(&mut selector, arena, plans[plan], location);
            *address = [
                x.as_ptr() as usize,
                x.as_ptr() as usize,
                if scratch.is_empty() {
                    0
                } else {
                    scratch.as_ptr() as usize
                },
            ];
        }
    }
    let mut location_samples: [Pair; 4] =
        std::array::from_fn(|_| [Vec::with_capacity(7), Vec::with_capacity(7)]);
    let mut count_samples: [Pair; 4] =
        std::array::from_fn(|_| [Vec::with_capacity(7), Vec::with_capacity(7)]);
    let mut exposure: Pair = [Vec::with_capacity(4096), Vec::with_capacity(4096)];
    let process = spec.diagnostics.process_index;
    let start = Instant::now();
    let mut exposure_elapsed_s = 0.0;
    for block_turn in 0..3 {
        match (block_turn + process) % 3 {
            0 => {
                for location in 0..4 {
                    reset(&mut selector, arena, plans[0], location);
                }
                // Location and count order rotate independently of the member start.
                for round in 0..7 {
                    for turn in 0..4 {
                        let location = (turn + round + process) % 4;
                        for member_turn in 0..2 {
                            let plan = (member_turn + round + process / 4) % 2;
                            location_samples[location][plan].push(sample(
                                &mut selector,
                                arena,
                                plans[plan],
                                location,
                                QUALIFICATION_COUNTS[plan],
                            ));
                        }
                    }
                }
            }
            1 => {
                reset(&mut selector, arena, plans[0], 0);
                for round in 0..7 {
                    for turn in 0..4 {
                        let count_index = (turn + round + process / 2) % 4;
                        for member_turn in 0..2 {
                            let plan = (member_turn + round + process) % 2;
                            count_samples[count_index][plan].push(sample(
                                &mut selector,
                                arena,
                                plans[plan],
                                0,
                                COUNTS[count_index],
                            ));
                        }
                    }
                }
            }
            2 => {
                reset(&mut selector, arena, plans[0], 0);
                let exposure_start = Instant::now();
                let mut round = 0;
                loop {
                    for turn in 0..2 {
                        let plan = (turn + round + process / 2) % 2;
                        exposure[plan].push(sample(
                            &mut selector,
                            arena,
                            plans[plan],
                            0,
                            QUALIFICATION_COUNTS[plan],
                        ));
                    }
                    round += 1;
                    if round >= 7 && exposure_start.elapsed() >= Duration::from_millis(100) {
                        break;
                    }
                }
                exposure_elapsed_s = exposure_start.elapsed().as_secs_f64();
            }
            _ => unreachable!(),
        }
    }
    let elapsed_s = start.elapsed().as_secs_f64();
    let after = plans.map(regions);
    assert_eq!(before, after, "retained plan storage must not change");
    let mut addresses_after = [[[0usize; 3]; 2]; 4];
    for (location, pair) in addresses.iter().enumerate() {
        for (plan, address) in pair.iter().enumerate() {
            let (x, _, scratch) = views(&mut selector, arena, plans[plan], location);
            addresses_after[location][plan] = [
                x.as_ptr() as usize,
                x.as_ptr() as usize,
                if scratch.is_empty() {
                    0
                } else {
                    scratch.as_ptr() as usize
                },
            ];
            assert_eq!(*address, addresses_after[location][plan]);
        }
    }
    let windows: [Pair; 2] = [
        std::array::from_fn(|plan| exposure[plan][..7].to_vec()),
        std::array::from_fn(|plan| exposure[plan][exposure[plan].len() - 7..].to_vec()),
    ];
    let address_matches: Vec<_> = trace.data.workloads[..trace.data.workload_count]
        .iter()
        .filter(|w| {
            w.candidate_index == *candidate_index
                && w.placement == SamplePlacement::InPlace
                && w.len == 96
        })
        .map(|w| {
            json!({"offset_index": w.offset_index,
                "input_matches": w.input_ptr == addresses[w.offset_index][0][0],
                "output_matches": w.output_ptr == addresses[w.offset_index][0][1],
                "scratch_active": w.scratch_lens.iter().any(|&n| n != 0),
                "scratch_matches": !w.scratch_lens.iter().any(|&n| n != 0)
                    || w.scratch_ptr == addresses[w.offset_index][0][2],
            })
        })
        .collect();
    let plan_regions: Vec<_> = plans
        .iter()
        .map(|fft| {
            let mut values = Vec::new();
            fft.diagnostic_regions(&mut |r| {
                values.push(json!({"owner": r.owner,
            "kind": format!("{:?}", r.kind), "index": r.index, "ptr": r.ptr,
            "element_bytes": r.element_bytes, "len": r.len, "capacity": r.capacity}))
            });
            values
        })
        .collect();
    let result = json!({"capture": "complete", "acceptance": false,
        "candidate_index": candidate_index, "actual_chosen_index": trace.chosen_index,
        "roles": ["internal-baseline", "nominated-contender"],
        "plan_ptrs": plans.map(|p| p as *const dyn Fft<T> as *const () as usize),
        "plan_regions": plan_regions, "storage_before": before, "storage_after": after,
        "addresses": addresses, "addresses_after": addresses_after,
        "qualification_address_matches": address_matches,
        "location": (0..4).map(|index| json!({"location": index,
            "name": if index < 3 { "retained-selector" } else { "original-arena" },
            "samples": pair_json(&location_samples[index], QUALIFICATION_COUNTS)})).collect::<Vec<_>>(),
        "counts": COUNTS.iter().enumerate().map(|(index, &count)| json!({
            "location": 0, "samples": pair_json(&count_samples[index], [count, count])})).collect::<Vec<_>>(),
        "exposure": {"location": 0, "elapsed_s": exposure_elapsed_s,
            "all": pair_json(&exposure, QUALIFICATION_COUNTS),
            "first_seven": pair_json(&windows[0], QUALIFICATION_COUNTS),
            "last_seven": pair_json(&windows[1], QUALIFICATION_COUNTS)},
        "protocol": {"rounds": 7, "warm_calls_per_sample": 3,
            "qualification_counts": QUALIFICATION_COUNTS, "count_crossover": COUNTS,
            "exposure_ms": 100, "process_index": process, "elapsed_s": elapsed_s,
            "exposure_member_start": (process / 2) % 2,
            "location_member_start": (process / 4) % 2,
            "count_member_start": process % 2,
            "location_start": process % 4, "count_start": (process / 2) % 4,
            "block_order": ([0usize, 1, 2].map(|turn| (turn + process) % 3)),
            "reset": "zero once per block/location; no reset between timed samples",
            "sampler": "one non-inlined timed entry; same public slice loop for every condition"},
        "perturbation": "retains selector vectors and nominated contender through replay; context sampling is post-arena and precedes three-Arc replay; a flat exposure trace does not reject a transient during qualification",
        "scratch_limitation": "retained scratch is the final selector allocation; earlier active scratch may have been replaced",
    });
    trace.selector_buffers = Some(selector);
    result
}

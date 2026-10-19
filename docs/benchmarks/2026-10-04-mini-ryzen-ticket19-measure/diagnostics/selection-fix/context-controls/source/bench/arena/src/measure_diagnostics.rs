//! Optional, explicitly unofficial diagnostics. The original arena pair is
//! timed first. Replay retains its plans and buffers; it never rebuilds them.

use crate::adapters::{ArenaFloat, Runner};
use crate::buffers::Buffers;
use crate::cell::Planned;
use crate::spec::{CellSpec, Placement, Profile, TimingData};
use crate::timing::Stats;
use fastfft::tuning::{MeasureTrace, SamplePlacement, sample_public_slices};
use fastfft::{Fft, FftNum};
use num_complex::Complex;
use serde::{Deserialize, Serialize};
use serde_json::{Value, json};
use std::cell::RefCell;
use std::sync::Arc;
use std::time::{Duration, Instant};

#[derive(Serialize, Deserialize, Clone, Debug)]
pub struct SampleTrace {
    /// Chronological ns per whole-buffer call, before division by batch.
    pub whole_buffer_ns: Vec<f64>,
    pub round_ends: [usize; 7],
    pub batch: usize,
}

pub fn validate(spec: &CellSpec) -> Result<(), &'static str> {
    let d = &spec.diagnostics;
    if !(d.measure_trace || d.measure_context || d.sample_trace || d.factorial) {
        return Ok(());
    }
    if spec.scenario.is_some()
        || spec.libs.len() != 2
        || !spec.libs.iter().any(|l| l == "fastfft")
        || !spec.libs.iter().any(|l| l == "fastfft/measure")
        || Profile::by_name(&spec.profile).is_none_or(|p| p.rounds != 7)
    {
        return Err("diagnostics require full-profile ordinary fastfft/fastfft/measure cells");
    }
    if d.measure_context
        && (!d.measure_trace
            || spec.n != 96
            || spec.batch != 1
            || spec.precision != crate::spec::Precision::F32
            || spec.direction != crate::spec::Direction::Inverse
            || spec.placement != Placement::InPlace
            || spec.misalign != 0
            || spec.data != TimingData::Zero)
    {
        return Err(
            "measure-context requires traced zero-data aligned f32 inverse in-place N=96 batch=1",
        );
    }
    Ok(())
}

type Deferred = Box<dyn FnOnce() -> Value>;
thread_local! {
    static DEFERRED: RefCell<Option<Deferred>> = const { RefCell::new(None) };
}

pub fn defer(f: impl FnOnce() -> Value + 'static) {
    DEFERRED.with(|slot| {
        assert!(
            slot.borrow().is_none(),
            "previous diagnostic was not drained"
        );
        *slot.borrow_mut() = Some(Box::new(f));
    });
}

/// Called after the original arena's closing clock probe and wall time.
pub fn finish_deferred() -> Option<Value> {
    let f = DEFERRED.with(|slot| slot.borrow_mut().take());
    f.map(|f| f())
}

fn address<T: FftNum>(fft: &Arc<dyn Fft<T>>) -> usize {
    Arc::as_ptr(fft) as *const () as usize
}

fn placement(p: Placement) -> SamplePlacement {
    match p {
        Placement::InPlace => SamplePlacement::InPlace,
        Placement::OutOfPlace => SamplePlacement::OutOfPlace,
        Placement::Immutable => SamplePlacement::Immutable,
    }
}

pub struct Capture<T: ArenaFloat + FftNum> {
    trace: Result<Option<MeasureTrace<T>>, &'static str>,
    estimate: Option<(usize, Arc<dyn Fft<T>>)>,
    measure: Option<(usize, Arc<dyn Fft<T>>)>,
}

impl<T: ArenaFloat + FftNum> Capture<T> {
    /// Always disarm before verification can construct another Measure plan.
    pub fn drain(planned: &[Planned<T>]) -> Self {
        let trace = fastfft::tuning::take_measure_trace::<T>();
        let find = |name: &str| {
            planned.iter().enumerate().find_map(|(i, (res, runner))| {
                if res.lib == name {
                    runner.as_ref()?.diagnostic_plan().map(|p| (i, p))
                } else {
                    None
                }
            })
        };
        let estimate = find("fastfft");
        let measure = find("fastfft/measure");
        if let (Ok(Some(trace)), Some((_, actual))) = (&trace, &measure) {
            assert!(
                Arc::ptr_eq(&trace.chosen, actual),
                "capture must retain the actual public Measure Arc"
            );
        }
        Self {
            trace,
            estimate,
            measure,
        }
    }

    pub fn replay(
        self,
        spec: &CellSpec,
        bufs: &mut Buffers<T>,
        input: &[Complex<T>],
        calls: &[usize],
        retained: &mut [Option<Box<dyn Runner<T>>>],
    ) -> Value {
        let mut trace = match self.trace {
            Ok(Some(trace)) => trace,
            Ok(None) => return json!({"capture": "no-selector-invocation"}),
            Err(error) => return json!({"capture": "error", "error": error}),
        };
        let (Some((ei, estimate)), Some((mi, measure))) = (self.estimate, self.measure) else {
            return json!({"capture": "missing-arena-plan"});
        };
        if retained[ei].is_none() || retained[mi].is_none() {
            return json!({"capture": "verification-failed", "chosen_index": trace.chosen_index});
        }
        let roles = [&estimate, &trace.baseline, &measure];
        let role_names = ["arena-estimate", "internal-baseline", "chosen-measure"];
        let mut unique = Vec::<Arc<dyn Fft<T>>>::new();
        let mut role_map = [0; 3];
        let mut runners: Vec<Option<Box<dyn Runner<T>>>> = Vec::new();
        let mut k = Vec::new();
        for (role, fft) in roles.iter().enumerate() {
            if let Some(i) = unique.iter().position(|p| Arc::ptr_eq(p, fft)) {
                role_map[role] = i;
                continue;
            }
            role_map[role] = unique.len();
            unique.push(Arc::clone(fft));
            let original = if role == 0 {
                retained[ei].take()
            } else if Arc::ptr_eq(fft, &measure) {
                retained[mi].take()
            } else {
                None
            };
            runners.push(Some(original.unwrap_or_else(|| {
                crate::fastfft_adapter::retained_runner(Arc::clone(fft), spec.placement)
            })));
            // Internal baseline uses the arena Estimate's calibration. Both
            // loop contexts use exactly the same count for each actual Arc.
            k.push(if Arc::ptr_eq(fft, &measure) {
                calls[mi]
            } else {
                calls[ei]
            });
        }
        let needed = unique
            .iter()
            .map(|fft| match spec.placement {
                Placement::InPlace => fft.get_inplace_scratch_len(),
                Placement::OutOfPlace => fft.get_outofplace_scratch_len(),
                Placement::Immutable => fft.get_immutable_scratch_len(),
            })
            .max()
            .unwrap_or(0);
        let scratch_available = bufs.io_scratch_mut().2.len();
        assert!(
            needed <= scratch_available,
            "replay must not resize the original caller scratch"
        );
        let profile = Profile::by_name(&spec.profile).expect("validated profile");
        // Three declared comparisons, two loop contexts, two members. Sample
        // vectors exist before replay; all metadata formatting follows timing.
        let pairs = [(0usize, 1usize), (1, 2), (0, 2)];
        let mut samples: [[[Vec<f64>; 2]; 2]; 3] =
            std::array::from_fn(|_| std::array::from_fn(|_| std::array::from_fn(|_| Vec::new())));
        let mut ends = [[[[0usize; 7]; 2]; 2]; 3];
        let replay_clock0 = crate::clock_probe::measure_ghz();
        let replay_start = Instant::now();
        let context_control = if spec.diagnostics.measure_context {
            Some(crate::measure_context::run(&mut trace, spec, bufs))
        } else {
            None
        };
        for pair_turn in 0..3 {
            let pair_index = (pair_turn + spec.diagnostics.process_index) % 3;
            let (left, right) = pairs[pair_index];
            let ids = [role_map[left], role_map[right]];
            for round in 0..7 {
                for context_turn in 0..2 {
                    let context = (context_turn + round + spec.diagnostics.process_index) % 2;
                    for turn in 0..2 {
                        let member = (turn + round + (spec.diagnostics.process_index / 2) % 2) % 2;
                        let id = ids[member];
                        let runner = runners[id].as_mut().expect("retained runner");
                        runner.zero(bufs);
                        if spec.data == TimingData::Random {
                            runner.load(bufs, input);
                        }
                        let out = &mut samples[pair_index][context][member];
                        if context == 0 {
                            runner.turn(bufs, k[id], Duration::from_millis(profile.turn_ms), out);
                        } else {
                            let (x, y, scratch) = bufs.io_scratch_mut();
                            let p = placement(spec.placement);
                            // Match the arena's existing untimed warm calls.
                            let _ = sample_public_slices(
                                unique[id].as_ref(),
                                x,
                                y,
                                scratch,
                                p,
                                k[id].min(8),
                            );
                            let start = Instant::now();
                            loop {
                                let dt = sample_public_slices(
                                    unique[id].as_ref(),
                                    x,
                                    y,
                                    scratch,
                                    p,
                                    k[id],
                                );
                                out.push(dt.as_nanos() as f64 / k[id] as f64);
                                if start.elapsed() >= Duration::from_millis(profile.turn_ms) {
                                    break;
                                }
                            }
                        }
                        ends[pair_index][context][member][round] = out.len();
                    }
                }
            }
        }
        let replay_elapsed_s = replay_start.elapsed().as_secs_f64();
        let replay_clock1 = crate::clock_probe::measure_ghz();
        let (x, y, scratch) = bufs.io_scratch_mut();
        let input_ptr = x.as_ptr() as usize;
        let output_ptr = if spec.placement == Placement::InPlace {
            input_ptr
        } else {
            y.as_ptr() as usize
        };
        let scratch_ptr = scratch.as_ptr() as usize;
        let storage: Vec<_> = unique.iter().enumerate().map(|(i, fft)| {
            let mut regions = Vec::new();
            fft.diagnostic_regions(&mut |r| regions.push(json!({
                "owner": r.owner, "kind": format!("{:?}", r.kind), "index": r.index,
                "ptr": r.ptr, "element_bytes": r.element_bytes, "len": r.len, "capacity": r.capacity,
            })));
            let need = match spec.placement {
                Placement::InPlace => fft.get_inplace_scratch_len(),
                Placement::OutOfPlace => fft.get_outofplace_scratch_len(),
                Placement::Immutable => fft.get_immutable_scratch_len(),
            };
            let effective_scratch = fastfft::tuning::aligned_scratch_address(&mut scratch[..need]);
            let batch = fft.diagnostic_batch_path(x.len(), input_ptr, output_ptr, placement(spec.placement)).map(|b| json!({
                "path": format!("{:?}", b.path), "lanes": b.lanes,
                "stream_threshold_bytes": b.stream_threshold_bytes, "streaming": b.streaming,
                "wrapper_values": b.wrapper_values, "fallback_values": b.fallback_values,
                "stack_temporary_unobserved": b.stack_temporary_unobserved,
            }));
            let runner = runners[i].as_ref().expect("retained runner").as_ref();
            let runner_ptr = runner as *const dyn Runner<T> as *const () as usize;
            json!({"plan_ptr": address(fft), "runner_ptr": runner_ptr, "regions": regions, "scratch_len": need,
                "effective_scratch_ptr": effective_scratch, "batch": batch})
        }).collect();
        let comparisons: Vec<_> = pairs.iter().enumerate().map(|(pair_index, &(left, right))| {
            let contexts: Vec<_> = (0..2).map(|context| {
                let members: Vec<_> = (0..2).map(|member| {
                    let role = if member == 0 { left } else { right };
                    let ns = std::mem::take(&mut samples[pair_index][context][member]);
                    let stats = Stats::from_samples(&ns).scaled(1.0 / spec.batch as f64);
                    json!({"role": role_names[role], "unique_plan": role_map[role], "calls": k[role_map[role]],
                        "stats": stats, "whole_buffer_ns": ns, "round_ends": ends[pair_index][context][member]})
                }).collect();
                json!({"loop": if context == 0 { "arena-runner" } else { "selector-slices" }, "members": members})
            }).collect();
            json!({"left": role_names[left], "right": role_names[right],
                "identical_arc": role_map[left] == role_map[right], "contexts": contexts})
        }).collect();
        let workloads: Vec<_> = trace.data.workloads[..trace.data.workload_count]
            .iter()
            .map(|w| {
                let samples: Vec<_> = w
                    .samples_ns
                    .iter()
                    .enumerate()
                    .map(|(round, pair)| {
                        [0usize, 1].map(|plan| {
                            (w.valid_mask & (1 << (2 * round + plan)) != 0).then_some(pair[plan])
                        })
                    })
                    .collect();
                json!({"candidate_index": w.candidate_index, "offset_index": w.offset_index,
                "placement": format!("{:?}", w.placement), "len": w.len,
                "plan_ptrs": w.plan_ptrs, "input_ptr": w.input_ptr, "output_ptr": w.output_ptr,
                "scratch_ptr": w.scratch_ptr, "scratch_lens": w.scratch_lens, "calls": w.calls,
                "samples_ns": samples, "valid_mask": w.valid_mask, "best_ns": w.best_ns,
                "median_ns": w.median_ns, "outcome": format!("{:?}", w.outcome)})
            })
            .collect();
        let configurations: Vec<_> = trace.configurations.iter().enumerate().map(|(i, c)| json!({
            "index": i, "kernel": c.kernel(), "rust_kernel": c.rust_kernel(), "isa": format!("{:?}", c.isa()),
            "lanes": c.lanes(), "radices": c.radices(), "outcome": format!("{:?}", trace.data.candidate_outcomes[i]),
            "score": trace.data.candidate_scores[i],
        })).collect();
        json!({
            "capture": "complete", "acceptance": false,
            "perturbation": "capture preallocation and retained internal baseline; replay follows original timing and secondary planning",
            "units": "ns per whole-buffer public call; summary stats divided by batch",
            "roles": role_names, "role_map": role_map, "storage": storage,
            "buffers": {"input_ptr": input_ptr, "output_ptr": output_ptr, "scratch_ptr": scratch_ptr, "scratch_len": scratch_available},
            "selector": {"chosen_index": trace.chosen_index, "len": trace.len, "direction": format!("{:?}", trace.direction),
                "elapsed_ns": trace.elapsed_ns.to_string(), "budget_ns": trace.budget_ns.to_string(),
                "overflow": trace.data.overflow, "configurations": configurations, "workloads": workloads},
            "comparisons": comparisons,
            "context_control": context_control,
            "replay": {"clock_ghz": [replay_clock0, replay_clock1], "elapsed_s": replay_elapsed_s,
                "process_index": spec.diagnostics.process_index, "pair_rotation": spec.diagnostics.process_index % 3,
                "context_rotation": spec.diagnostics.process_index % 2,
                "member_rotation": (spec.diagnostics.process_index / 2) % 2,
                "order": "pair rotated by process; seven rounds interleave contexts and alternate pair members"},
        })
    }
}

//! Reversible exchange of existing equal-valued Stockham storage.
//! This runs after the original cell and is never acceptance evidence.

use crate::adapters::{ArenaFloat, Runner};
use crate::buffers::Buffers;
use crate::spec::{CellSpec, Profile};
use crate::timing::Stats;
use fastfft::FftNum;
use fastfft::tuning::{DiagnosticRegion, RegionKind, swap_stockham_storage};
use serde_json::{Value, json};
use std::time::{Duration, Instant};

const CALLS: usize = 19;
const PHASES: usize = 8;

#[derive(Default)]
struct Snapshot {
    plan: usize,
    runner: usize,
    regions: Vec<DiagnosticRegion>,
}

impl Snapshot {
    fn allocated() -> Self {
        Self {
            regions: Vec::with_capacity(64),
            ..Self::default()
        }
    }

    fn capture<T: ArenaFloat + FftNum>(&mut self, runner: &mut dyn Runner<T>) {
        self.runner = runner as *mut dyn Runner<T> as *mut () as usize;
        let fft = runner.diagnostic_plan_mut().expect("fastfft runner");
        self.plan = std::sync::Arc::as_ptr(fft) as *const () as usize;
        self.regions.clear();
        fft.diagnostic_regions(&mut |r| {
            assert!(
                self.regions.len() < self.regions.capacity(),
                "fixed region capacity"
            );
            self.regions.push(r);
        });
    }

    fn json(&self) -> Value {
        let regions: Vec<_> = self.regions.iter().map(|r| json!({
            "owner": r.owner, "kind": format!("{:?}", r.kind), "index": r.index,
            "ptr": r.ptr, "element_bytes": r.element_bytes, "len": r.len, "capacity": r.capacity,
        })).collect();
        json!({"plan_ptr": self.plan, "runner_ptr": self.runner, "regions": regions})
    }
}

fn swap<T: ArenaFloat + FftNum>(
    runners: &mut [Option<Box<dyn Runner<T>>>],
    mask: usize,
) -> Result<(), &'static str> {
    let (a, b) = runners.split_at_mut(1);
    let a = a[0]
        .as_mut()
        .ok_or("missing first runner")?
        .diagnostic_plan_mut()
        .ok_or("first plan unavailable")?;
    let b = b[0]
        .as_mut()
        .ok_or("missing second runner")?
        .diagnostic_plan_mut()
        .ok_or("second plan unavailable")?;
    swap_stockham_storage(a, b, mask & 1 != 0, mask & 2 != 0)
}

fn buffers<T: ArenaFloat>(bufs: &mut Buffers<T>) -> [[usize; 2]; 3] {
    let (x, y, s) = bufs.io_scratch_mut();
    [
        [x.as_ptr() as usize, x.len()],
        [y.as_ptr() as usize, y.len()],
        [s.as_ptr() as usize, s.len()],
    ]
}

fn matches_assignment(original: &[Snapshot; 2], current: &[Snapshot; 2], mask: usize) -> bool {
    (0..2).all(|member| {
        let a = &original[member];
        let b = &current[member];
        a.plan == b.plan
            && a.runner == b.runner
            && a.regions.len() == b.regions.len()
            && a.regions.iter().zip(&b.regions).all(|(old, now)| {
                let target = (mask & 1 != 0 && old.kind == RegionKind::PhaseBTwiddles)
                    || (mask & 2 != 0
                        && matches!(
                            old.kind,
                            RegionKind::Radices
                                | RegionKind::VectorDescriptors
                                | RegionKind::Twiddles
                        ));
                let ptr = if target {
                    original[1 - member]
                        .regions
                        .iter()
                        .find(|r| r.kind == old.kind && r.index == old.index)
                        .map(|r| r.ptr)
                } else {
                    Some(old.ptr)
                };
                ptr == Some(now.ptr)
                    && old.owner == now.owner
                    && old.kind == now.kind
                    && old.index == now.index
                    && old.element_bytes == now.element_bytes
                    && old.len == now.len
                    && old.capacity == now.capacity
            })
    })
}

pub fn run<T: ArenaFloat + FftNum>(
    spec: &CellSpec,
    bufs: &mut Buffers<T>,
    runners: &mut [Option<Box<dyn Runner<T>>>],
) -> Value {
    let graph = spec.diagnostics.storage_graph;
    let capture = if graph {
        "storage-graph"
    } else {
        "storage-crossover"
    };
    let phase_count = if graph { 8 } else { 4 };
    let full_mask = if graph { 3 } else { 1 };
    let indices = ["fastfft", "fastfft/measure"].map(|name| {
        spec.libs
            .iter()
            .position(|l| l == name)
            .expect("validated pair")
    });
    let mut original: [Snapshot; 2] = std::array::from_fn(|_| Snapshot::allocated());
    for member in 0..2 {
        let Some(runner) = runners[indices[member]].as_mut() else {
            return json!({"capture": capture, "acceptance": false, "status": "unsupported", "reason": "missing retained runner"});
        };
        original[member].capture(runner.as_mut());
    }
    // Validate uniqueness, identical metadata and bitwise-equal tables before
    // any timing. Exchange twice, leaving every existing owner unchanged.
    if let Err(reason) = swap(runners, full_mask) {
        return json!({"capture": capture, "acceptance": false, "status": "unsupported", "reason": reason});
    }
    swap(runners, full_mask).expect("restore validated initial exchange");
    let mut storage: [[Snapshot; 2]; PHASES] =
        std::array::from_fn(|_| std::array::from_fn(|_| Snapshot::allocated()));
    let mut restored: [Snapshot; 2] = std::array::from_fn(|_| Snapshot::allocated());
    let mut samples: [[Vec<f64>; 2]; PHASES] =
        std::array::from_fn(|_| std::array::from_fn(|_| Vec::with_capacity(32768)));
    let mut ends = [[[0usize; 7]; 2]; PHASES];
    let mut warmup_counts = [[0usize; 2]; PHASES];
    for member in 0..2 {
        restored[member].capture(
            runners[indices[member]]
                .as_mut()
                .expect("retained")
                .as_mut(),
        );
    }
    assert!(matches_assignment(&original, &restored, 0));
    let layout = buffers(bufs);
    let profile = Profile::FULL;
    // Construction alternates at bit 0. Assignment start and member start
    // use independent bits, covering the eight combinations once per cell.
    let assignment_start = (spec.diagnostics.process_index / 2) % 2 != 0;
    let member_start = (spec.diagnostics.process_index / 4) % 2;
    let condition_start = if graph {
        (spec.diagnostics.process_index / 2) % 4
    } else {
        usize::from(assignment_start)
    };
    let assignments = if graph {
        [0, 1, 3, 2, 2, 3, 1, 0]
    } else {
        [0, 1, 1, 0, 0, 0, 0, 0]
    }
    .map(|v| v ^ condition_start);
    let mut current = 0;
    let clock0 = crate::clock_probe::measure_ghz();
    let start = Instant::now();
    for phase in 0..phase_count {
        // Every condition performs the same validation scans. Mask zero is a
        // checked sham; other masks exchange only the factors that change.
        swap(runners, current ^ assignments[phase]).expect("validated reversible exchange");
        current = assignments[phase];
        for member in 0..2 {
            storage[phase][member].capture(
                runners[indices[member]]
                    .as_mut()
                    .expect("retained")
                    .as_mut(),
            );
        }
        assert!(matches_assignment(&original, &storage[phase], current));
        assert_eq!(buffers(bufs), layout);
        // Equal warm-up after either a sham or a real exchange. Calibration
        // results are retained, but every recorded batch uses fixed k=19.
        for turn in 0..2 {
            let member = (turn + member_start + phase) % 2;
            let r = runners[indices[member]].as_mut().expect("retained");
            r.zero(bufs);
            warmup_counts[phase][member] = r.calibrate(
                bufs,
                Duration::from_millis(profile.warmup_ms),
                Duration::from_micros(profile.min_batch_us),
            );
        }
        for round in 0..profile.rounds {
            for turn in 0..2 {
                let member = (turn + member_start + phase + round) % 2;
                let r = runners[indices[member]].as_mut().expect("retained");
                r.zero(bufs);
                r.turn(
                    bufs,
                    CALLS,
                    Duration::from_millis(profile.turn_ms),
                    &mut samples[phase][member],
                );
                assert_eq!(
                    samples[phase][member].capacity(),
                    32768,
                    "sample storage grew"
                );
                ends[phase][member][round] = samples[phase][member].len();
            }
        }
    }
    swap(runners, current).expect("restore original owners");
    let elapsed = start.elapsed().as_secs_f64();
    let clock1 = crate::clock_probe::measure_ghz();
    for member in 0..2 {
        restored[member].capture(
            runners[indices[member]]
                .as_mut()
                .expect("retained")
                .as_mut(),
        );
    }
    assert!(matches_assignment(&original, &restored, 0));
    assert_eq!(buffers(bufs), layout);
    let phases: Vec<_> = (0..phase_count)
        .map(|phase| {
            let members: Vec<_> = (0..2)
                .map(|member| {
                    let ns = std::mem::take(&mut samples[phase][member]);
                    let role = ["estimate", "measure"][member];
                    json!({"role": role, "calls": CALLS,
                "warmup_calibrated_calls": warmup_counts[phase][member],
                "stats": Stats::from_samples(&ns), "whole_buffer_ns": ns,
                "round_ends": ends[phase][member], "storage": storage[phase][member].json()})
                })
                .collect();
            json!({"index": phase, "swapped": assignments[phase] & 1 != 0,
                "remaining_swapped": assignments[phase] & 2 != 0,
                "condition": assignments[phase], "members": members})
        })
        .collect();
    json!({"capture": capture, "acceptance": false, "status": "complete",
        "perturbation": "tuning feature; post-cell replay; original runners and plans retained; equal-valued existing Vec owners exchanged as declared; all other regions and caller buffers fixed",
        "units": "ns per whole-buffer public call", "process_index": spec.diagnostics.process_index,
        "assignment_start": assignment_start, "condition_start": condition_start, "member_start": member_start, "calls": CALLS,
        "buffers": layout, "initial_storage": original.each_ref().map(Snapshot::json),
        "restored_storage": restored.each_ref().map(Snapshot::json), "restored": true,
        "preflight_restored": true, "sample_capacity": 32768, "sample_storage_grew": false,
        "clock_ghz": [clock0, clock1], "elapsed_s": elapsed, "phases": phases})
}

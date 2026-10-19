//! Reversible exchange of existing equal-valued coefficient storage.
//! This runs after the original cell and is never acceptance evidence.

use crate::adapters::{ArenaFloat, Runner};
use crate::buffers::Buffers;
use crate::spec::{CellSpec, Profile};
use crate::timing::Stats;
use fastfft::FftNum;
use fastfft::tuning::{
    CoefficientSwapError, DiagnosticRegion, RegionKind, swap_coefficient_storage,
};
use num_complex::Complex;
use serde_json::{Value, json};
use std::time::{Duration, Instant};

const PHASES: usize = 4;

// Observe live mappings only after all original/replay timing and restoration.
// Reading procfs allocates, so it must not run before a measured phase.
#[inline(never)]
fn memory_mappings() -> Value {
    let read = |path| match std::fs::read_to_string(path) {
        Ok(text) => json!({"path": path, "text": text}),
        Err(error) => json!({"path": path, "error": error.to_string()}),
    };
    json!({
        "captured_after_timing": true,
        "smaps": read("/proc/self/smaps"),
        "thp_enabled": read("/sys/kernel/mm/transparent_hugepage/enabled"),
        "thp_defrag": read("/sys/kernel/mm/transparent_hugepage/defrag"),
    })
}

// These fixed diagnostic cases use aligned, out-of-place caller buffers.
// Record the branch and derived addresses after timing, independently of the
// advertised scratch reservation. The auditor checks source-derived geometry.
fn workspace(n: usize, layout: [[usize; 2]; 3], plan: &Snapshot) -> Value {
    let metadata = |index| {
        plan.regions
            .iter()
            .find(|r| r.kind == RegionKind::Metadata && r.index == index)
            .expect("required workspace metadata")
            .len
    };
    match n {
        16_384 => {
            // Stockham execute: aligned AVX512-YMM I/O bypasses the gated
            // scratch route. Four Phase-A passes alternate x/y, ending at x;
            // Phase B reads x and writes y. Reservation includes public slack.
            let [x, y, scratch] = layout.map(|v| v[0]);
            assert!(x.is_multiple_of(32) && y.is_multiple_of(32));
            assert_eq!(metadata(0), 8);
            assert_eq!(metadata(11), 33_792);
            assert_eq!(layout[2][1], 33_800);
            let passes = plan
                .regions
                .iter()
                .find(|r| r.kind == RegionKind::PassDescriptors)
                .unwrap()
                .len;
            assert_eq!(passes, 4);
            json!({"path": "stockham ordinary out-of-place", "complex_bytes": 8,
                "misaligned_io": false, "gated_scratch_reserved": metadata(11),
                "gated_scratch_used": false, "input": x, "output": y,
                "scratch": scratch, "scratch_used": false, "phase_a_passes": passes,
                "phase_a": [[x,y],[y,x],[x,y],[y,x]], "phase_b": [x,y],
                "last_phase_a_in_place": false})
        }
        75_600 => {
            let misaligned = !layout[0][0].is_multiple_of(32) || !layout[1][0].is_multiple_of(32);
            assert!(!misaligned, "fixed aligned diagnostic");
            json!({"path": "stockham ordinary out-of-place", "complex_bytes": 8,
                "misaligned_io": misaligned, "gated_scratch_reserved": metadata(11),
                "gated_scratch_used": false, "input": layout[0][0], "output": layout[1][0]})
        }
        165_375 => {
            assert_eq!(metadata(5), 1, "ungrouped fixed diagnostic");
            assert_eq!(metadata(7), 0, "unblocked fixed diagnostic");
            assert!(layout[2][0].is_multiple_of(64));
            let matrix = layout[2][0];
            let work1 = matrix + metadata(3) * 16;
            let work2 = work1 + metadata(4) * 16;
            json!({"path": "fourstep ungrouped unblocked", "complex_bytes": 16,
                "matrix": matrix, "work1": work1, "work2": work2,
                "matrix_len": metadata(3), "work_len": metadata(4),
                "input": layout[0][0], "output": layout[1][0]})
        }
        _ => unreachable!("validated workspace case"),
    }
}

// Only the initialized, live canonical byte-array owner is read, never object
// padding or spare capacity. This new case does not change legacy replay work.
fn backing<'a, T: ArenaFloat + FftNum>(s: &Snapshot, runner: &'a mut dyn Runner<T>) -> &'a [u8] {
    let plan = runner.diagnostic_plan_mut().expect("live retained plan");
    assert_eq!(s.plan, std::sync::Arc::as_ptr(plan) as *const () as usize);
    let r = s
        .regions
        .iter()
        .find(|r| r.kind == RegionKind::CoefficientStorage)
        .unwrap();
    assert!(matches!(r.element_bytes, 64 | 4096) && r.ptr != 0 && r.len > 0 && r.len <= r.capacity);
    let mut current = None;
    plan.diagnostic_regions(&mut |v| {
        if v.kind == RegionKind::CoefficientStorage {
            assert!(current.is_none());
            current = Some((v.ptr, v.element_bytes, v.len, v.capacity));
        }
    });
    assert_eq!(current, Some((r.ptr, r.element_bytes, r.len, r.capacity)));
    let len = r.len.checked_mul(r.element_bytes).unwrap();
    // SAFETY: the live owner was just revalidated. Its Block/Page elements
    // contain initialized u8 arrays without padding, and remain borrowed.
    unsafe { std::slice::from_raw_parts(r.ptr as *const u8, len) }
}

fn same_output<T: ArenaFloat>(a: &[Complex<T>], b: &[Complex<T>]) -> bool {
    a.len() == b.len()
        && a.iter().zip(b).all(|(x, y)| {
            x.re.val().to_bits() == y.re.val().to_bits()
                && x.im.val().to_bits() == y.im.val().to_bits()
        })
}

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
) -> Result<(), CoefficientSwapError> {
    let (a, b) = runners.split_at_mut(1);
    let a = a[0]
        .as_mut()
        .ok_or(CoefficientSwapError::UnsupportedPlan)?
        .diagnostic_plan_mut()
        .ok_or(CoefficientSwapError::UnsupportedPlan)?;
    let b = b[0]
        .as_mut()
        .ok_or(CoefficientSwapError::UnsupportedPlan)?
        .diagnostic_plan_mut()
        .ok_or(CoefficientSwapError::UnsupportedPlan)?;
    swap_coefficient_storage(a, b, mask != 0)
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
                let target = mask != 0
                    && matches!(
                        old.kind,
                        RegionKind::CoefficientStorage
                            | RegionKind::PassDescriptors
                            | RegionKind::Radices
                            | RegionKind::Twiddles
                            | RegionKind::PhaseBTwiddles
                            | RegionKind::ColumnRadices
                            | RegionKind::RowRadices
                            | RegionKind::VectorDescriptors
                            | RegionKind::ColumnTwiddles
                            | RegionKind::RowTwiddles
                            | RegionKind::CrossTwiddles
                            | RegionKind::FineTwiddles
                    );
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
    input: &[Complex<T>],
    runners: &mut [Option<Box<dyn Runner<T>>>],
) -> Value {
    match spec.n {
        16_384 => run_fixed::<T, 4>(spec, bufs, input, runners),
        75_600 | 165_375 => run_fixed::<T, 1>(spec, bufs, input, runners),
        _ => unreachable!("validated coefficient crossover size"),
    }
}

fn run_fixed<T: ArenaFloat + FftNum, const CALLS: usize>(
    spec: &CellSpec,
    bufs: &mut Buffers<T>,
    input: &[Complex<T>],
    runners: &mut [Option<Box<dyn Runner<T>>>],
) -> Value {
    const CAPTURE: &str = "large-storage-crossover";
    let capture = CAPTURE;
    let phase_count = PHASES;
    let full_mask = 1;
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
        if CALLS == 4
            && runner.describe().as_deref()
                != Some(
                    "stockham avx512-ymm split L=8 radices=8x4x8x8 scratch=33800 scratch_oop=33800 scratch_immutable=33800",
                )
        {
            return json!({"capture": capture, "acceptance": false, "status": "unsupported", "reason": "N16384 retained recipe differs from the fixed crossover"});
        }
        original[member].capture(runner.as_mut());
    }
    // The caller already verified these actual runners on input. Allocate all
    // references before replay; every phase checks that nonzero output exactly.
    let mut original_bytes: [Vec<u8>; 2] = std::array::from_fn(|_| Vec::new());
    let mut expected: [Vec<Complex<T>>; 2] = std::array::from_fn(|_| Vec::new());
    if CALLS == 4 {
        assert_eq!(input.len(), 16_384);
        for member in 0..2 {
            let runner = runners[indices[member]].as_mut().unwrap();
            original_bytes[member] = backing(&original[member], runner.as_mut()).to_vec();
            runner.zero(bufs);
            runner.load(bufs, input);
            runner.run(bufs);
            expected[member] = bufs.output.as_slice().to_vec();
        }
    }
    // Validate uniqueness, identical metadata and bitwise-equal tables before
    // any timing. Exchange twice, leaving every existing owner unchanged.
    if let Err(reason) = swap(runners, full_mask) {
        return json!({"capture": capture, "acceptance": false, "status": "unsupported", "reason": format!("{reason:?}")});
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
    if CALLS == 4 {
        for member in 0..2 {
            assert_eq!(
                original_bytes[member],
                backing(
                    &restored[member],
                    runners[indices[member]].as_mut().unwrap().as_mut()
                )
            );
        }
    }
    let layout = buffers(bufs);
    let profile = Profile::FULL;
    // Construction alternates at bit 0. Assignment start and member start
    // use independent bits, covering the eight combinations once per cell.
    let assignment_start = spec.diagnostics.process_index & 2 != 0;
    let member_start = (spec.diagnostics.process_index / 4) % 2;
    let condition_start = usize::from(assignment_start);
    let assignments = [0, 1, 1, 0].map(|v| v ^ condition_start);
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
        if CALLS == 4 {
            for member in 0..2 {
                let runner = runners[indices[member]].as_mut().unwrap();
                assert_eq!(
                    original_bytes[member ^ current],
                    backing(&storage[phase][member], runner.as_mut())
                );
                runner.zero(bufs);
                runner.load(bufs, input);
                runner.run(bufs);
                assert!(
                    same_output(&expected[member], bufs.output.as_slice()),
                    "swapped output differs"
                );
            }
        }
        assert_eq!(buffers(bufs), layout);
        // Equal warm-up after either a sham or a real exchange. Calibration
        // results are retained, but every recorded batch uses the cell's fixed call count.
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
        // Round indices rotate both members and address separate end arrays.
        #[allow(clippy::needless_range_loop)]
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
    if CALLS == 4 {
        for member in 0..2 {
            let runner = runners[indices[member]].as_mut().unwrap();
            assert_eq!(
                original_bytes[member],
                backing(&restored[member], runner.as_mut())
            );
            runner.zero(bufs);
            runner.load(bufs, input);
            runner.run(bufs);
            assert!(
                same_output(&expected[member], bufs.output.as_slice()),
                "restored output differs"
            );
        }
    }
    assert_eq!(buffers(bufs), layout);
    let mappings = memory_mappings();
    let workspace = workspace(spec.n, layout, &original[0]);
    let phases: Vec<_> = (0..phase_count)
        .map(|phase| {
            let members: Vec<_> = (0..2)
                .map(|member| {
                    let ns = std::mem::take(&mut samples[phase][member]);
                    let role = ["estimate", "measure"][member];
                    let mut value = json!({"role": role, "calls": CALLS,
                "warmup_calibrated_calls": warmup_counts[phase][member],
                "stats": Stats::from_samples(&ns), "whole_buffer_ns": ns,
                "round_ends": ends[phase][member], "storage": storage[phase][member].json()});
                    if CALLS == 4 {
                        value["coefficients_equal"] = json!(true);
                        value["output_bitwise_equal"] = json!(true);
                    }
                    value
                })
                .collect();
            json!({"index": phase, "swapped": assignments[phase] & 1 != 0,
                "condition": assignments[phase], "members": members})
        })
        .collect();
    let mut result = json!({"capture": capture, "acceptance": false, "status": "complete",
        "perturbation": "tuning feature; post-cell replay; original runners and plans retained; equal-valued existing Vec owners exchanged as declared; all other regions and caller buffers fixed",
        "units": "ns per whole-buffer public call", "process_index": spec.diagnostics.process_index,
        "assignment_start": assignment_start, "condition_start": condition_start, "member_start": member_start, "calls": CALLS,
        "buffers": layout, "initial_storage": original.each_ref().map(Snapshot::json),
        "restored_storage": restored.each_ref().map(Snapshot::json), "restored": true,
        "preflight_restored": true, "sample_capacity": 32768, "sample_storage_grew": false,
        "clock_ghz": [clock0, clock1], "elapsed_s": elapsed, "phases": phases,
        "memory_mappings": mappings, "workspace": workspace});
    if CALLS == 4 {
        result["backing_bytes_restored"] = json!(true);
        result["output_bitwise_restored"] = json!(true);
        result["verification_input"] = json!("original seeded nonzero correctness input");
    }
    result
}

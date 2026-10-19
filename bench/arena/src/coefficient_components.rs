//! Fixed-allocation Phase-B versus whole-slab displacement, after original arena timing.
//! This is diagnostic evidence, never acceptance. No plan is rebuilt.

use crate::adapters::{ArenaFloat, Runner};
use crate::buffers::Buffers;
use crate::spec::{CellSpec, Placement, Profile};
use crate::timing::Stats;
use fastfft::FftNum;
use fastfft::tuning::{
    DiagnosticRegion, RegionKind, shift_coefficient_storage, shift_phase_b_storage,
};
use num_complex::Complex;
use serde_json::{Value, json};
use std::time::{Duration, Instant};

const PHASES: usize = 6;
const CAPACITY: usize = 32768;

fn coefficient(kind: RegionKind) -> bool {
    matches!(
        kind,
        RegionKind::Twiddles
            | RegionKind::PhaseBTwiddles
            | RegionKind::ColumnTwiddles
            | RegionKind::RowTwiddles
            | RegionKind::CrossTwiddles
            | RegionKind::FineTwiddles
    )
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
            assert!(self.regions.len() < self.regions.capacity());
            self.regions.push(r);
        });
    }
    fn json(&self) -> Value {
        let regions: Vec<_> = self
            .regions
            .iter()
            .map(|r| {
                json!({
                    "owner": r.owner, "kind": format!("{:?}",r.kind), "index": r.index,
                    "ptr": r.ptr, "element_bytes": r.element_bytes, "len": r.len,
                    "capacity": r.capacity,
                })
            })
            .collect();
        json!({"plan_ptr": self.plan, "runner_ptr": self.runner, "regions": regions})
    }
}

// Only read the initialized byte-array allocation of a live, direct canonical
// Stockham/FourStep plan. Object padding and spare Vec capacity are never read.
fn backing<'a>(s: &Snapshot, runner: &'a mut dyn Runner<impl ArenaFloat + FftNum>) -> &'a [u8] {
    let live = runner.diagnostic_plan_mut().expect("live retained plan");
    assert_eq!(s.plan, std::sync::Arc::as_ptr(live) as *const () as usize);
    let r = s
        .regions
        .iter()
        .find(|r| r.kind == RegionKind::CoefficientStorage)
        .expect("canonical storage");
    assert!(matches!(r.element_bytes, 64 | 4096));
    assert!(r.ptr != 0 && r.len > 0 && r.len <= r.capacity);
    let mut current = None;
    live.diagnostic_regions(&mut |region| {
        if region.kind == RegionKind::CoefficientStorage {
            assert!(current.is_none(), "one canonical owner");
            current = Some((
                region.ptr,
                region.element_bytes,
                region.len,
                region.capacity,
            ));
        }
    });
    assert_eq!(current, Some((r.ptr, r.element_bytes, r.len, r.capacity)));
    let bytes = r.len.checked_mul(r.element_bytes).expect("bounded backing");
    // SAFETY: this snapshot was captured from the retained live plan; backing
    // ownership and base never change during this diagnostic. Canonical Block
    // and Page elements are fully initialized u8 arrays without padding.
    unsafe { std::slice::from_raw_parts(r.ptr as *const u8, bytes) }
}

fn same_geometry(a: &Snapshot, b: &Snapshot, condition: usize) -> bool {
    a.plan == b.plan
        && a.runner == b.runner
        && a.regions.len() == b.regions.len()
        && a.regions.iter().zip(&b.regions).all(|(x, y)| {
            let ptr = x.ptr
                + if x.len != 0
                    && ((condition == 2 && coefficient(x.kind))
                        || (condition == 1 && x.kind == RegionKind::PhaseBTwiddles))
                {
                    1024
                } else {
                    0
                };
            (
                x.owner,
                x.kind,
                x.index,
                ptr,
                x.element_bytes,
                x.len,
                x.capacity,
            ) == (
                y.owner,
                y.kind,
                y.index,
                y.ptr,
                y.element_bytes,
                y.len,
                y.capacity,
            )
        })
}

fn same_coefficients(a: &Snapshot, before: &[u8], b: &Snapshot, now: &[u8]) -> bool {
    let base = |s: &Snapshot| {
        s.regions
            .iter()
            .find(|r| r.kind == RegionKind::CoefficientStorage)
            .unwrap()
            .ptr
    };
    a.regions
        .iter()
        .zip(&b.regions)
        .filter(|(r, _)| coefficient(r.kind) && r.len != 0)
        .all(|(x, y)| {
            let len = x.element_bytes.checked_mul(x.len).unwrap();
            let p = x.ptr.checked_sub(base(a)).unwrap();
            let q = y.ptr.checked_sub(base(b)).unwrap();
            before[p..p + len] == now[q..q + len]
        })
}

fn buffers<T: ArenaFloat>(bufs: &mut Buffers<T>) -> [[usize; 2]; 3] {
    let (x, y, s) = bufs.io_scratch_mut();
    [
        [x.as_ptr() as usize, x.len()],
        [y.as_ptr() as usize, y.len()],
        [s.as_ptr() as usize, s.len()],
    ]
}
fn output<T: ArenaFloat>(bufs: &Buffers<T>, p: Placement) -> &[Complex<T>] {
    match p {
        Placement::InPlace => bufs.input.as_slice(),
        _ => bufs.output.as_slice(),
    }
}
fn same_output<T: ArenaFloat>(a: &[Complex<T>], b: &[Complex<T>]) -> bool {
    a.len() == b.len()
        && a.iter().zip(b).all(|(x, y)| {
            x.re.val().to_bits() == y.re.val().to_bits()
                && x.im.val().to_bits() == y.im.val().to_bits()
        })
}

fn change<T: ArenaFloat + FftNum>(runner: &mut dyn Runner<T>, current: usize, requested: usize) {
    let fft = runner.diagnostic_plan_mut().expect("direct retained plan");
    match current {
        1 => shift_phase_b_storage(fft, 0),
        0 | 2 => shift_coefficient_storage(fft, 0),
        _ => unreachable!("fixed component"),
    }
    .expect("restore prior component before transition");
    match requested {
        1 => shift_phase_b_storage(fft, 1024),
        2 => shift_coefficient_storage(fft, 1024),
        0 => shift_coefficient_storage(fft, 0),
        _ => unreachable!("fixed component"),
    }
    .expect("apply fixed component intervention");
}

pub fn run<T: ArenaFloat + FftNum>(
    spec: &CellSpec,
    bufs: &mut Buffers<T>,
    input: &[Complex<T>],
    runners: &mut [Option<Box<dyn Runner<T>>>],
) -> Value {
    match spec.n {
        4096 => run_fixed::<T, 20>(spec, bufs, input, runners),
        210 => run_fixed::<T, 160>(spec, bufs, input, runners),
        _ => unreachable!("validated fixed cell"),
    }
}

fn run_fixed<T: ArenaFloat + FftNum, const CALLS: usize>(
    spec: &CellSpec,
    bufs: &mut Buffers<T>,
    input: &[Complex<T>],
    runners: &mut [Option<Box<dyn Runner<T>>>],
) -> Value {
    let indices = ["fastfft", "fastfft/measure"]
        .map(|name| spec.libs.iter().position(|l| l == name).unwrap());
    let tracked = [true, spec.n == 4096];
    let shifted = [spec.n == 4096; 2]; // N210 is the FourStep code control; neither member moves.
    let descriptions: [String; 2] = std::array::from_fn(|m| {
        runners[indices[m]]
            .as_ref()
            .expect("verified runner")
            .describe()
            .unwrap()
    });
    if spec.n == 4096 {
        assert!(
            descriptions
                .iter()
                .all(|s| s.starts_with("stockham avx512-ymm split L=8 radices=8x8x8 "))
        );
    } else {
        assert!(descriptions[0].starts_with("fourstep avx512 split L=8 decomposition=14x15 "));
    }
    let mut original: [Snapshot; 2] = std::array::from_fn(|_| Snapshot::allocated());
    let mut snapshots: [[Snapshot; 2]; PHASES] =
        std::array::from_fn(|_| std::array::from_fn(|_| Snapshot::allocated()));
    let mut restored: [Snapshot; 2] = std::array::from_fn(|_| Snapshot::allocated());
    let mut original_bytes: [Vec<u8>; 2] = std::array::from_fn(|_| Vec::new());
    let expected: [Vec<Complex<T>>; 2] = std::array::from_fn(|m| {
        let r = runners[indices[m]].as_mut().expect("retained");
        original[m].capture(r.as_mut());
        if tracked[m] {
            original_bytes[m] = backing(&original[m], r.as_mut()).to_vec();
        }
        r.zero(bufs);
        r.load(bufs, input);
        r.run(bufs);
        output(bufs, spec.placement).to_vec()
    });
    let layout = buffers(bufs);
    // Validate every intervention before any replay timing, then restore exact
    // original bytes. All storage exists already; the seam cannot grow it.
    for m in 0..2 {
        if shifted[m] {
            let r = runners[indices[m]].as_mut().unwrap();
            let mut previous = 0;
            for condition in [0, 1, 2, 1, 0] {
                change(r.as_mut(), previous, condition);
                previous = condition;
            }
            restored[m].capture(r.as_mut());
            assert!(same_geometry(&original[m], &restored[m], 0));
            assert_eq!(original_bytes[m], backing(&restored[m], r.as_mut()));
        }
    }
    let mut samples: [[Vec<f64>; 2]; PHASES] =
        std::array::from_fn(|_| std::array::from_fn(|_| Vec::with_capacity(CAPACITY)));
    let mut ends = [[[0usize; 7]; 2]; PHASES];
    let mut warmup_counts = [[0usize; 2]; PHASES];
    let reverse = spec.diagnostics.process_index & 2 != 0;
    let positions = if reverse {
        [0, 2, 1, 1, 2, 0]
    } else {
        [0, 1, 2, 2, 1, 0]
    };
    let member_start = (spec.diagnostics.process_index / 4) % 2;
    let profile = Profile::FULL;
    let clock0 = crate::clock_probe::measure_ghz();
    let start = Instant::now();
    let mut previous = 0;
    for phase in 0..PHASES {
        for m in 0..2 {
            let r = runners[indices[m]].as_mut().unwrap();
            if shifted[m] {
                change(r.as_mut(), previous, positions[phase]);
            }
            snapshots[phase][m].capture(r.as_mut());
            assert!(same_geometry(
                &original[m],
                &snapshots[phase][m],
                if shifted[m] { positions[phase] } else { 0 }
            ));
            if tracked[m] {
                assert!(same_coefficients(
                    &original[m],
                    &original_bytes[m],
                    &snapshots[phase][m],
                    backing(&snapshots[phase][m], r.as_mut())
                ));
            }
            r.zero(bufs);
            r.load(bufs, input);
            r.run(bufs);
            assert!(
                same_output(&expected[m], output(bufs, spec.placement)),
                "phase output differs from verified original plan"
            );
        }
        assert_eq!(buffers(bufs), layout);
        previous = positions[phase];
        for turn in 0..2 {
            let m = (turn + member_start + phase) % 2;
            let r = runners[indices[m]].as_mut().unwrap();
            r.zero(bufs);
            warmup_counts[phase][m] = r.calibrate(
                bufs,
                Duration::from_millis(profile.warmup_ms),
                Duration::from_micros(profile.min_batch_us),
            );
        }
        #[allow(clippy::needless_range_loop)]
        for round in 0..profile.rounds {
            for turn in 0..2 {
                let m = (turn + member_start + phase + round) % 2;
                let r = runners[indices[m]].as_mut().unwrap();
                r.zero(bufs);
                r.turn(
                    bufs,
                    CALLS,
                    Duration::from_millis(profile.turn_ms),
                    &mut samples[phase][m],
                );
                assert_eq!(
                    samples[phase][m].capacity(),
                    CAPACITY,
                    "sample storage grew"
                );
                ends[phase][m][round] = samples[phase][m].len();
            }
        }
    }
    for m in 0..2 {
        let r = runners[indices[m]].as_mut().unwrap();
        if shifted[m] {
            shift_coefficient_storage(r.diagnostic_plan_mut().unwrap(), 0)
                .expect("restore canonical position");
        }
        restored[m].capture(r.as_mut());
        assert!(same_geometry(&original[m], &restored[m], 0));
        if tracked[m] {
            assert_eq!(original_bytes[m], backing(&restored[m], r.as_mut()));
        }
    }
    assert_eq!(buffers(bufs), layout);
    let elapsed = start.elapsed().as_secs_f64();
    let clock1 = crate::clock_probe::measure_ghz();
    let phases: Vec<_>=(0..PHASES).map(|p| {
        let members: Vec<_>=(0..2).map(|m| {
            let ns=std::mem::take(&mut samples[p][m]);
            let role=["estimate","measure"][m];
            json!({"role":role,"shifted":shifted[m],"shift":if shifted[m] && positions[p]!=0 {1024}else{0},"scope":if !shifted[m] || positions[p]==0 {"none"} else if positions[p]==1 {"phase_b"} else {"all"},
                "calls":CALLS,"warmup_calibrated_calls":warmup_counts[p][m],"stats":Stats::from_samples(&ns),"whole_buffer_ns":ns,
                "round_ends":ends[p][m],"storage":snapshots[p][m].json(),"coefficients_equal":true,"output_bitwise_equal":true})
        }).collect();
        json!({"index":p,"condition":positions[p],"members":members})
    }).collect();
    let read = |path| std::fs::read_to_string(path).unwrap_or_else(|e| format!("read error: {e}"));
    json!({"capture":"coefficient-components","acceptance":false,"status":"complete","units":"ns per whole-buffer public call",
        "perturbation":"tuning feature; post-cell replay; Phase-B-only or all coefficients shift inside existing allocation; N210 retains zero offsets for code control; descriptor/plan/runner/caller addresses retained; no rebuilt plans",
        "process_index":spec.diagnostics.process_index,"reverse_components":reverse,"member_start":member_start,"calls":CALLS,
        "descriptions":descriptions,"shifted":shifted,"buffers":layout,"initial_storage":original.each_ref().map(Snapshot::json),
        "restored_storage":restored.each_ref().map(Snapshot::json),"restored":true,"backing_bytes_restored":true,"preflight_restored":true,
        "sample_capacity":CAPACITY,"sample_storage_grew":false,"clock_ghz":[clock0,clock1],"elapsed_s":elapsed,"phases":phases,
        "memory_mappings":{"captured_after_timing":true,"smaps":read("/proc/self/smaps")}})
}

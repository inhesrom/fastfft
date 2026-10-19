//! A dependent-register cycle probe for the arena's drift checks.

use std::time::Instant;

#[cfg(feature = "measure-diagnostics")]
#[derive(Clone, Copy, Debug, Default, serde::Serialize, serde::Deserialize)]
pub struct ProbeSample {
    pub wall_ns: u64,
    pub thread_cpu_ns: Option<u64>,
    pub voluntary_switches: Option<i64>,
    pub involuntary_switches: Option<i64>,
    pub cpus: [Option<u32>; 2],
}

#[cfg(feature = "measure-diagnostics")]
#[derive(Clone, Copy, Debug, Default, serde::Serialize, serde::Deserialize)]
pub struct ProbeEvidence {
    pub selected_ghz: f64,
    pub iterations: u64,
    pub samples: [ProbeSample; 3],
}

#[cfg(feature = "measure-diagnostics")]
thread_local! {
    static PROBES: std::cell::RefCell<([ProbeEvidence; 4], usize)> = const {
        std::cell::RefCell::new(([ProbeEvidence { selected_ghz: 0.0, iterations: 0,
            samples: [ProbeSample { wall_ns: 0, thread_cpu_ns: None, voluntary_switches: None,
                involuntary_switches: None, cpus: [None, None] }; 3] }; 4], 0))
    };
}

#[cfg(feature = "measure-diagnostics")]
pub fn clear_evidence() {
    PROBES.with(|slot| slot.borrow_mut().1 = 0);
}

#[cfg(feature = "measure-diagnostics")]
pub fn take_evidence() -> Vec<ProbeEvidence> {
    PROBES.with(|slot| {
        let mut slot = slot.borrow_mut();
        let result = slot.0[..slot.1].to_vec();
        slot.1 = 0;
        result
    })
}

#[cfg(feature = "measure-diagnostics")]
fn cpu_evidence() -> (Option<u64>, Option<[i64; 2]>, Option<u32>) {
    #[cfg(target_os = "linux")]
    // SAFETY: libc writes initialized scalar records; no FFT buffer is accessed.
    unsafe {
        let mut t: libc::timespec = std::mem::zeroed();
        let mut usage: libc::rusage = std::mem::zeroed();
        let time = (libc::clock_gettime(libc::CLOCK_THREAD_CPUTIME_ID, &mut t) == 0)
            .then(|| t.tv_sec as u64 * 1_000_000_000 + t.tv_nsec as u64);
        let switches = (libc::getrusage(libc::RUSAGE_THREAD, &mut usage) == 0)
            .then_some([usage.ru_nvcsw, usage.ru_nivcsw]);
        let cpu = u32::try_from(libc::sched_getcpu()).ok();
        (time, switches, cpu)
    }
    #[cfg(not(target_os = "linux"))]
    {
        (None, None, None)
    }
}

#[inline(never)]
fn dependent_adds(iterations: u64) -> u64 {
    if iterations == 0 {
        return 0;
    }
    let mut value = 0u64;
    #[cfg(target_arch = "x86_64")]
    // SAFETY: only the declared registers and flags change; no memory or
    // stack is accessed. A nonzero counter bounds the loop. Assembly keeps
    // four dependent adds: Rust's wrapping_add chain folds to one add.
    unsafe {
        core::arch::asm!(
            "2:",
            "add {value}, 1",
            "add {value}, 1",
            "add {value}, 1",
            "add {value}, 1",
            "dec {remaining}",
            "jnz 2b",
            value = inout(reg) value,
            remaining = inout(reg) iterations => _,
            options(nomem, nostack),
        );
    }
    #[cfg(target_arch = "aarch64")]
    // SAFETY: the same register-only, nonzero-counter contract as above.
    unsafe {
        core::arch::asm!(
            "2:",
            "add {value}, {value}, #1",
            "add {value}, {value}, #1",
            "add {value}, {value}, #1",
            "add {value}, {value}, #1",
            "subs {remaining}, {remaining}, #1",
            "b.ne 2b",
            value = inout(reg) value,
            remaining = inout(reg) iterations => _,
            options(nomem, nostack),
        );
    }
    #[cfg(not(any(target_arch = "x86_64", target_arch = "aarch64")))]
    for _ in 0..iterations {
        // Preserve the legacy relative drift probe on other architectures.
        value = std::hint::black_box(value.wrapping_add(4));
    }
    value
}

/// GHz from four dependent one-cycle adds per iteration on x86-64/AArch64.
/// Other architectures retain the legacy relative throughput index.
pub fn measure_ghz() -> f64 {
    const ITERATIONS: u64 = 10_000_000;
    let mut best = 0.0f64;
    #[cfg(feature = "measure-diagnostics")]
    let mut evidence = ProbeEvidence {
        iterations: ITERATIONS,
        ..Default::default()
    };
    for _sample in 0..3 {
        #[cfg(feature = "measure-diagnostics")]
        let before = cpu_evidence();
        let start = Instant::now();
        std::hint::black_box(dependent_adds(ITERATIONS));
        let elapsed = start.elapsed();
        best = best.max((ITERATIONS * 4) as f64 / elapsed.as_secs_f64() / 1e9);
        #[cfg(feature = "measure-diagnostics")]
        {
            let after = cpu_evidence();
            let switches = before
                .1
                .zip(after.1)
                .map(|(a, b)| [b[0] - a[0], b[1] - a[1]]);
            evidence.samples[_sample] = ProbeSample {
                wall_ns: elapsed.as_nanos() as u64,
                thread_cpu_ns: before.0.zip(after.0).map(|(a, b)| b - a),
                voluntary_switches: switches.map(|s| s[0]),
                involuntary_switches: switches.map(|s| s[1]),
                cpus: [before.2, after.2],
            };
        }
    }
    #[cfg(feature = "measure-diagnostics")]
    PROBES.with(|slot| {
        let mut slot = slot.borrow_mut();
        evidence.selected_ghz = best;
        let index = slot.1;
        assert!(
            index < slot.0.len(),
            "clock evidence must be drained per cell"
        );
        slot.0[index] = evidence;
        slot.1 += 1;
    });
    best
}

#[cfg(test)]
mod tests {
    #[test]
    fn assembly_counts_the_requested_iterations() {
        for iterations in [0, 1, 2, 37, 10_000] {
            assert_eq!(super::dependent_adds(iterations), iterations * 4);
        }
    }
}

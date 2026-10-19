//! A dependent-register cycle probe for the arena's drift checks.

use std::time::Instant;

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
    for _ in 0..3 {
        let start = Instant::now();
        std::hint::black_box(dependent_adds(ITERATIONS));
        best = best.max((ITERATIONS * 4) as f64 / start.elapsed().as_secs_f64() / 1e9);
    }
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

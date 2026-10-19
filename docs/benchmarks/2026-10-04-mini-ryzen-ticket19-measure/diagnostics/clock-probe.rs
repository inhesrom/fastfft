//! Standalone comparison of the original and repaired clock probes.
//! Compile with rustc -O -C llvm-args=-align-all-functions=6 and pin to CPU 2.

#[path = "../../../../bench/arena/src/clock_probe.rs"]
mod clock_probe;

use std::time::{Duration, Instant};

#[inline(never)]
fn old() -> f64 {
    let mut best = 0.0f64;
    for _ in 0..3 {
        let iters: u64 = 10_000_000;
        let t = Instant::now();
        let mut x = std::hint::black_box(0u64);
        for _ in 0..iters {
            x = std::hint::black_box(
                x.wrapping_add(1)
                    .wrapping_add(1)
                    .wrapping_add(1)
                    .wrapping_add(1),
            );
        }
        std::hint::black_box(x);
        best = best.max((iters * 4) as f64 / t.elapsed().as_secs_f64() / 1e9);
    }
    best
}

fn main() {
    let args: Vec<_> = std::env::args().collect();
    let fixed = args[1] == "fixed";
    let count: usize = args[2].parse().unwrap();
    for sample in 0..count {
        let ghz = if fixed {
            clock_probe::measure_ghz()
        } else {
            old()
        };
        println!("{{\"sample\":{sample},\"ghz\":{ghz}}}");
        std::thread::sleep(Duration::from_millis(20));
    }
}

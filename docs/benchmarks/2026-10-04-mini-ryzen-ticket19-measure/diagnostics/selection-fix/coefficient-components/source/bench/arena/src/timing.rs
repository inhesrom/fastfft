//! Timing loop and statistics.

use serde::{Deserialize, Serialize};
use std::time::{Duration, Instant};

/// Summary statistics of per-call times (ns).
#[derive(Serialize, Deserialize, Clone, Copy, Debug, Default, PartialEq)]
pub struct Stats {
    /// Minimum batch mean (the headline number).
    pub best: f64,
    /// 1st-percentile batch mean: a best time that one outlier batch cannot
    /// set (the small-N gate statistic).
    #[serde(default)]
    pub p1: f64,
    pub median: f64,
    pub p10: f64,
    pub p90: f64,
    pub samples: usize,
}

impl Stats {
    pub fn from_samples(v: &[f64]) -> Stats {
        if v.is_empty() {
            return Stats::default();
        }
        let mut s = v.to_vec();
        s.sort_by(|a, b| a.total_cmp(b));
        let q = |f: f64| s[((s.len() - 1) as f64 * f).round() as usize];
        let median = if s.len() % 2 == 1 {
            s[s.len() / 2]
        } else {
            0.5 * (s[s.len() / 2 - 1] + s[s.len() / 2])
        };
        Stats {
            best: s[0],
            p1: q(0.01),
            median,
            p10: q(0.1),
            p90: q(0.9),
            samples: s.len(),
        }
    }

    pub fn scaled(self, k: f64) -> Stats {
        Stats {
            best: self.best * k,
            p1: self.p1 * k,
            median: self.median * k,
            p10: self.p10 * k,
            p90: self.p90 * k,
            samples: self.samples,
        }
    }
}

/// Runs `f` for at least `warmup` and returns the number of calls per timed
/// batch needed for a batch to last at least `min_batch`.
pub fn warmup_and_calibrate<F: FnMut()>(f: &mut F, warmup: Duration, min_batch: Duration) -> usize {
    let start = Instant::now();
    let mut calls = 0u64;
    let mut last_rate_start = start;
    let mut last_rate_calls = 0u64;
    loop {
        f();
        calls += 1;
        let el = start.elapsed();
        // Measure the rate over the second half of the warm-up only.
        if el >= warmup / 2 && last_rate_calls == 0 {
            last_rate_start = Instant::now();
            last_rate_calls = calls;
        }
        if el >= warmup && calls >= 2 {
            break;
        }
    }
    calls_per_batch(
        start.elapsed(),
        calls,
        last_rate_start.elapsed(),
        calls - last_rate_calls,
        min_batch,
    )
}

fn calls_per_batch(
    warmup_elapsed: Duration,
    calls: u64,
    tail_elapsed: Duration,
    tail_calls: u64,
    min_batch: Duration,
) -> usize {
    let per_call = tail_elapsed.as_secs_f64() / tail_calls.max(1) as f64;
    // A slow call can cross both warm-up boundaries. In that case the
    // tail has no completed calls, so use the entire measured warm-up.
    let per_call = if tail_calls > 0 && per_call > 0.0 {
        per_call
    } else {
        warmup_elapsed.as_secs_f64() / calls as f64
    };
    ((min_batch.as_secs_f64() / per_call).ceil() as usize).max(1)
}

/// One library's turn: batches of `k` calls until `turn` has elapsed.
/// Pushes the per-call time (ns) of every batch.
pub fn turn<F: FnMut()>(f: &mut F, k: usize, turn: Duration, out: &mut Vec<f64>) {
    let start = Instant::now();
    loop {
        let t0 = Instant::now();
        for _ in 0..k {
            f();
        }
        let dt = t0.elapsed();
        out.push(dt.as_nanos() as f64 / k as f64);
        if start.elapsed() >= turn {
            break;
        }
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn slow_call_crossing_both_warmup_boundaries_uses_complete_samples() {
        // Calls lasting 40 ms and 70 ms cross both the 50 ms half-way mark
        // and the 100 ms end on the second call. No complete call has been
        // measured in the tail; its few nanoseconds are timer overhead.
        let k = calls_per_batch(
            Duration::from_millis(110),
            2,
            Duration::from_nanos(31),
            0,
            Duration::from_micros(50),
        );
        assert_eq!(k, 1);
    }

    #[test]
    fn calibration_prefers_the_measured_tail_rate() {
        let k = calls_per_batch(
            Duration::from_millis(30),
            1000,
            Duration::from_millis(5),
            500,
            Duration::from_micros(50),
        );
        assert_eq!(k, 5);
    }
}

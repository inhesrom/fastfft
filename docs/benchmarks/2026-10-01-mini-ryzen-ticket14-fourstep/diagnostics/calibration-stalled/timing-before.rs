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
    let rate_calls = (calls - last_rate_calls).max(1);
    let per_call = last_rate_start.elapsed().as_secs_f64() / rate_calls as f64;
    let per_call = if per_call > 0.0 {
        per_call
    } else {
        start.elapsed().as_secs_f64() / calls as f64
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

//! `PlanMode::Measure`: time the best predicted candidates and keep the fastest.

use crate::api::{FftDirection, FftNum};
use crate::planner::{Candidate, build_candidate};
use num_complex::Complex;
use std::time::{Duration, Instant};

/// Candidates timed per plan (always including the `Estimate` choice, which
/// is first in the list).
const MAX_CANDIDATES: usize = 8;

pub(crate) fn pick<T: FftNum>(
    len: usize,
    dir: FftDirection,
    cands: &[Candidate],
    limit: Duration,
) -> Option<Candidate> {
    let cands = &cands[..cands.len().min(MAX_CANDIDATES)];
    if cands.len() <= 1 {
        return cands.first().cloned();
    }
    let per = limit / cands.len() as u32;
    let mut best: Option<(f64, &Candidate)> = None;
    for c in cands {
        let imp = build_candidate::<T>(len, dir, c);
        // The public API has an aligned fast path. Compare every candidate on
        // that same path rather than letting allocator placement choose one.
        let mut storage =
            vec![Complex::new(T::zero(), T::zero()); len + crate::fft::align_slack::<T>()];
        let buf = &mut crate::scratch::aligned(&mut storage)[..len];
        let mut scratch = vec![Complex::new(T::zero(), T::zero()); imp.get_inplace_scratch_len()];
        // warm up, then take the minimum over short batches
        let start = Instant::now();
        let mut min = f64::INFINITY;
        let mut calls = 1usize;
        while start.elapsed() < per || min.is_infinite() {
            let t = Instant::now();
            for _ in 0..calls {
                imp.process_with_scratch(buf, &mut scratch);
            }
            let dt = t.elapsed().as_secs_f64() / calls as f64;
            min = min.min(dt);
            if t.elapsed() < Duration::from_micros(20) {
                calls *= 2;
            }
        }
        if best.is_none_or(|(b, _)| min < b) {
            best = Some((min, c));
        }
    }
    best.map(|(_, c)| c.clone())
}

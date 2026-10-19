//! Developer benchmarks (criterion) for quick before/after comparisons:
//! `cargo bench -p fastfft -- --save-baseline before`, then compare with
//! `critcmp`. Published numbers come from the arena, not from here.

use criterion::{BenchmarkId, Criterion, Throughput, criterion_group, criterion_main};
use fastfft::FftPlanner;
use fastfft::num_complex::Complex;
use std::hint::black_box;

fn bench_pow2(c: &mut Criterion) {
    let mut g = c.benchmark_group("f32-fwd-inplace");
    for &n in &[64usize, 256, 1024, 4096, 16384, 65536] {
        g.throughput(Throughput::Elements(n as u64));
        let mut ours = FftPlanner::<f32>::new();
        let f = ours.plan_fft_forward(n);
        let mut buf = vec![Complex::new(0.0f32, 0.0); n];
        let mut s = vec![Complex::new(0.0f32, 0.0); f.get_inplace_scratch_len()];
        g.bench_with_input(BenchmarkId::new("fastfft", n), &n, |b, _| {
            b.iter(|| f.process_with_scratch(black_box(&mut buf), &mut s))
        });
        let mut theirs = rustfft::FftPlanner::<f32>::new();
        let r = theirs.plan_fft_forward(n);
        let mut s2 = vec![Complex::new(0.0f32, 0.0); r.get_inplace_scratch_len()];
        g.bench_with_input(BenchmarkId::new("rustfft", n), &n, |b, _| {
            b.iter(|| r.process_with_scratch(black_box(&mut buf), &mut s2))
        });
    }
    g.finish();
}

criterion_group!(benches, bench_pow2);
criterion_main!(benches);

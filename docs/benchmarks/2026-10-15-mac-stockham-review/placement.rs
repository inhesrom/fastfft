// Diagnostic harness: each allocation lives until process exit.
// Time zero data: repeated unnormalized transforms otherwise overflow to NaN.
use fastfft::{FftNum, FftPlanner};
use num_complex::Complex;
use std::alloc::{Layout, alloc_zeroed};
use std::hint::black_box;
use std::time::Instant;

/// Slice of `len` complex values whose base is `off` bytes past a 16 KiB boundary.
fn placed<T: FftNum>(len: usize, off: usize) -> &'static mut [Complex<T>] {
    let sz = std::mem::size_of::<Complex<T>>();
    let layout = Layout::from_size_align(len * sz + 32768, 16384).unwrap();
    unsafe {
        let p = alloc_zeroed(layout);
        assert!(!p.is_null(), "placement allocation failed");
        std::slice::from_raw_parts_mut(p.add(off).cast(), len)
    }
}

fn time(mut f: impl FnMut()) -> f64 {
    // reps so each sample ~ 300us
    let mut reps = 1usize;
    loop {
        let t = Instant::now();
        for _ in 0..reps {
            f();
        }
        if t.elapsed().as_secs_f64() > 3e-4 {
            break;
        }
        reps *= 2;
    }
    let mut v: Vec<f64> = (0..21)
        .map(|_| {
            let t = Instant::now();
            for _ in 0..reps {
                f();
            }
            t.elapsed().as_secs_f64() * 1e9 / reps as f64
        })
        .collect();
    v.sort_by(|a, b| a.partial_cmp(b).unwrap());
    v[v.len() / 2]
}

fn run<T: FftNum>(prec: &str, label: &str, sizes: &[usize]) {
    let mut planner = FftPlanner::<T>::new();
    for &n in sizes {
        let fft = planner.plan_fft_forward(n);
        let desc = planner.describe_plan(n, fastfft::FftDirection::Forward);
        let ip_s = fft.get_inplace_scratch_len();
        let op_s = fft.get_outofplace_scratch_len().max(1);
        let fill = |b: &mut [Complex<T>]| b.fill(Complex::new(T::zero(), T::zero()));
        // in place: buffer at 16K boundary, scratch at offset d
        for d in [0usize, 64, 512, 2048, 4096, 8192] {
            let buf = placed::<T>(n, 0);
            let sc = placed::<T>(ip_s.max(1), d);
            fill(buf);
            let ns = time(|| {
                fft.process_with_scratch(black_box(&mut *buf), &mut *sc);
            });
            println!("{label}\t{prec}\t{n}\tip\t{d}\t{ns:.1}\t{desc}");
        }
        // out of place: input at boundary, output at d, scratch at 1024
        for d in [0usize, 64, 448, 512, 2048, 4096, 8192] {
            let inp = placed::<T>(n, 0);
            let out = placed::<T>(n, d);
            let sc = placed::<T>(op_s, 1024);
            fill(inp);
            let ns = time(|| {
                fft.process_outofplace_with_scratch(black_box(&mut *inp), &mut *out, &mut *sc);
            });
            println!("{label}\t{prec}\t{n}\top\t{d}\t{ns:.1}\t{desc}");
        }
        // default allocator path: fft.process(&mut vec)
        let mut v = vec![Complex::new(T::zero(), T::zero()); n];
        let ns = time(|| fft.process(black_box(&mut v)));
        println!("{label}\t{prec}\t{n}\tdefault\t-\t{ns:.1}\t{desc}");
    }
}

fn main() {
    let label = std::env::args().nth(1).unwrap();
    let lo: u32 = std::env::var("FF_LO")
        .ok()
        .and_then(|v| v.parse().ok())
        .unwrap_or(4);
    let hi: u32 = std::env::var("FF_HI")
        .ok()
        .and_then(|v| v.parse().ok())
        .unwrap_or(20);
    let sizes: Vec<usize> = (lo..=hi).map(|k| 1usize << k).collect();
    run::<f32>("f32", &label, &sizes);
    run::<f64>("f64", &label, &sizes);
}

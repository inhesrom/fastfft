#![allow(clippy::all, clippy::undocumented_unsafe_blocks)]
//! Verifies every kernel-lab variant and prints a quick timing table against
//! rustfft (official numbers come from the arena rows `lab/<variant>`).

#[cfg(target_arch = "x86_64")]
fn main() {
    use fastfft_testkit::{Dir, error_vs_dd, random_c64, reference_dd};
    use kernel_lab::{LabFloat, Plan, variants};
    use num_complex::Complex;
    use std::time::{Duration, Instant};

    fn best_ns(f: &mut dyn FnMut()) -> f64 {
        let t = Instant::now();
        let mut calls = 0u64;
        while t.elapsed() < Duration::from_millis(30) {
            f();
            calls += 1;
        }
        let k = ((50e-6 / (t.elapsed().as_secs_f64() / calls as f64)).ceil() as usize).max(1);
        let mut best = f64::MAX;
        let t = Instant::now();
        while t.elapsed() < Duration::from_millis(120) {
            let t0 = Instant::now();
            for _ in 0..k {
                f();
            }
            best = best.min(t0.elapsed().as_nanos() as f64 / k as f64);
        }
        best
    }

    fn run<S: LabFloat + rustfft::FftNum + Into<f64>>(
        sizes: &[usize],
        eps: f64,
        quick: bool,
        padded: bool,
        only: &Option<String>,
    ) {
        let prec = if core::mem::size_of::<S>() == 4 {
            "f32"
        } else {
            "f64"
        };
        let conv = |x: &[Complex<f64>]| -> Vec<Complex<S>> {
            x.iter()
                .map(|c| {
                    Complex::new(
                        <S as kernel_lab::cplx::FromF64>::from_f64(c.re),
                        <S as kernel_lab::cplx::FromF64>::from_f64(c.im),
                    )
                })
                .collect()
        };
        for &n in sizes {
            let x64 = random_c64(n, 42 + n as u64);
            let xs = conv(&x64);
            let xw: Vec<Complex<f64>> = xs
                .iter()
                .map(|c| Complex::new(c.re.into(), c.im.into()))
                .collect();
            let reference = reference_dd(&xw, Dir::Forward);
            let mut planner = rustfft::FftPlanner::<S>::new();
            let rf = planner.plan_fft_forward(n);
            let mut rs = vec![
                Complex::new(
                    <S as kernel_lab::cplx::FromF64>::from_f64(0.0),
                    <S as kernel_lab::cplx::FromF64>::from_f64(0.0)
                );
                rf.get_inplace_scratch_len()
            ];
            let mut buf = vec![
                Complex::new(
                    <S as kernel_lab::cplx::FromF64>::from_f64(0.0),
                    <S as kernel_lab::cplx::FromF64>::from_f64(0.0)
                );
                n
            ];
            let t_rust = if quick {
                0.0
            } else {
                best_ns(&mut || rf.process_with_scratch(&mut buf, &mut rs))
            };
            print!("{prec} n={n:6} rustfft {:9.1}ns |", t_rust);
            for (name, layout, tier, r) in variants() {
                if only.as_ref().is_some_and(|o| !name.contains(o.as_str())) {
                    continue;
                }
                if !tier.detected() {
                    continue;
                }
                let Some(plan) = Plan::<S>::new(n, layout, tier, r) else {
                    print!(" {name}: n/a |");
                    continue;
                };
                let mut b = xs.clone();
                let mut scr = vec![
                    Complex::new(
                        <S as kernel_lab::cplx::FromF64>::from_f64(0.0),
                        <S as kernel_lab::cplx::FromF64>::from_f64(0.0)
                    );
                    n
                ];
                let mut pscr = vec![
                    <S as kernel_lab::cplx::FromF64>::from_f64(0.0);
                    S::padded_scratch_len(&plan)
                ];
                if padded {
                    S::run_padded(&plan, &mut b, &mut pscr)
                } else {
                    S::run(&plan, &mut b, &mut scr)
                };
                let e = error_vs_dd(
                    &b.iter()
                        .map(|c| Complex::new(c.re.into(), c.im.into()))
                        .collect::<Vec<Complex<f64>>>(),
                    &reference,
                )
                .in_eps(eps);
                assert!(
                    e.rel_l2 < 4.0 * (n as f64).log2() + 4.0,
                    "{name} {prec} n={n}: error {:.2} eps",
                    e.rel_l2
                );
                if quick {
                    print!(" {name} ok({:.2}e) |", e.rel_l2);
                } else {
                    let mut z = vec![
                        Complex::new(
                            <S as kernel_lab::cplx::FromF64>::from_f64(0.0),
                            <S as kernel_lab::cplx::FromF64>::from_f64(0.0)
                        );
                        n
                    ];
                    let t = if padded {
                        best_ns(&mut || S::run_padded(&plan, &mut z, &mut pscr))
                    } else {
                        best_ns(&mut || S::run(&plan, &mut z, &mut scr))
                    };
                    print!(" {name} {:.2}x |", t_rust / t);
                }
            }
            println!();
        }
    }
    if std::env::args().any(|a| a == "--orders") {
        use kernel_lab::dit::{DitFloat, DitPlan};
        let z = || 0.0f32;
        for (n, orders) in [
            (
                256usize,
                vec![
                    vec![8, 4],
                    vec![4, 8],
                    vec![2, 16],
                    vec![16, 2],
                    vec![2, 4, 4],
                    vec![4, 4, 2],
                ],
            ),
            (
                1024,
                vec![
                    vec![8, 4, 4],
                    vec![4, 4, 8],
                    vec![4, 8, 4],
                    vec![8, 8, 2],
                    vec![2, 8, 8],
                    vec![16, 8],
                    vec![8, 16],
                ],
            ),
            (
                4096,
                vec![
                    vec![8, 8, 8],
                    vec![16, 4, 8],
                    vec![4, 16, 8],
                    vec![16, 16, 2],
                ],
            ),
        ] {
            let mut planner = rustfft::FftPlanner::<f32>::new();
            let rf = planner.plan_fft_forward(n);
            let mut rs = vec![Complex::new(z(), z()); rf.get_inplace_scratch_len()];
            let mut zb = vec![Complex::new(z(), z()); n];
            let t_rust = best_ns(&mut || rf.process_with_scratch(&mut zb, &mut rs));
            print!("n={n:5} rustfft {t_rust:7.1}ns |");
            for o in orders {
                let plan = DitPlan::<f32>::with_radices(n, false, o.clone()).unwrap();
                let mut s1 = vec![Complex::new(z(), z()); n];
                let mut s2 = vec![Complex::new(z(), z()); n];
                let t = best_ns(&mut || f32::run_dit(&plan, &mut zb, &mut s1, &mut s2));
                print!(" {:?} {:.2}x |", o, t_rust / t);
            }
            println!();
        }
        return;
    }
    if std::env::args().any(|a| a == "--dit") {
        use kernel_lab::dit::{DitFloat, DitPlan};
        fn go<S: DitFloat + LabFloat + rustfft::FftNum + Into<f64>>(eps: f64, verify_only: bool) {
            let z = || <S as kernel_lab::cplx::FromF64>::from_f64(0.0);
            for n in [256usize, 1024, 4096, 16384, 65536] {
                let x64 = random_c64(n, 5 + n as u64);
                let xs: Vec<Complex<S>> = x64
                    .iter()
                    .map(|c| {
                        Complex::new(
                            <S as kernel_lab::cplx::FromF64>::from_f64(c.re),
                            <S as kernel_lab::cplx::FromF64>::from_f64(c.im),
                        )
                    })
                    .collect();
                let xw: Vec<Complex<f64>> = xs
                    .iter()
                    .map(|c| Complex::new(c.re.into(), c.im.into()))
                    .collect();
                let reference = reference_dd(&xw, Dir::Forward);
                let mut planner = rustfft::FftPlanner::<S>::new();
                let rf = planner.plan_fft_forward(n);
                let mut rs = vec![Complex::new(z(), z()); rf.get_inplace_scratch_len()];
                let mut zb = vec![Complex::new(z(), z()); n];
                let t_rust = if verify_only {
                    1.0
                } else {
                    best_ns(&mut || rf.process_with_scratch(&mut zb, &mut rs))
                };
                print!("n={n:6} rustfft {t_rust:9.1}ns |");
                for (wide, name) in [(true, "zmm"), (false, "ymm")] {
                    for r in [4usize, 8, 16] {
                        let Some(plan) = DitPlan::<S>::new(n, wide, r) else {
                            continue;
                        };
                        let mut b = xs.clone();
                        let mut s1 = vec![Complex::new(z(), z()); n];
                        let mut s2 = vec![Complex::new(z(), z()); n];
                        S::run_dit(&plan, &mut b, &mut s1, &mut s2);
                        let e = error_vs_dd(
                            &b.iter()
                                .map(|c| Complex::new(c.re.into(), c.im.into()))
                                .collect::<Vec<Complex<f64>>>(),
                            &reference,
                        )
                        .in_eps(eps);
                        assert!(
                            e.rel_l2 < 4.0 * (n as f64).log2() + 4.0,
                            "dit {name} r{r} n={n}: {:.2} eps",
                            e.rel_l2
                        );
                        if verify_only {
                            print!(" {name}-r{r} ok({:.2}e) {:?} |", e.rel_l2, plan.radices);
                        } else {
                            let t = best_ns(&mut || S::run_dit(&plan, &mut zb, &mut s1, &mut s2));
                            print!(" {name}-r{r} {:.2}x |", t_rust / t);
                        }
                    }
                }
                println!();
            }
        }
        let v = std::env::args().any(|a| a == "--verify");
        println!("-- f32");
        go::<f32>(f64::from(f32::EPSILON), v);
        println!("-- f64");
        go::<f64>(f64::EPSILON, v);
        return;
    }
    if std::env::args().any(|a| a == "--micro") {
        // N=1024 complex f32 (8 KB per buffer): M = N/L vectors, radix 8, all (m, s) with m*s = M/8
        for split in [false, true] {
            let l = if split { 16 } else { 8 };
            let n = 1024usize;
            let mv = n / l;
            let x = vec![0f32; 2 * n + 64];
            let mut y = vec![0f32; 2 * n + 64];
            let tw = vec![0.5f32; 2 * 8 * mv];
            let it = 200_000;
            for (user_in, notw) in [(false, false), (false, true), (true, false)] {
                let mut m = mv / 8;
                let mut s = 1;
                while m >= 1 {
                    let t = Instant::now();
                    // SAFETY: lab machine has AVX-512; buffers sized for M vectors.
                    unsafe {
                        kernel_lab::engine::micro_pass(
                            split,
                            user_in,
                            notw,
                            x.as_ptr(),
                            y.as_mut_ptr(),
                            m,
                            s,
                            tw.as_ptr(),
                            it,
                        )
                    };
                    let ns = t.elapsed().as_nanos() as f64 / it as f64;
                    println!(
                        "{} user_in={user_in} notw={notw} m={m:3} s={s:3}: {ns:7.1}ns = {:.2} cyc/elem",
                        if split { "split" } else { "inter" },
                        ns * 4.8 / n as f64
                    );
                    m /= 8;
                    s *= 8;
                }
            }
        }
        return;
    }
    if std::env::args().any(|a| a == "--profile") {
        for n in std::env::args()
            .filter_map(|a| a.strip_prefix("--n=").map(|v| v.parse::<usize>().unwrap()))
            .collect::<Vec<_>>()
        {
            for (layout, name, tier) in [
                (kernel_lab::Layout::Split, "split", kernel_lab::Tier::Avx512),
                (kernel_lab::Layout::Inter, "inter", kernel_lab::Tier::Avx512),
                (
                    kernel_lab::Layout::Split,
                    "split-ymm",
                    kernel_lab::Tier::Avx512Ymm,
                ),
                (
                    kernel_lab::Layout::Inter,
                    "inter-ymm",
                    kernel_lab::Tier::Avx512Ymm,
                ),
            ] {
                for r in [8usize] {
                    let plan = Plan::<f32>::new(n, layout, tier, r).unwrap();
                    let mut b = vec![0f32; 2 * n];
                    let mut s = vec![0f32; 2 * n];
                    let it = (20_000_000 / n).max(10);
                    // SAFETY: avx512 detected on the lab machine; buffers are 2n floats.
                    let mut res = Vec::new();
                    for _ in 0..2 {
                        res = unsafe {
                            match name {
                                "split" => kernel_lab::engine::profile_s512_f32(
                                    &plan,
                                    b.as_mut_ptr(),
                                    s.as_mut_ptr(),
                                    it,
                                ),
                                "inter" => kernel_lab::engine::profile_i512_f32(
                                    &plan,
                                    b.as_mut_ptr(),
                                    s.as_mut_ptr(),
                                    it,
                                ),
                                "split-ymm" => kernel_lab::engine::profile_symm_f32(
                                    &plan,
                                    b.as_mut_ptr(),
                                    s.as_mut_ptr(),
                                    it,
                                ),
                                _ => kernel_lab::engine::profile_iymm_f32(
                                    &plan,
                                    b.as_mut_ptr(),
                                    s.as_mut_ptr(),
                                    it,
                                ),
                            }
                        };
                    }
                    let tot: f64 = res.iter().map(|x| x.1).sum();
                    println!(
                        "n={n} {name} r{r}: total {tot:.0}ns ({:.2} cyc/elem/pass @4.8GHz) {:?}",
                        tot * 4.8 / (n as f64 * res.len() as f64),
                        res.iter()
                            .map(|(a, b)| format!("{a}: {b:.0}ns"))
                            .collect::<Vec<_>>()
                    );
                }
            }
        }
        return;
    }
    let quick = std::env::args().any(|a| a == "--verify");
    let padded = std::env::args().any(|a| a == "--padded");
    let only = std::env::args().find_map(|a| a.strip_prefix("--only=").map(String::from));
    let f32_only = std::env::args().any(|a| a == "--f32");
    let sizes = [64usize, 256, 1024, 4096, 16384, 65536];
    run::<f32>(&sizes, f64::from(f32::EPSILON), quick, padded, &only);
    if !f32_only {
        run::<f64>(&sizes, f64::EPSILON, quick, padded, &only);
    }
}

#[cfg(not(target_arch = "x86_64"))]
fn main() {}

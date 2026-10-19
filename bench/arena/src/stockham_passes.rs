//! Exact retained-plan route timings. Isolated leaf times are not additive.

use crate::adapters::ArenaFloat;
use crate::buffers::Buffers;
use crate::spec::Profile;
use crate::timing::{Stats, warmup_and_calibrate};
use fastfft::tuning::{SamplePlacement, StockhamDiagnostic, StockhamGeometry, StockhamRoute};
use fastfft::{FftDirection, FftNum, FftPlanner};
use num_complex::Complex;
use serde_json::{Value, json};
use std::time::{Duration, Instant};

fn geometry(g: &StockhamGeometry) -> Value {
    json!({"object":g.object,"plan":g.plan,"n":g.n,"m":g.m,"lanes":g.lanes,
        "isa":g.isa.name(),"inverse":g.inverse,"placement":format!("{:?}",g.placement),
        "input":g.input,"output":g.output,"scratch":g.scratch,"reserved_scratch":g.reserved_scratch,
        "phase_b_input":g.phase_b_input,"phase_b_coefficients":g.phase_b_coefficients,
        "phase_b_user_input":g.phase_b_user_input,"phase_b_full_blocks":g.phase_b_full_blocks,
        "phase_b_tail_vectors":g.phase_b_tail_vectors,"passes":g.passes.iter().map(|p| json!({
            "radix":p.radix,"m":p.m,"ns":p.ns,"user_input":p.user_input,"swap_input":p.swap_input,
            "input":p.input,"output":p.output,"aliases":p.aliases,"coefficients":p.coefficients,
            "entry":p.entry
        })).collect::<Vec<_>>(),"phase_b_full_entry":g.phase_b_full_entry,
        "phase_b_tail_entry":g.phase_b_tail_entry,"public_batch_entry":g.public_batch_entry,
        "engine_batch_entry":g.engine_batch_entry})
}

fn prepare<T: FftNum>(
    diagnostic: &mut StockhamDiagnostic<'_, T>,
    route: StockhamRoute,
    zero: &[Complex<T>],
    pass_count: usize,
) {
    diagnostic.reset(zero).expect("reset");
    let prefix = match route {
        StockhamRoute::Pass(i) => i,
        StockhamRoute::PhaseB | StockhamRoute::PhaseBFullBlocks | StockhamRoute::PhaseBTail => {
            pass_count
        }
        _ => 0,
    };
    if prefix > 0 {
        diagnostic
            .run_calls(StockhamRoute::Prefix(prefix), 1)
            .expect("prepare predecessor");
    }
}

pub fn run<T: ArenaFloat + FftNum>(
    n: usize,
    process: usize,
    profile: Profile,
) -> Result<Value, String> {
    if n == 0 {
        return Err("--n must be positive".into());
    }
    let mut planner = FftPlanner::<T>::new();
    let fft = planner.plan_fft(n, FftDirection::Forward);
    let mut buffers = Buffers::<T>::stockham_diagnostic(n, fft.get_inplace_scratch_len());
    let backings = buffers.diagnostic_backings();
    let (input, output, scratch) = buffers.io_scratch_mut();
    let mut diagnostic = StockhamDiagnostic::new(
        fft.as_ref(),
        input,
        output,
        scratch,
        SamplePlacement::InPlace,
    )
    .map_err(|error| {
        format!("exact Stockham diagnostic is unsupported for this plan: {error:?}")
    })?;
    let g = diagnostic.geometry();
    let before = geometry(&g);
    let count = g.passes.len();
    let zero = vec![Complex::<T>::default(); n];
    let data: Vec<_> = fastfft_testkit::random_c64(n, 0x31_4096)
        .iter()
        .map(|c| Complex::new(T::lit(c.re), T::lit(c.im)))
        .collect();
    let rounded: Vec<_> = data
        .iter()
        .map(|c| Complex::new(T::val(c.re), T::val(c.im)))
        .collect();
    let reference =
        fastfft_testkit::reference_dd(&rounded, crate::spec::Direction::Forward.testkit());
    let mut verified = Vec::new();
    let mut verification_routes = [
        StockhamRoute::Public,
        StockhamRoute::Engine,
        StockhamRoute::Prefix(count + 1),
        StockhamRoute::PhaseB,
    ];
    if process % 2 == 1 {
        verification_routes.reverse();
    }
    let mut outputs = Vec::new();
    for route in verification_routes {
        diagnostic.reset(&data).expect("verification reset");
        if route == StockhamRoute::PhaseB {
            diagnostic
                .run_calls(StockhamRoute::Prefix(count), 1)
                .expect("Phase B predecessor");
        }
        diagnostic.run_calls(route, 1).expect("verification route");
        let output: Vec<_> = diagnostic
            .output()
            .iter()
            .map(|c| Complex::new(T::val(c.re), T::val(c.im)))
            .collect();
        let error = fastfft_testkit::error_vs_dd(&output, &reference).in_eps(T::PREC.eps());
        assert!(
            error.rel_l2.is_finite() && error.rel_l2 <= 200.0 * (n.ilog2() + 1) as f64,
            "exact route verification failed: {route:?}"
        );
        outputs.push((
            route,
            output
                .iter()
                .map(|c| [c.re.to_bits(), c.im.to_bits()])
                .collect::<Vec<_>>(),
        ));
        verified.push(json!({"route":format!("{route:?}"),"passed":true,
            "method":"dd","rel_l2_eps":error.rel_l2,"max_eps":error.max_rel}));
    }
    let public_bits = &outputs
        .iter()
        .find(|(r, _)| *r == StockhamRoute::Public)
        .unwrap()
        .1;
    assert!(
        outputs.iter().all(|(_, bits)| bits == public_bits),
        "complete route output bits differ"
    );
    let mut routes = vec![
        StockhamRoute::Public,
        StockhamRoute::Engine,
        StockhamRoute::Prefix(count + 1),
    ];
    routes.extend((0..count).map(StockhamRoute::Pass));
    routes.extend((1..=count).map(StockhamRoute::Prefix));
    routes.extend([StockhamRoute::PhaseB, StockhamRoute::PhaseBFullBlocks]);
    if g.phase_b_tail_vectors != 0 {
        routes.push(StockhamRoute::PhaseBTail);
    }
    let mut order: Vec<_> = (0..routes.len()).collect();
    if process % 2 == 1 {
        order.reverse();
    }
    let mut calls = vec![0; routes.len()];
    for &i in &order {
        prepare(&mut diagnostic, routes[i], &zero, count);
        calls[i] = warmup_and_calibrate(
            &mut || diagnostic.run_calls(routes[i], 1).expect("calibrate"),
            Duration::from_millis(profile.warmup_ms),
            Duration::from_micros(profile.min_batch_us),
        );
    }
    // Preallocate all sample storage before timing; never grow in a measured turn.
    let capacity =
        (profile.turn_ms as usize * 1000 / profile.min_batch_us as usize + 1) * profile.rounds * 4;
    let mut samples: Vec<_> = routes
        .iter()
        .map(|_| Vec::with_capacity(capacity))
        .collect();
    let mut round_ends: Vec<_> = routes
        .iter()
        .map(|_| Vec::with_capacity(profile.rounds))
        .collect();
    for round in 0..profile.rounds {
        for turn in 0..routes.len() {
            let i = order[(turn + round) % order.len()];
            prepare(&mut diagnostic, routes[i], &zero, count);
            diagnostic
                .run_calls(routes[i], calls[i].min(8))
                .expect("rewarm");
            let start = Instant::now();
            loop {
                let batch = Instant::now();
                diagnostic
                    .run_calls(routes[i], calls[i])
                    .expect("measured route");
                let elapsed = batch.elapsed().as_nanos() as f64 / calls[i] as f64;
                assert!(
                    samples[i].len() < samples[i].capacity(),
                    "sample capacity exceeded"
                );
                samples[i].push(elapsed);
                if start.elapsed() >= Duration::from_millis(profile.turn_ms) {
                    break;
                }
            }
            round_ends[i].push(samples[i].len());
        }
    }
    let after = geometry(&diagnostic.geometry());
    assert_eq!(before, after, "retained geometry moved");
    let results: Vec<_> = routes
        .iter()
        .enumerate()
        .map(|(i, r)| {
            json!({"route":format!("{r:?}"),
        "time":Stats::from_samples(&samples[i]),"calls_per_batch":calls[i],
        "round_ends":round_ends[i],"samples_ns":samples[i]})
        })
        .collect();
    let stats: Vec<_> = samples.iter().map(|s| Stats::from_samples(s)).collect();
    Ok(
        json!({"schema":1,"diagnostic_only":true,"precision":T::PREC,"n":n,"process_index":process,
        "profile":profile.name,"initial_route_order":order.iter().map(|&i|format!("{:?}",routes[i])).collect::<Vec<_>>(),
        "backings":backings,"geometry":before,"geometry_unchanged":true,"verification":verified,
        "complete_route_output_bits_equal":true,
        "public_over_engine": {"best":stats[0].best/stats[1].best,"p1":stats[0].p1/stats[1].p1,
            "median":stats[0].median/stats[1].median},
        "complete_prefix_over_engine": {"best":stats[2].best/stats[1].best,"p1":stats[2].p1/stats[1].p1,
            "median":stats[2].median/stats[1].median},"results":results,
        "limitations":["isolated pass times are not additive", "prefix route disturbance measured against whole engine",
            "paired routes may change caller or stack layout", "diagnostic feature build does not establish shipped speedup"]}),
    )
}

//! Retained-object caller placement experiment. Kept out of ordinary arena runs.

use crate::adapters::{ArenaFloat, Runner};
use crate::buffers::Buffers;
use crate::spec::{ALL_LIBS, Precision, Profile, control_cell};
use crate::stockham_reference::Recipe;
use crate::timing::{Stats, warmup_and_calibrate};
use fastfft::FftNum;
use fastfft_testkit::{error_vs_dd, reference_dd};
use num_complex::Complex;
use serde_json::{Value, json};
use std::time::{Duration, Instant};

const STATES: [(&str, usize, usize); 4] = [
    ("A", 0, 0),
    ("B", 0, 1024),
    ("C", 1024, 0),
    ("D", 1024, 2048),
];

/// Two repeats of the four independent construction × initial execution orders.
fn schedule(process: usize, full_rows: bool) -> (bool, bool, Vec<usize>) {
    assert!(process < 8, "diagnostic process must be in 0..8");
    let mut interventions = if full_rows {
        vec![1, 0]
    } else {
        vec![1, 2, 3, 0]
    };
    let count = interventions.len();
    interventions.rotate_left(process % count);
    if process >= 4 {
        interventions.reverse();
    }
    (process % 4 >= 2, process % 2 == 1, interventions)
}

fn coefficients<T: ArenaFloat + FftNum>(runner: &dyn Runner<T>, bufs: &mut Buffers<T>) -> Value {
    let mut regions = Vec::new();
    if let Some(plan) = runner.diagnostic_plan() {
        plan.diagnostic_regions(&mut |r| {
            regions.push(json!({"owner":r.owner, "kind":format!("{:?}", r.kind),
                "index":r.index,"ptr":r.ptr,"len":r.len,"capacity":r.capacity,
                "element_bytes":r.element_bytes,"mod64":r.ptr%64,"mod4096":r.ptr%4096}));
        });
    } else if let Some(storage) = runner.execution_storage(bufs)
        && storage.get("coefficients").is_some()
    {
        return json!({"plan":storage["plan"],"pass_descriptors":storage["pass_descriptors"],
            "coefficients":storage["coefficients"]});
    }
    json!(regions)
}

fn crossover_turn<T: ArenaFloat>(
    runner: &mut dyn Runner<T>,
    bufs: &mut Buffers<T>,
    shared: bool,
    calls: usize,
    duration: Duration,
    samples: &mut Vec<f64>,
) {
    assert!(runner.diagnostic_dit_calls(bufs, shared, calls.min(8)));
    let start = Instant::now();
    loop {
        let batch = Instant::now();
        assert!(runner.diagnostic_dit_calls(bufs, shared, calls));
        let elapsed = batch.elapsed().as_nanos() as f64 / calls as f64;
        assert!(samples.len() < samples.capacity());
        samples.push(elapsed);
        if start.elapsed() >= duration {
            break;
        }
    }
}

pub fn run<T: ArenaFloat + FftNum>(
    n: usize,
    process: usize,
    full_rows: bool,
    profile: Profile,
    crossover: bool,
) -> Result<Value, String> {
    let config = fastfft::tuning::estimated(n, fastfft::detected_isa(), T::PREC == Precision::F64)
        .ok_or("no supported Stockham configuration for this length")?;
    if config.kernel() != "stockham" {
        return Err(
            "placement diagnostics require a Stockham plan; no substitute is selected".into(),
        );
    }
    if process >= 8 {
        return Err("placement/crossover --process must be in 0..7".into());
    }
    if !kernel_lab::Tier::Avx512.detected() {
        return Err(
            "placement prototypes require an AVX-512 host, including the avx2 recipe".into(),
        );
    }
    let prototype = Recipe {
        width: match config.isa() {
            fastfft::Isa::Avx512 => "zmm",
            fastfft::Isa::Avx512Ymm => "ymm",
            fastfft::Isa::Avx2 => "avx2",
            _ => return Err("placement prototype requires an AVX2 or AVX-512 Stockham shape; no substitute is selected".into()),
        }.into(),
        radices: config.radices().to_vec(),
        shared: true,
        shared_offset_bytes: 0,
    }
    .row();
    if !n.is_power_of_two()
        || !n.is_multiple_of(config.lanes() * config.lanes())
        || config.radices().is_empty()
        || config
            .radices()
            .iter()
            .any(|r| !matches!(r, 2 | 4 | 8 | 16))
    {
        return Err("prototype requires supported radices and full Phase-B blocks".into());
    }
    let (reverse_construction, reverse_execution, interventions) =
        schedule(process, full_rows || crossover);
    let mut rows = if full_rows {
        let mut rows = ALL_LIBS.iter().map(|r| (*r).to_owned()).collect::<Vec<_>>();
        rows.extend([
            "fastfft/avx512".into(),
            "fastfft/avx512-ymm".into(),
            prototype.strip_suffix("-shared").unwrap().into(),
        ]);
        rows
    } else {
        vec!["fastfft".to_owned()]
    };
    rows.push(prototype.clone());
    let mut spec = control_cell(&rows, &profile);
    // control_cell keeps only drift-control libraries; this experiment plans
    // the entire requested population, including the retained prototype.
    spec.libs = rows.clone();
    spec.n = n;
    spec.precision = T::PREC;
    spec.control = false;
    spec.verify = true;
    spec.suite = "stockham-placement".into();
    let scratch = rows
        .iter()
        .map(|row| crate::adapters::estimate_workspace::<T>(row, &spec).unwrap_or(0))
        .max()
        .unwrap()
        .max(n);
    spec.caller_scratch = Some(scratch);
    let mut bufs = Buffers::<T>::stockham_diagnostic(n, scratch);
    let backing = bufs.diagnostic_backings();
    // Keep preliminary planning and buffer allocation in canonical order.
    // Change only the retained target pair's construction positions.
    if reverse_construction {
        let last = rows.len() - 1;
        rows.swap(0, last);
        spec.libs.swap(0, last);
    }
    let mut planned = crate::cell::plan_all::<T>(&spec, &mut bufs);
    assert_eq!(
        planned.iter().map(|(r, _)| &r.lib).collect::<Vec<_>>(),
        rows.iter().collect::<Vec<_>>(),
        "planned population differs from requested construction order"
    );
    for target in ["fastfft", prototype.as_str()] {
        let (result, runner) = planned.iter().find(|(r, _)| r.lib == target).unwrap();
        assert!(
            runner.is_some(),
            "target {target} failed planning: {result:?}"
        );
    }
    assert_eq!(
        bufs.diagnostic_backings(),
        backing,
        "planning grew a retained backing"
    );
    let owners_before: Vec<_> = planned
        .iter()
        .map(|(_, r)| r.as_ref().map(|r| coefficients(r.as_ref(), &mut bufs)))
        .collect();
    let mut execution: Vec<_> = (0..planned.len())
        .filter(|&i| planned[i].1.is_some())
        .collect();
    // Verification, warm-up, calibration and first round all use this independent order.
    let production = execution
        .iter()
        .position(|&i| rows[i] == "fastfft")
        .unwrap();
    let reference = execution
        .iter()
        .position(|&i| rows[i] == prototype)
        .unwrap();
    if (production > reference) != reverse_execution {
        execution.swap(production, reference);
    }
    let data64 = fastfft_testkit::random_c64(n, spec.seed);
    let data: Vec<_> = data64
        .iter()
        .map(|v| Complex::new(T::lit(v.re), T::lit(v.im)))
        .collect();
    let rounded: Vec<_> = data
        .iter()
        .map(|v| Complex::new(T::val(v.re), T::val(v.im)))
        .collect();
    let expected = reference_dd(&rounded, spec.direction.testkit());
    let mut visits = Vec::new();
    for intervention in interventions {
        for (step, state) in [0, intervention, 0].into_iter().enumerate() {
            let (name, input_offset, scratch_offset) = if crossover {
                (if state == 0 { "P" } else { "S" }, 0, 0)
            } else {
                STATES[state]
            };
            let shared = state == 1;
            bufs.diagnostic_select(input_offset, scratch_offset);
            let addresses = bufs.diagnostic_backings();
            let mut verification = vec![Value::Null; rows.len()];
            let mut storage = vec![Value::Null; rows.len()];
            for &i in &execution {
                let runner = planned[i].1.as_mut().unwrap();
                runner.zero(&mut bufs);
                runner.load(&mut bufs, &data);
                if crossover && rows[i] == prototype {
                    assert!(runner.diagnostic_dit_calls(&mut bufs, shared, 1));
                } else {
                    runner.run(&mut bufs);
                }
                let scale = runner.output_scale();
                let output: Vec<_> = runner
                    .read(&bufs)
                    .iter()
                    .map(|v| Complex::new(T::val(v.re) * scale, T::val(v.im) * scale))
                    .collect();
                let error = error_vs_dd(&output, &expected).in_eps(T::PREC.eps());
                assert!(
                    error.rel_l2.is_finite() && error.rel_l2 <= 200.0 * (n.ilog2() + 1) as f64,
                    "verification failed for {} state {name}",
                    rows[i]
                );
                verification[i] = json!({"passed":true,"method":"dd","rel_l2_eps":error.rel_l2,
                    "max_eps":error.max_rel});
                storage[i] = runner.execution_storage(&mut bufs).unwrap_or(Value::Null);
                if crossover && rows[i] == prototype {
                    storage[i]["route"] = json!(if shared {
                        "retained-shared-crossover"
                    } else {
                        "retained-private-crossover"
                    });
                    if !shared {
                        storage[i]["active_scratch"] = storage[i]["retained_s1"].clone();
                    }
                }
            }
            let mut calls = vec![0; rows.len()];
            let capacity = (profile.turn_ms as usize * 1000 / profile.min_batch_us as usize + 1)
                * profile.rounds
                * 4;
            let mut samples: Vec<_> = rows.iter().map(|_| Vec::with_capacity(capacity)).collect();
            for &i in &execution {
                let runner = planned[i].1.as_mut().unwrap();
                runner.zero(&mut bufs);
                calls[i] = if crossover && rows[i] == prototype {
                    warmup_and_calibrate(
                        &mut || assert!(runner.diagnostic_dit_calls(&mut bufs, shared, 1)),
                        Duration::from_millis(profile.warmup_ms),
                        Duration::from_micros(profile.min_batch_us),
                    )
                } else {
                    runner.calibrate(
                        &mut bufs,
                        Duration::from_millis(profile.warmup_ms),
                        Duration::from_micros(profile.min_batch_us),
                    )
                };
            }
            for round in 0..profile.rounds {
                for j in 0..execution.len() {
                    let i = execution[(j + round) % execution.len()];
                    let runner = planned[i].1.as_mut().unwrap();
                    runner.zero(&mut bufs);
                    if crossover && rows[i] == prototype {
                        crossover_turn(
                            runner.as_mut(),
                            &mut bufs,
                            shared,
                            calls[i],
                            Duration::from_millis(profile.turn_ms),
                            &mut samples[i],
                        );
                    } else {
                        runner.turn(
                            &mut bufs,
                            calls[i],
                            Duration::from_millis(profile.turn_ms),
                            &mut samples[i],
                        );
                    }
                    assert_eq!(
                        samples[i].capacity(),
                        capacity,
                        "sample storage grew during timing"
                    );
                }
            }
            let results: Vec<_> = planned
                .iter()
                .enumerate()
                .map(|(i, (res, _))| {
                    json!({
                "lib":rows[i],"status":res.status,"reason":res.reason,"verify":verification[i],
                "execution_storage":storage[i],"calls_per_batch":calls[i],
                "time":if samples[i].is_empty(){None}else{Some(Stats::from_samples(&samples[i]))},
                "samples_ns":samples[i]})
                })
                .collect();
            visits.push(
                json!({"intervention":if crossover {if intervention==0 {"P"}else{"S"}} else {STATES[intervention].0},"step":step,"state":name,
                "input_mod4096":input_offset,"scratch_mod4096":scratch_offset,
                "prototype_live_scratch_mod4096":storage[rows.iter().position(|r|r==&prototype).unwrap()]["active_scratch"]["mod4096"],
                "backings_and_views":addresses,"results":results}),
            );
            assert_eq!(
                bufs.diagnostic_backings()["allocations"],
                backing["allocations"]
            );
        }
    }
    let owners_after: Vec<_> = planned
        .iter()
        .map(|(_, r)| r.as_ref().map(|r| coefficients(r.as_ref(), &mut bufs)))
        .collect();
    assert_eq!(owners_before, owners_after, "coefficient ownership moved");
    Ok(
        json!({"schema":1,"diagnostic_only":true,"process_index":process,"n":n,"precision":T::PREC,
        "full_rows":full_rows,"profile":profile.name,"construction_reversed":reverse_construction,
        "initial_execution_reversed":reverse_execution,"construction_order":rows,
        "initial_execution_order":execution.iter().map(|&i| &rows[i]).collect::<Vec<_>>(),
        "prototype":prototype,"isa":config.isa().name(),"lanes":config.lanes(),
        "phase_a_radices":config.radices(),"coefficient_regions":owners_before,
        "coefficient_regions_unchanged":true,"restored_to_A":!crossover,"restored_to_private":crossover,
        "experiment":if crossover {"private-crossover"} else {"caller-placement"},"visits":visits}),
    )
}

#[cfg(test)]
mod tests {
    use super::*;

    fn retained_population<T: ArenaFloat + FftNum>() {
        if !kernel_lab::Tier::Avx512.detected() {
            return;
        }
        let profile = Profile {
            name: "test",
            warmup_ms: 1,
            rounds: 1,
            turn_ms: 1,
            min_batch_us: 50,
        };
        for process in [0, 2] {
            for (full, crossover) in [(false, false), (true, false), (false, true)] {
                let result = run::<T>(512, process, full, profile, crossover).unwrap();
                let rows = result["construction_order"].as_array().unwrap();
                assert_eq!(rows.len(), if full { ALL_LIBS.len() + 4 } else { 2 });
                for visit in result["visits"].as_array().unwrap() {
                    let measured = visit["results"].as_array().unwrap();
                    assert_eq!(measured.len(), rows.len());
                    for target in [json!("fastfft"), result["prototype"].clone()] {
                        let row = measured.iter().find(|r| r["lib"] == target).unwrap();
                        assert_eq!(row["status"], "ok");
                        assert_eq!(row["verify"]["passed"], true);
                        assert!(row["time"].is_object());
                    }
                }
            }
        }
    }

    #[test]
    fn retained_population_f32() {
        retained_population::<f32>();
    }

    #[test]
    fn retained_population_f64() {
        retained_population::<f64>();
    }

    #[test]
    fn factorial_balances_orders_and_restoring_traversals() {
        let mut counts = [[0; 2]; 2];
        for p in 0..8 {
            let (construction, execution, traversals) = schedule(p, false);
            counts[usize::from(construction)][usize::from(execution)] += 1;
            let mut sorted = traversals.clone();
            sorted.sort();
            assert_eq!(sorted, [0, 1, 2, 3]);
            assert_eq!(schedule(p, true).2.len(), 2);
            assert_ne!(traversals, schedule((p + 4) % 8, false).2);
        }
        assert_eq!(counts, [[2, 2], [2, 2]]);
    }
}

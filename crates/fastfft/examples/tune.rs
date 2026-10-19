//! Reproducible production-kernel tuning and cold-planning diagnostics.
//! Build via `cargo xtask tune`; measurements run after compilation finishes.
use fastfft::{FftDirection, FftNum, FftPlanner, Isa, num_complex::Complex, tuning};
use serde_json::json;
use std::collections::HashSet;
use std::hint::black_box;
use std::io::Write;
use std::time::{Duration, Instant};

const SMOOTH: &[usize] = &[
    6, 9, 12, 15, 18, 24, 36, 80, 108, 210, 504, 1000, 1960, 4725, 10368, 27000, 75600, 165375, 48,
    96, 120, 160, 240, 320, 384, 480, 640, 720, 768, 960, 1200, 1536, 1920, 2400, 3072, 4800, 6144,
    12288, 48000, 96000, 1000000,
];
const ROUGH: &[usize] = &[
    17, 31, 61, 127, 257, 509, 1021, 2053, 4099, 8191, 16381, 65537, 131071, 2018, 3063, 9797,
    65524,
];

struct Options {
    sizes: Vec<usize>,
    ms: u64,
    min_batches: usize,
    planning: bool,
    passes_only: bool,
    plans_only: bool,
    check: bool,
    out: Option<String>,
    raw: String,
    precision: String,
    objective: String,
    shortlist: Option<HashSet<String>>,
}

fn configuration_key(precision: &str, n: usize, c: &tuning::Configuration) -> String {
    json!([
        precision,
        n,
        c.kernel(),
        c.isa().name(),
        c.lanes(),
        c.radices()
    ])
    .to_string()
}

fn shortlist(path: &str) -> Result<HashSet<String>, String> {
    let text = std::fs::read_to_string(path).map_err(|e| format!("{path}: {e}"))?;
    let mut keys = HashSet::new();
    for line in text.lines() {
        let r: serde_json::Value = serde_json::from_str(line).map_err(|e| e.to_string())?;
        if r["kind"] == "candidate" {
            keys.insert(
                json!([
                    r["precision"],
                    r["n"],
                    r["kernel"],
                    r["isa"],
                    r["lanes"],
                    r["radices"]
                ])
                .to_string(),
            );
        }
    }
    if keys.is_empty() {
        return Err("shortlist contains no candidate rows".into());
    }
    Ok(keys)
}

fn options() -> Result<Options, String> {
    let args: Vec<_> = std::env::args().skip(1).collect();
    let mut o = Options {
        sizes: Vec::new(),
        ms: 3,
        min_batches: 20,
        planning: false,
        passes_only: false,
        plans_only: false,
        check: false,
        out: None,
        raw: "target/tune.jsonl".into(),
        precision: "both".into(),
        objective: "inplace".into(),
        shortlist: None,
    };
    let mut max = 1 << 20;
    let mut i = 0;
    while i < args.len() {
        let a = &args[i];
        match a.as_str() {
            "--planning-only" => o.planning = true,
            "--passes-only" => o.passes_only = true,
            "--plans-only" => o.plans_only = true,
            "--check-g8" => o.check = true,
            "--n" | "--ms" | "--min-batches" | "--max-n" | "--out" | "--raw" | "--precision"
            | "--objective" | "--shortlist" => {
                i += 1;
                let v = args
                    .get(i)
                    .ok_or_else(|| format!("missing value for {a}"))?;
                match a.as_str() {
                    "--n" => {
                        o.sizes = v
                            .split(',')
                            .map(|x| x.parse().map_err(|_| format!("invalid length {x}")))
                            .collect::<Result<_, _>>()?
                    }
                    "--ms" => o.ms = v.parse().map_err(|_| "invalid --ms")?,
                    "--min-batches" => {
                        o.min_batches = v.parse().map_err(|_| "invalid --min-batches")?
                    }
                    "--max-n" => max = v.parse().map_err(|_| "invalid --max-n")?,
                    "--out" => o.out = Some(v.clone()),
                    "--raw" => o.raw = v.clone(),
                    "--objective" => o.objective = v.clone(),
                    "--shortlist" => o.shortlist = Some(shortlist(v)?),
                    _ => o.precision = v.clone(),
                }
            }
            _ => return Err(format!("unknown argument {a}")),
        }
        i += 1;
    }
    if !matches!(o.objective.as_str(), "inplace" | "all") {
        return Err("invalid --objective".into());
    }
    if o.ms == 0 || o.ms > 60_000 {
        return Err("--ms must be between 1 and 60000".into());
    }
    if !(1..=10_000).contains(&o.min_batches) {
        return Err("--min-batches must be between 1 and 10000".into());
    }
    if o.passes_only && o.plans_only {
        return Err("choose only one of --passes-only and --plans-only".into());
    }
    if o.planning && (o.out.is_some() || o.passes_only || o.plans_only) {
        return Err("--planning-only cannot generate kernel tables".into());
    }
    if o.check && !o.planning {
        return Err("--check-g8 requires --planning-only".into());
    }
    if o.shortlist.is_some() && (o.planning || o.passes_only) {
        return Err("--shortlist requires whole-transform measurements".into());
    }
    if !matches!(o.precision.as_str(), "both" | "f32" | "f64") {
        return Err("invalid precision".into());
    }
    if o.sizes.is_empty() {
        o.sizes = (1..=24)
            .map(|b| 1 << b)
            .chain(SMOOTH.iter().copied())
            .collect();
        if o.planning {
            o.sizes.extend_from_slice(ROUGH);
        }
    }
    o.sizes.retain(|&n| n >= 2 && n <= max);
    o.sizes.sort_unstable();
    o.sizes.dedup();
    if o.sizes.is_empty() {
        return Err("no lengths selected".into());
    }
    Ok(o)
}

fn sample(mut f: impl FnMut(), ms: u64, min_batches: usize) -> ([f64; 2], usize) {
    let mut calls = 1;
    loop {
        let t = Instant::now();
        for _ in 0..calls {
            f();
        }
        if t.elapsed() >= Duration::from_micros(30) {
            break;
        }
        calls *= 2;
    }
    let start = Instant::now();
    let mut v = Vec::new();
    while start.elapsed() < Duration::from_millis(ms.max(1)) || v.len() < min_batches {
        let t = Instant::now();
        for _ in 0..calls {
            f();
        }
        v.push(t.elapsed().as_secs_f64() * 1e9 / calls as f64);
    }
    v.sort_by(f64::total_cmp);
    ([v[v.len() / 100], v[v.len() / 2]], v.len())
}
fn emit(w: &mut impl Write, row: serde_json::Value) {
    serde_json::to_writer(&mut *w, &row).expect("write JSON");
    writeln!(w).expect("write newline");
}

fn planning<T: FftNum + rustfft::FftNum>(o: &Options, raw: &mut impl Write) -> bool {
    let precision = if size_of::<T>() == 8 { "f64" } else { "f32" };
    let mut pass = true;
    for &n in &o.sizes {
        for dir in [FftDirection::Forward, FftDirection::Inverse] {
            let rd = if dir == FftDirection::Forward {
                rustfft::FftDirection::Forward
            } else {
                rustfft::FftDirection::Inverse
            };
            let mut ff = f64::INFINITY;
            let mut rf = f64::INFINITY;
            // Fresh planners every repetition. Drop outside the timed interval;
            // no global plan cache and no describe/scratch work in either row.
            for _ in 0..20 {
                let t = Instant::now();
                let mut p = FftPlanner::<T>::new();
                let f = black_box(p.plan_fft(n, dir));
                ff = ff.min(t.elapsed().as_secs_f64() * 1e9);
                drop((p, f));
                let t = Instant::now();
                let mut p = rustfft::FftPlanner::<T>::new();
                let f = black_box(p.plan_fft(n, rd));
                rf = rf.min(t.elapsed().as_secs_f64() * 1e9);
                drop((p, f));
            }
            let ratio = ff / rf;
            pass &= n > 1 << 20 || ratio <= 2.0;
            eprintln!("planning {precision} {n} {dir}: {ff:.0}/{rf:.0} ns = {ratio:.2}x");
            emit(
                raw,
                json!({"kind":"planning","precision":precision,"n":n,"direction":dir.to_string(),"fastfft_ns":ff,"rustfft_ns":rf,"ratio":ratio}),
            );
        }
    }
    pass
}

fn plans<T: FftNum + rustfft::FftNum>(o: &Options, raw: &mut impl Write, rust: &mut String) {
    let f64_ = size_of::<T>() == 8;
    let effective_isa = FftPlanner::<T>::new().isa();
    let precision = if f64_ { "f64" } else { "f32" };
    let zero = Complex::new(T::zero(), T::zero());
    for &n in &o.sizes {
        let mut cs = tuning::configurations(n, f64_);
        if cs.is_empty() {
            continue;
        }
        if let Some(keys) = &o.shortlist {
            let available = cs.len();
            let estimates: Vec<_> = [
                Isa::Scalar,
                #[cfg(target_arch = "aarch64")]
                Isa::Neon,
                Isa::Sse2,
                Isa::Avx2,
                Isa::Avx512Ymm,
                Isa::Avx512,
            ]
            .into_iter()
            .filter(|&cap| cap <= effective_isa)
            .filter_map(|cap| tuning::estimated(n, cap, f64_))
            .collect();
            cs.retain(|c| {
                keys.contains(&configuration_key(precision, n, c))
                    || estimates.iter().any(|estimate| c.same(estimate))
            });
            assert!(
                !cs.is_empty(),
                "no shortlisted candidates for {precision} n={n}"
            );
            emit(
                raw,
                json!({"kind":"selection", "precision":precision, "n":n,
                "available_candidates":available, "timed_candidates":cs.len()}),
            );
        }
        let source: Vec<_> = (0..n)
            .map(|i| {
                Complex::new(
                    T::from_f64(((i * 17 % 97) as f64 - 48.0) / 97.0).unwrap(),
                    T::from_f64(((i * 31 % 101) as f64 - 50.0) / 101.0).unwrap(),
                )
            })
            .collect();
        let mut reference = source.clone();
        rustfft::FftPlanner::<T>::new()
            .plan_fft_forward(n)
            .process(&mut reference);
        let norm = reference
            .iter()
            .map(|z| z.re.to_f64().unwrap().powi(2) + z.im.to_f64().unwrap().powi(2))
            .sum::<f64>()
            .sqrt();
        let mut timings = Vec::new();
        eprintln!("tune {precision} n={n}: {} candidates", cs.len());
        for c in &cs {
            let f = c.build::<T>(n, FftDirection::Forward);
            // Align using safe subslices with enough padding for any offset.
            let mut x = vec![zero; n + 16];
            let mut y = vec![zero; n + 16];
            let xo = x.as_ptr().align_offset(64);
            let yo = y.as_ptr().align_offset(64);
            let x = &mut x[xo..xo + n];
            let y = &mut y[yo..yo + n];
            let need = f
                .get_inplace_scratch_len()
                .max(f.get_outofplace_scratch_len())
                .max(f.get_immutable_scratch_len());
            let mut work = vec![zero; need];
            let mut times = Vec::new();
            for mode in 0..3 {
                x.copy_from_slice(&source);
                match mode {
                    0 => f.process_with_scratch(x, &mut work),
                    1 => f.process_outofplace_with_scratch(x, y, &mut work),
                    _ => f.process_immutable_with_scratch(x, y, &mut work),
                };
                let actual = if mode == 0 { &*x } else { &*y };
                let error = actual
                    .iter()
                    .zip(&reference)
                    .map(|(a, b)| {
                        (a.re.to_f64().unwrap() - b.re.to_f64().unwrap()).powi(2)
                            + (a.im.to_f64().unwrap() - b.im.to_f64().unwrap()).powi(2)
                    })
                    .sum::<f64>()
                    .sqrt()
                    / norm
                    / T::epsilon().to_f64().unwrap();
                assert!(
                    error.is_finite() && error <= 4.0 * (n as f64).log2() + 2.0,
                    "{precision} n={n} {c:?} mode={mode} error={error}"
                );
                if mode == 2 {
                    assert_eq!(x, source);
                }
                x.fill(zero);
                y.fill(zero);
                work.fill(zero);
                let (ns, batches) = sample(
                    || {
                        match mode {
                            0 => f.process_with_scratch(black_box(x), black_box(&mut work)),
                            1 => f.process_outofplace_with_scratch(
                                black_box(x),
                                black_box(y),
                                black_box(&mut work),
                            ),
                            _ => f.process_immutable_with_scratch(
                                black_box(x),
                                black_box(y),
                                black_box(&mut work),
                            ),
                        };
                        black_box(&y);
                    },
                    o.ms,
                    o.min_batches,
                );
                emit(
                    raw,
                    json!({"kind":"candidate","precision":precision,"n":n,"kernel":c.kernel(),"isa":c.isa().name(),"lanes":c.lanes(),"radices":c.radices(),"placement":mode,"p1_ns":ns[0],"median_ns":ns[1],"batches":batches,"error_eps":error}),
                );
                times.push(ns);
            }
            timings.push(times);
        }
        for cap in [
            Isa::Scalar,
            #[cfg(target_arch = "aarch64")]
            Isa::Neon,
            Isa::Sse2,
            Isa::Avx2,
            Isa::Avx512Ymm,
            Isa::Avx512,
        ]
        .into_iter()
        .filter(|&i| i <= effective_isa)
        {
            let allowed: Vec<_> = cs
                .iter()
                .enumerate()
                .filter(|(_, c)| c.isa() <= cap)
                .map(|(i, _)| i)
                .collect();
            let best: [f64; 3] = std::array::from_fn(|mode| {
                allowed
                    .iter()
                    .map(|&i| timings[i][mode][0])
                    .fold(f64::INFINITY, f64::min)
            });
            // A plan is shared by every placement. Minimize its worst slowdown.
            let best_median: [f64; 3] = std::array::from_fn(|m| {
                allowed
                    .iter()
                    .map(|&i| timings[i][m][1])
                    .fold(f64::INFINITY, f64::min)
            });
            let worst = |i: usize, count: usize| {
                (0..count)
                    .flat_map(|m| {
                        [
                            timings[i][m][0] / best[m],
                            timings[i][m][1] / best_median[m],
                        ]
                    })
                    .fold(0.0, f64::max)
            };
            let score = |i: usize| worst(i, if o.objective == "all" { 3 } else { 1 });
            let Some(&index) = allowed
                .iter()
                .min_by(|&&a, &&b| score(a).total_cmp(&score(b)))
            else {
                continue;
            };
            let c = &cs[index];
            let worst_ratio = worst(index, 3);
            if let Some(estimate) = tuning::estimated(n, cap, f64_)
                && let Some(i) = cs.iter().position(|c| c.same(&estimate))
            {
                emit(
                    raw,
                    json!({"kind":"estimate", "precision":precision, "n":n, "cap":cap.name(), "worst_ratio":worst(i,3), "objective_ratio":score(i), "ip_ratio":timings[i][0][0]/best[0], "isa":estimate.isa().name(), "lanes":estimate.lanes(), "kernel":estimate.kernel(), "radices":estimate.radices()}),
                );
            }

            emit(
                raw,
                json!({"kind":"winner","precision":precision,"n":n,"cap":cap.name(),"kernel":c.kernel(),"isa":c.isa().name(),"lanes":c.lanes(),"radices":c.radices(),"worst_ratio":worst_ratio, "objective_ratio":score(index)}),
            );
            rust.push_str(&format!("    Recipe {{ n: {n}, f64_: {f64_}, cap: Isa::{cap:?}, kernel: CandidateKernel::{}, isa: Isa::{:?}, lanes: {}, radices: &{:?}, ns: {:.6} }},\n",c.rust_kernel(),c.isa(),c.lanes(),c.radices(),timings[index][0][0]));
        }
        raw.flush().expect("flush size");
    }
}

fn main() -> Result<(), String> {
    if std::env::args().any(|a| a == "--help" || a == "-h") {
        println!(
            "cargo xtask tune [--core 2] [--n N,N,...] [--max-n N] [--precision f32|f64] [--ms 5]\n  [--min-batches 20] [--shortlist target/contenders.jsonl]\n  [--passes-only | --plans-only | --planning-only --check-g8]\n  [--raw target/tune.jsonl] [--out target/tune.rs]\nSee docs/benchmarking.md for three-process calibration and independent audits."
        );
        return Ok(());
    }
    let o = options()?;
    let mut raw =
        std::io::BufWriter::new(std::fs::File::create(&o.raw).map_err(|e| e.to_string())?);
    emit(
        &mut raw,
        json!({"kind":"environment","isa":fastfft::detected_isa().name(),"effective_isa":FftPlanner::<f32>::new().isa().name(),"features":{"sse2":cfg!(feature="sse2"),"avx2":cfg!(feature="avx2"),"avx512":cfg!(feature="avx512")},"cpuinfo":std::fs::read_to_string("/proc/cpuinfo").unwrap_or_default(),"args":std::env::args().collect::<Vec<_>>()}),
    );
    let mut rust = String::from(
        "//! Single-process seed tables; merge JSONL with scripts/analyze-tuning.py for cache corrections.\nuse crate::isa::Isa;\nuse crate::planner::CandidateKernel;\nuse crate::plan::{PassCost, Recipe, StockhamScale};\npub(crate) const SCALES: &[StockhamScale] = &[];\npub(crate) const PASSES: &[PassCost] = &[\n",
    );
    if !o.planning && !o.plans_only {
        for f64_ in [false, true] {
            if o.precision != "both" && (o.precision == "f64") != f64_ {
                continue;
            }
            for (isa, kind, radix, ns) in tuning::passes(f64_, o.ms) {
                emit(
                    &mut raw,
                    json!({"kind":"pass","f64":f64_,"isa":isa.name(),"pass":kind,"radix":radix,"ns_per_element":ns}),
                );
                rust.push_str(&format!("    PassCost {{ f64_: {f64_}, isa: Isa::{isa:?}, kind: {kind}, radix: {radix}, ns: {ns:.9} }},\n"));
            }
        }
    }
    rust.push_str("];\npub(crate) const RECIPES: &[Recipe] = &[\n");
    let mut pass = true;
    for precision in ["f32", "f64"] {
        if o.precision != "both" && o.precision != precision {
            continue;
        }
        if o.planning {
            pass &= if precision == "f32" {
                planning::<f32>(&o, &mut raw)
            } else {
                planning::<f64>(&o, &mut raw)
            };
        } else if !o.passes_only {
            if precision == "f32" {
                plans::<f32>(&o, &mut raw, &mut rust)
            } else {
                plans::<f64>(&o, &mut raw, &mut rust)
            };
        }
    }
    rust.push_str("];\n");
    raw.flush().map_err(|e| e.to_string())?;
    if let Some(out) = &o.out {
        std::fs::write(out, rust).map_err(|e| e.to_string())?;
    }
    if o.check && !pass {
        return Err("G8 failed; see planning rows".into());
    }
    Ok(())
}

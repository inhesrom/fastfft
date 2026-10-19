//! fastfft-arena: benchmark harness comparing Rust FFT libraries.
//!
//! ```text
//! fastfft-arena run --suite pow2,smooth --profile full [--libs a,b] [--core 2] [--prec f32]
//!                   [--max-n N] [--misalign 8] [--filter k=v,...] [--label x] [--allow-dirty-env]
//! fastfft-arena run-cell --core 2 --spec '<json>'
//! fastfft-arena report <run-dir>
//! fastfft-arena compare <run-a> <run-b>
//! fastfft-arena publish <run-dir> --label <label>
//! fastfft-arena env [--core 2]
//! ```

mod adapters;
mod buffers;
mod cell;
mod clock_probe;
#[cfg(feature = "measure-diagnostics")]
mod coefficient_components;
#[cfg(feature = "measure-diagnostics")]
mod coefficient_crossover;
#[cfg(feature = "measure-diagnostics")]
mod coefficient_position;
mod driver;
mod env;
mod fastfft_adapter;
mod fftw;
#[cfg(feature = "measure-diagnostics")]
mod measure_context;
#[cfg(feature = "measure-diagnostics")]
mod measure_diagnostics;
mod report;
mod scenarios;
mod spec;
#[cfg(all(feature = "stockham-diagnostics", target_arch = "x86_64"))]
mod stockham_matrix;
#[cfg(all(
    feature = "stockham-diagnostics",
    target_arch = "x86_64",
    target_os = "linux"
))]
mod stockham_passes;
#[cfg(all(
    feature = "stockham-diagnostics",
    target_arch = "x86_64",
    target_os = "linux"
))]
mod stockham_placement;
mod stockham_reference;
mod timing;

use spec::{ALL_LIBS, CellSpec, EXTRA_LIBS, Precision, Profile, SUITES};
use std::path::PathBuf;

fn usage() -> ! {
    eprintln!("{}", include_str!("usage.txt"));
    std::process::exit(2)
}

#[cfg(target_os = "linux")]
fn pin(core: usize) -> bool {
    // SAFETY: cpu_set_t is plain data; sched_setaffinity reads it for the calling thread.
    unsafe {
        let mut set: libc::cpu_set_t = std::mem::zeroed();
        libc::CPU_SET(core, &mut set);
        libc::sched_setaffinity(0, std::mem::size_of::<libc::cpu_set_t>(), &set) == 0
    }
}

#[cfg(not(target_os = "linux"))]
fn pin(_core: usize) -> bool {
    #[cfg(target_os = "macos")]
    // SAFETY: changes only this thread's scheduling class, with a valid class
    // and relative priority. QoS is a scheduler hint, not CPU affinity.
    unsafe {
        if libc::pthread_set_qos_class_self_np(libc::qos_class_t::QOS_CLASS_USER_INITIATED, 0) != 0
        {
            eprintln!("arena: could not request user-initiated thread QoS");
        }
    }
    // macOS does not expose Linux-style binding to a particular CPU.
    false
}

struct Args {
    pos: Vec<String>,
    kv: Vec<(String, Option<String>)>,
}

impl Args {
    fn parse(v: &[String]) -> Args {
        let mut pos = Vec::new();
        let mut kv = Vec::new();
        let mut i = 0;
        while i < v.len() {
            if let Some(k) = v[i].strip_prefix("--") {
                if let Some((a, b)) = k.split_once('=') {
                    kv.push((a.to_string(), Some(b.to_string())));
                } else if i + 1 < v.len() && !v[i + 1].starts_with("--") {
                    kv.push((k.to_string(), Some(v[i + 1].clone())));
                    i += 1;
                } else {
                    kv.push((k.to_string(), None));
                }
            } else {
                pos.push(v[i].clone());
            }
            i += 1;
        }
        Args { pos, kv }
    }
    fn get(&self, k: &str) -> Option<&str> {
        self.kv
            .iter()
            .rev()
            .find(|(a, _)| a == k)
            .and_then(|(_, b)| b.as_deref())
    }
    fn flag(&self, k: &str) -> bool {
        self.kv.iter().any(|(a, _)| a == k)
    }
}

/// Reject unsupported diagnostic commands before affinity, clock or /proc access.
fn stockham_command_support(command: &str) -> Result<(), &'static str> {
    let timing = matches!(
        command,
        "stockham-placement" | "stockham-crossover" | "stockham-passes"
    );
    if timing || command == "stockham-matrix" {
        if !cfg!(feature = "stockham-diagnostics") {
            return Err("Stockham commands require --features stockham-diagnostics");
        }
        if !cfg!(target_arch = "x86_64") {
            return Err(
                "Stockham arena commands require x86_64; NEON diagnostics are unsupported (scalar library diagnostics remain available via tuning)",
            );
        }
        if timing && !cfg!(target_os = "linux") {
            return Err(
                "Stockham measurement commands require Linux x86_64 (/proc mappings and CPU affinity)",
            );
        }
    }
    Ok(())
}

fn main() {
    let argv: Vec<String> = std::env::args().skip(1).collect();
    let Some(cmd) = argv.first().cloned() else {
        usage()
    };
    let a = Args::parse(&argv[1..]);
    let core: usize = a.get("core").and_then(|c| c.parse().ok()).unwrap_or(2);
    if let Err(reason) = stockham_command_support(&cmd) {
        eprintln!("arena: {reason}");
        std::process::exit(2);
    }
    match cmd.as_str() {
        #[cfg(all(
            feature = "stockham-diagnostics",
            target_arch = "x86_64",
            target_os = "linux"
        ))]
        "stockham-placement" | "stockham-crossover" | "stockham-passes" => {
            if !pin(core) {
                eprintln!("arena: cannot pin diagnostic process to CPU {core}");
                std::process::exit(2);
            }
            let process = a.get("process").and_then(|p| p.parse().ok()).unwrap_or(0);
            let n = a.get("n").and_then(|p| p.parse().ok()).unwrap_or(4096);
            let profile =
                Profile::by_name(a.get("profile").unwrap_or("full")).unwrap_or_else(|| usage());
            let started = std::time::Instant::now();
            let before = clock_probe::measure_ghz();
            let mut result = match (cmd.as_str(), a.get("prec").unwrap_or("f32")) {
                ("stockham-placement" | "stockham-crossover", "f32") => {
                    stockham_placement::run::<f32>(
                        n,
                        process,
                        a.flag("full-rows"),
                        profile,
                        cmd == "stockham-crossover",
                    )
                }
                ("stockham-placement" | "stockham-crossover", "f64") => {
                    stockham_placement::run::<f64>(
                        n,
                        process,
                        a.flag("full-rows"),
                        profile,
                        cmd == "stockham-crossover",
                    )
                }
                ("stockham-passes", "f32") => stockham_passes::run::<f32>(n, process, profile),
                ("stockham-passes", "f64") => stockham_passes::run::<f64>(n, process, profile),
                _ => usage(),
            }
            .unwrap_or_else(|reason| {
                eprintln!("arena: {reason}");
                std::process::exit(2);
            });
            let after = clock_probe::measure_ghz();
            result["cpu"] = serde_json::json!(core);
            result["clock_ghz"] = serde_json::json!([before, after]);
            result["wall_s"] = serde_json::json!(started.elapsed().as_secs_f64());
            let executable = std::env::current_exe().expect("diagnostic executable path");
            let mappings =
                std::fs::read_to_string("/proc/self/maps").expect("diagnostic executable mappings");
            result["executable_mappings"] = serde_json::json!(
                mappings
                    .lines()
                    .filter(|line| line.contains(executable.to_string_lossy().as_ref()))
                    .collect::<Vec<_>>()
            );
            println!(
                "{}",
                serde_json::to_string(&result).expect("diagnostic JSON")
            );
        }
        #[cfg(all(feature = "stockham-diagnostics", target_arch = "x86_64"))]
        "stockham-matrix" => {
            println!(
                "{}",
                serde_json::to_string_pretty(&stockham_matrix::capture()).expect("json")
            );
        }
        "run" => {
            #[cfg(not(feature = "measure-diagnostics"))]
            if [
                "measure-trace",
                "measure-context",
                "sample-trace",
                "execution-order-factorial",
                "coefficient-crossover",
                "coefficient-position",
                "coefficient-components",
            ]
            .iter()
            .any(|flag| a.flag(flag))
            {
                eprintln!("arena: diagnostic flags require the measure-diagnostics feature");
                std::process::exit(2);
            }
            let profile =
                Profile::by_name(a.get("profile").unwrap_or("quick")).unwrap_or_else(|| usage());
            let suites: Vec<String> = a
                .get("suite")
                .unwrap_or("pow2")
                .split(',')
                .map(String::from)
                .collect();
            let libs: Vec<String> = match a.get("libs") {
                Some(l) => l.split(',').map(String::from).collect(),
                None => ALL_LIBS.iter().map(|s| s.to_string()).collect(),
            };
            for s in &suites {
                if !SUITES.contains(&s.as_str()) {
                    eprintln!("arena: unknown suite `{s}` (known: {})", SUITES.join(", "));
                    std::process::exit(2);
                }
            }
            for l in &libs {
                let known = ALL_LIBS.contains(&l.as_str())
                    || EXTRA_LIBS.contains(&l.as_str())
                    || l.starts_with("lab/");
                if !known {
                    eprintln!("arena: unknown library `{l}`");
                    std::process::exit(2);
                }
            }
            let precisions = match a.get("prec") {
                Some("f32") => vec![Precision::F32],
                Some("f64") => vec![Precision::F64],
                _ => vec![Precision::F32, Precision::F64],
            };
            let args = driver::RunArgs {
                suites,
                profile,
                libs,
                core,
                out: a.get("out").map(PathBuf::from),
                allow_dirty_env: a.flag("allow-dirty-env"),
                misalign: a.get("misalign").and_then(|m| m.parse().ok()).unwrap_or(0),
                precisions,
                max_n: a
                    .get("max-n")
                    .and_then(|m| m.parse().ok())
                    .unwrap_or(usize::MAX),
                verify: !a.flag("no-verify"),
                timeout_s: a.get("timeout").and_then(|m| m.parse().ok()).unwrap_or(600),
                control_every: a
                    .get("control-every")
                    .and_then(|m| m.parse().ok())
                    .unwrap_or(25),
                label: a.get("label").map(String::from),
                filter: a.get("filter").map(String::from),
                procs: a.get("procs").and_then(|m| m.parse().ok()).unwrap_or(1),
                #[cfg(feature = "measure-diagnostics")]
                diagnostics: spec::Diagnostics {
                    measure_trace: a.flag("measure-trace") || a.flag("measure-context"),
                    measure_context: a.flag("measure-context"),
                    sample_trace: a.flag("sample-trace")
                        || a.flag("measure-trace")
                        || a.flag("measure-context")
                        || a.flag("coefficient-crossover")
                        || a.flag("coefficient-position")
                        || a.flag("coefficient-components"),
                    factorial: a.flag("execution-order-factorial"),
                    coefficient_crossover: a.flag("coefficient-crossover"),
                    coefficient_position: a.flag("coefficient-position"),
                    coefficient_components: a.flag("coefficient-components"),
                    execution_rotation: 0,
                    process_index: 0,
                },
            };
            match driver::run(&args) {
                Ok(dir) => println!("{}", dir.display()),
                Err(e) => {
                    eprintln!("arena: {e}");
                    std::process::exit(1)
                }
            }
        }
        "run-cell" => {
            let spec: CellSpec = match a.get("spec").map(CellSpec::parse_request) {
                Some(Ok(s)) => s,
                Some(Err(error)) => {
                    eprintln!("run-cell: {error}");
                    std::process::exit(2);
                }
                None => usage(),
            };
            #[cfg(feature = "measure-diagnostics")]
            if let Err(error) = measure_diagnostics::validate(&spec) {
                eprintln!("arena: {error}");
                std::process::exit(2);
            }
            let pinned = pin(core);
            let r = cell::run_cell(&spec, pinned.then_some(core));
            println!("{}", serde_json::to_string(&r).expect("json"));
        }
        "report" => {
            let dir = PathBuf::from(a.pos.first().unwrap_or_else(|| usage()));
            match report::report(&dir) {
                Ok(p) => println!("{}", p.display()),
                Err(e) => {
                    eprintln!("arena: {e}");
                    std::process::exit(1)
                }
            }
        }
        "compare" => {
            if a.pos.len() < 2 {
                usage()
            }
            match report::compare(&PathBuf::from(&a.pos[0]), &PathBuf::from(&a.pos[1])) {
                Ok(md) => println!("{md}"),
                Err(e) => {
                    eprintln!("arena: {e}");
                    std::process::exit(1)
                }
            }
        }
        "publish" => {
            let dir = PathBuf::from(a.pos.first().unwrap_or_else(|| usage()));
            let label = a.get("label").unwrap_or("run");
            match report::publish(&dir, label) {
                Ok(p) => println!("{}", p.display()),
                Err(e) => {
                    eprintln!("arena: {e}");
                    std::process::exit(1)
                }
            }
        }
        "env" => {
            let v = env::capture(core, serde_json::Value::Null);
            println!("{}", serde_json::to_string_pretty(&v).expect("json"));
        }
        _ => usage(),
    }
}

#[cfg(test)]
mod stockham_platform_tests {
    use super::stockham_command_support;

    #[test]
    fn rejects_unsupported_commands_before_measurement() {
        assert!(stockham_command_support("run").is_ok());
        for command in [
            "stockham-placement",
            "stockham-crossover",
            "stockham-passes",
        ] {
            assert_eq!(
                stockham_command_support(command).is_ok(),
                cfg!(all(
                    feature = "stockham-diagnostics",
                    target_arch = "x86_64",
                    target_os = "linux"
                ))
            );
        }
        assert_eq!(
            stockham_command_support("stockham-matrix").is_ok(),
            cfg!(all(
                feature = "stockham-diagnostics",
                target_arch = "x86_64"
            ))
        );
    }
}

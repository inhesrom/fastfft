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
#[cfg(feature = "measure-diagnostics")]
mod storage_crossover;
mod timing;

use spec::{ALL_LIBS, CellSpec, EXTRA_LIBS, Precision, Profile, SUITES};
use std::path::PathBuf;

fn usage() -> ! {
    eprintln!("{}", include_str!("usage.txt"));
    std::process::exit(2)
}

fn pin(core: usize) -> bool {
    // SAFETY: cpu_set_t is plain data; sched_setaffinity reads it for the calling thread.
    unsafe {
        let mut set: libc::cpu_set_t = std::mem::zeroed();
        libc::CPU_SET(core, &mut set);
        libc::sched_setaffinity(0, std::mem::size_of::<libc::cpu_set_t>(), &set) == 0
    }
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

fn main() {
    let argv: Vec<String> = std::env::args().skip(1).collect();
    let Some(cmd) = argv.first().cloned() else {
        usage()
    };
    let a = Args::parse(&argv[1..]);
    let core: usize = a.get("core").and_then(|c| c.parse().ok()).unwrap_or(2);
    match cmd.as_str() {
        "run" => {
            #[cfg(not(feature = "measure-diagnostics"))]
            if [
                "measure-trace",
                "measure-context",
                "sample-trace",
                "execution-order-factorial",
                "storage-crossover",
                "storage-graph",
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
                        || a.flag("measure-context"),
                    factorial: a.flag("execution-order-factorial"),
                    storage_crossover: a.flag("storage-crossover"),
                    storage_graph: a.flag("storage-graph"),
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
            let spec: CellSpec = match a.get("spec").map(serde_json::from_str) {
                Some(Ok(s)) => s,
                _ => usage(),
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

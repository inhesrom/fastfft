//! Whole-process profiling of one arena cell, with retained evidence.

use serde_json::{Value, json};
use std::collections::BTreeMap;
use std::fs::{self, File, OpenOptions};
use std::io::{BufRead, BufReader, Write};
use std::path::{Path, PathBuf};
use std::process::{Command, Stdio};
use std::time::{SystemTime, UNIX_EPOCH};

const STAT_EVENTS: &str =
    "cycles,instructions,L1-dcache-loads,L1-dcache-load-misses,l2_cache_req_stat.ic_dc_miss_in_l2";

fn shell_quote(value: &str) -> String {
    format!("'{}'", value.replace('\'', "'\\''"))
}

#[derive(Debug)]
struct Options {
    mode: String,
    out: Option<PathBuf>,
    core: usize,
    events: String,
    freq: usize,
    spec: Value,
}

impl Options {
    fn parse(args: &[String]) -> Result<Self, String> {
        let mut values = BTreeMap::new();
        let mut args = args.iter();
        while let Some(key) = args.next() {
            if ![
                "--lib", "--n", "--prec", "--dir", "--place", "--core", "--events", "--mode",
                "--out", "--freq",
            ]
            .contains(&key.as_str())
            {
                return Err(format!("unknown perf-cell option {key}"));
            }
            let value = args
                .next()
                .filter(|v| !v.starts_with("--") && !v.is_empty())
                .ok_or_else(|| format!("missing {key} value"))?;
            if values.insert(key.as_str(), value.as_str()).is_some() {
                return Err(format!("duplicate {key}"));
            }
        }
        let get = |key, default| values.get(key).copied().unwrap_or(default);
        let choice = |key, default, allowed: &[&str]| {
            let v = get(key, default);
            if allowed.contains(&v) {
                Ok(v.to_string())
            } else {
                Err(format!(
                    "invalid {key}: {v}; expected {}",
                    allowed.join("|")
                ))
            }
        };
        let number = |key, default, allow_zero: bool| {
            let raw = get(key, default);
            let n = raw
                .parse::<usize>()
                .map_err(|_| format!("invalid {key}: {raw}"))?;
            if n == 0 && !allow_zero {
                return Err(format!("{key} must be positive"));
            }
            Ok(n)
        };
        let mode = choice("--mode", "stat", &["stat", "record"])?;
        let out = values.get("--out").map(PathBuf::from);
        if mode == "record" && out.is_none() {
            return Err("--mode record requires --out DIR".into());
        }
        if mode == "stat" && values.contains_key("--freq") {
            return Err("--freq requires --mode record".into());
        }
        let core = number("--core", "2", true)?;
        // The arena uses libc's fixed-size cpu_set_t on Linux.
        if core >= 1024 {
            return Err("--core must be below 1024 (arena cpu_set_t limit)".into());
        }
        let spec = json!({
            "suite": "perf", "precision": choice("--prec", "f32", &["f32", "f64"] )?,
            "direction": choice("--dir", "forward", &["forward", "inverse"] )?,
            "placement": choice("--place", "inplace", &["inplace", "outofplace", "immutable"] )?,
            "n": number("--n", "4096", false)?, "batch": 1, "misalign": 0,
            "scenario": null, "libs": [get("--lib", "fastfft")], "profile": "full",
            "verify": false, "seed": 1
        });
        Ok(Self {
            events: get(
                "--events",
                if mode == "record" {
                    "cycles:u"
                } else {
                    STAT_EVENTS
                },
            )
            .into(),
            freq: number("--freq", "999", false)?,
            mode,
            out,
            core,
            spec,
        })
    }

    fn command(&self, perf: &Path, exe: &Path, out: &Path) -> Command {
        let mut cmd = Command::new(perf);
        cmd.arg(&self.mode).args(["-e", &self.events]);
        if self.mode == "record" {
            cmd.args([
                "-F",
                &self.freq.to_string(),
                "--call-graph",
                "dwarf,16384",
                "--no-buildid-cache",
                "-o",
            ])
            .arg(out.join("perf.data"));
        }
        cmd.arg("--").arg(exe).args([
            "run-cell",
            "--core",
            &self.core.to_string(),
            "--spec",
            &self.spec.to_string(),
        ]);
        cmd
    }
}

fn write(path: &Path, bytes: impl AsRef<[u8]>) -> Result<(), String> {
    fs::write(path, bytes).map_err(|e| format!("{}: {e}", path.display()))
}

fn create_output(path: &Path) -> Result<PathBuf, String> {
    if let Some(parent) = path.parent().filter(|p| !p.as_os_str().is_empty()) {
        fs::create_dir_all(parent).map_err(|e| e.to_string())?;
    }
    // create_dir, rather than create_dir_all, atomically refuses reuse.
    fs::create_dir(path).map_err(|e| format!("refusing output {}: {e}", path.display()))?;
    fs::canonicalize(path).map_err(|e| e.to_string())
}

/// Keep stdout/stderr even when a command fails or is killed. Log arguments as
/// JSON arrays; nothing is passed through a shell.
fn capture(cmd: &mut Command, out: &Path, name: &str) -> Result<(), String> {
    if cmd.get_current_dir().is_none() {
        cmd.current_dir(super::root());
    }
    let mut journal = OpenOptions::new()
        .create(true)
        .append(true)
        .open(out.join("commands.jsonl"))
        .map_err(|e| e.to_string())?;
    let command = json!({
        "name": name, "program": cmd.get_program().to_string_lossy(),
        "args": cmd.get_args().map(|a| a.to_string_lossy()).collect::<Vec<_>>(),
        "cwd": cmd.get_current_dir().unwrap_or(&super::root()),
        "env": cmd.get_envs().map(|(k,v)| (k.to_string_lossy(), v.map(|v| v.to_string_lossy()))).collect::<BTreeMap<_,_>>()
    });
    writeln!(journal, "{command}").map_err(|e| e.to_string())?;
    let stdout = File::create(out.join(format!("{name}.stdout"))).map_err(|e| e.to_string())?;
    let stderr = File::create(out.join(format!("{name}.stderr"))).map_err(|e| e.to_string())?;
    let status = cmd
        .stdout(Stdio::from(stdout))
        .stderr(Stdio::from(stderr))
        .status();
    let result = json!({"name": name, "status": status.as_ref().ok().and_then(|s| s.code()),
        "success": status.as_ref().is_ok_and(|s| s.success()),
        "spawn_error": status.as_ref().err().map(ToString::to_string)});
    writeln!(journal, "{result}").map_err(|e| e.to_string())?;
    match status {
        Ok(s) if s.success() => Ok(()),
        other => Err(format!("{name} failed ({other:?}); see {name}.stderr")),
    }
}

fn read(path: impl AsRef<Path>) -> String {
    fs::read_to_string(path.as_ref()).unwrap_or_else(|e| format!("unavailable: {e}"))
}

fn validate_cell(cell: &Value, options: &Options) -> Result<(), String> {
    if cell["cpu"].as_u64() != Some(options.core as u64) {
        return Err(format!(
            "affinity failed: requested CPU {}, cell cpu={}",
            options.core, cell["cpu"]
        ));
    }
    let results = cell["results"].as_array().ok_or("missing cell results")?;
    if results.len() != 1 || results[0]["lib"] != options.spec["libs"][0] {
        return Err("cell did not return the selected library".into());
    }
    if results[0]["status"] != "ok" || !results[0]["time"].is_object() {
        return Err(format!("failed cell: {}", results[0]));
    }
    Ok(())
}

fn validate_stat(stderr: &str) -> Result<(), String> {
    if [
        "<not supported>",
        "<not counted>",
        "No permission",
        "Permission denied",
        "Access to performance",
    ]
    .iter()
    .any(|m| stderr.contains(m))
    {
        Err("denied permissions or unsupported/uncounted events; see perf.stderr".into())
    } else {
        Ok(())
    }
}

fn sample_count(path: &Path) -> Result<usize, String> {
    let file = File::open(path).map_err(|e| e.to_string())?;
    let mut count = 0;
    for line in BufReader::new(file).lines() {
        let line = line.map_err(|e| e.to_string())?;
        if !line.trim().is_empty() && !line.starts_with('#') {
            count += 1;
        }
    }
    if count == 0 {
        Err("empty samples in perf.data".into())
    } else {
        Ok(count)
    }
}

fn reports(perf: &Path, out: &Path) -> Result<usize, String> {
    let mut errors = Vec::new();
    for (name, args) in [
        (
            "report-self",
            vec![
                "report",
                "--stdio",
                "--header",
                "--no-children",
                "-g",
                "none",
                "--show-nr-samples",
                "--percent-limit",
                "0",
            ],
        ),
        (
            "report-callers",
            vec![
                "report",
                "--stdio",
                "--header",
                "--children",
                "-g",
                "graph,0.5,caller",
                "--show-nr-samples",
                "--percent-limit",
                "0",
            ],
        ),
        ("stacks", vec!["script"]),
        ("stacks-no-inline", vec!["script", "--no-inline"]),
        (
            "samples",
            vec!["script", "--hide-call-graph", "-F", "event,ip,sym,dso"],
        ),
    ] {
        if let Err(e) = capture(
            Command::new(perf)
                .args(args)
                .arg("-i")
                .arg(out.join("perf.data")),
            out,
            name,
        ) {
            errors.push(e);
        }
    }
    let count = sample_count(&out.join("samples.stdout"));
    if let Err(e) = &count {
        errors.push(e.clone());
    }
    let warnings = [
        "report-self",
        "report-callers",
        "stacks",
        "stacks-no-inline",
        "samples",
    ]
    .into_iter()
    .filter_map(|name| {
        let warning = read(out.join(format!("{name}.stderr")));
        if warning.trim().is_empty() {
            None
        } else {
            Some((name, warning))
        }
    })
    .collect::<BTreeMap<_, _>>();
    if !warnings.is_empty() {
        eprintln!(
            "xtask: perf report warnings; inspect report-warnings.json and stack completeness"
        );
    }
    write(
        &out.join("report-warnings.json"),
        serde_json::to_vec_pretty(&warnings).map_err(|e| e.to_string())?,
    )?;
    if errors.is_empty() {
        count
    } else {
        Err(errors.join("; "))
    }
}

pub(super) fn run(args: &[String]) -> Result<(), String> {
    let options = Options::parse(args)?;
    let stamp = SystemTime::now()
        .duration_since(UNIX_EPOCH)
        .map_err(|e| e.to_string())?
        .as_nanos();
    let out = create_output(&options.out.clone().unwrap_or_else(|| {
        super::root().join(format!(
            "target/profiling/stat-{}-{stamp}",
            std::process::id()
        ))
    }))?;
    eprintln!("xtask: profiling evidence: {}", out.display());
    let result = profile(&options, &out);
    write(
        &out.join("status.json"),
        json!({"success": result.is_ok(), "error": result.as_ref().err()}).to_string(),
    )?;
    result.map_err(|e| format!("{e}; partial evidence retained in {}", out.display()))
}

fn profile(options: &Options, out: &Path) -> Result<(), String> {
    write(&out.join("spec.json"), options.spec.to_string())?;
    let mut flags = [
        "RUSTFLAGS",
        "CARGO_ENCODED_RUSTFLAGS",
        "CARGO_TARGET_DIR",
        "CARGO_BUILD_TARGET",
        "RUSTC_WRAPPER",
        "RUSTC_WORKSPACE_WRAPPER",
        "FASTFFT_ISA_CAP",
    ]
    .into_iter()
    .map(|k| (k.to_string(), std::env::var(k).ok()))
    .collect::<BTreeMap<_, _>>();
    flags.extend(
        std::env::vars()
            .filter(|(k, _)| k.starts_with("CARGO_PROFILE_"))
            .map(|(k, v)| (k, Some(v))),
    );
    let metadata = json!({
        "mode": options.mode, "core": options.core, "events": options.events, "freq": options.freq,
        "call_graph": if options.mode == "record" { Some("dwarf,16384") } else { None },
        "profile": "arena", "fftw": super::fftw_available(),
        "flags": flags,
        "cpu": read("/proc/cpuinfo"), "process_permissions": read("/proc/self/status"),
        "perf_event_paranoid": read("/proc/sys/kernel/perf_event_paranoid"),
        "kptr_restrict": read("/proc/sys/kernel/kptr_restrict"),
        "perf_event_max_sample_rate": read("/proc/sys/kernel/perf_event_max_sample_rate"),
        "perf_event_mlock_kb": read("/proc/sys/kernel/perf_event_mlock_kb"),
        "smt_siblings": read(format!("/sys/devices/system/cpu/cpu{}/topology/thread_siblings_list", options.core)),
        "governor": read(format!("/sys/devices/system/cpu/cpu{}/cpufreq/scaling_governor", options.core)),
        "epp": read(format!("/sys/devices/system/cpu/cpu{}/cpufreq/energy_performance_preference", options.core)),
        "boost": read("/sys/devices/system/cpu/cpufreq/boost"), "loadavg": read("/proc/loadavg")
    });
    write(
        &out.join("metadata.json"),
        serde_json::to_vec_pretty(&metadata).map_err(|e| e.to_string())?,
    )?;
    for (name, program, args) in [
        ("revision", "git", vec!["rev-parse", "HEAD"]),
        (
            "source-status",
            "git",
            vec!["status", "--porcelain=v1", "--untracked-files=all"],
        ),
        ("dirty", "git", vec!["diff", "HEAD", "--binary"]),
        ("rustc-version", "rustc", vec!["-vV"]),
        ("cargo-version", "cargo", vec!["--version"]),
        ("perf-version", "perf", vec!["--version"]),
        (
            "perf-build-options",
            "perf",
            vec!["version", "--build-options"],
        ),
        ("objdump-version", "objdump", vec!["--version"]),
        ("kernel", "uname", vec!["-a"]),
    ] {
        // Missing optional metadata must not erase the profiling attempt.
        let _ = capture(
            Command::new(program).current_dir(super::root()).args(args),
            out,
            name,
        );
    }
    let _ = capture(
        Command::new(super::root().join("target/profiling-tools/bin/cargo-asm")).arg("--version"),
        out,
        "cargo-asm-version",
    );
    for path in [
        "Cargo.toml",
        "Cargo.lock",
        "rust-toolchain.toml",
        ".cargo/config.toml",
    ] {
        let dest = path.replace('/', "-");
        fs::copy(super::root().join(path), out.join(dest)).map_err(|e| e.to_string())?;
    }
    // git diff omits untracked files. Archive the actual build inputs too.
    capture(
        Command::new("tar")
            .current_dir(super::root())
            .arg("-czf")
            .arg(out.join("source.tar.gz"))
            .args([
                "Cargo.toml",
                "Cargo.lock",
                "rust-toolchain.toml",
                ".cargo",
                "crates",
                "bench",
                "experiments",
                "xtask",
            ]),
        out,
        "source-archive",
    )?;
    capture(&mut super::arena_build_command(), out, "build")?;
    let exe = out.join("fastfft-arena");
    fs::copy(super::root().join("target/arena/fastfft-arena"), &exe).map_err(|e| e.to_string())?;
    capture(
        Command::new("sha256sum").arg(&exe),
        out,
        "executable-sha256",
    )?;
    eprintln!("xtask: build finished; profiling CPU {}", options.core);
    let perf = Path::new("perf");
    let measured = capture(&mut options.command(perf, &exe, out), out, "perf");
    // Give stdout its intended name, even when the child failed.
    fs::rename(out.join("perf.stdout"), out.join("cell.json")).map_err(|e| e.to_string())?;
    let mut errors = Vec::new();
    if let Err(e) = measured {
        errors.push(format!("{e}: {}", read(out.join("perf.stderr")).trim()));
    }
    match serde_json::from_str::<Value>(&read(out.join("cell.json"))) {
        Ok(cell) => {
            if let Err(e) = validate_cell(&cell, options) {
                errors.push(e);
            }
        }
        Err(e) => errors.push(format!("missing/invalid cell JSON: {e}")),
    }
    if options.mode == "record" {
        // Reports can still recover useful evidence from a failed cell.
        match reports(perf, out) {
            Ok(count) => write(
                &out.join("sample-count.json"),
                json!({"samples": count}).to_string(),
            )?,
            Err(e) => errors.push(e),
        }
        let input = shell_quote(&out.join("perf.data").to_string_lossy());
        let commands = format!("perf report -i {input}\nperf annotate -i {input}\n");
        write(&out.join("interactive.txt"), &commands)?;
        eprintln!("{commands}");
    } else {
        if let Err(e) = validate_stat(&read(out.join("perf.stderr"))) {
            errors.push(e);
        }
        print!("{}", read(out.join("cell.json")));
        eprint!("{}", read(out.join("perf.stderr")));
    }
    if errors.is_empty() {
        Ok(())
    } else {
        Err(errors.join("; "))
    }
}

#[cfg(test)]
mod tests {
    use super::*;

    fn options(args: &[&str]) -> Result<Options, String> {
        Options::parse(&args.iter().map(|a| a.to_string()).collect::<Vec<_>>())
    }

    #[test]
    fn defaults_and_overrides() {
        let o = options(&[]).unwrap();
        assert_eq!(o.mode, "stat");
        assert_eq!(o.core, 2);
        assert_eq!(o.spec["n"], 4096);
        assert_eq!(o.events, STAT_EVENTS);
        let o = options(&[
            "--mode",
            "record",
            "--out",
            "a b",
            "--lib",
            "rustfft",
            "--n",
            "512",
            "--prec",
            "f64",
            "--dir",
            "inverse",
            "--place",
            "immutable",
            "--core",
            "0",
            "--freq",
            "111",
            "--events",
            "instructions:u",
        ])
        .unwrap();
        assert_eq!(o.events, "instructions:u");
        assert_eq!(o.freq, 111);
        assert_eq!(o.spec["libs"][0], "rustfft");
        assert_eq!(o.spec["precision"], "f64");
        assert_eq!(o.spec["placement"], "immutable");
        assert_eq!(o.spec["direction"], "inverse");
    }

    #[test]
    fn rejects_invalid_cli() {
        for args in [
            vec!["--mode", "record"],
            vec!["--mode", "wat"],
            vec!["--out"],
            vec!["--n", "no"],
            vec!["--n", "0"],
            vec!["--prec", "f16"],
            vec!["--dir", "backward"],
            vec!["--place", "ip"],
            vec!["--core", "-1"],
            vec!["--core", "1024"],
            vec!["--freq", "20"],
            vec!["--mode", "record", "--out", "x", "--freq", "0"],
            vec!["--lib", "--n"],
            vec!["--events", ""],
            vec!["--unknown", "x"],
            vec!["--n", "4", "--n", "8"],
        ] {
            assert!(options(&args).is_err(), "{args:?}");
        }
    }

    #[test]
    fn command_preserves_argument_boundaries_and_json() {
        assert_eq!(shell_quote("a' $(touch nope)"), "'a'\\'' $(touch nope)'");
        let o = options(&[
            "--mode",
            "record",
            "--out",
            "a b",
            "--lib",
            "a\"; $(touch nope)",
        ])
        .unwrap();
        let cmd = o.command(
            Path::new("perf"),
            Path::new("/exe with space"),
            Path::new("/out with space"),
        );
        let args = cmd
            .get_args()
            .map(|s| s.to_str().unwrap())
            .collect::<Vec<_>>();
        assert_eq!(
            &args[..9],
            &[
                "record",
                "-e",
                "cycles:u",
                "-F",
                "999",
                "--call-graph",
                "dwarf,16384",
                "--no-buildid-cache",
                "-o"
            ]
        );
        assert_eq!(args[9], "/out with space/perf.data");
        assert_eq!(args[10], "--");
        assert_eq!(args[11], "/exe with space");
        let spec: Value = serde_json::from_str(args.last().unwrap()).unwrap();
        assert_eq!(spec["libs"][0], "a\"; $(touch nope)");
    }

    #[test]
    fn cell_and_counter_failures_propagate() {
        let o = options(&[]).unwrap();
        let mut cell =
            json!({"cpu": 2, "results": [{"lib": "fastfft", "status": "ok", "time": {}}]});
        assert!(validate_cell(&cell, &o).is_ok());
        cell["cpu"] = Value::Null;
        assert!(
            validate_cell(&cell, &o)
                .unwrap_err()
                .contains("affinity failed")
        );
        cell["cpu"] = json!(2);
        cell["results"][0]["status"] = json!("unsupported");
        assert!(
            validate_cell(&cell, &o)
                .unwrap_err()
                .contains("failed cell")
        );
        for s in [
            "<not supported>",
            "<not counted>",
            "No permission",
            "Permission denied",
        ] {
            assert!(validate_stat(s).is_err());
        }
    }

    #[test]
    fn retains_failed_subprocess_and_refuses_existing_output() {
        let stamp = SystemTime::now()
            .duration_since(UNIX_EPOCH)
            .unwrap()
            .as_nanos();
        let path =
            std::env::temp_dir().join(format!("fastfft-perf-test-{}-{stamp}", std::process::id()));
        let out = create_output(&path).unwrap();
        write(&out.join("sentinel"), "keep").unwrap();
        assert!(create_output(&path).is_err());
        assert_eq!(read(out.join("sentinel")), "keep");
        assert!(
            capture(
                Command::new("sh").args(["-c", "printf partial; printf denied >&2; exit 7"]),
                &out,
                "failed"
            )
            .is_err()
        );
        assert_eq!(read(out.join("failed.stdout")), "partial");
        assert_eq!(read(out.join("failed.stderr")), "denied");
        assert!(read(out.join("commands.jsonl")).contains("\"status\":7"));
        assert!(sample_count(&out.join("sentinel")).is_ok());
        write(&out.join("empty"), "\n").unwrap();
        assert!(
            sample_count(&out.join("empty"))
                .unwrap_err()
                .contains("empty samples")
        );
        assert!(capture(&mut Command::new("/no-such-fastfft-tool"), &out, "missing").is_err());
        assert!(out.join("missing.stderr").exists());
        fs::remove_dir_all(path).unwrap();
    }

    #[cfg(unix)]
    #[test]
    fn report_failure_preserves_other_reports_and_detects_empty_samples() {
        use std::os::unix::fs::PermissionsExt;
        let stamp = SystemTime::now()
            .duration_since(UNIX_EPOCH)
            .unwrap()
            .as_nanos();
        let path = std::env::temp_dir().join(format!(
            "fastfft-perf-reports-{}-{stamp}",
            std::process::id()
        ));
        let out = create_output(&path).unwrap();
        let fake = out.join("fake-perf");
        write(&fake, "#!/bin/sh\ncase \"$*\" in\n*--no-children*) echo self-report;;\n*--children*) echo partial-callers; echo report-error >&2; exit 9;;\n*--hide-call-graph*) exit 0;;\n*) echo partial-stack;;\nesac\n").unwrap();
        fs::set_permissions(&fake, fs::Permissions::from_mode(0o700)).unwrap();
        let error = reports(&fake, &out).unwrap_err();
        assert!(error.contains("report-callers failed"));
        assert!(error.contains("empty samples"));
        assert_eq!(read(out.join("report-self.stdout")), "self-report\n");
        assert_eq!(read(out.join("report-callers.stdout")), "partial-callers\n");
        assert_eq!(read(out.join("report-callers.stderr")), "report-error\n");
        assert_eq!(read(out.join("stacks.stdout")), "partial-stack\n");
        fs::remove_dir_all(path).unwrap();
    }
}

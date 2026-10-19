//! Environment capture (`env.json`) and benchmark-readiness checks.

use serde_json::{Value, json};
use std::path::Path;
use std::process::Command;

fn read(path: &str) -> Option<String> {
    std::fs::read_to_string(path)
        .ok()
        .map(|s| s.trim().to_string())
}

fn cmd(program: &str, args: &[&str]) -> Option<String> {
    let out = Command::new(program).args(args).output().ok()?;
    if !out.status.success() && out.stdout.is_empty() {
        return None;
    }
    Some(String::from_utf8_lossy(&out.stdout).trim().to_string())
}

pub fn hostname() -> String {
    read("/proc/sys/kernel/hostname")
        .or_else(|| cmd("hostname", &[]))
        .unwrap_or_else(|| "unknown-host".into())
}

/// Fields of the first processor in /proc/cpuinfo.
fn cpuinfo() -> serde_json::Map<String, Value> {
    let mut m = serde_json::Map::new();
    if let Some(s) = read("/proc/cpuinfo") {
        for line in s.lines() {
            if line.trim().is_empty() {
                break;
            }
            if let Some((k, v)) = line.split_once(':') {
                let k = k.trim();
                if [
                    "vendor_id",
                    "cpu family",
                    "model",
                    "model name",
                    "stepping",
                    "microcode",
                    "flags",
                    "cache size",
                ]
                .contains(&k)
                {
                    m.insert(k.replace(' ', "_"), Value::String(v.trim().to_string()));
                }
            }
        }
    }
    m
}

fn caches(cpu: usize) -> Vec<Value> {
    let mut v = Vec::new();
    for i in 0..8 {
        let base = format!("/sys/devices/system/cpu/cpu{cpu}/cache/index{i}");
        if !Path::new(&base).exists() {
            break;
        }
        v.push(json!({
            "level": read(&format!("{base}/level")),
            "type": read(&format!("{base}/type")),
            "size": read(&format!("{base}/size")),
            "shared_cpu_list": read(&format!("{base}/shared_cpu_list")),
        }));
    }
    v
}

pub fn sibling_of(cpu: usize) -> Option<String> {
    read(&format!(
        "/sys/devices/system/cpu/cpu{cpu}/topology/thread_siblings_list"
    ))
}

/// `Some(true)` on AC, `Some(false)` on battery, `None` if unknown (no
/// power-supply information, e.g. desktops).
pub fn ac_power() -> Option<bool> {
    let dir = std::fs::read_dir("/sys/class/power_supply").ok()?;
    let mut seen = false;
    for e in dir.flatten() {
        let p = e.path();
        let ty = read(&p.join("type").to_string_lossy()).unwrap_or_default();
        if ty == "Mains" {
            seen = true;
            if read(&p.join("online").to_string_lossy()).as_deref() == Some("1") {
                return Some(true);
            }
        }
    }
    if seen { Some(false) } else { None }
}

pub struct EnvCheck {
    pub ok: bool,
    pub problems: Vec<String>,
}

/// Mirrors `scripts/bench-env.sh check`.
pub fn check(cpu: usize) -> EnvCheck {
    let mut problems = Vec::new();
    let gov = read(&format!(
        "/sys/devices/system/cpu/cpu{cpu}/cpufreq/scaling_governor"
    ));
    if let Some(g) = &gov
        && g != "performance"
    {
        problems.push(format!(
            "governor on cpu{cpu} is `{g}`, expected `performance`"
        ));
    }
    if let Some(epp) = read(&format!(
        "/sys/devices/system/cpu/cpu{cpu}/cpufreq/energy_performance_preference"
    )) && epp != "performance"
    {
        problems.push(format!("energy_performance_preference is `{epp}`"));
    }
    if ac_power() == Some(false) {
        problems.push("running on battery".into());
    }
    if let Ok(l) = read("/proc/loadavg")
        .unwrap_or_default()
        .split(' ')
        .next()
        .unwrap_or("0")
        .parse::<f64>()
        && l > 2.0
    {
        problems.push(format!("1-minute load average is {l:.2} (> 2.0)"));
    }
    EnvCheck {
        ok: problems.is_empty(),
        problems,
    }
}

fn lock_versions() -> Value {
    let lock = include_str!("../../../Cargo.lock");
    let wanted = [
        "rustfft",
        "phastft",
        "tfhe-fft",
        "oxifft",
        "num-complex",
        "fearless_simd",
        "pulp",
    ];
    let mut m = serde_json::Map::new();
    let mut name: Option<String> = None;
    for line in lock.lines() {
        if let Some(n) = line.strip_prefix("name = ") {
            name = Some(n.trim_matches('"').to_string());
        } else if let Some(v) = line.strip_prefix("version = ")
            && let Some(n) = name.take()
            && wanted.contains(&n.as_str())
        {
            m.insert(n, Value::String(v.trim_matches('"').to_string()));
        }
    }
    Value::Object(m)
}

fn git() -> Value {
    let root = concat!(env!("CARGO_MANIFEST_DIR"), "/../..");
    let commit = cmd("git", &["-C", root, "rev-parse", "HEAD"]);
    let dirty = cmd("git", &["-C", root, "status", "--porcelain"]).map(|s| !s.is_empty());
    json!({ "commit": commit, "dirty": dirty })
}

fn fftw_info() -> Value {
    let dir = std::env::var("FASTFFT_FFTW_DIR")
        .ok()
        .or_else(|| option_env!("ARENA_FFTW_DIR").map(String::from));
    let configure = dir
        .as_ref()
        .and_then(|d| read(&format!("{d}/configure-line.txt")));
    json!({
        "linked": cfg!(feature = "fftw"),
        "version": crate::fftw::version(),
        "dir": dir,
        "configure": configure,
    })
}

pub fn capture(cpu: usize, extra: Value) -> Value {
    let c = check(cpu);
    json!({
        "host": hostname(),
        "cpu": Value::Object(cpuinfo()),
        "caches": caches(cpu),
        "pinned_cpu": cpu,
        "pinned_cpu_sibling": sibling_of(cpu),
        "governor": read(&format!("/sys/devices/system/cpu/cpu{cpu}/cpufreq/scaling_governor")),
        "energy_performance_preference": read(&format!("/sys/devices/system/cpu/cpu{cpu}/cpufreq/energy_performance_preference")),
        "scaling_driver": read(&format!("/sys/devices/system/cpu/cpu{cpu}/cpufreq/scaling_driver")),
        "max_freq_khz": read(&format!("/sys/devices/system/cpu/cpu{cpu}/cpufreq/cpuinfo_max_freq")),
        "boost": read("/sys/devices/system/cpu/cpufreq/boost"),
        "smt_active": read("/sys/devices/system/cpu/smt/active"),
        "kernel": read("/proc/version"),
        "virtualization": cmd("systemd-detect-virt", &[]),
        "ac_power": ac_power(),
        "loadavg": read("/proc/loadavg"),
        "env_check": { "ok": c.ok, "problems": c.problems },
        "rustc": env!("ARENA_RUSTC_VERSION"),
        "build_profile": env!("ARENA_PROFILE"),
        "rustflags": env!("ARENA_RUSTFLAGS"),
        "target_cpu_native": env!("ARENA_RUSTFLAGS").contains("target-cpu=native"),
        "libraries": lock_versions(),
        "fftw": fftw_info(),
        "git": git(),
        "run": extra,
    })
}

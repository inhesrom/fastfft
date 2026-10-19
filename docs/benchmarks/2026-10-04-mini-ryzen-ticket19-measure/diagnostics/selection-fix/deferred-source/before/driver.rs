//! `run`: the driver. Spawns one pinned child process per cell, enforces the
//! timeout, re-measures the drift-control case and writes `results.jsonl`.

use crate::cell::CellResult;
use crate::spec::{CellSpec, Precision, Profile, SuiteOptions, control_cell, suite_cells};
use serde_json::json;
use std::io::{BufRead, BufReader, Write};
use std::path::{Path, PathBuf};
use std::process::{Command, Stdio};
use std::time::{Duration, Instant};

#[derive(Clone, Debug)]
pub struct RunArgs {
    pub suites: Vec<String>,
    pub profile: Profile,
    pub libs: Vec<String>,
    pub core: usize,
    pub out: Option<PathBuf>,
    pub allow_dirty_env: bool,
    pub misalign: usize,
    pub precisions: Vec<Precision>,
    pub max_n: usize,
    pub verify: bool,
    pub timeout_s: u64,
    pub control_every: usize,
    pub label: Option<String>,
    pub filter: Option<String>,
    /// Child processes per cell; each library keeps its best process.
    pub procs: usize,
}

fn utc_stamp() -> String {
    let secs = std::time::SystemTime::now()
        .duration_since(std::time::UNIX_EPOCH)
        .map(|d| d.as_secs())
        .unwrap_or(0);
    let (y, mo, d, h, mi, s) = civil(secs);
    format!("{y:04}{mo:02}{d:02}T{h:02}{mi:02}{s:02}Z")
}

/// Unix seconds to UTC civil time (Howard Hinnant's algorithm).
pub fn civil(secs: u64) -> (i64, u32, u32, u32, u32, u32) {
    let days = (secs / 86400) as i64;
    let rem = secs % 86400;
    let z = days + 719_468;
    let era = z.div_euclid(146_097);
    let doe = z - era * 146_097;
    let yoe = (doe - doe / 1460 + doe / 36524 - doe / 146_096) / 365;
    let y = yoe + era * 400;
    let doy = doe - (365 * yoe + yoe / 4 - yoe / 100);
    let mp = (5 * doy + 2) / 153;
    let d = (doy - (153 * mp + 2) / 5 + 1) as u32;
    let m = if mp < 10 { mp + 3 } else { mp - 9 } as u32;
    (
        if m <= 2 { y + 1 } else { y },
        m,
        d,
        (rem / 3600) as u32,
        ((rem % 3600) / 60) as u32,
        (rem % 60) as u32,
    )
}

pub fn today_utc() -> String {
    let secs = std::time::SystemTime::now()
        .duration_since(std::time::UNIX_EPOCH)
        .map(|d| d.as_secs())
        .unwrap_or(0);
    let (y, m, d, ..) = civil(secs);
    format!("{y:04}-{m:02}-{d:02}")
}

pub fn runs_root() -> PathBuf {
    PathBuf::from(concat!(
        env!("CARGO_MANIFEST_DIR"),
        "/../../target/arena/runs"
    ))
}

/// Outcome of one child process.
pub enum ChildOutcome {
    Done(Box<CellResult>),
    Failed(String),
}

pub fn spawn_cell(spec: &CellSpec, core: usize, timeout: Duration) -> ChildOutcome {
    let exe = match std::env::current_exe() {
        Ok(e) => e,
        Err(e) => return ChildOutcome::Failed(format!("current_exe: {e}")),
    };
    let spec_json = serde_json::to_string(spec).expect("spec serializes");
    let mut child = match Command::new(exe)
        .args([
            "run-cell",
            "--core",
            &core.to_string(),
            "--spec",
            &spec_json,
        ])
        .stdout(Stdio::piped())
        .stderr(Stdio::inherit())
        .spawn()
    {
        Ok(c) => c,
        Err(e) => return ChildOutcome::Failed(format!("spawn: {e}")),
    };
    let stdout = child.stdout.take().expect("piped");
    let reader = std::thread::spawn(move || {
        let mut lines = Vec::new();
        for l in BufReader::new(stdout).lines().map_while(Result::ok) {
            lines.push(l);
        }
        lines
    });
    let start = Instant::now();
    let status = loop {
        match child.try_wait() {
            Ok(Some(s)) => break Some(s),
            Ok(None) => {
                if start.elapsed() > timeout {
                    let _ = child.kill();
                    let _ = child.wait();
                    break None;
                }
                std::thread::sleep(Duration::from_millis(20));
            }
            Err(e) => return ChildOutcome::Failed(format!("wait: {e}")),
        }
    };
    let lines = reader.join().unwrap_or_default();
    let Some(status) = status else {
        return ChildOutcome::Failed(format!("timeout after {}s", timeout.as_secs()));
    };
    for l in lines.iter().rev() {
        if let Ok(r) = serde_json::from_str::<CellResult>(l) {
            return ChildOutcome::Done(Box::new(r));
        }
    }
    ChildOutcome::Failed(format!("child exited with {status} and no result"))
}

/// Runs a cell in `procs` child processes and merges them: every library
/// keeps the process with its best 1st-percentile time (`p1`; the minimum
/// alone can follow a single outlier batch). Library timings of a single
/// process depend on address placement (ASLR); best-of-K removes that luck
/// for every library alike. Construction order rotates too: repeating one
/// order can systematically favor one row even in an Estimate/Estimate test.
pub fn spawn_merged(
    spec: &CellSpec,
    core: usize,
    timeout: Duration,
    procs: usize,
    trials: &mut impl Write,
) -> ChildOutcome {
    let prepared = prepare_workspace(spec);
    let spec = &prepared;
    let mut merged: Option<CellResult> = None;
    let mut clocks: Vec<f64> = Vec::new();
    let mut errors = Vec::new();
    for process in 0..procs.max(1) {
        match spawn_cell(&process_spec(spec, process), core, timeout) {
            ChildOutcome::Done(r) => {
                if let Err(e) = writeln!(trials, "{}", serde_json::to_string(&*r).expect("json")) {
                    return ChildOutcome::Failed(format!("write trial: {e}"));
                }
                if let Some(c) = r.clock_ghz {
                    clocks.extend(c);
                }
                match merged.as_mut() {
                    None => merged = Some(*r),
                    Some(m) => {
                        m.wall_s += r.wall_s;
                        m.procs += 1;
                        for l in r.results {
                            if let Some(ml) = m.results.iter_mut().find(|x| x.lib == l.lib) {
                                let better = match (&ml.time, &l.time) {
                                    (Some(a), Some(b)) => b.p1 < a.p1,
                                    (None, Some(_)) => true,
                                    _ => false,
                                };
                                if better {
                                    let plan = ml.plan_ns.zip(l.plan_ns).map(|(a, b)| a.min(b));
                                    *ml = l;
                                    if plan.is_some() {
                                        ml.plan_ns = plan;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            ChildOutcome::Failed(e) => errors.push(e),
        }
    }
    match merged {
        Some(mut m) => {
            // Keep the requested order in the merged record; each raw trial
            // records the actual order used in that child process.
            m.spec = spec.clone();
            if !clocks.is_empty() {
                let lo = clocks.iter().copied().fold(f64::MAX, f64::min);
                let hi = clocks.iter().copied().fold(0.0, f64::max);
                m.clock_ghz = Some([lo, hi]);
            }
            ChildOutcome::Done(Box::new(m))
        }
        None => ChildOutcome::Failed(errors.join("; ")),
    }
}

fn process_spec(spec: &CellSpec, process: usize) -> CellSpec {
    let mut trial = spec.clone();
    let offset = process % trial.libs.len().max(1);
    trial.libs.rotate_left(offset);
    trial
}

fn prepare_workspace(spec: &CellSpec) -> CellSpec {
    let mut prepared = spec.clone();
    if prepared.caller_scratch.is_some() {
        return prepared;
    }
    let mut rows: Vec<_> = spec
        .libs
        .iter()
        .map(|lib| match lib.as_str() {
            "fastfft/measure" => "fastfft",
            other => other,
        })
        .filter(|lib| *lib == "rustfft" || lib.starts_with("fastfft"))
        .collect();
    rows.sort_unstable();
    rows.dedup();
    let mut need = 0;
    for lib in rows {
        // Unsupported/panicking plans are reported by the actual child.
        let requirement = std::panic::catch_unwind(|| match spec.precision {
            Precision::F32 => crate::adapters::estimate_workspace::<f32>(lib, spec),
            Precision::F64 => crate::adapters::estimate_workspace::<f64>(lib, spec),
        });
        if let Ok(Ok(len)) = requirement {
            need = need.max(len);
        }
    }
    prepared.caller_scratch = Some(need);
    prepared
}

/// Clock drift of a result against the reference clock: worst relative change.
fn clock_drift(base: f64, r: &CellResult) -> f64 {
    match r.clock_ghz {
        Some([a, b]) => ((a / base - 1.0).abs()).max((b / base - 1.0).abs()),
        None => 0.0,
    }
}

fn filter_matches(spec: &CellSpec, filter: &str) -> bool {
    // comma-separated key=value pairs: precision=f32,dir=fwd,place=ip,n=4096
    filter.split(',').all(|kv| {
        let Some((k, v)) = kv.split_once('=') else {
            return true;
        };
        match k {
            "precision" | "prec" => spec.precision.as_str() == v,
            "dir" => spec.direction.as_str() == v,
            "place" | "placement" => spec.placement.as_str() == v,
            "n" => v
                .split('|')
                .any(|x| x.parse::<usize>().ok() == Some(spec.n)),
            "maxn" => v.parse::<usize>().is_ok_and(|m| spec.n <= m),
            "minn" => v.parse::<usize>().is_ok_and(|m| spec.n >= m),
            _ => true,
        }
    })
}

pub fn run(args: &RunArgs) -> Result<PathBuf, String> {
    let check = crate::env::check(args.core);
    if !check.ok && !args.allow_dirty_env {
        return Err(format!(
            "environment check failed (use --allow-dirty-env to run unofficially):\n  {}",
            check.problems.join("\n  ")
        ));
    }
    let opts = SuiteOptions {
        libs: args.libs.clone(),
        profile: args.profile,
        misalign: args.misalign,
        precisions: args.precisions.clone(),
        max_n: args.max_n,
        verify: args.verify,
    };
    let mut cells = Vec::new();
    for s in &args.suites {
        cells.extend(suite_cells(s, &opts)?);
    }
    if let Some(f) = &args.filter {
        cells.retain(|c| filter_matches(c, f));
    }
    let dir = match &args.out {
        Some(d) => d.clone(),
        None => {
            let mut name = format!("{}-{}", utc_stamp(), crate::env::hostname());
            if let Some(l) = &args.label {
                name.push('-');
                name.push_str(l);
            }
            runs_root().join(name)
        }
    };
    std::fs::create_dir_all(&dir).map_err(|e| format!("create {}: {e}", dir.display()))?;
    let official = check.ok;
    let env = crate::env::capture(
        args.core,
        json!({
            "suites": args.suites,
            "profile": args.profile.name,
            "libs": args.libs,
            "misalign": args.misalign,
            "precisions": args.precisions,
            "max_n": args.max_n,
            "filter": args.filter,
            "label": args.label,
            "procs": args.procs,
            "process_order": "rotating",
            "caller_scratch": "parent-planned-shared-aligned",
            "official": official,
            "cells": cells.len(),
        }),
    );
    write_json(&dir.join("env.json"), &env)?;
    let mut out = std::fs::File::create(dir.join("results.jsonl"))
        .map_err(|e| format!("results.jsonl: {e}"))?;
    let mut trials = std::fs::File::create(dir.join("trials.jsonl"))
        .map_err(|e| format!("trials.jsonl: {e}"))?;
    let timeout = Duration::from_secs(args.timeout_s);
    let control = control_cell(&args.libs, &args.profile);
    eprintln!(
        "arena: {} cells, profile {}, core {} (sibling {}), output {}",
        cells.len(),
        args.profile.name,
        args.core,
        crate::env::sibling_of(args.core).unwrap_or_default(),
        dir.display()
    );
    if !official {
        eprintln!("arena: UNOFFICIAL run: {}", check.problems.join("; "));
    }

    // Drift is measured on the core clock (every cell reports it); the
    // control cell's library times are kept for information because
    // single-process library timings vary with address placement.
    let mut base_clock: Option<f64> = None;
    let mut max_drift = 0.0f64;
    let mut drift_flag = false;
    let mut aborted: Option<String> = None;
    let mut failures = 0usize;
    let started = Instant::now();
    let run_control = |out: &mut std::fs::File,
                       trials: &mut std::fs::File,
                       max_drift: &mut f64,
                       base_clock: &mut Option<f64>|
     -> Result<f64, String> {
        match spawn_merged(&control, args.core, timeout, args.procs.max(3), trials) {
            ChildOutcome::Done(r) => {
                writeln!(out, "{}", serde_json::to_string(&*r).expect("json"))
                    .map_err(|e| e.to_string())?;
                let clock = r.clock_ghz.map(|c| c[1]).unwrap_or(0.0);
                match *base_clock {
                    None => {
                        *base_clock = Some(clock);
                        Ok(0.0)
                    }
                    Some(b) => {
                        let d = clock_drift(b, &r);
                        *max_drift = max_drift.max(d);
                        Ok(d)
                    }
                }
            }
            ChildOutcome::Failed(e) => Err(format!("control cell failed: {e}")),
        }
    };
    run_control(&mut out, &mut trials, &mut max_drift, &mut base_clock)?;
    for (i, cell) in cells.iter().enumerate() {
        if i > 0 && args.control_every > 0 && i % args.control_every == 0 {
            let d = run_control(&mut out, &mut trials, &mut max_drift, &mut base_clock)?;
            if d > 0.10 {
                aborted = Some(format!("drift {:.1}% > 10% at cell {i}", d * 100.0));
                eprintln!("arena: ABORT: {}", aborted.as_deref().unwrap_or_default());
                break;
            } else if d > 0.03 {
                drift_flag = true;
                eprintln!("arena: drift warning {:.1}% at cell {i}", d * 100.0);
            }
        }
        let t0 = Instant::now();
        match spawn_merged(cell, args.core, timeout, args.procs, &mut trials) {
            ChildOutcome::Done(r) => {
                if let Some(b) = base_clock {
                    let d = clock_drift(b, &r);
                    max_drift = max_drift.max(d);
                    if d > 0.03 {
                        drift_flag = true;
                        eprintln!(
                            "arena: clock drift warning {:.1}% at {}",
                            d * 100.0,
                            cell.key()
                        );
                    }
                    if d > 0.10 {
                        aborted = Some(format!(
                            "clock drift {:.1}% > 10% at {}",
                            d * 100.0,
                            cell.key()
                        ));
                        eprintln!("arena: ABORT: {}", aborted.as_deref().unwrap_or_default());
                    }
                }
                let summary: Vec<String> = r
                    .results
                    .iter()
                    .map(|l| match (&l.time, l.msamples_per_s) {
                        (_, Some(ms)) => format!("{}={:.0}MS/s", l.lib, ms),
                        (Some(t), _) => format!("{}={}", l.lib, fmt_ns(t.best)),
                        _ => format!("{}:{}", l.lib, l.status),
                    })
                    .collect();
                eprintln!(
                    "[{}/{}] {} ({:.1}s) {}",
                    i + 1,
                    cells.len(),
                    cell.key(),
                    t0.elapsed().as_secs_f64(),
                    summary.join(" ")
                );
                writeln!(out, "{}", serde_json::to_string(&*r).expect("json"))
                    .map_err(|e| e.to_string())?;
            }
            ChildOutcome::Failed(e) => {
                failures += 1;
                eprintln!("[{}/{}] {} FAILED: {e}", i + 1, cells.len(), cell.key());
                let r = json!({ "spec": cell, "key": cell.key(), "child_error": e });
                writeln!(out, "{r}").map_err(|e| e.to_string())?;
            }
        }
        out.flush().ok();
        if aborted.is_some() {
            break;
        }
    }
    if aborted.is_none() {
        let d = run_control(&mut out, &mut trials, &mut max_drift, &mut base_clock)?;
        if d > 0.03 {
            drift_flag = true;
        }
    }
    let meta = json!({
        "official": official,
        "max_drift": max_drift,
        "drift_flag": drift_flag || max_drift > 0.03,
        "aborted": aborted,
        "child_failures": failures,
        "cells": cells.len(),
        "elapsed_s": started.elapsed().as_secs_f64(),
    });
    write_json(&dir.join("meta.json"), &meta)?;
    eprintln!(
        "arena: done in {:.0}s, max clock drift {:.2}%, {} child failures",
        started.elapsed().as_secs_f64(),
        max_drift * 100.0,
        failures
    );
    if let Err(e) = crate::report::report(&dir) {
        eprintln!("arena: report failed: {e}");
    }
    Ok(dir)
}

pub fn fmt_ns(ns: f64) -> String {
    if ns < 1e3 {
        format!("{ns:.1}ns")
    } else if ns < 1e6 {
        format!("{:.2}us", ns / 1e3)
    } else if ns < 1e9 {
        format!("{:.2}ms", ns / 1e6)
    } else {
        format!("{:.2}s", ns / 1e9)
    }
}

pub fn write_json(path: &Path, v: &serde_json::Value) -> Result<(), String> {
    std::fs::write(path, serde_json::to_string_pretty(v).expect("json"))
        .map_err(|e| format!("write {}: {e}", path.display()))
}

#[cfg(test)]
mod process_order_tests {
    use super::*;

    #[test]
    fn each_library_gets_each_construction_position_equally() {
        let labels = vec!["a".to_string(), "b".to_string(), "c".to_string()];
        let mut spec = control_cell(&["fastfft".into()], &Profile::QUICK);
        spec.libs = labels.clone();
        let mut counts = [[0; 3]; 3];
        for process in 0..6 {
            let trial = process_spec(&spec, process);
            assert_eq!(trial.key(), spec.key());
            for (position, lib) in trial.libs.iter().enumerate() {
                let library = labels.iter().position(|l| l == lib).unwrap();
                counts[library][position] += 1;
            }
        }
        assert_eq!(counts, [[2; 3]; 3]);
        assert_eq!(spec.libs, labels);
    }
}

//! Matched clean builds with retained, machine-readable G9 evidence.

use std::fs::{self, OpenOptions};
use std::io::Write;
use std::path::PathBuf;
use std::process::Command;
use std::time::{Instant, SystemTime, UNIX_EPOCH};

fn verdict(fastfft: f64, rustfft: f64) -> Result<(f64, bool), String> {
    if !fastfft.is_finite() || !rustfft.is_finite() || fastfft <= 0.0 || rustfft <= 0.0 {
        return Err("build durations must be finite and positive".into());
    }
    let ratio = fastfft / rustfft;
    Ok((ratio, ratio <= 2.0))
}

pub fn run(args: &[String]) -> Result<(), String> {
    let mut out = None;
    let mut check = false;
    let mut args = args.iter();
    while let Some(arg) = args.next() {
        match arg.as_str() {
            "--out" if out.is_none() => {
                out = Some(PathBuf::from(
                    args.next().ok_or("--out needs a new JSON path")?,
                ));
            }
            "--check" => check = true,
            _ => return Err(format!("unknown build-time argument: {arg}")),
        }
    }
    // Reserve the output before expensive work, without truncating prior evidence.
    let mut output_file = out
        .map(|path| OpenOptions::new().write(true).create_new(true).open(path))
        .transpose()
        .map_err(|e| e.to_string())?;
    let stamp = SystemTime::now()
        .duration_since(UNIX_EPOCH)
        .map_err(|e| e.to_string())?;
    let tmp = std::env::temp_dir().join(format!(
        "fastfft-build-time-{}-{}",
        std::process::id(),
        stamp.as_nanos()
    ));
    fs::create_dir(&tmp).map_err(|e| e.to_string())?;
    fs::create_dir_all(tmp.join("rf/src")).map_err(|e| e.to_string())?;
    fs::write(tmp.join("rf/Cargo.toml"),
        "[package]\nname = \"rf\"\nversion = \"0.0.0\"\nedition = \"2021\"\n[dependencies]\nrustfft = \"=6.4.1\"\n[workspace]\n")
        .map_err(|e| e.to_string())?;
    fs::write(tmp.join("rf/src/lib.rs"), "pub use rustfft;\n").map_err(|e| e.to_string())?;
    let root = super::root();
    let command = |dir: &std::path::Path| {
        let mut cmd = Command::new(env!("CARGO"));
        cmd.current_dir(dir)
            .env("RUSTFLAGS", "")
            .env_remove("CARGO_ENCODED_RUSTFLAGS")
            .env("CARGO_BUILD_JOBS", "1")
            .env("CARGO_INCREMENTAL", "0");
        cmd
    };
    // Fetch both dependency sets before either clock starts.
    super::run(command(&root).args(["fetch", "--locked"]))?;
    super::run(command(&tmp.join("rf")).arg("fetch"))?;
    let mut timings = Vec::new();
    for (name, dir) in [("rustfft", tmp.join("rf")), ("fastfft", root.clone())] {
        let target = tmp.join(format!("target-{name}"));
        let mut cmd = command(&dir);
        cmd.args([
            "build",
            "--release",
            "--locked",
            "--offline",
            "--timings",
            "--target-dir",
        ])
        .arg(&target);
        if name == "fastfft" {
            cmd.args(["-p", "fastfft"]);
        }
        let argv = format!("{cmd:?}");
        let start = Instant::now();
        super::run(&mut cmd)?;
        let seconds = start.elapsed().as_secs_f64();
        timings.push(serde_json::json!({
            "library": name, "seconds": seconds, "command": argv,
            "target_dir": target, "cargo_timings": target.join("cargo-timings")
        }));
    }
    let t_rf = timings[0]["seconds"].as_f64().expect("recorded f64");
    let t_ff = timings[1]["seconds"].as_f64().expect("recorded f64");
    let (ratio, passed) = verdict(t_ff, t_rf)?;
    let report = serde_json::json!({
        "schema": 1, "gate": "G9", "passed": passed, "threshold": 2.0,
        "fastfft_seconds": t_ff, "rustfft_seconds": t_rf, "ratio": ratio,
        "rustc": super::output(Command::new("rustc").arg("-vV"))?,
        "cargo": super::output(Command::new(env!("CARGO")).arg("--version"))?,
        "revision": super::output(Command::new("git").current_dir(&root).args(["rev-parse", "HEAD"]))?.trim(),
        "working_tree": super::output(Command::new("git").current_dir(&root).args(["status", "--porcelain"]))?,
        "profile": "release", "rustflags": "", "jobs": 1, "incremental": false,
        "evidence_dir": tmp, "builds": timings,
    });
    if let Some(file) = &mut output_file {
        serde_json::to_writer_pretty(&mut *file, &report).map_err(|e| e.to_string())?;
        writeln!(file).map_err(|e| e.to_string())?;
        file.sync_all().map_err(|e| e.to_string())?;
    }
    println!(
        "clean release build: fastfft {t_ff:.1}s, rustfft {t_rf:.1}s, ratio {ratio:.2}× (G9 requires <= 2.0×)"
    );
    println!("G9 {}", if passed { "PASS" } else { "FAIL" });
    if check && !passed {
        return Err(format!("G9 failed: {ratio:.6}× exceeds 2.0×"));
    }
    Ok(())
}

#[cfg(test)]
mod tests {
    use super::verdict;

    #[test]
    fn threshold_uses_unrounded_durations() {
        assert_eq!(verdict(2.0, 1.0).unwrap(), (2.0, true));
        assert!(!verdict(2.00001, 1.0).unwrap().1);
        assert!(!verdict(44.4, 3.4).unwrap().1);
    }

    #[test]
    fn invalid_measurements_cannot_pass() {
        for value in [0.0, -1.0, f64::NAN, f64::INFINITY] {
            assert!(verdict(value, 1.0).is_err());
            assert!(verdict(1.0, value).is_err());
        }
    }
}

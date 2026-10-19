//! Developer tasks for the fastfft workspace.
//!
//! ```text
//! cargo xtask fftw-build [--jobs N]            build the FFTW 3.3.11 reference (static, AVX-512)
//! cargo xtask arena <arena args...>            build fastfft-arena (profile `arena`) and run it
//! cargo xtask perf-cell --lib L --n N [...]    stat or record one arena cell
//! cargo xtask codegen [--check]                regenerate (or check) committed codelets
//! cargo xtask tune [--out FILE]                measure per-pass kernel costs for the planner
//! cargo xtask build-time [--out JSON] [--check]  G9: clean release build time, fastfft vs rustfft
//! ```

use std::path::{Path, PathBuf};
use std::process::{Command, ExitCode};

mod build_time;
mod perf;

const FFTW_VERSION: &str = "3.3.11";
const FFTW_SHA256: &str = "5630c24cdeb33b131612f7eb4b1a9934234754f9f388ff8617458d0be6f239a1";
const FFTW_URL: &str = "https://www.fftw.org/fftw-3.3.11.tar.gz";

fn root() -> PathBuf {
    PathBuf::from(env!("CARGO_MANIFEST_DIR"))
        .parent()
        .expect("workspace root")
        .to_path_buf()
}

fn run(cmd: &mut Command) -> Result<(), String> {
    eprintln!("xtask: {cmd:?}");
    let st = cmd.status().map_err(|e| format!("{cmd:?}: {e}"))?;
    if st.success() {
        Ok(())
    } else {
        Err(format!("{cmd:?} failed with {st}"))
    }
}

fn output(cmd: &mut Command) -> Result<String, String> {
    let out = cmd.output().map_err(|e| format!("{cmd:?}: {e}"))?;
    if !out.status.success() {
        return Err(format!(
            "{cmd:?} failed: {}",
            String::from_utf8_lossy(&out.stderr)
        ));
    }
    Ok(String::from_utf8_lossy(&out.stdout).into_owned())
}

fn arg_value(args: &[String], key: &str) -> Option<String> {
    args.iter()
        .position(|a| a == key)
        .and_then(|i| args.get(i + 1).cloned())
}

fn fftw_dir() -> PathBuf {
    root().join("target/fftw")
}

fn fftw_build(args: &[String]) -> Result<(), String> {
    let jobs = arg_value(args, "--jobs").unwrap_or_else(|| {
        std::thread::available_parallelism()
            .map(|n| n.get().to_string())
            .unwrap_or_else(|_| "4".into())
    });
    let dir = fftw_dir();
    let install = dir.join("install");
    std::fs::create_dir_all(&dir).map_err(|e| e.to_string())?;
    let tarball = dir.join(format!("fftw-{FFTW_VERSION}.tar.gz"));
    if !tarball.exists() {
        run(Command::new("curl")
            .args(["-sSfL", "-o"])
            .arg(&tarball)
            .arg(FFTW_URL))?;
    }
    let sum = output(Command::new("sha256sum").arg(&tarball))?;
    let got = sum.split_whitespace().next().unwrap_or_default();
    if got != FFTW_SHA256 {
        let _ = std::fs::remove_file(&tarball);
        return Err(format!(
            "sha256 mismatch for {}: got {got}, want {FFTW_SHA256}",
            tarball.display()
        ));
    }
    let mut common = vec![
        "--enable-static",
        "--disable-shared",
        "--disable-fortran",
        "--disable-doc",
    ];
    if cfg!(target_arch = "x86_64") {
        common.extend([
            "--enable-sse2",
            "--enable-avx",
            "--enable-avx2",
            "--enable-avx512",
            "--enable-fma",
        ]);
    } else if cfg!(target_arch = "aarch64") {
        common.push("--enable-neon");
    }
    // gnu17: FFTW 3.3.x predates C23 (GCC 15's default).
    let cflags = "-O3 -fPIC -std=gnu17";
    let mut lines = Vec::new();
    for (prec, extra) in [("double", None), ("single", Some("--enable-float"))] {
        let src = dir.join(format!("build-{prec}"));
        let _ = std::fs::remove_dir_all(&src);
        std::fs::create_dir_all(&src).map_err(|e| e.to_string())?;
        run(Command::new("tar")
            .arg("xzf")
            .arg(&tarball)
            .arg("-C")
            .arg(&src)
            .arg("--strip-components=1"))?;
        let mut cfg = Command::new("./configure");
        cfg.current_dir(&src)
            .arg(format!("--prefix={}", install.display()))
            .args(&common)
            .env("CFLAGS", cflags);
        if let Some(e) = extra {
            cfg.arg(e);
        }
        let line = format!(
            "CFLAGS='{cflags}' ./configure {} {}",
            common.join(" "),
            extra.unwrap_or("")
        );
        lines.push(format!("{prec}: {}", line.trim()));
        run(&mut cfg)?;
        run(Command::new("make")
            .current_dir(&src)
            .arg(format!("-j{jobs}")))?;
        run(Command::new("make").current_dir(&src).arg("install"))?;
    }
    std::fs::write(install.join("configure-line.txt"), lines.join("\n") + "\n")
        .map_err(|e| e.to_string())?;
    eprintln!(
        "xtask: FFTW {FFTW_VERSION} installed in {}",
        install.display()
    );
    Ok(())
}

fn fftw_available() -> bool {
    fftw_dir().join("install/lib/libfftw3.a").exists()
        && fftw_dir().join("install/lib/libfftw3f.a").exists()
}

fn arena_build_command() -> Command {
    let mut c = Command::new(env!("CARGO"));
    c.current_dir(root())
        .args(["build", "--profile", "arena", "-p", "fastfft-arena"]);
    if fftw_available() {
        c.args(["--features", "fftw"]);
    } else {
        eprintln!("xtask: FFTW not built (cargo xtask fftw-build); the fftw row is unavailable");
    }
    c
}

fn build_arena() -> Result<PathBuf, String> {
    run(&mut arena_build_command())?;
    Ok(root().join("target/arena/fastfft-arena"))
}

fn arena(args: &[String]) -> Result<(), String> {
    let exe = build_arena()?;
    run(Command::new(exe).args(args))
}

fn perf_cell(args: &[String]) -> Result<(), String> {
    perf::run(args)
}

fn codegen(args: &[String]) -> Result<(), String> {
    let check = args.iter().any(|a| a == "--check");
    let out_dir = root().join("crates/fastfft/src/codelets/generated");
    let mut c = Command::new(env!("CARGO"));
    c.current_dir(root())
        .args(["run", "--quiet", "--release", "-p", "fastfft-codegen", "--"]);
    if check {
        c.arg("--check");
    }
    c.arg(&out_dir);
    run(&mut c)
}

fn tune(args: &[String]) -> Result<(), String> {
    let mut rest = Vec::new();
    let mut core = "2".to_string();
    let mut args = args.iter();
    while let Some(arg) = args.next() {
        if arg == "--core" {
            core = args.next().ok_or("missing --core value")?.clone();
            core.parse::<usize>().map_err(|_| "invalid core number")?;
        } else {
            rest.push(arg.clone());
        }
    }
    run(Command::new(env!("CARGO")).current_dir(root()).args([
        "build",
        "--profile",
        "arena",
        "-p",
        "fastfft",
        "--features",
        "tuning",
        "--example",
        "tune",
    ]))?;
    let exe = root().join("target/arena/examples/tune");
    // Pin only after the build finishes: compilation changes boost clocks.
    let mut c = if cfg!(target_os = "linux") {
        let mut c = Command::new("taskset");
        c.args(["-c", &core]).arg(exe);
        c
    } else {
        Command::new(exe)
    };
    run(c.current_dir(root()).args(rest))
}

fn main() -> ExitCode {
    let args: Vec<String> = std::env::args().skip(1).collect();
    let Some(cmd) = args.first() else {
        eprintln!(
            "{}",
            include_str!("main.rs")
                .lines()
                .take(12)
                .collect::<Vec<_>>()
                .join("\n")
        );
        return ExitCode::FAILURE;
    };
    let rest = &args[1..];
    let r = match cmd.as_str() {
        "fftw-build" => fftw_build(rest),
        "arena" => arena(rest),
        "perf-cell" => perf_cell(rest),
        "codegen" => codegen(rest),
        "tune" => tune(rest),
        "build-time" => build_time::run(rest),
        other => Err(format!("unknown xtask `{other}`")),
    };
    match r {
        Ok(()) => ExitCode::SUCCESS,
        Err(e) => {
            eprintln!("xtask: error: {e}");
            ExitCode::FAILURE
        }
    }
}

#[allow(dead_code)]
fn exists(p: &Path) -> bool {
    p.exists()
}

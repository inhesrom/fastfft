//! `fastfft-codegen [--check] <out-dir>`: writes (or checks) the generated
//! codelets. Output is formatted with `rustfmt` so it is stable.

use std::io::Write;
use std::process::{Command, Stdio};

fn rustfmt(src: &str) -> Result<String, String> {
    let mut child = Command::new("rustfmt")
        .args(["--edition", "2024", "--emit", "stdout", "--quiet"])
        .stdin(Stdio::piped())
        .stdout(Stdio::piped())
        .stderr(Stdio::piped())
        .spawn()
        .map_err(|e| format!("rustfmt: {e}"))?;
    child
        .stdin
        .take()
        .expect("stdin")
        .write_all(src.as_bytes())
        .map_err(|e| e.to_string())?;
    let out = child.wait_with_output().map_err(|e| e.to_string())?;
    if !out.status.success() {
        return Err(format!(
            "rustfmt failed: {}",
            String::from_utf8_lossy(&out.stderr)
        ));
    }
    Ok(String::from_utf8_lossy(&out.stdout).into_owned())
}

fn main() {
    let args: Vec<String> = std::env::args().skip(1).collect();
    let check = args.iter().any(|a| a == "--check");
    let Some(dir) = args.iter().find(|a| !a.starts_with("--")) else {
        eprintln!("usage: fastfft-codegen [--check] <out-dir>");
        std::process::exit(2);
    };
    let dir = std::path::Path::new(dir);
    let files = match fastfft_codegen::generate() {
        Ok(f) => f,
        Err(e) => {
            eprintln!("codegen: {e}");
            std::process::exit(1);
        }
    };
    let mut stale = Vec::new();
    for (name, src) in files {
        let src = match rustfmt(&src) {
            Ok(s) => s,
            Err(e) => {
                eprintln!("codegen: {name}: {e}");
                std::process::exit(1);
            }
        };
        let path = dir.join(&name);
        if check {
            let cur = std::fs::read_to_string(&path).unwrap_or_default();
            if cur != src {
                stale.push(name);
            }
        } else {
            std::fs::create_dir_all(dir).expect("create dir");
            std::fs::write(&path, src).expect("write");
        }
    }
    if check {
        if stale.is_empty() {
            println!("codegen: generated codelets are up to date");
        } else {
            eprintln!(
                "codegen: stale generated files (run `cargo xtask codegen`): {}",
                stale.join(", ")
            );
            std::process::exit(1);
        }
    } else {
        println!("codegen: wrote {}", dir.display());
    }
}

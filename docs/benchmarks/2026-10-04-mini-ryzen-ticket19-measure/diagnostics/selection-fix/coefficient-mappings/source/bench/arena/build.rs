//! Embeds build metadata (rustc version, profile, RUSTFLAGS) and, with the
//! `fftw` feature, links the static FFTW build from `cargo xtask fftw-build`.

use std::process::Command;

fn main() {
    let rustc = std::env::var("RUSTC").unwrap_or_else(|_| "rustc".into());
    let v = Command::new(&rustc)
        .arg("-vV")
        .output()
        .map(|o| {
            String::from_utf8_lossy(&o.stdout)
                .trim()
                .replace('\n', "; ")
        })
        .unwrap_or_default();
    println!("cargo:rustc-env=ARENA_RUSTC_VERSION={v}");
    // OUT_DIR is <target>/<profile>/build/...; recover the profile name.
    let out = std::env::var("OUT_DIR").unwrap_or_default();
    let parts: Vec<&str> = out.split('/').collect();
    let profile = parts
        .iter()
        .position(|p| *p == "build")
        .and_then(|i| i.checked_sub(1))
        .map(|i| parts[i].to_string())
        .unwrap_or_else(|| "unknown".into());
    println!("cargo:rustc-env=ARENA_PROFILE={profile}");
    let flags = std::env::var("CARGO_ENCODED_RUSTFLAGS")
        .unwrap_or_default()
        .replace('\x1f', " ");
    println!("cargo:rustc-env=ARENA_RUSTFLAGS={flags}");
    println!("cargo:rerun-if-env-changed=FASTFFT_FFTW_DIR");
    println!("cargo:rerun-if-env-changed=CARGO_ENCODED_RUSTFLAGS");

    if std::env::var_os("CARGO_FEATURE_FFTW").is_some() {
        let dir = std::env::var("FASTFFT_FFTW_DIR").unwrap_or_else(|_| {
            format!(
                "{}/../../target/fftw/install",
                std::env::var("CARGO_MANIFEST_DIR").expect("manifest dir")
            )
        });
        let lib = format!("{dir}/lib");
        if !std::path::Path::new(&format!("{lib}/libfftw3.a")).exists() {
            panic!("FFTW not found in {lib}: run `cargo xtask fftw-build` first");
        }
        println!("cargo:rustc-link-search=native={lib}");
        println!("cargo:rustc-link-lib=static=fftw3");
        println!("cargo:rustc-link-lib=static=fftw3f");
        println!("cargo:rustc-link-lib=m");
        println!("cargo:rustc-env=ARENA_FFTW_DIR={dir}");
        println!("cargo:rerun-if-changed={lib}/libfftw3.a");
    }
}

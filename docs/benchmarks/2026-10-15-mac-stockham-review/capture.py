"""Diagnostic placement A/B; not a release gate or competitor benchmark.

Build all variants first, then run base/pr/fixed/fixed/pr/base in each round.
Every timing uses zero data to avoid overflow in repeated unnormalized FFTs.
"""

import argparse
import hashlib
import json
import os
from pathlib import Path
import platform
import statistics
import subprocess


def output(*args):
    return subprocess.check_output(args, text=True).strip()


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    for variant in ("base", "pr", "fixed"):
        parser.add_argument("--" + variant, type=Path, required=True,
                            help="repository tree containing crates/fastfft")
    parser.add_argument("--out", type=Path, required=True)
    parser.add_argument("--rounds", type=int, default=4)
    args = parser.parse_args()
    if args.rounds < 1:
        parser.error("rounds must be positive")
    out = args.out.resolve()
    out.mkdir(parents=True, exist_ok=False)
    harness = Path(__file__).with_name("placement.rs")
    manifest = {
        "kind": "placement-diagnostic", "official": False,
        "host": platform.platform(), "rustc": output("rustc", "-vV"),
        "cpu": output("sysctl", "-n", "machdep.cpu.brand_string")
               if platform.system() == "Darwin" else platform.processor(),
        "build_environment": {key: value for key, value in os.environ.items()
                              if key in ("RUSTFLAGS", "CARGO_ENCODED_RUSTFLAGS", "RUSTC_WRAPPER",
                                         "CARGO_BUILD_TARGET", "CARGO_BUILD_JOBS", "CARGO_INCREMENTAL")
                              or key.startswith("CARGO_PROFILE_")},
        "harness_sha256": sha(harness), "rounds": args.rounds,
        "order": ["base", "pr", "fixed", "fixed", "pr", "base"],
        "data": "zero", "min_log2_n": 10, "max_log2_n": 17,
        "affinity": "none", "variants": {},
    }
    binaries = {}
    for variant in ("base", "pr", "fixed"):
        repo = getattr(args, variant).resolve()
        crate = out / variant
        (crate / "src").mkdir(parents=True)
        (crate / "src/main.rs").write_bytes(harness.read_bytes())
        (crate / "Cargo.toml").write_text(
            '[workspace]\n[package]\nname = "placement-bench"\nversion = "0.0.0"\nedition = "2024"\n'
            '[dependencies]\nnum-complex = "0.4.6"\nfastfft = { path = ' + json.dumps(str(repo / "crates/fastfft")) + ' }\n'
            '[profile.release]\nlto = "fat"\ncodegen-units = 1\ndebug = "line-tables-only"\n'
        )
        # Replay the dependency versions retained with this diagnostic.
        lock = Path(__file__).with_name("placement.Cargo.lock")
        (crate / "Cargo.lock").write_bytes(lock.read_bytes())
        subprocess.run(["cargo", "build", "--locked", "--release",
                        "--manifest-path", str(crate / "Cargo.toml")], check=True)
        binary = crate / "target/release/placement-bench"
        binaries[variant] = binary
        sources = {str(path.relative_to(repo)): sha(path)
                   for path in sorted((repo / "crates/fastfft/src").rglob("*.rs"))}
        manifest["variants"][variant] = {
            "revision": output("git", "-C", str(repo), "rev-parse", "HEAD"),
            "dirty_status": output("git", "-C", str(repo), "status", "--short"),
            "binary_sha256": sha(binary), "source_sha256": sources,
            "cargo_lock_sha256": sha(crate / "Cargo.lock"),
        }
    rows = {}
    raw = out / "raw.tsv"
    env = dict(os.environ, FF_LO="10", FF_HI="17")
    with raw.open("x") as stream:
        for _ in range(args.rounds):
            for variant in manifest["order"]:
                text = subprocess.check_output([str(binaries[variant]), variant], env=env, text=True)
                stream.write(text)
                stream.flush()
                for line in text.splitlines():
                    label, precision, n, mode, offset, ns, plan = line.split("\t")
                    key = (precision, int(n), mode, offset)
                    row = rows.setdefault(key, {"plan": plan, "values": {}})
                    if row["plan"] != plan:
                        raise ValueError(f"plan changed across variants: {key}")
                    row["values"].setdefault(label, []).append(float(ns))
    with (out / "summary.tsv").open("x") as stream:
        stream.write("precision\tn\tmode\toffset\tbase_ns\tpr_ns\tfixed_ns\tpr_over_base\tfixed_over_base\tfixed_over_pr\n")
        for key, row in sorted(rows.items()):
            if any(len(row["values"].get(v, [])) != 2 * args.rounds for v in binaries):
                raise ValueError(f"incomplete samples: {key}")
            base, pr, fixed = (statistics.median(row["values"][v]) for v in binaries)
            values = (*key, f"{base:.2f}", f"{pr:.2f}", f"{fixed:.2f}",
                      f"{pr / base:.5f}", f"{fixed / base:.5f}", f"{fixed / pr:.5f}")
            stream.write("\t".join(map(str, values)) + "\n")
    manifest["raw_sha256"] = sha(raw)
    manifest["summary_sha256"] = sha(out / "summary.tsv")
    (out / "manifest.json").write_text(json.dumps(manifest, indent=2) + "\n")


if __name__ == "__main__":
    main()

#!/usr/bin/env python3
"""Summarize run-to-run spread across repeated arena captures.

Usage: python3 scripts/arena-variance.py RUN_DIR [RUN_DIR ...] [--json OUT]

Each RUN_DIR holds an arena `results.jsonl` (or `results.jsonl.gz`) from the
same suite/profile/library set, captured back to back. Reports:

- per precision/direction panel, each library's geometric-mean median speedup
  over RustFFT per run (same definition as plot-library-comparison.py: equal
  weight per length, only lengths shared by every library), plus mean, sample
  stdev, CV and range;
- per library, the distribution of per-cell coefficient of variation of the
  median and best latency, overall and by N bucket;
- per panel, each library's geometric-mean median latency per run, which
  separates a library's own spread from the baseline's;
- the noisiest cells, fastfft plan (`describe`) changes and control drift;
- pairwise run-to-run ratio spread, i.e. what `cargo xtask arena compare`
  would see between two identical-code runs.
"""

import argparse
import gzip
import itertools
import json
import math
import statistics as st
from pathlib import Path

BASELINE = "rustfft"


def load(run):
    run = Path(run)
    path = run / "results.jsonl"
    opener = open
    if not path.exists():
        path, opener = run / "results.jsonl.gz", gzip.open
    rows = [json.loads(line) for line in opener(path, "rt") if line.strip()]
    meta = json.loads((run / "meta.json").read_text()) if (run / "meta.json").exists() else {}
    cells, controls = {}, []
    for row in rows:
        spec = row["spec"]
        if spec.get("control"):
            controls.append(row)
            continue
        key = (spec["precision"], spec["direction"], spec["placement"], spec["n"], spec["batch"])
        cells[key] = {r["lib"]: r for r in row["results"] if r["status"] == "ok"}
    return {"name": run.name, "cells": cells, "controls": controls, "meta": meta}


def cv(values):
    return st.stdev(values) / st.mean(values) if len(values) > 1 else 0.0


def pct(values, q):
    values = sorted(values)
    if not values:
        return math.nan
    k = (len(values) - 1) * q
    lo, hi = math.floor(k), math.ceil(k)
    return values[lo] + (values[hi] - values[lo]) * (k - lo)


def bucket(n):
    if n <= 64:
        return "N<=64"
    if n <= 4096:
        return "128<=N<=4096"
    return "N>4096"


def geomeans(run, libs):
    panels = {}
    for (p, d, _pl, n, _b), by_lib in run["cells"].items():
        if all(lib in by_lib for lib in libs):
            panels.setdefault((p, d), []).append(by_lib)
    out = {}
    for panel, rows in sorted(panels.items()):
        out[panel] = {lib: math.exp(st.mean(
            math.log(r[BASELINE]["time"]["median"] / r[lib]["time"]["median"]) for r in rows))
            for lib in libs}
        out[panel]["_cells"] = len(rows)
    return out


def main():
    ap = argparse.ArgumentParser(description=__doc__.splitlines()[0])
    ap.add_argument("runs", nargs="+")
    ap.add_argument("--json", help="write the full summary as JSON here")
    args = ap.parse_args()
    runs = [load(r) for r in args.runs]
    k = len(runs)
    libs = sorted({lib for r in runs for c in r["cells"].values() for lib in c})
    keys = sorted(set.intersection(*(set(r["cells"]) for r in runs)))
    summary = {"runs": [r["name"] for r in runs], "libraries": libs, "cells": len(keys)}

    print(f"# Run-to-run spread over {k} captures, {len(keys)} common cells\n")
    print("Runs: " + ", ".join(r["name"] for r in runs) + "\n")
    print("| run | max control drift | drift flag | aborted | child failures |")
    print("|---|---|---|---|---|")
    for r in runs:
        m = r["meta"]
        print(f"| {r['name']} | {100 * m.get('max_drift', math.nan):.2f}% | {m.get('drift_flag')} "
              f"| {m.get('aborted')} | {m.get('child_failures')} |")

    # Geomean speedups.
    gms = [geomeans(r, libs) for r in runs]
    print("\n## Geometric-mean median speedup vs RustFFT, per run\n")
    print("| panel | library | " + " | ".join(f"run {i + 1}" for i in range(k))
          + " | mean | stdev | CV | range |")
    print("|---|---|" + "---|" * (k + 4))
    summary["geomeans"] = []
    for panel in gms[0]:
        for lib in libs:
            if lib == BASELINE:
                continue
            vals = [g[panel][lib] for g in gms]
            sd = st.stdev(vals) if k > 1 else 0.0
            summary["geomeans"].append({"panel": "/".join(panel), "lib": lib, "values": vals,
                                        "mean": st.mean(vals), "stdev": sd, "cv": cv(vals)})
            print(f"| {panel[0]} {panel[1]} | {lib} | " + " | ".join(f"{v:.3f}" for v in vals)
                  + f" | {st.mean(vals):.3f} | {sd:.4f} | {100 * cv(vals):.2f}% "
                  f"| {100 * (max(vals) / min(vals) - 1):.2f}% |")

    # Absolute geomean latency, free of the RustFFT baseline's own noise.
    print("\n## Geometric-mean median latency per run, relative to the K-run mean\n")
    print("| panel | library | " + " | ".join(f"run {i + 1}" for i in range(k)) + " | CV |")
    print("|---|---|" + "---|" * (k + 1))
    summary["latency_geomeans"] = []
    for panel in gms[0]:
        for lib in libs:
            vals = []
            for r in runs:
                lat = [c[lib]["time"]["median"] for key, c in r["cells"].items()
                       if key in keys and (key[0], key[1]) == panel and lib in c]
                vals.append(math.exp(st.mean(map(math.log, lat))))
            mean = st.mean(vals)
            summary["latency_geomeans"].append({"panel": "/".join(panel), "lib": lib,
                                                "values_ns": vals, "cv": cv(vals)})
            print(f"| {panel[0]} {panel[1]} | {lib} | " + " | ".join(f"{v / mean:.3f}" for v in vals)
                  + f" | {100 * cv(vals):.2f}% |")

    # Per-cell CV.
    per = {}
    for key in keys:
        for lib in libs:
            if all(lib in r["cells"][key] for r in runs):
                med = [r["cells"][key][lib]["time"]["median"] for r in runs]
                best = [r["cells"][key][lib]["time"]["best"] for r in runs]
                per[key, lib] = {"median": cv(med), "best": cv(best),
                                 "range": max(med) / min(med) - 1, "medians": med}
    for metric in ("median", "best"):
        print(f"\n## Per-cell CV of {metric} latency across runs\n")
        print("| library | bucket | cells | median CV | p90 CV | max CV |")
        print("|---|---|---|---|---|---|")
        for lib in libs:
            for b in ("all", "N<=64", "128<=N<=4096", "N>4096"):
                vals = [v[metric] for (key, l), v in per.items()
                        if l == lib and (b == "all" or bucket(key[3]) == b)]
                if vals:
                    print(f"| {lib} | {b} | {len(vals)} | {100 * pct(vals, .5):.2f}% "
                          f"| {100 * pct(vals, .9):.2f}% | {100 * max(vals):.2f}% |")
    summary["per_cell"] = [{"cell": "/".join(map(str, key)), "lib": lib, **v}
                           for (key, lib), v in per.items()]

    # Pairwise ratios, as `arena compare` sees them.
    print("\n## Pairwise run-to-run |median ratio - 1| (what `arena compare` sees)\n")
    print("| library | pairs x cells | median | p90 | p99 | max | share > 3% |")
    print("|---|---|---|---|---|---|---|")
    for lib in libs:
        diffs = [abs(a / b - 1) for (key, l), v in per.items() if l == lib
                 for a, b in itertools.combinations(v["medians"], 2)]
        if diffs:
            print(f"| {lib} | {len(diffs)} | {100 * pct(diffs, .5):.2f}% | {100 * pct(diffs, .9):.2f}% "
                  f"| {100 * pct(diffs, .99):.2f}% | {100 * max(diffs):.2f}% "
                  f"| {100 * sum(d > .03 for d in diffs) / len(diffs):.1f}% |")

    print("\n## Noisiest cells (median latency CV)\n")
    print("| cell | library | CV | range | medians (ns) |")
    print("|---|---|---|---|---|")
    for (key, lib), v in sorted(per.items(), key=lambda kv: -kv[1]["median"])[:15]:
        print(f"| {key[0]} {key[1]} {key[2]} N={key[3]} | {lib} | {100 * v['median']:.2f}% "
              f"| {100 * v['range']:.2f}% | " + ", ".join(f"{x:.0f}" for x in v["medians"]) + " |")

    changes = []
    for key in keys:
        plans = [r["cells"][key].get("fastfft", {}).get("describe") for r in runs]
        if len(set(plans)) > 1:
            changes.append({"cell": "/".join(map(str, key)), "plans": plans})
    print(f"\n## fastfft plan changes across runs: {len(changes)}\n")
    for c in changes:
        print(f"- {c['cell']}: " + " | ".join(map(str, c["plans"])))
    summary["plan_changes"] = changes

    print("\n## Control cell (f32 forward in-place N=4096) median latency\n")
    for lib in libs:
        within = []
        for r in runs:
            vals = [x["time"]["median"] for c in r["controls"] for x in c["results"]
                    if x["lib"] == lib and x["status"] == "ok"]
            if len(vals) > 1:
                within.append(cv(vals))
        if within:
            print(f"- {lib}: within-run CV mean {100 * st.mean(within):.2f}%, max {100 * max(within):.2f}%")

    if args.json:
        Path(args.json).write_text(json.dumps(summary, indent=1))


if __name__ == "__main__":
    main()

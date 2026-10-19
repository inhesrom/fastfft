#!/usr/bin/env python3
"""Audit paired Measure/Estimate arena rows; never discard failed cells."""

import argparse
from collections import Counter
import gzip
import json
import math
from pathlib import Path


# Frozen ticket-19 suite definitions from the arena at base 932ed59, also
# present in the retained deferred executable's source patch. Do not derive
# acceptance coverage from the submitted results or mutable Rust source.
FULL_SUITES = ("pow2", "smooth", "rough", "batch", "realworld", "datacheck")
FULL_LIBS = ["fastfft", "fastfft/measure"]
FULL_SMOOTH = (
    6, 9, 12, 15, 18, 24, 36, 80, 108, 210, 504, 1000, 1960, 4725,
    10368, 27000, 75600, 165375, 48, 96, 120, 160, 240, 320, 384, 480,
    640, 720, 768, 960, 1200, 1536, 1920, 2400, 3072, 4800, 6144,
    12288, 48000, 96000, 1000000,
)
FULL_ROUGH = (
    17, 31, 61, 127, 257, 509, 1021, 2053, 4099, 8191, 16381, 65537,
    131071, 2018, 3063, 9797, 65524,
)


def full_manifest():
    """Expected keys and semantic specs, independent of the evidence being audited."""
    expected = {}

    def add(suite, precision, direction, placement, n, batch=1, scenario=None, data="zero"):
        key = f"{suite}:{precision}:{'fwd' if direction == 'forward' else 'inv'}:"
        key += f"{ {'inplace': 'ip', 'outofplace': 'oop', 'immutable': 'imm'}[placement]}:n{n}"
        if batch > 1:
            key += f":b{batch}"
        if scenario:
            key += ":" + {"spectrogram": "Spectrogram", "overlap-save": "OverlapSave"}[scenario]
        if data == "random":
            key += ":random"
        expected[key] = {"suite": suite, "precision": precision, "direction": direction,
                         "placement": placement, "n": n, "batch": batch, "misalign": 0,
                         "scenario": scenario, "profile": "full", "data": data,
                         "verify": True, "seed": (0x105eed if scenario else 0x5eed0000) + n,
                         "control": False}

    for suite, sizes in (("pow2", [1 << k for k in range(1, 25)]),
                         ("smooth", sorted(set(FULL_SMOOTH))),
                         ("rough", sorted(FULL_ROUGH))):
        for precision in ("f32", "f64"):
            for n in sizes:
                for direction in ("forward", "inverse"):
                    for placement in ("inplace", "outofplace"):
                        add(suite, precision, direction, placement, n)
    for n in (8, 16, 32, 64, 128, 256, 512, 1024):
        for precision in ("f32", "f64"):
            for placement in ("inplace", "outofplace"):
                add("batch", precision, "forward", placement, n, batch=(1 << 20) // n)
    for n in (1024, 4096, 16384, 65536):
        add("realworld", "f32", "forward", "inplace", n, scenario="spectrogram")
    add("realworld", "f32", "forward", "inplace", 4096, scenario="overlap-save")
    add("realworld", "f64", "forward", "inplace", 4096, scenario="spectrogram")
    for n in (64, 4096, 65536, 1 << 20):
        for data in ("zero", "random"):
            for precision in ("f32", "f64"):
                add("datacheck", precision, "forward", "immutable", n, data=data)
    assert len(expected) == 710
    return expected


def finite_positive(value):
    return type(value) in (int, float) and math.isfinite(value) and value > 0


def valid_timing(lib):
    timing = lib.get("time") or {}
    return all(finite_positive(timing.get(metric)) for metric in ("best", "p1", "median"))


def full_evidence_problems(env, meta, rows, trials):
    """Validate the declared eight-process protocol, not merely suite counts."""
    problems = []
    manifest = full_manifest()
    run = env.get("run", {})
    protocol = {"cells": 710, "procs": 8, "profile": "full", "process_order": "rotating",
                "libs": FULL_LIBS, "precisions": ["f32", "f64"], "suites": list(FULL_SUITES),
                "misalign": 0, "filter": None, "official": True,
                "caller_scratch": "parent-planned-shared-aligned",
                "planning_samples": "secondary-after-execution-retained-runners"}
    for field, expected in protocol.items():
        value = run.get(field)
        if type(value) is not type(expected) or value != expected:
            problems.append(f"full protocol {field}: expected {expected!r}, got {value!r}")
    for field, expected in (("build_profile", "arena"), ("target_cpu_native", False),
                            ("rustflags", "-C llvm-args=-align-all-functions=6")):
        value = env.get(field)
        if type(value) is not type(expected) or value != expected:
            problems.append(f"full build {field}: expected {expected!r}, got {value!r}")
    if env.get("env_check", {}).get("ok") is not True or env.get("env_check", {}).get("problems") != []:
        problems.append("full environment check is missing or failed")
    for field, expected in (("cells", 710), ("official", True), ("child_failures", 0),
                            ("aborted", None), ("drift_flag", False)):
        value = meta.get(field)
        if field not in meta or type(value) is not type(expected) or value != expected:
            problems.append(f"full completion {field}: expected {expected!r}, got {value!r}")
    drift = meta.get("max_drift")
    if type(drift) not in (int, float) or not math.isfinite(drift) or not 0 <= drift <= 0.03:
        problems.append("full completion max_drift is missing, invalid or exceeds 3%")
    core = env.get("pinned_cpu")
    if type(core) is not int or core < 0:
        problems.append("full pinned CPU is missing or invalid")

    control_key = "control:f32:fwd:ip:n4096"
    control_spec = {"suite": "control", "precision": "f32", "direction": "forward",
                    "placement": "inplace", "n": 4096, "batch": 1, "misalign": 0,
                    "scenario": None, "profile": "full", "data": "zero", "verify": False,
                    "seed": 1, "control": True}
    expected_order = [control_key]
    for index, key in enumerate(manifest):
        if index and index % 25 == 0:
            expected_order.append(control_key)
        expected_order.append(key)
    expected_order.append(control_key)
    if [row.get("key") for row in rows] != expected_order:
        problems.append("full cell/control sequence differs from the frozen 710-cell manifest")
    if [trial.get("key") for trial in trials] != [key for key in expected_order for _ in range(8)]:
        problems.append("full raw trial sequence/repetition coverage differs from the frozen protocol")

    def inspect(row, raw=False):
        key, spec = row.get("key"), row.get("spec", {})
        expected = control_spec if key == control_key else manifest.get(key)
        if expected is None:
            problems.append(f"{key}: unexpected full cell identity")
            return
        if any(field not in spec or type(spec[field]) is not type(value) or spec[field] != value
               for field, value in expected.items()):
            problems.append(f"{key}: full key/spec mismatch")
        if type(row.get("procs")) is not int or row["procs"] != (1 if raw else 8):
            problems.append(f"{key}: invalid {'raw' if raw else 'merged'} process count")
        if type(row.get("cpu")) is not int or row["cpu"] != core:
            problems.append(f"{key}: CPU differs from recorded pinned CPU")
        if type(spec.get("caller_scratch")) is not int or spec["caller_scratch"] < 0:
            problems.append(f"{key}: missing or invalid full parent workspace reservation")
        labels = [lib.get("lib") for lib in row.get("results", [])]
        expected_labels = ["fastfft"] if key == control_key else FULL_LIBS
        if Counter(labels) != Counter(expected_labels) or Counter(spec.get("libs", [])) != Counter(expected_labels):
            problems.append(f"{key}: missing, duplicate or unexpected library labels")
        if labels != spec.get("libs"):
            problems.append(f"{key}: library results differ from recorded construction order")
        for lib in row.get("results", []):
            if lib.get("status") != "ok" or not valid_timing(lib):
                problems.append(f"{key}: invalid full timing/status for {lib.get('lib')}")
            if not isinstance(lib.get("describe"), str) or not lib["describe"].strip():
                problems.append(f"{key}: missing full plan description for {lib.get('lib')}")
            if key != control_key and lib.get("verify", {}).get("passed") is not True:
                problems.append(f"{key}: failed full correctness check for {lib.get('lib')}")
        clock = row.get("clock_ghz")
        if (not isinstance(clock, list) or len(clock) != 2
                or not all(finite_positive(value) for value in clock)
                or (not raw and clock[0] > clock[1])):
            problems.append(f"{key}: missing or invalid full clock pair")

    for row in rows:
        inspect(row)
    for trial in trials:
        inspect(trial, raw=True)

    for index, row in enumerate(rows):
        group = trials[index * 8:(index + 1) * 8]
        if len(group) != 8:
            continue
        key = row.get("key")
        if len({json.dumps(trial, sort_keys=True) for trial in group}) != 8:
            problems.append(f"{key}: duplicate complete raw process record")
        for repetition, trial in enumerate(group):
            expected_libs = ["fastfft"] if key == control_key else (
                FULL_LIBS if repetition % 2 == 0 else FULL_LIBS[::-1])
            if trial.get("spec", {}).get("libs") != expected_libs:
                problems.append(f"{key}: raw construction order does not rotate four/four")
            merged_spec = {field: value for field, value in row.get("spec", {}).items() if field != "libs"}
            raw_spec = {field: value for field, value in trial.get("spec", {}).items() if field != "libs"}
            if raw_spec != merged_spec:
                problems.append(f"{key}: raw specification differs from merged specification")
        for lib in row.get("results", []):
            candidates = [candidate for trial in group for candidate in trial.get("results", [])
                          if candidate.get("lib") == lib.get("lib") and valid_timing(candidate)]
            if len(candidates) != 8:
                continue  # Missing/invalid rows are already rejected above.
            # min() retains the first tie, matching the driver's strict '<'.
            # plan_ns is separately aggregated by the driver and must not be
            # required to come from this timing winner.
            winner = min(candidates, key=lambda candidate: candidate["time"]["p1"])
            if lib.get("time") != winner.get("time") or lib.get("describe") != winner.get("describe"):
                problems.append(f"{key}: merged timing/description differs from lowest-p1 raw winner")
        clocks = [trial.get("clock_ghz") for trial in group]
        if all(isinstance(clock, list) and len(clock) == 2
               and all(finite_positive(value) for value in clock) for clock in clocks):
            # Raw pairs are chronological before/after samples, not sorted.
            endpoints = [value for clock in clocks for value in clock]
            expected_clock = [min(endpoints), max(endpoints)]
            if row.get("clock_ghz") != expected_clock:
                problems.append(f"{key}: merged clock range differs from raw trials")

    # The first merged control's maximum is the driver's reference. Include
    # its minimum and every raw control in this check: the driver omits the
    # first control's range when recording max_drift.
    reference = rows[0].get("clock_ghz") if rows and rows[0].get("key") == control_key else None
    if isinstance(reference, list) and len(reference) == 2 and finite_positive(reference[1]):
        baseline = reference[1]
        for trial in trials:
            clock = trial.get("clock_ghz")
            if isinstance(clock, list) and len(clock) == 2 and all(finite_positive(c) for c in clock):
                if max(abs(c - baseline) / baseline for c in clock) > 0.03:
                    problems.append(f"{trial.get('key')}: raw clock drift exceeds 3% (including initial control)")
    else:
        problems.append("full initial clock control is missing or invalid")

    return problems


def audit(directory, require_full=False):
    directory = Path(directory)
    source = directory / "results.jsonl"
    opener = open
    if not source.exists():
        source = directory / "results.jsonl.gz"
        opener = gzip.open
    with opener(source, "rt") as stream:
        rows = [json.loads(line) for line in stream if line.strip()]
    meta_path = directory / "meta.json"
    meta = json.loads(meta_path.read_text()) if meta_path.exists() else {}
    env = json.loads((directory / "env.json").read_text())
    problems = []
    cells = []
    full_trials = []
    seen = set()
    reservations = {}
    parent_workspace = env.get("run", {}).get("caller_scratch") == "parent-planned-shared-aligned"
    requested_procs = env.get("run", {}).get("procs")
    for row in rows:
        if row["spec"].get("control"):
            continue
        if row["key"] in seen:
            problems.append(f"{row['key']}: duplicate cell")
        seen.add(row["key"])
        reservation = row["spec"].get("caller_scratch")
        reservations[row["key"]] = reservation
        if parent_workspace and (type(reservation) is not int or reservation < 0):
            problems.append(f"{row['key']}: missing parent workspace reservation")
        if requested_procs is not None and row.get("procs", 1) != max(1, requested_procs):
            problems.append(f"{row['key']}: incomplete process repetitions")
        libs = {lib["lib"]: lib for lib in row.get("results", [])}
        pair = [libs.get(name) for name in ("fastfft", "fastfft/measure")]
        if any(lib is None or lib["status"] != "ok" or not lib.get("time") for lib in pair):
            problems.append(f"{row['key']}: missing or failed timing")
            continue
        if any(not lib.get("verify", {}).get("passed") for lib in pair):
            problems.append(f"{row['key']}: missing or failed correctness check")
        estimate, measure = pair
        ratios = {metric: measure["time"][metric] / estimate["time"][metric]
                  for metric in ("best", "p1", "median")}
        if any(not math.isfinite(value) or value <= 0 for value in ratios.values()):
            problems.append(f"{row['key']}: invalid timing")
        # Match the arena headline: p1 for tiny transforms, best otherwise.
        metric = "p1" if row["spec"]["n"] <= 256 and row["spec"]["batch"] == 1 else "best"
        cells.append({"key": row["key"], "suite": row["spec"]["suite"],
                      "metric": metric, "ratio": ratios[metric], **ratios,
                      "estimate": estimate.get("describe"),
                      "measure": measure.get("describe"),
                      "same_plan": estimate.get("describe") == measure.get("describe")})
    trial_source = directory / "trials.jsonl"
    trial_opener = open
    if not trial_source.exists():
        trial_source = directory / "trials.jsonl.gz"
        trial_opener = gzip.open
    if trial_source.exists():
        counts = Counter()
        with trial_opener(trial_source, "rt") as stream:
            for trial in map(json.loads, stream):
                if require_full:
                    full_trials.append(trial)
                if trial["spec"].get("control"):
                    continue
                counts[trial["key"]] += 1
                if parent_workspace and trial["spec"].get("caller_scratch") != reservations.get(trial["key"]):
                    problems.append(f"{trial['key']}: raw process workspace reservation differs")
                libs = {lib["lib"]: lib for lib in trial.get("results", [])}
                pair = [libs.get(name) for name in ("fastfft", "fastfft/measure")]
                if any(lib is None or lib["status"] != "ok" or not lib.get("time")
                       or not lib.get("verify", {}).get("passed") for lib in pair):
                    problems.append(f"{trial['key']}: failed raw process trial")
                    continue
                estimate, measure = pair
                if estimate.get("describe") != measure.get("describe"):
                    metric = "p1" if trial["spec"]["n"] <= 256 and trial["spec"]["batch"] == 1 else "best"
                    ratio = measure["time"][metric] / estimate["time"][metric]
                    if not math.isfinite(ratio) or ratio <= 0 or ratio > 1.02:
                        problems.append(f"{trial['key']}: slower promotion in raw process trial "
                                        f"{counts[trial['key']]} ({metric} ratio {ratio:.6f})")
        if set(counts) != seen or (requested_procs is not None and
                                  any(count != max(1, requested_procs) for count in counts.values())):
            problems.append("raw process trial coverage is incomplete")
    elif env.get("run", {}).get("process_order") == "rotating":
        problems.append("missing raw process trials")
    expected = meta.get("cells", env.get("run", {}).get("cells"))
    if expected is not None and len(cells) != expected:
        problems.append(f"expected {expected} cells, found {len(cells)} valid pairs")
    if not meta:
        problems.append("run has not completed (missing meta.json)")
    for field in ("aborted", "child_failures", "drift_flag"):
        if meta.get(field):
            problems.append(f"{field}: {meta[field]}")
    if not meta.get("official", False):
        problems.append("environment check did not pass")
    if require_full:
        problems.extend(full_evidence_problems(env, meta, rows, full_trials))
    failures = [c for c in cells if c["ratio"] > 1.02]
    suites = {}
    for suite in sorted({c["suite"] for c in cells}):
        group = [c for c in cells if c["suite"] == suite]
        suites[suite] = {"cells": len(group), "failures": sum(c["ratio"] > 1.02 for c in group),
                         "worst": max(c["ratio"] for c in group),
                         "geomean": math.exp(sum(math.log(c["ratio"]) for c in group) / len(group))}
    return {"run": str(directory), "cells": len(cells), "problems": problems,
            "threshold": 1.02, "suites": suites,
            "failures": sorted(failures, key=lambda c: -c["ratio"]), "comparisons": cells}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("run", type=Path)
    parser.add_argument("--out", type=Path)
    parser.add_argument("--require-full", action="store_true",
                        help="require the frozen 710-cell ticket-19 manifest and full eight-process protocol")
    args = parser.parse_args()
    result = audit(args.run, require_full=args.require_full)
    if args.out:
        args.out.write_text(json.dumps(result, indent=2) + "\n")
    print(f"{result['cells']} paired cells; {len(result['failures'])} exceed 2%")
    for suite, values in result["suites"].items():
        print(f"{suite}: {values['failures']}/{values['cells']} failures, "
              f"worst {values['worst']:.6f}, geomean {values['geomean']:.6f}")
    for issue in result["problems"]:
        print(f"INVALID: {issue}")
    for cell in result["failures"][:30]:
        print(f"{cell['ratio']:.6f} {cell['metric']} {cell['key']} same_plan={cell['same_plan']}")
    return int(bool(result["problems"] or result["failures"]))


if __name__ == "__main__":
    raise SystemExit(main())

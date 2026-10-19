#!/usr/bin/env python3
"""Independent, conservative audit of ticket 23's saved arena evidence.

Uses only the Python standard library; never invokes the arena or compilers.
One explicit attempt per suite is accepted, so favorable cells cannot be spliced.
Exit 0 means the audit completed, not that the release gates passed. Exit 2 means
the invocation/output failed. Gate decisions and rejected evidence are in JSON.
"""

import argparse
from collections import Counter
import json
import math
from pathlib import Path
import re
import sys


LIBS = ["fastfft", "fastfft/avx2", "rustfft", "phastft/split",
        "phastft/interleaved", "tfhe-fft", "oxifft", "fftw"]
SUITES = ["pow2", "smooth", "rough", "batch", "realworld", "datacheck", "sweep"]
COUNTS = dict(zip(SUITES, [192, 328, 136, 32, 6, 16, 8190]))
SMOOTH = sorted({6, 9, 12, 15, 18, 24, 36, 80, 108, 210, 504, 1000, 1960,
                 4725, 10368, 27000, 75600, 165375, 48, 96, 120, 160, 240,
                 320, 384, 480, 640, 720, 768, 960, 1200, 1536, 1920, 2400,
                 3072, 4800, 6144, 12288, 48000, 96000, 1000000})
ROUGH = sorted([17, 31, 61, 127, 257, 509, 1021, 2053, 4099, 8191, 16381,
                65537, 131071, 2018, 3063, 9797, 65524])
FLAGS = "-C llvm-args=-align-all-functions=6"
LIMIT = 12  # Compact examples; all failures still contribute to counts.


def finite(value, positive=False):
    return (isinstance(value, (float, int)) and not isinstance(value, bool)
            and math.isfinite(value) and (value > 0 if positive else value >= 0))


def spec(suite, precision, n, direction="forward", placement="inplace",
         batch=1, scenario=None, data="zero"):
    return dict(suite=suite, precision=precision, direction=direction,
                placement=placement, n=n, batch=batch, misalign=0,
                scenario=scenario, libs=LIBS.copy(), profile="full", data=data,
                verify=True, seed=(0x105eed if scenario else 0x5eed0000) + n,
                control=False)


def expected_specs(suite):
    """Mirror the fixed ticket protocol, not whatever cells an attempt contains."""
    if suite in ("pow2", "smooth", "rough", "sweep"):
        sizes = {"pow2": [1 << k for k in range(1, 25)], "smooth": SMOOTH,
                 "rough": ROUGH, "sweep": range(2, 4097)}[suite]
        directions = ["forward"] if suite == "sweep" else ["forward", "inverse"]
        placements = ["inplace"] if suite == "sweep" else ["inplace", "outofplace"]
        return [spec(suite, p, n, d, pl) for p in ("f32", "f64") for n in sizes
                for d in directions for pl in placements]
    if suite == "batch":
        return [spec(suite, p, n, placement=pl, batch=(1 << 20) // n)
                for n in (8, 16, 32, 64, 128, 256, 512, 1024)
                for p in ("f32", "f64") for pl in ("inplace", "outofplace")]
    if suite == "realworld":
        return ([spec(suite, "f32", n, scenario="spectrogram")
                 for n in (1024, 4096, 16384, 65536)]
                + [spec(suite, "f32", 4096, scenario="overlap-save"),
                   spec(suite, "f64", 4096, scenario="spectrogram")])
    if suite == "datacheck":
        return [spec(suite, p, n, placement="immutable", data=data)
                for n in (64, 4096, 65536, 1 << 20) for data in ("zero", "random")
                for p in ("f32", "f64")]
    raise ValueError(f"unknown suite: {suite}")


def control_spec():
    result = spec("control", "f32", 4096)
    result.update(libs=["fastfft", "rustfft"], verify=False, seed=1, control=True)
    return result


def schedule(suite):
    cells = expected_specs(suite)
    result = [control_spec()]
    for index, cell in enumerate(cells):
        if index and index % 25 == 0:
            result.append(control_spec())
        result.append(cell)
    result.append(control_spec())
    return result


def cell_key(cell):
    direction = {"forward": "fwd", "inverse": "inv"}[cell["direction"]]
    placement = {"inplace": "ip", "outofplace": "oop", "immutable": "imm"}[cell["placement"]]
    key = f"{cell['suite']}:{cell['precision']}:{direction}:{placement}:n{cell['n']}"
    if cell["batch"] > 1:
        key += f":b{cell['batch']}"
    if cell["misalign"]:
        key += f":m{cell['misalign']}"
    if cell["scenario"]:
        key += ":" + {"spectrogram": "Spectrogram", "overlap-save": "OverlapSave"}[cell["scenario"]]
    if cell["data"] == "random":
        key += ":random"
    return key


def supported(cell, lib):
    n = cell["n"]
    power2 = n >= 2 and n & (n - 1) == 0
    if lib.startswith("phastft/"):
        return power2 and cell["placement"] == "inplace"
    if lib == "tfhe-fft":
        return (cell["precision"] == "f64" and power2 and n <= 1024
                and cell["placement"] == "inplace")
    return True


def read_json(path):
    return json.loads(path.read_text())


def read_jsonl(path):
    records = []
    with path.open() as stream:
        for index, line in enumerate(stream, 1):
            if not line.strip():
                raise ValueError(f"{path.name}:{index}: blank JSONL record")
            record = json.loads(line)
            if not isinstance(record, dict):
                raise ValueError(f"{path.name}:{index}: expected JSON object")
            records.append(record)
    return records


def check_environment(env, meta, suite):
    problems = []
    run = env.get("run", {})
    checks = [
        (env.get("env_check", {}).get("ok") is True
         and env.get("env_check", {}).get("problems") == [], "environment check"),
        (env.get("boost") == "1", "boost must be enabled"),
        (env.get("pinned_cpu") == 2, "CPU 2 metadata"),
        (env.get("build_profile") == "arena", "arena build profile"),
        (env.get("rustflags") == FLAGS, "exact aligned build RUSTFLAGS"),
        (env.get("target_cpu_native") is False, "default target CPU"),
        (re.match(r"rustc 1\.95\.0(?:\s|$)", env.get("rustc", "")) is not None,
         "Rust 1.95.0 build"),
        (env.get("fftw", {}).get("linked") is True, "FFTW linked"),
        (env.get("governor") == "performance", "performance governor"),
        (env.get("energy_performance_preference") in (None, "performance"), "performance EPP"),
        (env.get("ac_power") is not False, "AC power"),
        ("7840HS" in env.get("cpu", {}).get("model_name", ""), "Ryzen 7 7840HS host"),
        (run.get("suites") == [suite], "one requested suite"),
        (run.get("profile") == "full", "full timing profile"),
        (run.get("libs") == LIBS, "all eight rows in default order"),
        (run.get("misalign") == 0, "aligned cells"),
        (run.get("precisions") == ["f32", "f64"], "both precisions"),
        (run.get("max_n") == 16777216, "max-n 16777216"),
        (run.get("filter") in (None, ""), "no cell filters"),
        (run.get("procs") == 3, "three processes"),
        (run.get("process_order") == "rotating", "rotating process order"),
        (not any(run.get("diagnostics", {}).values()), "no Measure diagnostics"),
        (run.get("official") is True and meta.get("official") is True, "official run"),
        (run.get("cells") == COUNTS[suite] and meta.get("cells") == COUNTS[suite],
         "declared cell count"),
        (meta.get("aborted") is None, "run aborted"),
        (meta.get("child_failures") == 0, "child crashes/timeouts"),
        (finite(meta.get("max_drift")) and meta.get("max_drift", 1) < .03,
         "clock drift must be < 3%"),
        (meta.get("drift_flag") is False, "clock drift flagged"),
    ]
    for valid, message in checks:
        if not valid:
            problems.append(message)
    return problems


def check_spec(actual, expected, process=None):
    problems = []
    for name, value in expected.items():
        if name == "libs" and process is not None:
            offset = process % len(value)
            value = value[offset:] + value[:offset]
        if actual.get(name, "zero" if name == "data" else None) != value:
            problems.append(f"spec.{name}")
    if any(actual.get("diagnostics", {}).values()):
        problems.append("spec.diagnostics")
    return problems


def row_problems(cell, row, lib):
    if row is None:
        return ["missing row"]
    if not supported(cell, lib):
        if row.get("status") != "unsupported":
            return ["adapter-limit row must be unsupported"]
        if row.get("time") is not None or row.get("verify") is not None:
            return ["unsupported row carries timing/verification"]
        return []
    problems = []
    if row.get("status") != "ok":
        problems.append(f"status={row.get('status', 'missing')} (supported adapter)"
                        + (f": {row['reason']}" if row.get("reason") else ""))
    timing = row.get("time") or {}
    if any(not finite(timing.get(metric), positive=True) for metric in ("best", "p1", "median")):
        problems.append("missing/nonfinite timing")
    elif not timing["best"] <= timing["p1"] <= timing["median"]:
        problems.append("timing order best <= p1 <= median")
    if not isinstance(timing.get("samples"), int) or timing["samples"] < 1:
        problems.append("missing/zero timing sample count")
    if cell["verify"]:
        verify = row.get("verify") or {}
        method = ("scenario-reference" if cell["scenario"] else
                  "rustfft-f64+roundtrip" if cell["n"] > 1 << 20 else "dd")
        if verify.get("method") != method:
            problems.append(f"verification method must be {method}")
        if (verify.get("passed") is not True
                or not finite(verify.get("rel_l2_eps")) or not finite(verify.get("max_eps"))):
            problems.append("missing/failed/nonfinite verification"
                            + (f": {verify['detail']}" if verify.get("detail") else ""))
        if method == "rustfft-f64+roundtrip" and not finite(verify.get("roundtrip_eps")):
            problems.append("missing/nonfinite roundtrip")
        tolerance = (400 if cell["scenario"] else 200) * (math.log2(max(cell["n"], 2)) + 1)
        if finite(verify.get("rel_l2_eps")) and verify["rel_l2_eps"] > tolerance:
            problems.append("error exceeds arena verification tolerance despite passed flag")
        if finite(verify.get("roundtrip_eps")) and verify["roundtrip_eps"] > tolerance:
            problems.append("roundtrip exceeds arena verification tolerance")
    return problems


def accuracy_bound(n, describe):
    """Use the outer actual engine, never a guessed power-of-two convolution."""
    if not isinstance(describe, str):
        return None
    if describe.startswith("bluestein "):
        outer = describe.partition("inner=[")[0].partition("inverse=[")[0]
        match = re.search(r"^bluestein\s+[^\[]*?\bm=(\d+)\b", outer)
        if match and int(match[1]) >= 2 * (n - 1):
            return 8 * math.log2(int(match[1])) + 8
        return None
    smooth = n
    for prime in (2, 3, 5, 7, 11, 13):
        while smooth % prime == 0:
            smooth //= prime
    if smooth == 1 and re.match(r"^(small|stockham|fourstep)\s", describe):
        return 2 * math.log2(n) + 2
    return None


class Accuracy:
    def __init__(self):
        self.counts = Counter()
        self.methods = Counter()
        self.failures = []
        self.proxy_mismatches = []
        self.gaps = Counter()
        self.worst = []

    def inspect(self, cell, rows, source):
        if cell["control"]:
            return
        rust = (rows.get("rustfft") or {}).get("verify") or {}
        for lib in ("fastfft", "fastfft/avx2"):
            row = rows.get(lib) or {}
            verify = row.get("verify") or {}
            method = verify.get("method", "absent")
            self.methods[f"{source}:{lib}:{method}"] += 1
            label = f"{cell_key(cell)}:{lib}:{source}"
            if row_problems(cell, row, lib):
                self.gaps["invalid_or_unverified_rows"] += 1
            value = verify.get("rel_l2_eps")
            reference = rust.get("rel_l2_eps")
            if not finite(value) or not finite(reference):
                self.gaps["absent_or_nonfinite_error_pair"] += 1
                continue
            bound = accuracy_bound(cell["n"], row.get("describe"))
            relative = 1.5 * reference + 1
            if method == "dd" and rust.get("method") == "dd":
                self.counts[f"{source}_dd_row_checks"] += 1
                if cell["batch"] > 1:
                    self.counts[f"{source}_sampled_batch_chunks"] += 3
                    self.gaps["batch_unsampled_chunks"] += cell["batch"] - 3
                if bound is None:
                    # The absolute bound needs the actual engine; the relative
                    # bound does not, so an observed relative violation still fails.
                    self.gaps["unestablished_actual_engine_bound"] += 1
                    item = dict(cell=label, error_eps=value, bound_eps=None,
                                rustfft_error_eps=reference, relative_bound_eps=relative)
                    if source.startswith("trial") and value > relative:
                        self.failures.append(item)
                    if source == "merged" and value > relative:
                        self.proxy_mismatches.append(item)
                    continue
                self.counts[f"{source}_strict_bound_checks"] += 1
                item = dict(cell=label, error_eps=value, bound_eps=bound,
                            rustfft_error_eps=reference, relative_bound_eps=relative)
                self.worst.append(dict(item, bound_fraction=value / bound,
                                       relative_fraction=value / relative))
                # Merged errors can originate in different winning processes.
                # DD absolute violations remain genuine; relative verdicts use raw pairs.
                if value > bound or (source.startswith("trial") and value > relative):
                    self.failures.append(item)
                if source == "merged" and value > relative:
                    self.proxy_mismatches.append(item)
            else:
                self.counts[f"{source}_proxy_checks"] += 1
                if cell["scenario"]:
                    self.gaps["scenario_pipeline_not_complex_fft_dd"] += 1
                elif cell["n"] > 1 << 20:
                    self.gaps["above_dd_reference_and_true_relative_error"] += 1
                else:
                    self.gaps["unexpected_accuracy_method"] += 1
                if value > relative or (bound is not None and value > bound):
                    self.proxy_mismatches.append(dict(cell=label, method=method,
                                                      error_eps=value, formula_bound_eps=bound,
                                                      relative_formula_eps=relative))
                if method == "rustfft-f64+roundtrip" and finite(verify.get("roundtrip_eps")):
                    self.counts[f"{source}_finite_roundtrip_checks"] += 1

    def summary(self):
        return dict(counts=dict(self.counts), methods=dict(self.methods), gaps=dict(self.gaps),
                    strict_violation_count=len(self.failures),
                    strict_violation_examples=self.failures[:LIMIT],
                    proxy_mismatch_count=len(self.proxy_mismatches),
                    proxy_mismatch_examples=self.proxy_mismatches[:LIMIT],
                    worst_cells=sorted(self.worst, key=lambda item: max(
                        item["bound_fraction"], item["relative_fraction"]), reverse=True)[:LIMIT])


def audit_suite(suite, directory):
    expected = schedule(suite)
    invalid = []
    row_errors = []
    counts = Counter()
    accuracy = Accuracy()
    cells = {}
    metadata = {}
    try:
        supervision = directory.parent / "status.json"
        if supervision.exists():
            status = read_json(supervision)
            if status.get("state") != "completed" or status.get("exit_code") != 0:
                invalid.append("supervisor did not accept this attempt: " +
                               str(status.get("invalid_reasons", status.get("state"))))
            monitor = directory.parent / "monitor.jsonl"
            if status.get("monitor_required"):
                observations = read_jsonl(monitor)
                if not observations or any(item.get("ok") is not True for item in observations):
                    invalid.append("missing or failed continuous monitoring")
        env = read_json(directory / "env.json")
        meta = read_json(directory / "meta.json")
        merged = read_jsonl(directory / "results.jsonl")
        raw = read_jsonl(directory / "trials.jsonl")
    except (OSError, ValueError, TypeError) as error:
        return dict(suite=suite, directory=str(directory), valid=False,
                    invalid_reasons=[str(error)], expected_cells=COUNTS[suite],
                    observed_cells=0, expected_controls=len(expected) - COUNTS[suite],
                    expected_trials=len(expected) * 3, observed_trials=0,
                    row_error_count=0, row_error_examples=[], counts={}, accuracy=accuracy.summary(),
                    metadata=metadata, _cells=cells)
    invalid.extend(check_environment(env, meta, suite))
    metadata = dict(revision=env.get("git"), rustflags=env.get("rustflags"),
                    build_profile=env.get("build_profile"), cpu=env.get("cpu"),
                    max_drift=meta.get("max_drift"), aborted=meta.get("aborted"),
                    child_failures=meta.get("child_failures"))
    if len(merged) != len(expected):
        invalid.append(f"merged records: expected {len(expected)}, found {len(merged)}")
    if len(raw) != 3 * len(expected):
        invalid.append(f"raw trials: expected {3 * len(expected)}, found {len(raw)}")
    base = None
    first_clock = (merged[0].get("clock_ghz") if merged else None)
    if isinstance(first_clock, list) and len(first_clock) == 2 and finite(first_clock[1], True):
        base = first_clock[1]
    measured_drift = 0.0
    driver_drift = 0.0
    for index, expected_cell in enumerate(expected):
        key = cell_key(expected_cell)
        instances = [("merged", merged[index] if index < len(merged) else None, None)]
        instances += [(f"trial{process}", raw[3 * index + process]
                       if 3 * index + process < len(raw) else None, process)
                      for process in range(3)]
        rows_by_source = {}
        valid_by_lib = {lib: True for lib in expected_cell["libs"]}
        for source, record, process in instances:
            if record is None:
                for lib in valid_by_lib:
                    valid_by_lib[lib] = False
                continue
            label = f"{key}:{source}"
            problems = check_spec(record.get("spec") or {}, expected_cell, process)
            if record.get("key") != key:
                problems.append("cell key/order")
            if record.get("cpu") != 2:
                problems.append("actual CPU affinity")
            if record.get("procs", 1) != (3 if process is None else 1):
                problems.append("process count")
            if record.get("child_error"):
                problems.append(f"child crash/timeout: {record['child_error']}")
            clock = record.get("clock_ghz")
            if (not isinstance(clock, list) or len(clock) != 2
                    or any(not finite(value, True) for value in clock) or base is None):
                problems.append("missing/nonfinite clock evidence")
            else:
                measured_drift = max(measured_drift, *(abs(value / base - 1) for value in clock))
                if source == "merged" and index > 0:
                    driver_drift = max(driver_drift, *(abs(value / base - 1) for value in clock))
            invalid.extend(f"{label}: {problem}" for problem in problems)
            rows = {}
            for row in record.get("results", []):
                lib = row.get("lib")
                if lib in rows or lib not in expected_cell["libs"]:
                    invalid.append(f"{label}: duplicate/unrequested row {lib}")
                rows[lib] = row
            rows_by_source[source] = rows
            for lib in expected_cell["libs"]:
                row = rows.get(lib)
                errors = row_problems(expected_cell, row, lib)
                if row is None:
                    invalid.append(f"{label}: requested row {lib} absent")
                prefix = f"{source}:control" if expected_cell["control"] else source
                counts[f"{prefix}:{lib}:supported"] += int(supported(expected_cell, lib))
                counts[f"{prefix}:{lib}:{(row or {}).get('status', 'absent')}"] += 1
                if not supported(expected_cell, lib) and not errors:
                    counts[f"{prefix}:{lib}:adapter_excluded"] += 1
                if row and (row.get("verify") or {}).get("passed") is True:
                    counts[f"{prefix}:{lib}:verified"] += 1
                if errors:
                    valid_by_lib[lib] = False
                    row_errors.extend(f"{label}:{lib}: {problem}" for problem in errors)
                    if expected_cell["control"]:
                        invalid.extend(f"{label}:{lib}: invalid control: {problem}" for problem in errors)
            accuracy.inspect(expected_cell, rows, source)
        for lib in expected_cell["libs"]:
            trials = [rows_by_source.get(f"trial{process}", {}).get(lib) for process in range(3)]
            result = rows_by_source.get("merged", {}).get(lib)
            if result and all(trials) and all((trial or {}).get("time") for trial in trials):
                if all(finite(trial["time"].get("p1"), True) for trial in trials):
                    winner = min(trials, key=lambda trial: trial["time"]["p1"])
                    for field in ("time", "verify", "describe", "status", "msamples_per_s",
                                  "msamples_per_s_median"):
                        if result.get(field) != winner.get(field):
                            valid_by_lib[lib] = False
                            error = f"{key}:{lib}: merged {field} differs from lowest-p1 trial"
                            row_errors.append(error)
                            if expected_cell["control"]:
                                invalid.append(f"{error} (invalid control)")
            if not expected_cell["control"]:
                cells[key] = dict(spec=expected_cell,
                                  rows=rows_by_source.get("merged", {}), valid=valid_by_lib)
        clocks = [record.get("clock_ghz") for _, record, _ in instances if record is not None]
        if len(clocks) == 4 and all(isinstance(clock, list) and len(clock) == 2
                                   and all(finite(value, True) for value in clock) for clock in clocks):
            endpoints = [value for clock in clocks[1:] for value in clock]
            if clocks[0] != [min(endpoints), max(endpoints)]:
                invalid.append(f"{key}: merged clock envelope differs from raw trials")
    if measured_drift >= .03:
        invalid.append(f"recomputed raw/merged clock drift {measured_drift:.9%} >= 3%")
    if finite(meta.get("max_drift")) and abs(meta["max_drift"] - driver_drift) > 1e-9:
        invalid.append("meta.max_drift disagrees with driver-reconstructed clock evidence")
    metadata["recomputed_drift"] = measured_drift
    metadata["driver_recomputed_drift"] = driver_drift
    # The whole protocol remains invalid with missing cells/trials/affinity.
    # Individual library errors invalidate only gates depending on that row.
    return dict(suite=suite, directory=str(directory), valid=not invalid,
                invalid_reason_count=len(invalid), invalid_reasons=invalid[:LIMIT],
                expected_cells=COUNTS[suite], observed_cells=sum(
                    not record.get("spec", {}).get("control", False) for record in merged),
                expected_controls=len(expected) - COUNTS[suite], observed_controls=sum(
                    record.get("spec", {}).get("control", False) for record in merged),
                expected_trials=len(expected) * 3, observed_trials=len(raw),
                row_error_count=len(row_errors), row_error_examples=row_errors[:LIMIT],
                counts=dict(counts), accuracy=accuracy.summary(), metadata=metadata, _cells=cells)


def geomean(values):
    return math.exp(sum(math.log(value) for value in values) / len(values)) if values else None


def performance(runs, suites, lib="fastfft", comparator="rustfft", geo=0, floor=0,
                fraction=None, forward_only=False, small_n=False):
    pairs = []
    missing = []
    excluded = 0
    expected_count = 0
    for suite in suites:
        run = runs.get(suite)
        for cell in expected_specs(suite):
            if forward_only and cell["direction"] != "forward":
                excluded += 1
                continue
            if small_n and cell["n"] > 256:
                continue
            if not supported(cell, lib) or not supported(cell, comparator):
                excluded += 1
                continue
            expected_count += 1
            key = cell_key(cell)
            retained = run.get("_cells", {}).get(key) if run else None
            if (not run or not run["valid"] or not retained
                    or not retained["valid"].get(lib) or not retained["valid"].get(comparator)):
                missing.append(key)
                continue
            left = retained["rows"][lib]["time"]
            right = retained["rows"][comparator]["time"]
            pairs.append(dict(cell=key, **{metric: right[metric] / left[metric]
                                         for metric in ("best", "median", "p1")}))
    metrics = {}
    selected_metrics = ("p1",) if small_n else ("best", "median")
    passes = True
    for metric in selected_metrics:
        values = [pair[metric] for pair in pairs]
        average = geomean(values)
        minimum = min(values) if values else None
        frac = sum(value >= floor for value in values) / len(values) if values else None
        metrics[metric] = dict(geomean=average, minimum=minimum,
                               fraction_at_floor=frac,
                               worst_cells=sorted(pairs, key=lambda pair: pair[metric])[:LIMIT])
        passes &= bool(values and average >= geo
                       and (minimum >= floor if fraction is None else frac >= fraction))
    # Arena G4 requires BOTH metrics to satisfy the 0.97 floor in >=90% of cells.
    if fraction is not None:
        joint = sum(all(pair[metric] >= floor for metric in selected_metrics)
                    for pair in pairs) / len(pairs) if pairs else None
        passes &= joint is not None and joint >= fraction
    else:
        joint = None
    return dict(status="INCOMPLETE" if missing or not pairs else "PASS" if passes else "FAIL",
                expected_supported=expected_count, valid_verified_pairs=len(pairs),
                adapter_or_direction_exclusions=excluded, invalid_or_missing=len(missing),
                invalid_or_missing_examples=missing[:LIMIT], metrics=metrics,
                joint_fraction_at_floor=joint,
                thresholds=dict(geomean=geo, floor=floor, fraction=fraction),
                library=lib, comparator=comparator)


def combined(parts):
    statuses = [part["status"] for part in parts.values()]
    return dict(status=("FAIL" if "FAIL" in statuses else "INCOMPLETE"
                        if "INCOMPLETE" in statuses else "PASS"), parts=parts)


def evaluate_g9(path):
    if path is None:
        return dict(status="INCOMPLETE", reason="No G9 stdout supplied")
    text = path.read_text()
    if text.lstrip().startswith("{"):
        try:
            report = json.loads(text)
            fast, rust = report["fastfft_seconds"], report["rustfft_seconds"]
            if (report.get("schema") != 1 or report.get("gate") != "G9"
                    or not finite(fast, True) or not finite(rust, True)
                    or report.get("threshold") != 2.0
                    or report.get("profile") != "release" or report.get("rustflags") != ""
                    or report.get("jobs") != 1 or report.get("incremental") is not False):
                raise ValueError("invalid G9 protocol or durations")
            ratio = fast / rust
            if (not finite(report.get("ratio"), True)
                    or not math.isclose(report["ratio"], ratio, rel_tol=1e-12)
                    or report.get("passed") is not (ratio <= 2.0)):
                raise ValueError("inconsistent G9 ratio or verdict")
            return dict(status="PASS" if ratio <= 2.0 else "FAIL", ratio=ratio,
                        fastfft_seconds=fast, rustfft_seconds=rust, source=str(path))
        except (KeyError, TypeError, ValueError) as error:
            return dict(status="INCOMPLETE", reason=str(error))
    matches = re.findall(r"clean release build: fastfft (\d+\.\d)s, rustfft (\d+\.\d)s, "
                         r"ratio (\d+\.\d{2})[×x]", text)
    if len(matches) != 1:
        return dict(status="INCOMPLETE", reason="Expected exactly one xtask duration/ratio line")
    fast, rust, printed = map(float, matches[0])
    if rust <= .05 or fast <= .05:
        return dict(status="INCOMPLETE", reason="Durations too small for printed precision")
    low = max((fast - .05) / (rust + .05), printed - .005)
    high = min((fast + .05) / (rust - .05), printed + .005)
    consistent = low <= high
    status = ("INCOMPLETE" if not consistent or low <= 2 <= high else
              "PASS" if high < 2 else "FAIL")
    return dict(status=status, fastfft_seconds_printed=fast, rustfft_seconds_printed=rust,
                recomputed_ratio_from_rounded_durations=fast / rust, printed_ratio=printed,
                compatible_ratio_interval=[low, high], printed_values_consistent=consistent,
                limitation="Durations are rounded to 0.1s and ratio to 0.01; a boundary "
                "interval is incomplete. The launch manifest must attest empty RUSTFLAGS, "
                "normal release, clean targets, equal jobs and CPU 2; stdout cannot attest them.")


def datacheck(runs):
    run = runs.get("datacheck")
    checked = 0
    violations = []
    missing = 0
    for cell in expected_specs("datacheck"):
        if cell["data"] != "zero":
            continue
        random = dict(cell, data="random")
        for lib in LIBS:
            if not supported(cell, lib):
                continue
            rows = [run.get("_cells", {}).get(cell_key(item)) if run else None
                    for item in (cell, random)]
            if not run or not run["valid"] or not all(
                    row and row["valid"].get(lib) for row in rows):
                missing += 1
                continue
            checked += 1
            for metric in ("best", "median"):
                ratio = rows[1]["rows"][lib]["time"][metric] / rows[0]["rows"][lib]["time"][metric]
                if abs(ratio - 1) > .02:
                    violations.append(dict(cell=cell_key(cell), lib=lib, metric=metric,
                                           random_over_zero=ratio))
    return dict(status="INCOMPLETE" if missing else "FAIL" if violations else "PASS",
                verified_supported_pairs=checked, invalid_or_missing_pairs=missing,
                violation_count=len(violations), violation_examples=violations[:LIMIT],
                tolerance=.02)


def evaluate(runs, g9=None):
    gates = {}
    for gate, suite, geo, floor in [("G1", "pow2", 1.5, .95),
                                    ("G2", "smooth", 1.3, .95),
                                    ("G3", "rough", .75, .5)]:
        gates[gate] = performance(runs, [suite], geo=geo, floor=floor)
    gates["G4"] = combined({lib: performance(
        runs, ["pow2", "smooth", "rough"], comparator=lib, geo=1.1,
        floor=.97, fraction=.9, forward_only=lib.startswith("phastft/"))
        for lib in ("phastft/split", "phastft/interleaved", "tfhe-fft", "oxifft")})
    gates["G5"] = combined({suite: performance(runs, [suite], lib="fastfft/avx2", geo=geo)
                            for suite, geo in [("pow2", 1.2), ("smooth", 1.1)]})
    gates["G6"] = combined(dict(
        realworld=performance(runs, ["realworld"], floor=1.3),
        batch=performance(runs, ["batch"], geo=1.5)))
    violations = sum(run["accuracy"]["strict_violation_count"]
                     for run in runs.values() if run["valid"])
    rejected_violations = sum(run["accuracy"]["strict_violation_count"]
                              for run in runs.values() if not run["valid"])
    gaps = Counter()
    for suite in SUITES:
        if suite not in runs:
            gaps[f"missing_suite:{suite}"] += COUNTS[suite]
        else:
            gaps.update(runs[suite]["accuracy"]["gaps"])
            if not runs[suite]["valid"]:
                gaps[f"invalid_suite:{suite}"] += 1
    gates["G7"] = dict(status="FAIL" if violations else "INCOMPLETE" if gaps else "PASS",
                       strict_violation_count=violations, gaps=dict(gaps),
                       rejected_attempt_diagnostic_strict_violation_count=rejected_violations,
                       rule="Both fastfft rows, all raw trials: DD <= actual engine bound and "
                       "<= 1.5 * same-trial RustFFT DD error + 1 epsilon. Merged relative errors "
                       "are diagnostics. Above-DD, scenario-reference and sampled batch gaps "
                       "prevent complete universal coverage.")
    gates["G8"] = dict(status="OPEN", reason="Ticket 39 must establish every-length fresh planning; "
                        "arena warmed minimum-of-five plan_ns cannot establish G8.")
    gates["G9"] = evaluate_g9(g9)
    all_cells = sum(run["observed_cells"] for run in runs.values())
    small_p1 = performance(runs, ["pow2"], small_n=True)
    if small_p1["status"] == "PASS":
        small_p1["status"] = "REPORTED"
    small_p1["thresholds"] = None
    small_p1["purpose"] = "Diagnostic p1 ratios for all full-profile pow2 cells N<=256; " \
        "these do not replace best/median release decisions."
    return dict(schema_version=1, protocol="ticket-23-aligned-full-procs3",
                expected_noncontrol_cells=sum(COUNTS.values()), observed_noncontrol_cells=all_cells,
                gates=gates, datacheck=datacheck(runs),
                small_n_p1=small_p1,
                suites={suite: {key: value for key, value in run.items() if key != "_cells"}
                        for suite, run in runs.items()},
                rejected_attempts=[dict(suite=suite, directory=run["directory"],
                                        reasons=run["invalid_reasons"])
                                   for suite, run in runs.items() if not run["valid"]],
                limitations=["Clock probe is an uncalibrated throughput proxy (ticket 32).",
                             "Three processes rotate construction order across only three "
                             "of eight positions; this does not balance all row positions.",
                             "Arena metadata cannot attest all launch variables, idle history, "
                             "executable hash or source identity; retain the frozen-run manifest.",
                             "Only explicitly supplied attempts are audited; rejected earlier "
                             "attempts must also be retained in the evidence manifest."])


def markdown(summary):
    lines = ["# Ticket 23 independent gate audit", "", "| Gate | Result |", "|---|---|"]
    lines += [f"| {gate} | {value['status']} |" for gate, value in summary["gates"].items()]
    lines += ["", f"Ordinary cells: {summary['observed_noncontrol_cells']:,} observed / "
              f"{summary['expected_noncontrol_cells']:,} expected.", "",
              "Both best and median are required for G1–G6. G4's 90% floor requires both "
              "metrics on the same cells. The JSON contains worst cells, coverage, row failures "
              "and strict/proxy accuracy classifications.", "", "| Suite | Protocol | Cells | "
              "Controls | Raw trials | Row issues | Drift |", "|---|---|---|---|---|---|---|"]
    for suite, run in summary["suites"].items():
        drift = run["metadata"].get("recomputed_drift")
        drift_text = f"{drift:.3%}" if drift is not None else "unknown"
        lines.append(f"| {suite} | {'valid' if run['valid'] else 'REJECTED'} | "
                     f"{run['observed_cells']}/{run['expected_cells']} | "
                     f"{run.get('observed_controls', 0)}/{run['expected_controls']} | "
                     f"{run['observed_trials']}/{run['expected_trials']} | "
                     f"{run['row_error_count']} | {drift_text} |")
    lines += ["", "| Performance component | Valid / supported pairs | Geomean best / median | "
              "Minimum best / median | Result |", "|---|---|---|---|---|"]
    for gate in ("G1", "G2", "G3", "G4", "G5", "G6"):
        result = summary["gates"][gate]
        parts = result.get("parts", {"": result})
        for name, part in parts.items():
            metrics = part["metrics"]
            fmt = lambda value: f"{value:.4f}×" if value is not None else "—"
            best, median = metrics["best"], metrics["median"]
            lines.append(f"| {gate} {name} | {part['valid_verified_pairs']} / "
                         f"{part['expected_supported']} | {fmt(best['geomean'])} / "
                         f"{fmt(median['geomean'])} | {fmt(best['minimum'])} / "
                         f"{fmt(median['minimum'])} | {part['status']} |")
    lines += ["", f"Small-N p1 (pow2 N≤256): {summary['small_n_p1']['status']}; "
              f"{summary['small_n_p1']['valid_verified_pairs']} valid pairs. This is separate "
              "from the release ratios.", "", f"Datacheck: {summary['datacheck']['status']} "
              f"({summary['datacheck']['violation_count']} metric violations).", "",
              "G7 coverage gaps (counts include the indicated raw and merged row checks):", ""]
    lines += [f"- {name}: {count:,}" for name, count in summary["gates"]["G7"]["gaps"].items()]
    lines += ["", "Limitations:", ""]
    lines += [f"- {limitation}" for limitation in summary["limitations"]]
    if "limitation" in summary["gates"]["G9"]:
        g9 = summary["gates"]["G9"]
        lines += [f"- G9: printed {g9['printed_ratio']:.2f}×; independently recomputed "
                  f"{g9['recomputed_ratio_from_rounded_durations']:.6f}× from rounded durations. "
                  + g9["limitation"]]
    if summary["rejected_attempts"]:
        lines += ["", "Rejected attempts:", ""]
        lines += [f"- {attempt['suite']}: `{attempt['directory']}`; "
                  + "; ".join(attempt["reasons"]) for attempt in summary["rejected_attempts"]]
    return "\n".join(lines) + "\n"


def json_safe(value):
    """Rejected nonfinite raw values must not prevent writing the rejection."""
    if isinstance(value, float) and not math.isfinite(value):
        return None
    if isinstance(value, dict):
        return {key: json_safe(item) for key, item in value.items()}
    if isinstance(value, list):
        return [json_safe(item) for item in value]
    return value


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--run", action="append", default=[], metavar="SUITE=PATH",
                        help="Explicit attempt directory; repeat for each suite, never per cell")
    parser.add_argument("--g9", type=Path, help="Saved cargo xtask build-time stdout")
    parser.add_argument("--out", type=Path, required=True, help="New compact JSON artifact")
    parser.add_argument("--report", type=Path, required=True, help="New Markdown artifact")
    args = parser.parse_args(argv)
    directories = {}
    for value in args.run:
        suite, separator, directory = value.partition("=")
        if not separator or suite not in SUITES or not directory or suite in directories:
            parser.error("--run requires unique known SUITE=PATH entries")
        directories[suite] = Path(directory).resolve()
    paths = [args.out.resolve(), args.report.resolve()]
    if paths[0] == paths[1] or any(path.exists() for path in paths):
        parser.error("output artifacts must be distinct new files; existing evidence is preserved")
    if any(path.is_relative_to(directory) for path in paths for directory in directories.values()):
        parser.error("write compact artifacts outside raw attempt directories")
    try:
        runs = {suite: audit_suite(suite, directories[suite]) for suite in SUITES if suite in directories}
        summary = json_safe(evaluate(runs, args.g9))
        for path in paths:
            path.parent.mkdir(parents=True, exist_ok=True)
        with args.out.open("x") as stream:
            json.dump(summary, stream, indent=2, allow_nan=False)
            stream.write("\n")
        with args.report.open("x") as stream:
            stream.write(markdown(summary))
    except (OSError, ValueError, TypeError, KeyError) as error:
        print(f"ticket23 audit: {error}", file=sys.stderr)
        return 2
    print("; ".join(f"{gate}={value['status']}" for gate, value in summary["gates"].items()))
    return 0


if __name__ == "__main__":
    sys.exit(main())

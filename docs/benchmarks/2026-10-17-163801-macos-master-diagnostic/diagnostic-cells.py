"""Diagnostic-only run-cell collector. Never edits arena or its official gates."""
import copy
import importlib.util
import json
from pathlib import Path
import subprocess
import time

LIBS = ["fastfft", "rustfft", "fftw", "phastft/interleaved"]


def collect(root, run, evidence, binary):
    run.mkdir(parents=True, exist_ok=False)
    env = json.loads(subprocess.check_output([str(binary), "env", "--core", "2"], cwd=root, text=True))
    env["run"] = {"suites": ["pow2"], "profile": "full", "libs": LIBS, "misalign": 0,
                  "precisions": ["f32", "f64"], "max_n": 1048576, "filter": "place=ip",
                  "label": "macos-master-diagnostic", "procs": 1, "official": False, "cells": 80,
                  "caller_scratch": "child-planned-shared-aligned",
                  "planning_samples": "secondary-after-execution-retained-runners",
                  "process_order": "fixed-for-cells-rotating-for-controls",
                  "diagnostic": True, "drift_abort_disabled": True,
                  "authorization": "User selected Diagnostic plots after two standard arena runs aborted on clock-proxy drift."}
    (run / "env.json").write_text(json.dumps(env, indent=2) + "\n")
    base, max_drift, failures = None, 0.0, 0
    started = time.monotonic()
    with (run / "results.jsonl").open("w") as results, (run / "trials.jsonl").open("w") as trials, \
            (evidence / "commands.jsonl").open("w") as commands, (evidence / "run.log").open("w") as log:
        def emit(message):
            print(message, flush=True)
            log.write(message + "\n")
            log.flush()

        def cell(spec):
            argv = [str(binary), "run-cell", "--core", "2", "--spec", json.dumps(spec, separators=(",", ":"))]
            commands.write(json.dumps({"argv": argv, "spec": spec}) + "\n")
            commands.flush()
            process = subprocess.run(argv, cwd=root, stdout=subprocess.PIPE, stderr=log, text=True, timeout=600)
            if process.returncode:
                raise RuntimeError(f"run-cell exited {process.returncode}: {spec}")
            row = json.loads(process.stdout.strip().splitlines()[-1])
            trials.write(json.dumps(row) + "\n")
            trials.flush()
            return row

        def retain(row):
            nonlocal max_drift, failures
            failures += int(any(r["status"] not in ("ok", "unsupported") for r in row["results"]))
            drift = max(abs(c / base - 1) for c in row["clock_ghz"])
            max_drift = max(max_drift, drift)
            row["diagnostic_clock_proxy_drift"] = drift
            results.write(json.dumps(row) + "\n")
            results.flush()
            return drift

        control = {"suite": "control", "precision": "f32", "direction": "forward", "placement": "inplace",
                   "n": 4096, "batch": 1, "misalign": 0, "scenario": None,
                   "libs": ["fastfft", "rustfft"], "profile": "full", "data": "zero", "verify": False,
                   "seed": 1, "control": True}

        def run_control():
            nonlocal base
            rows = []
            for process in range(3):
                spec = copy.deepcopy(control)
                offset = process % len(spec["libs"])
                spec["libs"] = spec["libs"][offset:] + spec["libs"][:offset]
                rows.append(cell(spec))
            merged = copy.deepcopy(rows[0])
            merged["spec"] = copy.deepcopy(control)
            merged["procs"] = 3
            merged["wall_s"] = sum(row["wall_s"] for row in rows)
            clocks = [value for row in rows for value in row["clock_ghz"]]
            merged["clock_ghz"] = [min(clocks), max(clocks)]
            merged["results"] = [min((r for row in rows for r in row["results"] if r["lib"] == lib),
                                     key=lambda r: r.get("time", {}).get("p1", float("inf"))) for lib in control["libs"]]
            if base is None:
                base = max(clocks)
            drift = retain(merged)
            emit(f"Control: clock-proxy drift {drift * 100:.2f}% (diagnostic; no drift abort)")

        emit("DIAGNOSTIC ONLY: user-authorized collection without driver drift-abort; unchanged master binary. All clock readings retained.")
        run_control()
        index = 0
        for exponent in range(1, 21):
            for precision in ("f32", "f64"):
                for direction in ("forward", "inverse"):
                    if index and index % 25 == 0:
                        run_control()
                    spec = {"suite": "pow2", "precision": precision, "direction": direction,
                            "placement": "inplace", "n": 2 ** exponent, "batch": 1, "misalign": 0,
                            "scenario": None, "libs": LIBS, "profile": "full", "data": "zero",
                            "verify": True, "seed": 1, "control": False}
                    row = cell(spec)
                    drift = retain(row)
                    index += 1
                    emit(f"[{index}/80] {row['key']}: clock-proxy drift {drift * 100:.2f}%; "
                         + ", ".join(f"{r['lib']}={r['status']}" for r in row["results"]))
        run_control()
        meta = {"official": False, "diagnostic": True, "drift_abort_disabled": True,
                "max_drift": max_drift, "drift_flag": max_drift > .03, "aborted": None,
                "child_failures": failures, "cells": 80, "elapsed_s": time.monotonic() - started,
                "clock_proxy_reference": base, "raw_trials": 95,
                "prior_aborted_runs": ["2026-10-17-161818-macos-master-four-library-comparison",
                                       "2026-10-17-161947-macos-master-four-library-comparison"]}
        (run / "meta.json").write_text(json.dumps(meta, indent=2) + "\n")
        emit(f"Diagnostic complete: {index} cells, {failures} failures, max drift {max_drift * 100:.2f}%.")
    subprocess.run([str(binary), "report", str(run)], cwd=root, check=True)
    return subprocess.CompletedProcess([], 0)

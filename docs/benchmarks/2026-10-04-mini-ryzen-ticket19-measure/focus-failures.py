#!/usr/bin/env python3
"""Repeat every failed cell through the full arena driver, retaining all runs."""

import argparse
import json
import os
from pathlib import Path
import runpy
import subprocess

parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument("binary", type=Path)
parser.add_argument("comparison", type=Path)
parser.add_argument("source", type=Path)
parser.add_argument("out", type=Path)
parser.add_argument("--procs", type=int, default=4,
                    help="processes per cell (default: 4; full acceptance follow-ups use 8)")
parser.add_argument("--core", type=int, default=2,
                    help="match the primary run's pinned core (default: 2)")
args = parser.parse_args()
if args.procs < 1:
    parser.error("--procs must be positive")
root = Path(__file__).resolve().parents[3]
audit = runpy.run_path(str(root / "scripts/check-measure.py"))["audit"]
failed = {row["key"] for row in json.loads(args.comparison.read_text())["failures"]}
rows = [json.loads(line) for line in args.source.read_text().splitlines()]
groups = {}
for row in rows:
    if row["key"] not in failed:
        continue
    spec = row["spec"]
    direction = {"forward": "fwd", "inverse": "inv"}[spec["direction"]]
    placement = {"inplace": "ip", "outofplace": "oop", "immutable": "imm"}[spec["placement"]]
    selector = f"precision={spec['precision']},dir={direction},place={placement},n={spec['n']}"
    groups.setdefault((spec["suite"], selector), []).append(row["key"])
assert groups, "no failed cells to repeat"
args.out.mkdir(parents=True, exist_ok=False)
commands = []
for index, ((suite, selector), keys) in enumerate(groups.items()):
    directory = args.out / f"case-{index:02}"
    command = [str(args.binary.resolve()), "run", "--suite", suite, "--profile", "full",
               "--libs", "fastfft,fastfft/measure", "--filter", selector,
               "--core", str(args.core), "--procs", str(args.procs), "--out", str(directory)]
    commands.append({"keys": keys, "directory": str(directory), "command": command,
                     "env_underscore": str(args.binary)})
(args.out / "commands.json").write_text(json.dumps(commands, indent=2) + "\n")
results = []
for index, entry in enumerate(commands):
    with (args.out / f"case-{index:02}.log").open("x") as log:
        subprocess.run(entry["command"], stdout=log, stderr=subprocess.STDOUT, check=True,
                       env={**os.environ, "_": entry["env_underscore"]})
    directory = Path(entry["directory"])
    result = audit(directory)
    (directory / "comparison.json").write_text(json.dumps(result, indent=2) + "\n")
    results.append(result)
    meta = json.loads((directory / "meta.json").read_text())
    print(f"{index+1}/{len(commands)}: {result['cells']} cells, "
          f"{len(result['failures'])} failures, drift {meta['max_drift']:.2%}", flush=True)
    for cell in result["failures"]:
        print(f"  {cell['key']} ratio={cell['ratio']:.6f} same_plan={cell['same_plan']}", flush=True)
    if result["problems"]:
        print(result["problems"], flush=True)
        break
summary = {"expected_groups": len(commands), "completed_groups": len(results),
           "cells": sum(r["cells"] for r in results),
           "failures": [c for r in results for c in r["failures"]],
           "problems": [p for r in results for p in r["problems"]]}
(args.out / "summary.json").write_text(json.dumps(summary, indent=2) + "\n")
raise SystemExit(int(bool(summary["failures"] or summary["problems"] or len(results) != len(commands))))

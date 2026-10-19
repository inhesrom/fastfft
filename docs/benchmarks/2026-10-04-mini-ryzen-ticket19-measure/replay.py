#!/usr/bin/env python3
"""Replay exact cell specifications in independent pinned arena children."""

import argparse
import gzip
import json
from pathlib import Path
import subprocess

parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument("binary", type=Path)
parser.add_argument("source", type=Path)
parser.add_argument("--cases", nargs="+", required=True)
parser.add_argument("--out", type=Path, required=True)
parser.add_argument("--trials", type=int, default=10)
parser.add_argument("--baseline", default="fastfft")
parser.add_argument("--contender", default="fastfft/measure")
parser.add_argument("--reverse", action="store_true", help="reverse library construction order")
parser.add_argument("--compact-spec", action="store_true", help="match the driver's compact JSON argument")
args = parser.parse_args()
opener = gzip.open if args.source.suffix == ".gz" else open
with opener(args.source, "rt") as stream:
    rows = {row["key"]: row for row in map(json.loads, stream)}
with args.out.open("x") as output:
    for key in args.cases:
        libraries = [args.baseline, args.contender]
        if args.reverse:
            libraries.reverse()
        spec = {**rows[key]["spec"], "libs": libraries}
        encoded = json.dumps(spec, separators=(",", ":")) if args.compact_spec else json.dumps(spec)
        for trial in range(args.trials):
            process = subprocess.run(
                [str(args.binary.resolve()), "run-cell", "--core", "2", "--spec", encoded],
                text=True, capture_output=True, check=True,
            )
            row = json.loads(process.stdout)
            output.write(json.dumps(row) + "\n")
            output.flush()
            pair = {result["lib"]: result for result in row["results"]}
            a, b = pair[args.baseline], pair[args.contender]
            assert a["status"] == b["status"] == "ok", row
            assert a["verify"]["passed"] and b["verify"]["passed"], row
            metric = "p1" if spec["n"] <= 256 and spec["batch"] == 1 else "best"
            print(key, trial, f"{metric} ratio={b['time'][metric] / a['time'][metric]:.6f}",
                  f"p1={b['time']['p1'] / a['time']['p1']:.6f}",
                  "same_plan=" + str(a["describe"] == b["describe"]), flush=True)

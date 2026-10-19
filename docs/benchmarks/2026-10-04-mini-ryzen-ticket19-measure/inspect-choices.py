#!/usr/bin/env python3
"""Retain every different-plan raw trial; this does not replace the cell audit."""

import argparse
from collections import Counter
import gzip
import json
from pathlib import Path


def inspect(directory):
    source = directory / "trials.jsonl"
    opener = open
    if not source.exists():
        source = directory / "trials.jsonl.gz"
        opener = gzip.open
    trials = Counter()
    choices = []
    with opener(source, "rt") as stream:
        for line in stream:
            row = json.loads(line)
            spec = row["spec"]
            if spec.get("control"):
                continue
            key = row["key"]
            trials[key] += 1
            libs = {lib["lib"]: lib for lib in row["results"]}
            estimate, measure = (libs[name] for name in ("fastfft", "fastfft/measure"))
            if estimate.get("describe") == measure.get("describe"):
                continue
            metric = "p1" if spec["n"] <= 256 and spec["batch"] == 1 else "best"
            choices.append({
                "key": key, "trial": trials[key], "order": spec["libs"],
                "metric": metric,
                "ratio": measure["time"][metric] / estimate["time"][metric],
                "estimate": estimate.get("describe"),
                "measure": measure.get("describe"),
                "verified": all(lib.get("verify", {}).get("passed")
                                for lib in (estimate, measure)),
            })
    return {"cells": len(trials), "trials": sum(trials.values()),
            "different_plan_trials": len(choices),
            "different_plan_cells": len({choice["key"] for choice in choices}),
            "choices": choices}


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("run", type=Path)
    parser.add_argument("--out", type=Path)
    args = parser.parse_args()
    result = inspect(args.run)
    if args.out:
        args.out.write_text(json.dumps(result, indent=2) + "\n")
    print(json.dumps(result, indent=2))

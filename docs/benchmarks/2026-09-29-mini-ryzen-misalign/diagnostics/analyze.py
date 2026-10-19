#!/usr/bin/env python3
"""Ticket 12: compare aligned (m0) and misaligned (m8) arena runs cell by cell.

usage: analyze.py --m0 RUN[,RUN...] --m8 RUN[,RUN...]
                  [--stat p1|median|best] [--max-drift 0.03] [--json OUT]

Runs on one side are merged by cell key; a later run replaces an earlier one.
A cell is dropped when its core-clock reading deviates from its run's first
control reading by more than --max-drift (the arena's 3% flag threshold):
that excludes cells measured while something else loaded the machine.

Prints each library's m8/m0 time ratio and fastfft's speedup over rustfft
at both alignments per cell, then geomeans by precision, size band and
placement.
"""
import argparse
import gzip
import json
import math
from collections import defaultdict


def read_rows(d):
    for name in ("results.jsonl", "results.jsonl.gz"):
        op = gzip.open if name.endswith(".gz") else open
        try:
            with op(f"{d}/{name}", "rt") as f:
                return [json.loads(line) for line in f if line.strip()]
        except FileNotFoundError:
            continue
    raise SystemExit(f"no results in {d}")


def load(dirs, max_drift, dropped):
    """Merges runs by cell key: the last clean row wins. A key whose every
    row was rejected is reported in `dropped` with its latest reason."""
    rows = {}
    rejected = {}
    for d in dirs:
        base = None
        for r in read_rows(d):
            spec = r.get("spec", {})
            clock = r.get("clock_ghz")
            if spec.get("control"):
                if base is None and clock:
                    base = clock[1]
                continue
            key = r.get("key", "").replace(":m8", "")
            if "results" not in r:
                rejected[key] = (d, r.get("key"), "child error")
                continue
            if base and clock:
                drift = max(abs(clock[0] / base - 1), abs(clock[1] / base - 1))
                if drift > max_drift:
                    rejected[key] = (d, r["key"], f"clock drift {drift:.1%}")
                    continue
            rows[key] = r
    dropped.extend(v for k, v in rejected.items() if k not in rows)
    return rows


def band(n, batch):
    if batch > 1:
        return "batch"
    if n <= 256:
        return "2-256"
    if n <= 16384:
        return "512-16K"
    if n <= 131072:
        return "32K-128K"
    if n <= 1048576:
        return "256K-1M"
    return "2M-16M"


def gm(xs):
    xs = [x for x in xs if x and x > 0 and math.isfinite(x)]
    return math.exp(sum(math.log(x) for x in xs) / len(xs)) if xs else float("nan")


def lib_time(r, lib, stat):
    x = next((l for l in r["results"] if l["lib"] == lib), None)
    if not x or not x.get("time"):
        return None, None
    return x["time"][stat], x


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--m0", required=True)
    ap.add_argument("--m8", required=True)
    ap.add_argument("--stat", default="p1")
    ap.add_argument("--max-drift", type=float, default=0.03)
    ap.add_argument("--json")
    o = ap.parse_args()
    dropped = []
    m0 = load(o.m0.split(","), o.max_drift, dropped)
    m8 = load(o.m8.split(","), o.max_drift, dropped)
    cells = []
    for key, r0 in m0.items():
        r8 = m8.get(key)
        if r8 is None:
            continue
        ff0, x0 = lib_time(r0, "fastfft", o.stat)
        ff8, x8 = lib_time(r8, "fastfft", o.stat)
        rf0, _ = lib_time(r0, "rustfft", o.stat)
        rf8, _ = lib_time(r8, "rustfft", o.stat)
        if None in (ff0, ff8, rf0, rf8):
            dropped.append(("pair", key, "a library has no timing"))
            continue
        s = r0["spec"]
        cells.append(
            {
                "key": key,
                "prec": s["precision"],
                "dir": s["direction"][:3],
                "place": {"inplace": "ip", "outofplace": "oop", "immutable": "imm"}[
                    s["placement"]
                ],
                "n": s["n"],
                "batch": s["batch"],
                "band": band(s["n"], s["batch"]),
                "ff0": ff0,
                "ff8": ff8,
                "rf0": rf0,
                "rf8": rf8,
                "ff_cost": ff8 / ff0,
                "rf_cost": rf8 / rf0,
                "x0": rf0 / ff0,
                "x8": rf8 / ff8,
                "plan": x0.get("describe"),
                "verify8": (x8.get("verify") or {}).get("passed"),
            }
        )
    cells.sort(key=lambda c: (c["batch"] > 1, c["prec"], c["n"], c["dir"], c["place"]))
    print(f"statistic: {o.stat}; times in ns; x rf = rustfft time / fastfft time")
    print(
        f"{'cell':32} {'ff m0':>10} {'ff m8':>10} {'ff m8/m0':>8} {'rf m8/m0':>8}"
        f" {'x rf m0':>8} {'x rf m8':>8}  plan"
    )
    for c in cells:
        print(
            f"{c['key']:32} {c['ff0']:10.1f} {c['ff8']:10.1f} {c['ff_cost']:8.3f} {c['rf_cost']:8.3f}"
            f" {c['x0']:8.3f} {c['x8']:8.3f}  {c['plan']}"
            + ("" if c["verify8"] in (True, None) else "  VERIFY-FAILED")
        )
    groups = defaultdict(list)
    for c in cells:
        groups[(c["prec"], c["band"], c["place"])].append(c)
        groups[(c["prec"], c["band"], "all")].append(c)
        groups[(c["prec"], "all", "all")].append(c)
    print()
    print(
        f"{'prec':5} {'band':9} {'place':5} {'cells':>5} {'ff m8/m0':>9} {'worst':>7}"
        f" {'rf m8/m0':>9} {'x rf m0':>8} {'x rf m8':>8}"
    )
    order = ["2-256", "512-16K", "32K-128K", "256K-1M", "2M-16M", "batch", "all"]
    summary = []
    for key in sorted(groups, key=lambda k: (k[0], order.index(k[1]), k[2])):
        g = groups[key]
        row = {
            "prec": key[0],
            "band": key[1],
            "place": key[2],
            "cells": len(g),
            "ff_cost": gm([c["ff_cost"] for c in g]),
            "ff_worst": max(c["ff_cost"] for c in g),
            "rf_cost": gm([c["rf_cost"] for c in g]),
            "x0": gm([c["x0"] for c in g]),
            "x8": gm([c["x8"] for c in g]),
        }
        summary.append(row)
        print(
            f"{row['prec']:5} {row['band']:9} {row['place']:5} {row['cells']:5d} {row['ff_cost']:9.3f}"
            f" {row['ff_worst']:7.3f} {row['rf_cost']:9.3f} {row['x0']:8.3f} {row['x8']:8.3f}"
        )
    if dropped:
        print(f"\n{len(dropped)} cells without a clean measurement (re-time them):")
        for d, key, why in dropped:
            print(f"  {d}: {key}: {why}")
    if o.json:
        with open(o.json, "w") as f:
            json.dump(
                {"stat": o.stat, "cells": cells, "summary": summary, "dropped": dropped},
                f,
                indent=1,
            )


if __name__ == "__main__":
    main()

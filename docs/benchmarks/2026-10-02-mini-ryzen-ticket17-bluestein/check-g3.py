#!/usr/bin/env python3
"""Check ticket 17's complete quick rough gate from raw or published data."""

import gzip
import json
import math
import sys
from pathlib import Path


def check(directory):
    directory = Path(directory)
    path = directory / "results.jsonl"
    if path.exists():
        contents = path.read_text()
    else:
        contents = gzip.decompress(path.with_suffix(".jsonl.gz").read_bytes()).decode()
    rows = [json.loads(line) for line in contents.splitlines()]
    rows = [row for row in rows if row["spec"]["suite"] == "rough"]
    lengths = {17, 31, 61, 127, 257, 509, 1021, 2018, 2053, 3063, 4099,
               8191, 9797, 16381, 65524, 65537, 131071}
    expected = {(precision, n) for precision in ("f32", "f64") for n in lengths}
    assert len(rows) == 34
    assert {(row["spec"]["precision"], row["spec"]["n"]) for row in rows} == expected
    meta = json.loads((directory / "meta.json").read_text())
    assert meta["official"] and not meta["drift_flag"] and not meta["aborted"]
    assert meta["child_failures"] == 0 and meta["max_drift"] < 0.03
    ratios = []
    for row in rows:
        spec = row["spec"]
        assert spec["profile"] == "quick" and spec["direction"] == "forward"
        assert spec["placement"] == "inplace" and row["cpu"] == 2 and row["procs"] == 3
        results = {result["lib"]: result for result in row["results"]}
        for name in ("fastfft", "rustfft"):
            assert results[name]["status"] == "ok" and results[name]["verify"]["passed"]
        ratios.append((row["key"], spec["precision"], {
            stat: results["rustfft"]["time"][stat] / results["fastfft"]["time"][stat]
            for stat in ("best", "median")
        }))
    passed = True
    for precision in ("f32", "f64", "combined"):
        selected = [r for r in ratios if precision == "combined" or r[1] == precision]
        for stat in ("best", "median"):
            geomean = math.exp(sum(math.log(r[2][stat]) for r in selected) / len(selected))
            worst = min(selected, key=lambda r: r[2][stat])
            print(f"{precision} {stat}: geomean {geomean:.6f}x; "
                  f"minimum {worst[2][stat]:.6f}x ({worst[0]})")
            if precision == "combined":
                passed &= geomean >= 0.75 and worst[2][stat] >= 0.5
    print(f"Verified {len(rows)} cells; drift {100 * meta['max_drift']:.2f}%")
    assert passed, "G3 failed"
    print("G3 PASS")


if __name__ == "__main__":
    check(sys.argv[1])

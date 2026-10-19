"""Check the batch M4 checkpoint, not the complete G6 release gate."""
import gzip
import itertools
import json
import math
from pathlib import Path
import sys

path = Path(sys.argv[1]) if len(sys.argv) > 1 else Path(__file__).parent
env = json.loads((path / "env.json").read_text())
assert env["build_profile"] == "arena", env["build_profile"]
assert env["rustflags"] == "-C llvm-args=-align-all-functions=6", env["rustflags"]
assert not env["target_cpu_native"], env["target_cpu_native"]
meta = json.loads((path / "meta.json").read_text())
assert meta["official"] and not meta["drift_flag"], meta
assert meta["aborted"] is None and meta["child_failures"] == 0, meta
raw = path / "results.jsonl"
data = raw.read_text() if raw.exists() else gzip.decompress(
    (path / "results.jsonl.gz").read_bytes()
).decode()
expected = set(itertools.product(
    ("f32", "f64"), ("forward",),
    ("inplace", "outofplace"), (1 << k for k in range(3, 11))
))
ratios = {}
for line in data.splitlines():
    cell = json.loads(line)
    spec = cell["spec"]
    if spec["suite"] != "batch":
        continue
    key = (spec["precision"], spec["direction"], spec["placement"], spec["n"])
    assert key in expected and key not in ratios, key
    assert spec["profile"] == "full" and spec["verify"], key
    assert spec["batch"] == (1 << 20) // spec["n"] and spec["misalign"] == 0, key
    assert cell["cpu"] == 2 and cell["procs"] == 3, key
    rows = {row["lib"]: row for row in cell["results"]}
    assert {"fastfft", "rustfft"} <= rows.keys(), key
    assert all(row["status"] == "ok" and row["verify"]["passed"]
               for row in rows.values()), key
    ratios[key] = [rows["rustfft"]["time"][stat] / rows["fastfft"]["time"][stat]
                   for stat in ("best", "median")]
    assert all(math.isfinite(r) and r > 0 for r in ratios[key]), key
assert set(ratios) == expected, expected - ratios.keys()


def geomeans(rows):
    return [math.exp(sum(math.log(row[i]) for row in rows) / len(rows))
            for i in (0, 1)]


overall = geomeans(list(ratios.values()))
for precision in ("f32", "f64", "all"):
    rows = [r for key, r in ratios.items() if precision == "all" or key[0] == precision]
    best, median = geomeans(rows)
    print(f"M4 {precision}: {len(rows)} cells, best {best:.4f}x, "
          f"median {median:.4f}x, minimum {min(map(min, rows)):.4f}x")
print(f"Maximum control drift: {meta['max_drift']:.2%}")
assert min(overall) >= 1.3, overall

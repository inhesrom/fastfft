"""Recheck this ticket's gate: python3 check-g2.py [arena-run-directory]."""
import gzip
import json
import math
from pathlib import Path
import sys

path = Path(sys.argv[1]) if len(sys.argv) > 1 else Path(__file__).parent
meta = json.loads((path / "meta.json").read_text())
assert meta["official"] and not meta["drift_flag"], meta
assert meta["aborted"] is None and meta["child_failures"] == 0, meta
raw = path / "results.jsonl"
data = raw.read_text() if raw.exists() else gzip.decompress(
    (path / "results.jsonl.gz").read_bytes()
).decode()
ratios = {}
for line in data.splitlines():
    cell = json.loads(line)
    if cell["spec"]["suite"] != "smooth":
        continue
    rows = {row["lib"]: row for row in cell["results"]}
    assert all(row["status"] == "ok" for row in rows.values()), cell["key"]
    assert cell["key"] not in ratios, cell["key"]
    ratios[cell["key"]] = [
        rows["rustfft"]["time"][stat] / rows["fastfft"]["time"][stat]
        for stat in ("best", "median")
    ]
assert len(ratios) == 82, len(ratios)
geomeans = [
    math.exp(sum(math.log(row[i]) for row in ratios.values()) / len(ratios))
    for i in (0, 1)
]
misses = {key: row for key, row in ratios.items() if min(row) < 0.95}
worst = min(min(row) for row in ratios.values())
print(f"G2: best {geomeans[0]:.4f}x; median {geomeans[1]:.4f}x; "
      f"worst {worst:.4f}x; {len(misses)} misses / {len(ratios)} cells")
assert not misses, misses
assert min(geomeans) >= 1.3, geomeans

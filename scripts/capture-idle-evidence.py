#!/usr/bin/env python3
"""Capture the quiet-host evidence that plot-library-comparison.py requires.

Usage: python3 scripts/capture-idle-evidence.py EVIDENCE_DIR [--core 2]

Writes host-processes.txt, then samples /proc/stat in 10-second windows until
three consecutive windows have overall CPU, the pinned core and its SMT sibling
each at or below --threshold percent and no process above 20% CPU. It then runs
`scripts/bench-env.sh check --core N` into bench-env-check.txt and writes
idle-check.json with `timing_started`. Start the arena run immediately after
this exits 0; it exits 1 if the host never became quiet or the check failed.
Linux only; must run in the host PID namespace (PID 1 is systemd).
"""

import argparse
import datetime
import json
import os
from pathlib import Path
import subprocess
import time

ROOT = Path(__file__).resolve().parent.parent
TICKS = os.sysconf("SC_CLK_TCK")
PROCESS_LIMIT = 20


def now():
    return datetime.datetime.now(datetime.timezone.utc).isoformat()


def cpu_counters():
    result = {}
    for line in Path("/proc/stat").read_text().splitlines():
        fields = line.split()
        if fields[0].startswith("cpu"):
            values = list(map(int, fields[1:9]))
            result[fields[0]] = (sum(values), values[3] + values[4])
    return result


def process_ticks():
    result = {}
    for path in Path("/proc").iterdir():
        if not path.name.isdigit():
            continue
        try:
            text = (path / "stat").read_text()
        except OSError:
            continue
        comm = text[text.index("(") + 1:text.rindex(")")]
        fields = text[text.rindex(")") + 2:].split()
        result[int(path.name)] = (comm, int(fields[11]) + int(fields[12]))
    return result


def sample(seconds, cpus, threshold):
    cpu0, proc0, start = cpu_counters(), process_ticks(), time.monotonic()
    time.sleep(seconds)
    cpu1, proc1, elapsed = cpu_counters(), process_ticks(), time.monotonic() - start
    usage = {}
    for name in cpus:
        total, idle = cpu1[name][0] - cpu0[name][0], cpu1[name][1] - cpu0[name][1]
        usage[name] = 100 * (total - idle) / max(1, total)
    active = sorted(({"pid": pid, "comm": comm,
                      "cpu_percent": round(100 * (ticks - proc0[pid][1]) / TICKS / elapsed, 3)}
                     for pid, (comm, ticks) in proc1.items() if pid in proc0 and ticks > proc0[pid][1]),
                    key=lambda p: -p["cpu_percent"])
    competing = [p for p in active if p["cpu_percent"] > PROCESS_LIMIT and p["pid"] != os.getpid()]
    quiet = not competing and all(v <= threshold for v in usage.values())
    return {"ended": now(), "duration_seconds": elapsed, "cpu_percent": usage,
            "top_active_host_processes": active[:20], "competing_processes": competing, "quiet": quiet}


def main():
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("evidence", type=Path)
    parser.add_argument("--core", type=int, default=2)
    parser.add_argument("--threshold", type=float, default=2.0)
    parser.add_argument("--sample-seconds", type=float, default=10.0)
    parser.add_argument("--max-samples", type=int, default=60)
    args = parser.parse_args()
    args.evidence.mkdir(parents=True, exist_ok=True)
    siblings = Path(f"/sys/devices/system/cpu/cpu{args.core}/topology/thread_siblings_list").read_text().strip()
    cpus = ["cpu"] + [f"cpu{c}" for c in sorted({args.core, *map(int, siblings.replace("-", ",").split(","))})]
    (args.evidence / "host-processes.txt").write_text(subprocess.run(
        ["ps", "-eo", "pid,ppid,%cpu,comm", "--sort=-%cpu"], capture_output=True, text=True, check=True).stdout)
    record = {"host_pid1": Path("/proc/1/comm").read_text().strip(),
              "pid_namespace": os.readlink("/proc/self/ns/pid"), "started": now(),
              "threshold_percent": args.threshold, "sample_seconds": args.sample_seconds,
              "required_consecutive_samples": 3, "additional_process_cpu_threshold_percent": PROCESS_LIMIT,
              "git_status_before_timing": subprocess.run(["git", "status", "--porcelain"], cwd=ROOT,
                                                         capture_output=True, text=True).stdout,
              "samples": [], "passed": False}
    streak = 0
    for _ in range(args.max_samples):
        result = sample(args.sample_seconds, cpus, args.threshold)
        streak = streak + 1 if result["quiet"] else 0
        result["consecutive_quiet"] = streak
        record["samples"].append(result)
        print(f"idle sample: quiet={result['quiet']} streak={streak} "
              + " ".join(f"{k}={v:.2f}%" for k, v in result["cpu_percent"].items())
              + "".join(f" busy:{p['comm']}={p['cpu_percent']}%" for p in result["competing_processes"]), flush=True)
        if streak == 3:
            break
    check = subprocess.run([str(ROOT / "scripts/bench-env.sh"), "check", "--core", str(args.core)],
                           capture_output=True, text=True)
    (args.evidence / "bench-env-check.txt").write_text(check.stdout + check.stderr)
    record["passed"] = streak == 3 and check.returncode == 0 and "bench-env: OK" in check.stdout
    record["timing_started"] = now()
    (args.evidence / "idle-check.json").write_text(json.dumps(record, indent=1) + "\n")
    print(f"idle-check passed={record['passed']}; evidence in {args.evidence}")
    raise SystemExit(0 if record["passed"] else 1)


if __name__ == "__main__":
    main()

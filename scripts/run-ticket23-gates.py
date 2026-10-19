#!/usr/bin/env python3
"""Sequential, detached-supervisor-friendly ticket 23 measurements.

Run --describe-inputs to prepare a preflight JSON document, then set its `ready`
field to true only after builds and validation finish. Launch this supervisor
with setsid/nohup and retain its output. A campaign directory is always new;
there is deliberately no resume, suite selection, or benchmark retry option.
Touch CAMPAIGN/STOP (or send SIGTERM to the supervisor) to stop between suites.
The arena's existing inline reports still run; this script performs no analysis.
"""

import argparse
import datetime
import fcntl
import hashlib
import json
import os
from pathlib import Path
import re
import signal
import subprocess
import sys
import tempfile
import time
import uuid

import benchmark_guard
import benchmark_process_monitor


SUITES = ("pow2", "smooth", "rough", "batch", "realworld", "datacheck", "sweep")
LIBS = (
    "fastfft,fastfft/avx2,rustfft,phastft/split,phastft/interleaved,"
    "tfhe-fft,oxifft,fftw"
)
COMPILERS = {
    "cargo", "rustc", "cc", "c++", "gcc", "g++", "clang", "clang++",
    "cc1", "cc1plus", "collect2", "ld", "ld.lld", "lld", "rust-lld",
    "ar", "llvm-ar", "make", "cmake", "ninja", "as",
}
STOP_REQUESTED = False
IDLE_SECONDS = 60
MONITOR_SECONDS = 1


def utc_now():
    return datetime.datetime.now(datetime.timezone.utc).isoformat()


def sha256(path):
    digest = hashlib.sha256()
    with Path(path).open("rb") as stream:
        for chunk in iter(lambda: stream.read(1024 * 1024), b""):
            digest.update(chunk)
    return digest.hexdigest()


def write_json(path, value):
    path = Path(path)
    temporary = path.with_name(path.name + ".tmp")
    with temporary.open("w") as stream:
        json.dump(value, stream, indent=2, sort_keys=True)
        stream.write("\n")
        stream.flush()
        os.fsync(stream.fileno())
    temporary.replace(path)


def append_json(path, value):
    with Path(path).open("a") as stream:
        stream.write(json.dumps(value, sort_keys=True) + "\n")
        stream.flush()


def input_manifest(source_repo, arena_exe):
    """Include additions/deletions as well as content changes to build inputs."""
    repo = Path(source_repo).resolve()
    paths = {Path(arena_exe).resolve(), Path(__file__).resolve()}
    for relative in ("Cargo.toml", "Cargo.lock", "rust-toolchain.toml", "rust-toolchain",
                     "ROADMAP.md", "docs/benchmarking.md",
                     "docs/plan/ticket-23-gate-evaluation.md"):
        path = repo / relative
        if path.is_file():
            paths.add(path)
    for relative in ("crates", "bench", "xtask", "experiments/kernel-lab", ".cargo", "scripts", "vendor"):
        directory = repo / relative
        for path in directory.rglob("*"):
            if (path.is_file() and not any(part in {"target", "__pycache__", ".git", "wisdom"}
                                           for part in path.relative_to(directory).parts)
                    and (relative != "scripts" or path.suffix in {".py", ".sh"})):
                # Standalone vendored tests generate their own ignored lockfile;
                # arena resolution uses the already-frozen root Cargo.lock.
                if relative == "vendor" and path.name == "Cargo.lock":
                    continue
                paths.add(path.resolve())
    return {
        "schema": 1,
        "ready": False,
        "source_repo": str(repo),
        "arena_exe": str(Path(arena_exe).resolve()),
        "files": {str(path): sha256(path) for path in sorted(paths)},
    }


def verify_preflight(path, source_repo, arena_exe):
    marker = json.loads(Path(path).read_text())
    if marker.get("schema") != 1 or marker.get("ready") is not True:
        raise ValueError("preflight must have schema=1 and ready=true")
    actual = input_manifest(source_repo, arena_exe)
    for key in ("source_repo", "arena_exe", "files"):
        if marker.get(key) != actual[key]:
            if key == "files":
                expected = marker.get("files", {})
                changed = sorted(p for p in set(expected) | set(actual["files"])
                                 if expected.get(p) != actual["files"].get(p))
                raise ValueError("preflight source/hash mismatch: " + ", ".join(changed))
            raise ValueError("preflight path mismatch: " + key)
    return marker


def suite_command(arena_exe, suite, output):
    return [str(arena_exe), "run", "--suite", suite, "--profile", "full", "--libs", LIBS,
            "--core", "2", "--procs", "3", "--max-n", "16777216", "--timeout", "600",
            "--control-every", "25", "--out", str(output)]


def benchmark_environment(campaign):
    environment = dict(os.environ)
    removed = []
    for key in list(environment):
        if key in {"FASTFFT_ISA_CAP", "FASTFFT_REQUIRE_ISA", "FASTFFT_TEST_QUICK",
                   "CARGO_ENCODED_RUSTFLAGS"} or key.startswith("FASTFFT_MEASURE"):
            removed.append(key)
            del environment[key]
    # FFTW writes wisdom at child exit. Keep generated data outside source and
    # retain one explicit wisdom store for the complete campaign.
    environment["FASTFFT_ARENA_WISDOM_DIR"] = str(Path(campaign) / "wisdom")
    recorded = {key: value for key, value in environment.items()
                if key.startswith("FASTFFT_") or key in {"RUSTFLAGS", "CARGO_BUILD_JOBS", "TMPDIR"}}
    return environment, {"effective": recorded, "removed": sorted(removed)}


def process_snapshot(pid, proc_root=Path("/proc")):
    base = Path(proc_root) / str(pid)
    try:
        status = base.joinpath("status").read_text()
        fields = dict(line.split(":", 1) for line in status.splitlines() if ":" in line)
        # starttime identifies a PID across reuse; stat's comm can contain spaces.
        stat = base.joinpath("stat").read_text().rsplit(")", 1)[1].split()
        argv = [p.decode(errors="replace") for p in base.joinpath("cmdline").read_bytes()
                .split(b"\0") if p]
        return {"pid": int(pid), "ppid": int(fields.get("PPid", "0").strip()),
                "name": fields.get("Name", "").strip(), "argv": argv,
                "state": fields.get("State", "").strip(), "pgid": int(stat[2]),
                "start_ticks": int(stat[19]),
                "cpus_allowed_list": fields.get("Cpus_allowed_list", "").strip()}
    except (OSError, ValueError, IndexError):
        return None  # A process can disappear between reading its files.


def processes(proc_root=Path("/proc")):
    for path in Path(proc_root).iterdir():
        if path.name.isdigit():
            item = process_snapshot(int(path.name), proc_root)
            if item is not None:
                yield item


def is_competing_process(process, arena_exe):
    argv = process["argv"]
    if not argv or process["state"].startswith("Z"):
        return False
    name = Path(argv[0]).name
    compiler = name in COMPILERS or re.fullmatch(
        r"(?:[\w.-]+-)?(?:gcc|g\+\+|clang|clang\+\+)(?:-\d+(?:\.\d+)*)?", name
    )
    benchmark = (name == Path(arena_exe).name or name.startswith("fastfft-arena")
                 or name in {"fastfft-tune", "fastfft-kernel-lab"})
    return bool(compiler or benchmark)


def environment_check(source_repo, arena_exe):
    command = ["bash", str(Path(source_repo) / "scripts/bench-env.sh"), "check", "--core", "2"]
    check = subprocess.run(command, capture_output=True, text=True, check=False)
    output = check.stdout
    boost = bool(re.search(r"\bboost=1(?:\s|$)", output))
    competitors = [p for p in processes() if is_competing_process(p, arena_exe)]
    return {"at": utc_now(), "command": command, "exit_code": check.returncode,
            "stdout": output, "stderr": check.stderr, "boost_enabled": boost,
            "competing_processes": competitors,
            "ok": check.returncode == 0 and "bench-env: OK" in output and boost
                  and not competitors}


def stop_requested(campaign):
    return STOP_REQUESTED or (Path(campaign) / "STOP").exists()


def wait_for_idle(source_repo, arena_exe, campaign, retry_seconds):
    while not stop_requested(campaign):
        result = environment_check(source_repo, arena_exe)
        append_json(Path(campaign) / "environment-checks.jsonl", result)
        if result["ok"]:
            if sustained_idle(campaign):
                return True
        print("ticket23: waiting for bench-env OK, boost, and no compilers/benchmarks", flush=True)
        deadline = time.monotonic() + retry_seconds
        while time.monotonic() < deadline and not stop_requested(campaign):
            time.sleep(min(1, max(0, deadline - time.monotonic())))
    return False


def sustained_idle(campaign):
    previous = None
    for _ in range(IDLE_SECONDS + 1):
        if stop_requested(campaign):
            return False
        observation = running_observation(None, previous)
        append_json(Path(campaign) / "idle-monitor.jsonl", observation)
        if not observation["ok"]:
            return False
        previous = observation["cpu_snapshot"]
        if _ < IDLE_SECONDS:
            time.sleep(MONITOR_SECONDS)
    return True


def running_observation(leader, previous=None):
    try:
        return {"at": utc_now(), **benchmark_guard.observe(leader, previous)}
    except (OSError, ValueError, StopIteration) as error:
        return {"at": utc_now(), "ok": False,
                "reasons": ["monitor unavailable: " + str(error)]}


def stop_owned_child(child):
    if child.poll() is None:
        # Popen created this live session leader; never signal another session.
        try:
            if os.getpgid(child.pid) == os.getsid(child.pid) == child.pid:
                os.killpg(child.pid, signal.SIGTERM)
        except ProcessLookupError:
            pass
    try:
        return child.wait(timeout=10)
    except subprocess.TimeoutExpired:
        if os.getpgid(child.pid) == os.getsid(child.pid) == child.pid:
            os.killpg(child.pid, signal.SIGKILL)
        return child.wait()


def run_suite(arena_exe, source_repo, suite, campaign):
    name = Path(arena_exe).name
    benchmark_process_monitor.TOOLS.update((name, name[:15]))
    attempt = Path(campaign) / (suite + "-" + uuid.uuid4().hex)
    attempt.mkdir()  # Never open arena output in a pre-existing directory.
    output = attempt / "arena"
    command = suite_command(arena_exe, suite, output)
    environment, recorded_environment = benchmark_environment(campaign)
    status = {"suite": suite, "attempt": str(attempt), "output": str(output),
              "command": command, "started_at": utc_now(), "state": "starting",
              "monitor_required": True}
    status["benchmark_environment"] = recorded_environment
    write_json(attempt / "status.json", status)
    child = None
    try:
        with (attempt / "stdout.log").open("xb") as stdout, (attempt / "stderr.log").open("xb") as stderr:
            child = subprocess.Popen(command, cwd=source_repo, stdin=subprocess.DEVNULL,
                                     stdout=stdout, stderr=stderr, start_new_session=True,
                                     env=environment)
            status.update(state="running", pid=child.pid, pgid=os.getpgid(child.pid))
            write_json(attempt / "status.json", status)
            append_json(attempt / "processes.jsonl", {"at": utc_now(), "processes":
                        [p for p in [process_snapshot(child.pid)] if p is not None]})
            previous = None
            while child.poll() is None:
                observation = running_observation(child.pid, previous)
                append_json(attempt / "monitor.jsonl", observation)
                if not observation["ok"]:
                    status.update(state="invalid", invalid_reasons=observation["reasons"])
                    stop_owned_child(child)
                    break
                previous = observation["cpu_snapshot"]
                time.sleep(MONITOR_SECONDS)
            code = child.wait()
            status["exit_code"] = code
            if status["state"] != "invalid":
                status["state"] = "completed" if code == 0 else "failed"
    except OSError as error:
        # A snapshot/log error must not abandon a live measured child or let
        # another suite start while it is still running.
        code = stop_owned_child(child) if child is not None else None
        status.update(state="failed", exit_code=code, error=str(error))
    status["finished_at"] = utc_now()
    write_json(attempt / "status.json", status)
    return status


def supervise(args):
    # Share one advisory lease among qualification supervisors for this user.
    # Independent compilers/benchmarks are still detected by the live monitor.
    lease = Path(tempfile.gettempdir()) / f"fastfft-benchmark-{os.getuid()}.lock"
    with lease.open("a") as lock:
        try:
            fcntl.flock(lock, fcntl.LOCK_EX | fcntl.LOCK_NB)
        except BlockingIOError as error:
            raise ValueError("another qualification supervisor owns the benchmark lease") from error
        return supervise_locked(args)


def supervise_locked(args):
    root = args.evidence_root.resolve()
    repo = args.source_repo.resolve()
    exe = args.arena_exe.resolve()
    if not exe.is_relative_to(root):
        raise ValueError("frozen arena executable must be under evidence root")
    if not os.access(exe, os.X_OK):
        raise ValueError("frozen arena executable is not executable")
    campaign = (args.campaign_dir or root / ("campaign-" + uuid.uuid4().hex)).resolve()
    if not campaign.is_relative_to(root) or campaign == root:
        raise ValueError("campaign directory must be below evidence root")
    root.mkdir(parents=True, exist_ok=True)
    campaign.mkdir()  # Existing campaigns must never be resumed or overwritten.
    status = {"schema": 1, "started_at": utc_now(), "state": "preflight",
              "pid": os.getpid(), "pgid": os.getpgid(0), "source_repo": str(repo),
              "arena_exe": str(exe), "preflight": str(args.preflight.resolve()),
              "campaign": str(campaign), "suites": [], "planned_suites": list(SUITES)}
    status["benchmark_environment"] = benchmark_environment(campaign)[1]
    write_json(campaign / "status.json", status)
    print(str(campaign), flush=True)
    try:
        marker = verify_preflight(args.preflight, repo, exe)
        write_json(campaign / "preflight.json", marker)
        for suite in SUITES:
            if stop_requested(campaign):
                status["state"] = "stopped"
                break
            status.update(state="waiting_for_idle", next_suite=suite)
            write_json(campaign / "status.json", status)
            if not wait_for_idle(repo, exe, campaign, args.idle_retry_seconds):
                status["state"] = "stopped"
                break
            # Environment may wait for hours. Check identity again immediately
            # before launch, after all intervening source edits could occur.
            verify_preflight(args.preflight, repo, exe)
            if stop_requested(campaign):
                status["state"] = "stopped"
                break
            status.update(state="running", active_suite=suite)
            write_json(campaign / "status.json", status)
            status["suites"].append(run_suite(exe, repo, suite, campaign))
            status.pop("active_suite", None)
            write_json(campaign / "status.json", status)
            verify_preflight(args.preflight, repo, exe)
        else:
            status["state"] = ("completed_with_failures" if any(
                suite["state"] != "completed" for suite in status["suites"]) else "completed")
    except Exception as error:
        status.update(state="supervisor_failed", error=str(error))
        print("ticket23: " + str(error), file=sys.stderr, flush=True)
    status["finished_at"] = utc_now()
    status.pop("next_suite", None)
    write_json(campaign / "status.json", status)
    return {"completed": 0, "completed_with_failures": 1}.get(status["state"], 2)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--evidence-root", type=Path, required=True)
    parser.add_argument("--arena-exe", type=Path, required=True)
    parser.add_argument("--source-repo", type=Path, required=True)
    parser.add_argument("--preflight", type=Path)
    parser.add_argument("--campaign-dir", type=Path)
    parser.add_argument("--idle-retry-seconds", type=float, default=60)
    parser.add_argument("--describe-inputs", action="store_true")
    args = parser.parse_args()
    if args.describe_inputs:
        print(json.dumps(input_manifest(args.source_repo, args.arena_exe), indent=2, sort_keys=True))
        return 0
    if args.preflight is None:
        parser.error("--preflight is required for measurements")
    if args.idle_retry_seconds <= 0:
        parser.error("--idle-retry-seconds must be positive")

    def request_stop(signum, frame):
        global STOP_REQUESTED
        STOP_REQUESTED = True
        print("ticket23: stop requested; active suite will finish", flush=True)

    signal.signal(signal.SIGTERM, request_stop)
    signal.signal(signal.SIGINT, request_stop)
    try:
        return supervise(args)
    except (OSError, ValueError) as error:
        print("ticket23: " + str(error), file=sys.stderr)
        return 2


if __name__ == "__main__":
    sys.exit(main())

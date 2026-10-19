#!/usr/bin/python3
"""Bound storage for each dedicated fastfft runner; never run as root.

Only fixed paths beneath the runner home are eligible. Job hooks run serially
with jobs, not on a timer that could delete an active build or cache upload.
"""

import os
from pathlib import Path
import pwd
import shutil
import signal
import subprocess
import sys
import time

RUNNER_HOMES = {
    "fastfft-runner": Path("/var/lib/fastfft-runner"),
    "fastfft-runner-2": Path("/var/lib/fastfft-runner-2"),
}
MIN_FREE = 8 * 1024**3
LOG_BUDGET = 100 * 1024**2
LOG_MAX_AGE = 7 * 86400


def directory(home, relative):
    """Reject symlinked ancestors rather than following them during cleanup."""
    path = home
    if path.is_symlink():
        raise RuntimeError(f"Refusing symlinked runner home: {path}")
    for part in Path(relative).parts:
        if part in ("..", "/"):
            raise ValueError(relative)
        path = path / part
        if path.is_symlink():
            raise RuntimeError(f"Refusing symlinked cleanup directory: {path}")
    return path


def empty(home, relative):
    path = directory(home, relative)
    if not path.exists():
        return
    for child in path.iterdir():
        if child.is_symlink() or not child.is_dir():
            child.unlink()
        else:
            shutil.rmtree(child)


def prune_logs(home, now):
    path = directory(home, "runner/_diag")
    if not path.exists():
        return
    # Leave the newest listener/worker log open. Runner logging rotates files;
    # deleting an open log would hide diagnostics without reclaiming its bytes.
    logs = sorted(
        (p for p in path.glob("*.log") if p.is_file() and not p.is_symlink()),
        key=lambda p: p.stat().st_mtime,
        reverse=True,
    )
    protected = set()
    for prefix in ("Runner_", "Worker_"):
        newest = next((p for p in logs if p.name.startswith(prefix)), None)
        if newest:
            protected.add(newest)
    total = sum(p.stat().st_size for p in logs)
    for log in reversed(logs):
        stat = log.stat()
        if log not in protected and (
            now - stat.st_mtime > LOG_MAX_AGE or total > LOG_BUDGET
        ):
            log.unlink()
            total -= stat.st_size


def prune_toolchains(home):
    path = directory(home, ".rustup/toolchains")
    if not path.exists():
        return
    toolchains = sorted(
        (p for p in path.iterdir() if p.is_dir() and not p.is_symlink()),
        key=lambda p: p.stat().st_mtime,
        reverse=True,
    )
    # Normally these are the repo pin, MSRV, and nightly/Miri. Obsolete pins
    # cannot accumulate forever. Rustup reinstalls an evicted version if needed.
    for toolchain in toolchains[3:]:
        subprocess.run(
            [str(home / ".cargo/bin/rustup"), "toolchain", "uninstall", toolchain.name],
            check=True,
            timeout=120,
            env={
                "HOME": str(home),
                "CARGO_HOME": str(home / ".cargo"),
                "RUSTUP_HOME": str(home / ".rustup"),
                "PATH": "/usr/bin:/bin",
            },
        )


def cleanup(home, phase):
    if phase not in ("startup", "job-start", "job-complete"):
        raise ValueError(phase)
    if phase == "startup":
        # The listener is not running yet: stale work, actions, temp files,
        # tool caches, and workspace tracking from interrupted jobs are safe.
        empty(home, "runner/_work")
        empty(home, "tmp")
        empty(home, "runner/_diag/pages")
        empty(home, "runner/_diag/blocks")
    else:
        # Keep the directory itself: GitHub has already selected it as cwd.
        empty(home, "runner/_work/fastfft/fastfft")
        if phase == "job-complete":
            # Post-actions, including remote cache saves, have already finished.
            # Never remove _actions at job-start: GitHub just downloaded them!
            empty(home, "runner/_work/_actions")
            empty(home, "runner/_work/_tool")
    if phase != "job-start":
        empty(home, ".cache")
        # Failed cargo-install builds can leave large temporary targets. Leave
        # unrelated runtime temp files (e.g. live .NET diagnostic sockets) alone.
        temp = directory(home, "tmp")
        if temp.exists():
            for path in temp.glob("cargo-install*"):
                if path.is_symlink() or not path.is_dir():
                    path.unlink()
                else:
                    shutil.rmtree(path)
    for relative in (".cargo/registry", ".cargo/git", ".rustup/downloads", ".rustup/tmp"):
        empty(home, relative)
    prune_toolchains(home)
    prune_logs(home, time.time())
    free = shutil.disk_usage(home).free
    print(f"fastfft runner cleanup ({phase}): {free / 1024**3:.1f} GiB free", flush=True)
    if phase != "job-complete" and free < MIN_FREE:
        raise RuntimeError("Less than 8 GiB free; refusing to start CI. Free disk space first.")


def runner_home():
    """Choose a fixed cleanup root from the effective UID, never the environment."""
    uid = os.geteuid()
    if uid == 0:
        raise RuntimeError("Run only as a dedicated fastfft runner account, never root")
    account = pwd.getpwuid(uid)
    path = RUNNER_HOMES.get(account.pw_name)
    if path is None:
        raise RuntimeError("Run only as a dedicated fastfft runner account, never root")
    if path.is_symlink() or path.stat().st_uid != uid:
        raise RuntimeError("Unexpected owner of runner home")
    return path


def main():
    task_home = runner_home()
    if not shutil.rmtree.avoids_symlink_attacks:
        raise RuntimeError("Cleanup requires symlink-safe rmtree support")
    # GitHub job hooks have no built-in timeout. Bound cleanup to five minutes.
    signal.alarm(300)
    os.chdir(task_home)
    cleanup(task_home, sys.argv[1])


if __name__ == "__main__":
    main()

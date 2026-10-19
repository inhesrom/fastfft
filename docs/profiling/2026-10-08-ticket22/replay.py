#!/usr/bin/env python3
"""Replay retained perf reports with the exact executable in a temporary symfs."""

import argparse
import gzip
import hashlib
import json
from pathlib import Path
import shutil
import subprocess
import tarfile
import tempfile


def extract_verified(bundle, member, destination, expected_hash):
    digest = hashlib.sha256()
    with bundle.extractfile(member) as compressed, gzip.GzipFile(
        fileobj=compressed, mode="rb"
    ) as incoming, destination.open("wb") as outgoing:
        while block := incoming.read(1024 * 1024):
            digest.update(block)
            outgoing.write(block)
    if digest.hexdigest() != expected_hash:
        raise ValueError(f"SHA-256 mismatch for {member}")


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument(
        "--evidence", type=Path,
        help="Path to the untracked evidence.tar.gz bundle; specify before library.",
    )
    parser.add_argument("library", choices=["fastfft", "rustfft"])
    parser.add_argument("command", choices=["report", "annotate", "script"])
    parser.add_argument("perf_args", nargs=argparse.REMAINDER)
    args = parser.parse_args()
    evidence = Path(__file__).resolve().parent
    manifest = json.loads((evidence / "manifest.json").read_text())
    archive = args.evidence or (
        evidence.parents[2] / manifest["bundle"]["local_path"]
    )
    if not archive.is_file():
        parser.error(
            f"raw evidence is not stored in Git; supply --evidence PATH (missing {archive})"
        )
    with archive.open("rb") as incoming:
        if hashlib.file_digest(incoming, "sha256").hexdigest() != manifest["bundle"]["sha256"]:
            raise ValueError(f"SHA-256 mismatch for {archive}")
    capture = manifest["captures"][args.library + "-record"]
    shared = manifest["shared_executable"]
    with tarfile.open(archive, "r:gz") as bundle, tempfile.TemporaryDirectory(
        prefix="fastfft-perf-replay-"
    ) as temporary:
        temporary = Path(temporary)
        symfs = temporary / "symfs"
        # Recreate the recorded absolute path below symfs, without touching it.
        executable = symfs / capture["recorded_executable"].lstrip("/")
        executable.parent.mkdir(parents=True)
        extract_verified(bundle, shared["file"], executable, shared["sha256"])
        data = temporary / "perf.data"
        samples = capture["files"]["perf.data"]
        extract_verified(
            bundle,
            (args.library + "-record/") + samples["archive"],
            data,
            samples["sha256"],
        )
        # System DSOs are deliberately absent: the retained FFT executable is
        # authoritative; use saved reports for the original system attribution.
        perf = shutil.which("perf")
        if perf is None:
            raise FileNotFoundError("perf is required for replay")
        raise SystemExit(subprocess.call([
            perf, args.command, "--symfs", str(symfs), "-i", str(data), *args.perf_args
        ]))


if __name__ == "__main__":
    main()

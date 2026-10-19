#!/usr/bin/env python3
"""Install pinned Intel SDE into job-temporary storage without privilege changes."""

import hashlib
import os
from pathlib import Path
import shutil
import subprocess
import tarfile
import tempfile

# Same archive and checksum as setup-sde@v6.0, without its sudo/chmod-777 steps.
SDE_DIRECTORY = "sde-external-10.13.1-2026-07-28-lin"
SDE_URL = f"https://github.com/petarpetrovt/setup-sde/releases/download/binaries/{SDE_DIRECTORY}.tar.xz"
SDE_SHA256 = "94e97d623fec54385686e1e7ba65ebc9941748c05ee451423948334892bf2b50"


def install_sde(runner_temp: Path, github_env: Path) -> Path:
    for path in (runner_temp, github_env):
        if not path.is_absolute() or "\n" in str(path) or "\r" in str(path):
            raise ValueError("SDE setup requires absolute, single-line runner paths")
    staging = Path(tempfile.mkdtemp(prefix="fastfft-sde-", dir=runner_temp))
    archive = staging / "download.tar.xz"
    try:
        subprocess.run(
            [
                "curl", "--proto", "=https", "--tlsv1.2", "--fail", "--show-error",
                "--location", "--retry", "3", SDE_URL, "--output", str(archive),
            ],
            check=True,
            timeout=300,
        )
        with archive.open("rb") as downloaded:
            digest = hashlib.file_digest(downloaded, "sha256").hexdigest()
        if digest != SDE_SHA256:
            raise RuntimeError(f"SDE SHA-256 mismatch: expected {SDE_SHA256}, got {digest}")
        # Python >=3.12 is supplied by both supported Ubuntu releases. The data
        # filter rejects path/link escapes and strips special permission bits.
        with tarfile.open(archive, "r:xz") as downloaded:
            downloaded.extractall(staging, filter="data")
        installed = staging / SDE_DIRECTORY
        executable = installed / "sde64"
        if not executable.is_file() or not os.access(executable, os.X_OK):
            raise RuntimeError("SDE archive did not provide an executable sde64")
        archive.unlink()
        with github_env.open("a") as environment:
            environment.write(f"SDE_PATH={installed}\n")
        # The runner owns RUNNER_TEMP and removes it after the job. Startup
        # cleanup also removes it following a crash; no persistent SDE cache.
        return installed
    except BaseException:
        shutil.rmtree(staging)
        raise


def main():
    if os.uname().sysname != "Linux" or os.uname().machine != "x86_64":
        raise RuntimeError("This pinned SDE installer requires Linux x86-64")
    installed = install_sde(Path(os.environ["RUNNER_TEMP"]), Path(os.environ["GITHUB_ENV"]))
    print(f"Installed Intel SDE 10.13.1 in {installed}")


if __name__ == "__main__":
    main()

#!/usr/bin/env python3
"""Offline tests for persistent Rust tools and the workflow's cache policy."""

from pathlib import Path
import os
import re
import subprocess
import tempfile
import unittest

ROOT = Path(__file__).resolve().parents[2]
SETUP = ROOT / "scripts/runner/ensure-rust.sh"


class CachePolicyTests(unittest.TestCase):
    def test_cache_does_not_clean_or_restore_persistent_binaries(self):
        workflow = (ROOT / ".github/workflows/ci.yml").read_text()
        # Intentionally require explicit settings at every cache step. Actionlint
        # separately validates YAML; this narrow policy check needs no YAML package.
        steps = re.findall(
            r"(?m)^      - uses: Swatinem/rust-cache@[^\n]+\n((?:        [^\n]*\n)*)",
            workflow,
        )
        self.assertTrue(steps, "Expected Rust cache steps")
        for index, step in enumerate(steps):
            with self.subTest(cache_step=index):
                self.assertRegex(step, r"(?m)^          cache-bin: false$")
                self.assertRegex(step, r"(?m)^          prefix-key: v1-rust-no-bin$")

    def test_each_local_job_checks_tools_before_using_them(self):
        workflow = (ROOT / ".github/workflows/ci.yml").read_text()
        jobs = re.split(r"(?m)^  [a-z][a-z0-9_-]*:\n", workflow.split("jobs:\n", 1)[1])[1:]
        local_jobs = [job for job in jobs if "runs-on:" in job]
        self.assertTrue(local_jobs)
        for index, job in enumerate(local_jobs):
            with self.subTest(job=index):
                setup = "      - run: bash scripts/runner/ensure-rust.sh\n"
                self.assertIn(setup, job)
                use = re.search(r"(?m)^      - (?:uses: Swatinem/rust-cache|run: (?:rustup|cargo) )", job)
                self.assertIsNotNone(use)
                self.assertLess(job.index(setup), use.start())


class RustSetupTests(unittest.TestCase):
    def setUp(self):
        self.temporary = tempfile.TemporaryDirectory()
        self.addCleanup(self.temporary.cleanup)
        self.root = Path(self.temporary.name)
        self.cargo = self.root / "cargo"
        self.bin = self.cargo / "bin"
        self.bin.mkdir(parents=True)
        self.tools = self.root / "tools"
        self.tools.mkdir()
        self.tmp = self.root / "tmp"
        self.tmp.mkdir()
        self.github_path = self.root / "github-path"
        self.env = {
            "HOME": str(self.root), "CARGO_HOME": str(self.cargo),
            "PATH": f"{self.tools}:/usr/bin:/bin", "TMPDIR": str(self.tmp),
            "GITHUB_PATH": str(self.github_path),
            "FIXTURE_ROOT": str(self.root),
        }
        self.executable(self.tools / "curl", '''#!/bin/sh
set -eu
printf 'download\n' >> "$FIXTURE_ROOT/downloads"
if [ "${FAIL_DOWNLOAD:-}" = yes ]; then exit 23; fi
while [ "$#" -gt 0 ]; do
  if [ "$1" = --output ]; then cp "$FIXTURE_ROOT/installer" "$2"; exit 0; fi
  shift
done
exit 1
''')
        self.executable(self.root / "installer", '''#!/bin/sh
set -eu
printf '%s\n' "$@" > "$FIXTURE_ROOT/install-args"
mkdir -p "$CARGO_HOME/bin"
for tool in rustup cargo rustc; do
  printf '#!/bin/sh\nexit 0\n' > "$CARGO_HOME/bin/$tool"
  chmod +x "$CARGO_HOME/bin/$tool"
done
''')

    def executable(self, path, content):
        path.write_text(content)
        path.chmod(0o755)

    def run_setup(self):
        return subprocess.run(
            ["/bin/bash", str(SETUP)], env=self.env,
            capture_output=True, text=True, timeout=10,
        )

    def test_existing_tools_are_preserved_without_download(self):
        for name in ("rustup", "cargo", "rustc"):
            self.executable(self.bin / name, "#!/bin/sh\n# original\nexit 0\n")
        before = {p.name: p.read_bytes() for p in self.bin.iterdir()}
        result = self.run_setup()
        self.assertEqual(result.returncode, 0, result.stderr)
        self.assertEqual(before, {p.name: p.read_bytes() for p in self.bin.iterdir()})
        self.assertFalse((self.root / "downloads").exists())
        self.assertEqual(self.github_path.read_text().strip(), str(self.bin))

    def test_missing_tools_are_repaired_without_installing_a_new_toolchain(self):
        result = self.run_setup()
        self.assertEqual(result.returncode, 0, result.stderr)
        for name in ("rustup", "cargo", "rustc"):
            self.assertTrue(os.access(self.bin / name, os.X_OK))
        args = (self.root / "install-args").read_text().splitlines()
        self.assertEqual(args[args.index("--default-toolchain") + 1], "none")
        self.assertIn("--no-modify-path", args)
        self.assertEqual(self.github_path.read_text().strip(), str(self.bin))
        self.assertEqual(list(self.tmp.iterdir()), [])

    def test_partial_installation_is_repaired(self):
        self.executable(self.bin / "rustup", "#!/bin/sh\nexit 0\n")
        result = self.run_setup()
        self.assertEqual(result.returncode, 0, result.stderr)
        self.assertTrue((self.bin / "cargo").exists())
        self.assertTrue((self.bin / "rustc").exists())
        self.assertTrue((self.root / "downloads").exists())

    def test_failed_download_fails_closed_and_removes_temporary_files(self):
        self.env["FAIL_DOWNLOAD"] = "yes"
        result = self.run_setup()
        self.assertNotEqual(result.returncode, 0)
        self.assertFalse(self.github_path.exists())
        self.assertEqual(list(self.bin.iterdir()), [])
        self.assertEqual(list(self.tmp.iterdir()), [])


if __name__ == "__main__":
    unittest.main()

#!/usr/bin/env python3
"""Offline SDE installer regressions; real SDE execution is checked separately."""

import hashlib
import io
from pathlib import Path
import shutil
import subprocess
import tarfile
import tempfile
import unittest
from unittest.mock import patch

ROOT = Path(__file__).resolve().parents[2]


class SdeWorkflowTests(unittest.TestCase):
    def test_installs_sde_without_a_privileged_action(self):
        workflow = (ROOT / ".github/workflows/ci.yml").read_text()
        self.assertFalse("uses: petarpetrovt/setup-sde@" in workflow, "SDE setup must not use the sudo-based action")
        self.assertTrue("run: python3 -I scripts/runner/setup_sde.py" in workflow, "Expected the unprivileged installer")
        unit = (ROOT / "scripts/runner/fastfft-runner.service").read_text()
        self.assertIn("NoNewPrivileges=true", unit)


class SdeInstallerTests(unittest.TestCase):
    def setUp(self):
        import setup_sde
        self.sde = setup_sde
        self.temporary = tempfile.TemporaryDirectory()
        self.addCleanup(self.temporary.cleanup)
        self.root = Path(self.temporary.name)
        self.runner_temp = self.root / "runner-temp"
        self.runner_temp.mkdir()
        self.environment = self.root / "github-env"
        self.environment.write_text("EXISTING=keep\n")
        self.archive = self.root / "fixture.tar.xz"
        self.make_archive()
        digest = hashlib.sha256(self.archive.read_bytes()).hexdigest()
        checksum = patch.object(self.sde, "SDE_SHA256", digest)
        checksum.start()
        self.addCleanup(checksum.stop)
        download = patch.object(self.sde.subprocess, "run", side_effect=self.download)
        self.download_mock = download.start()
        self.addCleanup(download.stop)

    def make_archive(self, executable=True, include_launcher=True, escaping_link=False):
        with tarfile.open(self.archive, "w:xz") as archive:
            name = "sde64" if include_launcher else "README"
            entry = tarfile.TarInfo(f"{self.sde.SDE_DIRECTORY}/{name}")
            entry.mode = 0o755 if executable else 0o644
            data = b"#!/bin/sh\nexit 0\n"
            entry.size = len(data)
            archive.addfile(entry, io.BytesIO(data))
            if escaping_link:
                entry = tarfile.TarInfo(f"{self.sde.SDE_DIRECTORY}/escape")
                entry.type = tarfile.SYMTYPE
                entry.linkname = "../../outside"
                archive.addfile(entry)

    def download(self, command, **kwargs):
        self.assertEqual(command[0], "curl")
        self.assertIn(self.sde.SDE_URL, command)
        self.assertTrue(kwargs["check"])
        self.assertEqual(kwargs["timeout"], 300)
        shutil.copyfile(self.archive, command[command.index("--output") + 1])
        return subprocess.CompletedProcess(command, 0)

    def install(self):
        return self.sde.install_sde(self.runner_temp, self.environment)

    def assert_clean_failure(self):
        self.assertEqual(list(self.runner_temp.iterdir()), [])
        self.assertEqual(self.environment.read_text(), "EXISTING=keep\n")

    def test_verifies_extracts_and_exports_only_a_runner_owned_path(self):
        installed = self.install()
        self.assertTrue(installed.is_relative_to(self.runner_temp))
        self.assertTrue((installed / "sde64").is_file())
        self.assertEqual(self.environment.read_text(), f"EXISTING=keep\nSDE_PATH={installed}\n")
        self.assertEqual(list(self.runner_temp.rglob("*.tar.xz")), [])
        self.download_mock.assert_called_once()

    def test_bad_checksum_is_rejected_before_extraction(self):
        with patch.object(self.sde, "SDE_SHA256", "0" * 64), patch.object(self.sde.tarfile, "open") as extract:
            with self.assertRaisesRegex(RuntimeError, "SHA-256 mismatch"):
                self.install()
            extract.assert_not_called()
        self.assert_clean_failure()

    def test_download_failure_removes_partial_installation(self):
        def fail(command, **kwargs):
            Path(command[command.index("--output") + 1]).write_bytes(b"partial")
            raise subprocess.CalledProcessError(22, command)
        self.download_mock.side_effect = fail
        with self.assertRaises(subprocess.CalledProcessError):
            self.install()
        self.assert_clean_failure()

    def test_missing_or_nonexecutable_launcher_is_rejected(self):
        for executable, include in ((True, False), (False, True)):
            with self.subTest(executable=executable, include=include):
                self.make_archive(executable=executable, include_launcher=include)
                digest = hashlib.sha256(self.archive.read_bytes()).hexdigest()
                with patch.object(self.sde, "SDE_SHA256", digest):
                    with self.assertRaisesRegex(RuntimeError, "executable sde64"):
                        self.install()
                self.assert_clean_failure()

    def test_archive_cannot_write_through_an_escaping_symlink(self):
        self.make_archive(escaping_link=True)
        digest = hashlib.sha256(self.archive.read_bytes()).hexdigest()
        with patch.object(self.sde, "SDE_SHA256", digest):
            with self.assertRaises(tarfile.TarError):
                self.install()
        self.assert_clean_failure()

    def test_relative_or_multiline_paths_fail_before_download(self):
        for temporary, environment in ((Path("relative"), self.environment),
                                        (self.runner_temp, Path("relative")),
                                        (self.root / "line\nbreak", self.environment)):
            with self.subTest(temporary=temporary, environment=environment):
                with self.assertRaises(ValueError):
                    self.sde.install_sde(temporary, environment)
        self.download_mock.assert_not_called()
        self.assert_clean_failure()


if __name__ == "__main__":
    unittest.main()

#!/usr/bin/env python3
"""Local, unprivileged tests: python3 -m unittest discover -s scripts/runner -v."""

import os
from pathlib import Path
import re
import shlex
import subprocess
import tempfile
import time
import unittest
from unittest.mock import patch

import cleanup


class CleanupTests(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.home = Path(self.temp.name) / "runner-home"
        self.home.mkdir()
        self.space = patch.object(cleanup.shutil, "disk_usage")
        self.mock_space = self.space.start()
        self.mock_space.return_value.free = 20 * 1024**3
        self.addCleanup(self.space.stop)

    def file(self, relative, content="data"):
        path = self.home / relative
        path.parent.mkdir(parents=True, exist_ok=True)
        path.write_text(content)
        return path

    def test_completion_cleans_builds_and_caches_but_preserves_credentials(self):
        paths = [
            "runner/_work/fastfft/fastfft/target/release/test",
            "runner/_work/_actions/checkout/index.js",
            "runner/_work/_tool/sde/sde64",
            ".cargo/registry/src/crate/lib.rs",
            ".cargo/git/db/repo/config",
            ".rustup/downloads/partial",
            ".rustup/tmp/partial",
        ]
        garbage = [self.file(p) for p in paths]
        credentials = self.file("runner/.credentials", "not a real credential")
        rustup = self.file(".cargo/bin/rustup")
        temp = self.file("runner/_work/_temp/current-hook.sh")
        cleanup.cleanup(self.home, "job-complete")
        self.assertTrue(all(not p.exists() for p in garbage))
        self.assertTrue((self.home / "runner/_work/fastfft/fastfft").is_dir())
        self.assertTrue(credentials.exists())
        self.assertTrue(rustup.exists())
        self.assertTrue(temp.exists())  # Runner still uses temp files to finalize.

    def test_start_preserves_actions_already_downloaded_for_this_job(self):
        action = self.file("runner/_work/_actions/checkout/index.js")
        tool = self.file("runner/_work/_tool/sde/sde64")
        stale = self.file("runner/_work/fastfft/fastfft/target/stale")
        cleanup.cleanup(self.home, "job-start")
        self.assertTrue(action.exists())
        self.assertTrue(tool.exists())
        self.assertFalse(stale.exists())

    def test_service_start_removes_interrupted_work_and_temp(self):
        stale = self.file("runner/_work/_temp/stale")
        tool = self.file("runner/_work/_tool/stale")
        temp = self.file("tmp/stale")
        config = self.file("runner/.runner")
        cleanup.cleanup(self.home, "startup")
        self.assertFalse(stale.exists())
        self.assertFalse(tool.exists())
        self.assertFalse(temp.exists())
        self.assertTrue(config.exists())

    def test_symlink_inside_workspace_does_not_touch_external_files(self):
        outside = Path(self.temp.name) / "personal"
        outside.mkdir()
        sentinel = outside / "keep"
        sentinel.write_text("keep")
        workspace = self.home / "runner/_work/fastfft/fastfft"
        workspace.mkdir(parents=True)
        (workspace / "link").symlink_to(outside, target_is_directory=True)
        cleanup.cleanup(self.home, "job-complete")
        self.assertEqual(sentinel.read_text(), "keep")
        self.assertFalse((workspace / "link").exists())

    def test_symlinked_cleanup_root_is_rejected(self):
        outside = Path(self.temp.name) / "personal"
        outside.mkdir()
        sentinel = outside / "keep"
        sentinel.write_text("keep")
        (self.home / "runner").symlink_to(outside, target_is_directory=True)
        with self.assertRaisesRegex(RuntimeError, "symlinked cleanup"):
            cleanup.cleanup(self.home, "startup")
        self.assertTrue(sentinel.exists())

    def test_low_space_refuses_start_but_completion_still_cleans(self):
        self.mock_space.return_value.free = cleanup.MIN_FREE - 1
        for phase in ("startup", "job-start"):
            with self.subTest(phase=phase), self.assertRaisesRegex(RuntimeError, "8 GiB"):
                cleanup.cleanup(self.home, phase)
        stale = self.file("runner/_work/fastfft/fastfft/target/stale")
        cleanup.cleanup(self.home, "job-complete")
        self.assertFalse(stale.exists())

    def test_logs_pruned_by_age_and_size_except_latest_listener_and_worker(self):
        now = time.time()
        logs = []
        for index, name in enumerate(("Runner_old.log", "Worker_old.log", "Runner_new.log", "Worker_new.log")):
            log = self.file(f"runner/_diag/{name}", "x" * 50)
            stamp = now - 100 + index
            os.utime(log, (stamp, stamp))
            logs.append(log)
        with patch.object(cleanup, "LOG_BUDGET", 100):
            cleanup.prune_logs(self.home, now)
        self.assertEqual([p.exists() for p in logs], [False, False, True, True])
        old = self.file("runner/_diag/Runner_ancient.log")
        os.utime(old, (now - 8 * 86400, now - 8 * 86400))
        cleanup.prune_logs(self.home, now)
        self.assertFalse(old.exists())

    def test_only_three_newest_toolchains_are_kept(self):
        names = [f"1.{n}.0-x86_64-unknown-linux-gnu" for n in range(90, 94)]
        for index, name in enumerate(names):
            path = self.home / ".rustup/toolchains" / name
            path.mkdir(parents=True)
            os.utime(path, (1000 + index, 1000 + index))
        with patch.object(cleanup.subprocess, "run") as run:
            cleanup.prune_toolchains(self.home)
        run.assert_called_once()
        self.assertEqual(run.call_args.args[0][-1], names[0])
        self.assertEqual(run.call_args.kwargs["env"]["HOME"], str(self.home))

    def test_invalid_phase_and_path_fail_closed(self):
        with self.assertRaises(ValueError):
            cleanup.cleanup(self.home, "unknown")
        for path in ("../personal", "/home/personal"):
            with self.subTest(path=path), self.assertRaises(ValueError):
                cleanup.directory(self.home, path)


class BootstrapTests(unittest.TestCase):
    def test_installer_parser_ignores_modules_in_working_directory(self):
        installer = (Path(__file__).parent.parent / "setup-self-hosted-runner.sh").read_text()
        # Exercise the actual parser command in the installer, including -I.
        match = re.search(r"toolchain=\$\((/usr/bin/python3 -I -c '[^']+')", installer)
        self.assertIsNotNone(match, "Root toolchain parser must use isolated Python")
        self.assertLess(installer.index("toolchain=$("), installer.index("as_runner sh"))
        with tempfile.TemporaryDirectory() as temporary:
            root = Path(temporary)
            marker = root / "unexpected-import"
            (root / "tomllib.py").write_text(
                f"from pathlib import Path\nPath({str(marker)!r}).touch()\n"
                "raise RuntimeError('Imported runner-controlled module')\n"
            )
            toolchain = root / "rust-toolchain.toml"
            toolchain.write_text('[toolchain]\nchannel = "1.95.0"\n')
            result = subprocess.run(
                [*shlex.split(match.group(1)), str(toolchain)],
                cwd=root,
                env={**os.environ, "PYTHONPATH": str(root)},
                capture_output=True,
                text=True,
                check=True,
            )
            self.assertEqual(result.stdout.strip(), "1.95.0")
            self.assertFalse(marker.exists())


if __name__ == "__main__":
    unittest.main()

#!/usr/bin/env python3
"""Exercise the service's syscall policy against real nested tar extraction.

Requires an accessible systemd user manager. CI's non-login runner account has
no user manager, so this host integration test skips there; run it locally when
changing the unit. It tests the syscall restrictions, not the full root service.
"""

import configparser
import os
from pathlib import Path
import shutil
import subprocess
import tarfile
import tempfile
import unittest


class SandboxTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        if not shutil.which("systemd-run") or not shutil.which("systemctl"):
            raise unittest.SkipTest("systemd user manager unavailable")
        result = subprocess.run(
            ["systemctl", "--user", "is-active", "default.target"],
            capture_output=True,
            timeout=10,
        )
        if result.returncode:
            raise unittest.SkipTest("systemd user manager unavailable")

    def test_service_syscall_policy_allows_nested_action_archive(self):
        unit = configparser.ConfigParser(interpolation=None, strict=False)
        unit.read(Path(__file__).with_name("fastfft-runner.service"))
        service = unit["Service"]
        with tempfile.TemporaryDirectory(prefix="fastfft-sandbox-test-") as temporary:
            root = Path(temporary)
            source = root / "checkout"
            source.mkdir()
            (source / "file").write_text("nested archive probe\n")
            archive = root / "action.tar.gz"
            with tarfile.open(archive, "w:gz") as tar:
                tar.add(source, arcname="checkout")
            output = root / "extracted"
            output.mkdir()
            result = subprocess.run(
                [
                    "systemd-run", "--user", "--quiet", "--wait", "--pipe", "--collect",
                    "-p", f"NoNewPrivileges={service['NoNewPrivileges']}",
                    "-p", f"RestrictSUIDSGID={service.get('RestrictSUIDSGID', 'no')}",
                    "-p", f"UMask={service['UMask']}",
                    shutil.which("tar"), "-xzf", str(archive), "-C", str(output),
                ],
                capture_output=True,
                text=True,
                timeout=30,
            )
            self.assertEqual(result.returncode, 0, result.stdout + result.stderr)
            self.assertEqual((output / "checkout/file").read_text(), "nested archive probe\n")

    def test_parallel_services_share_the_slice_budget(self):
        """Exercise the real systemd/cgroup hierarchy using small sleep jobs."""
        policy = Path(__file__).parent
        shared = configparser.ConfigParser(interpolation=None)
        shared.read(policy / "fastfft-ci.slice")
        slots = []
        for name in ("fastfft-runner.service", "fastfft-runner-2.service"):
            config = configparser.ConfigParser(interpolation=None, strict=False)
            config.read(policy / name)
            slots.append(config["Service"])
        pool = f"fastfftci{os.getpid()}.slice"
        services = [f"fastfftci{os.getpid()}slot{index}.service" for index in (1, 2)]

        def run(*arguments):
            result = subprocess.run(arguments, capture_output=True, text=True, timeout=15)
            self.assertEqual(result.returncode, 0, result.stdout + result.stderr)
            return result.stdout.strip()

        def cgroup(name):
            group = run("systemctl", "--user", "show", name, "--property=ControlGroup", "--value")
            self.assertTrue(group.startswith("/"), group)
            return Path("/sys/fs/cgroup") / group.lstrip("/")

        try:
            run("systemctl", "--user", "set-property", "--runtime", pool,
                *[f"{key}={shared['Slice'][key]}" for key in
                  ("CPUQuota", "MemoryHigh", "MemoryMax", "MemorySwapMax")])
            for name, service in zip(services, slots):
                run("systemd-run", "--user", "--quiet", "--collect", f"--unit={name}",
                    f"--slice={pool}",
                    *[argument for key in ("CPUQuota", "MemoryHigh", "MemoryMax", "MemorySwapMax")
                      for argument in ("-p", f"{key}={service[key]}")],
                    "/usr/bin/sleep", "30")
            parent = cgroup(pool)
            self.assertEqual((parent / "memory.max").read_text().strip(), str(8 * 1024**3))
            self.assertEqual((parent / "memory.high").read_text().strip(), str(8 * 1024**3))
            self.assertEqual((parent / "memory.swap.max").read_text().strip(), "0")
            quota, period = map(int, (parent / "cpu.max").read_text().split())
            self.assertEqual(quota, 8 * period)
            for name in services:
                child = cgroup(name)
                self.assertEqual(child.parent, parent)
                self.assertEqual((child / "memory.high").read_text(), (child / "memory.max").read_text())
                quota, period = map(int, (child / "cpu.max").read_text().split())
                self.assertEqual(quota, 4 * period)
                self.assertEqual(run("systemctl", "--user", "is-active", name), "active")
        finally:
            subprocess.run(["systemctl", "--user", "stop", *services, pool], capture_output=True, timeout=15)
            subprocess.run(["systemctl", "--user", "revert", pool], capture_output=True, timeout=15)


if __name__ == "__main__":
    unittest.main()

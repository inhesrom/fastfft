#!/usr/bin/env python3
"""Regressions for account-scoped cleanup and the shared concurrency budget."""

import concurrent.futures
import configparser
import os
from pathlib import Path
import re
from types import SimpleNamespace
import tempfile
import unittest
from unittest.mock import patch

import cleanup

ROOT = Path(__file__).resolve().parents[2]
POLICY = Path(__file__).parent


def unit(name):
    result = configparser.ConfigParser(interpolation=None, strict=False)
    result.read(POLICY / name)
    return result


class ParallelCleanupTests(unittest.TestCase):
    def setUp(self):
        self.temporary = tempfile.TemporaryDirectory()
        self.addCleanup(self.temporary.cleanup)
        self.root = Path(self.temporary.name)
        space = patch.object(cleanup.shutil, "disk_usage")
        self.addCleanup(space.stop)
        space.start().return_value.free = 20 * 1024**3
        self.slots = [self.root / "primary", self.root / "secondary"]
        for slot in self.slots:
            for relative in (
                "runner/.credentials", "runner/_work/fastfft/fastfft/target/test",
                ".cargo/registry/src/lib.rs", ".cargo/bin/rustup",
                ".rustup/toolchains/pinned/bin/rustc",
            ):
                path = slot / relative
                path.parent.mkdir(parents=True, exist_ok=True)
                path.write_text(relative)

    def test_cleaning_one_slot_preserves_the_other_active_job(self):
        active = {p: p.read_bytes() for p in self.slots[1].rglob("*") if p.is_file()}
        cleanup.cleanup(self.slots[0], "job-complete")
        self.assertFalse((self.slots[0] / ".cargo/registry/src/lib.rs").exists())
        self.assertEqual(active, {p: p.read_bytes() for p in self.slots[1].rglob("*") if p.is_file()})

    def test_concurrent_cleanup_preserves_both_registrations_and_toolchains(self):
        with concurrent.futures.ThreadPoolExecutor(max_workers=2) as pool:
            results = [pool.submit(cleanup.cleanup, slot, "startup") for slot in self.slots]
            for result in results:
                result.result(timeout=10)
        for slot in self.slots:
            self.assertTrue((slot / "runner/.credentials").is_file())
            self.assertTrue((slot / ".rustup/toolchains/pinned/bin/rustc").is_file())
            self.assertFalse((slot / "runner/_work/fastfft/fastfft/target/test").exists())

    def test_effective_account_selects_its_own_root_despite_environment(self):
        accounts = ("fastfft-runner", "fastfft-runner-2")
        mapping = dict(zip(accounts, self.slots))
        for account, slot in mapping.items():
            with self.subTest(account=account), \
                 patch.object(cleanup, "RUNNER_HOMES", mapping), \
                 patch.object(cleanup.pwd, "getpwuid", return_value=SimpleNamespace(pw_name=account)), \
                 patch.dict(os.environ, {"HOME": str(self.root / "outside")}):
                self.assertEqual(cleanup.runner_home(), slot)

    def test_root_unknown_accounts_and_symlinked_homes_are_rejected(self):
        with patch.object(cleanup.os, "geteuid", return_value=0):
            with self.assertRaisesRegex(RuntimeError, "never root"):
                cleanup.runner_home()
        with patch.object(cleanup.pwd, "getpwuid", return_value=SimpleNamespace(pw_name="developer")):
            with self.assertRaisesRegex(RuntimeError, "dedicated"):
                cleanup.runner_home()
        link = self.root / "link"
        link.symlink_to(self.slots[0], target_is_directory=True)
        with patch.object(cleanup, "RUNNER_HOMES", {"fastfft-runner": link}), \
             patch.object(cleanup.pwd, "getpwuid", return_value=SimpleNamespace(pw_name="fastfft-runner")):
            with self.assertRaisesRegex(RuntimeError, "owner"):
                cleanup.runner_home()


class ResourcePolicyTests(unittest.TestCase):
    def test_two_slots_share_eight_gib_and_have_four_cpu_quotas(self):
        shared = unit("fastfft-ci.slice")["Slice"]
        self.assertEqual(shared["MemoryMax"], "8G")
        self.assertEqual(shared["MemoryHigh"], shared["MemoryMax"])
        self.assertEqual(shared["MemorySwapMax"], "0")
        self.assertEqual(shared["CPUQuota"], "800%")
        primary = unit("fastfft-runner.service")["Service"]
        secondary = unit("fastfft-runner-2.service")["Service"]
        for service in (primary, secondary):
            self.assertEqual(service["Slice"], "fastfft-ci.slice")
            self.assertEqual(service["CPUQuota"], "400%")
            self.assertEqual(service["MemorySwapMax"], "0")
            self.assertEqual(service["MemoryHigh"], service["MemoryMax"])
            self.assertEqual(service["NoNewPrivileges"], "true")
            self.assertEqual(service["ProtectSystem"], "strict")
        self.assertNotEqual(primary["User"], secondary["User"])
        self.assertNotEqual(primary["ReadWritePaths"], secondary["ReadWritePaths"])
        self.assertEqual(secondary["MemoryMax"], "2G")

    def test_workflow_has_one_heavy_slot_and_no_duplicate_feature_push(self):
        workflow = (ROOT / ".github/workflows/ci.yml").read_text()
        self.assertIn("  push:\n    branches: [master]\n", workflow)
        self.assertIn("  pull_request:\n", workflow)
        jobs = workflow.split("jobs:\n", 1)[1]
        heavy = {"test", "tiers", "sde"}
        light = {"fmt", "clippy", "msrv", "wasm", "miri", "codegen", "docs", "deny"}
        for name in heavy | light:
            block = re.split(r"(?m)^  [a-z][a-z0-9_-]*:\n", jobs.split(f"  {name}:\n", 1)[1])[0]
            label = "fastfft" if name in heavy else "fastfft-light"
            # Self-hosted only in the private archive; hosted in the public repo.
            self.assertIn(
                "if: ${{ !github.event.repository.private "
                "|| github.event_name != 'pull_request' "
                "|| github.event.pull_request.head.repo.full_name == github.repository }}",
                block,
            )
            self.assertIn(
                "runs-on: ${{ github.event.repository.private && "
                f"fromJSON('[\"self-hosted\", \"linux\", \"x64\", \"{label}\"]') "
                "|| 'ubuntu-24.04' }}",
                block,
            )


if __name__ == "__main__":
    unittest.main()

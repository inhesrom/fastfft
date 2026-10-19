"""Focused supervisor tests; fake subprocesses never measure FFTs."""

import argparse
import importlib.util
import json
import os
from pathlib import Path
import subprocess
import tempfile
import unittest
from unittest import mock


SPEC = importlib.util.spec_from_file_location(
    "ticket23_runner", Path(__file__).with_name("run-ticket23-gates.py")
)
runner = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(runner)


class RunnerTests(unittest.TestCase):
    def setUp(self):
        self.temporary = tempfile.TemporaryDirectory()
        self.addCleanup(self.temporary.cleanup)
        self.root = Path(self.temporary.name)
        self.repo = self.root / "repo"
        self.repo.mkdir()
        (self.repo / "scripts").mkdir()
        (self.repo / "crates").mkdir()
        (self.repo / "crates/lib.rs").write_text("// frozen source\n")
        (self.repo / "scripts/audit.py").write_text("# frozen audit\n")
        (self.repo / "vendor/oxifft/src").mkdir(parents=True)
        (self.repo / "vendor/oxifft/src/lib.rs").write_text("// patched comparator\n")
        (self.repo / "Cargo.lock").write_text("# frozen lock\n")
        self.evidence = self.root / "evidence"
        self.evidence.mkdir()
        self.exe = self.evidence / "fastfft-arena"
        self.exe.write_text("#!/bin/sh\nprintf '%s\\n' fake-output\nprintf '%s\\n' fake-error >&2\nexit 7\n")
        self.exe.chmod(0o755)
        self.marker = self.evidence / "ready.json"
        self.write_marker()
        self.campaign = self.evidence / "supervised"
        self.guard = mock.patch.object(runner, "running_observation", return_value={
            "at": "test", "ok": True, "reasons": [], "cpu_snapshot": {},
        })
        self.guard.start()
        self.addCleanup(self.guard.stop)
        self.idle = mock.patch.object(runner, "sustained_idle", return_value=True)
        self.idle.start()
        self.addCleanup(self.idle.stop)
        runner.STOP_REQUESTED = False
        self.addCleanup(setattr, runner, "STOP_REQUESTED", False)

    def write_marker(self):
        marker = runner.input_manifest(self.repo, self.exe)
        marker["ready"] = True
        self.marker.write_text(json.dumps(marker))

    def args(self):
        return argparse.Namespace(evidence_root=self.evidence, arena_exe=self.exe,
                                  source_repo=self.repo, preflight=self.marker,
                                  campaign_dir=self.campaign, idle_retry_seconds=0.001)

    def fake_suite(self, exe, repo, suite, campaign):
        return {"suite": suite, "state": "failed" if suite == "smooth" else "completed",
                "exit_code": 7 if suite == "smooth" else 0}

    def test_exact_protocol_and_order(self):
        self.assertEqual(runner.SUITES, (
            "pow2", "smooth", "rough", "batch", "realworld", "datacheck", "sweep"))
        self.assertEqual(runner.suite_command(self.exe, "pow2", self.evidence / "run"), [
            str(self.exe), "run", "--suite", "pow2", "--profile", "full", "--libs",
            "fastfft,fastfft/avx2,rustfft,phastft/split,phastft/interleaved,tfhe-fft,oxifft,fftw",
            "--core", "2", "--procs", "3", "--max-n", "16777216", "--timeout", "600",
            "--control-every", "25", "--out", str(self.evidence / "run")])

    def test_preflight_requires_explicit_ready(self):
        marker = runner.input_manifest(self.repo, self.exe)
        self.marker.write_text(json.dumps(marker))
        with self.assertRaisesRegex(ValueError, "ready=true"):
            runner.verify_preflight(self.marker, self.repo, self.exe)

    def test_preflight_detects_source_executable_and_audit_changes(self):
        for path in (self.exe, self.repo / "crates/lib.rs", self.repo / "scripts/audit.py",
                     self.repo / "Cargo.lock", self.repo / "vendor/oxifft/src/lib.rs"):
            original = path.read_text()
            path.write_text(original + "# changed\n")
            with self.assertRaisesRegex(ValueError, "hash mismatch"):
                runner.verify_preflight(self.marker, self.repo, self.exe)
            path.write_text(original)

    def test_preflight_detects_added_and_deleted_sources(self):
        source = self.repo / "crates/new.rs"
        source.write_text("// added\n")
        with self.assertRaisesRegex(ValueError, "hash mismatch"):
            runner.verify_preflight(self.marker, self.repo, self.exe)
        source.unlink()
        (self.repo / "crates/lib.rs").unlink()
        with self.assertRaisesRegex(ValueError, "hash mismatch"):
            runner.verify_preflight(self.marker, self.repo, self.exe)

    def test_documentation_ticket_updates_do_not_change_source_manifest(self):
        (self.repo / ".scratch").mkdir()
        (self.repo / ".scratch/map.md").write_text("status update\n")
        runner.verify_preflight(self.marker, self.repo, self.exe)

    def test_wisdom_changes_are_ignored_and_kernel_lab_changes_are_frozen(self):
        wisdom = self.repo / "bench/arena/wisdom"
        wisdom.mkdir(parents=True)
        (wisdom / "fftw.wisdom").write_text("generated wisdom")
        runner.verify_preflight(self.marker, self.repo, self.exe)
        kernel_lab = self.repo / "experiments/kernel-lab/src"
        kernel_lab.mkdir(parents=True)
        (kernel_lab / "lib.rs").write_text("// additional build input")
        with self.assertRaisesRegex(ValueError, "hash mismatch"):
            runner.verify_preflight(self.marker, self.repo, self.exe)

    def test_launch_environment_removes_caps_and_keeps_fftw_and_wisdom_in_evidence(self):
        dirty = {"FASTFFT_ISA_CAP": "avx2", "FASTFFT_REQUIRE_ISA": "scalar",
                 "FASTFFT_TEST_QUICK": "1", "FASTFFT_MEASURE_DIAGNOSTIC": "1",
                 "CARGO_ENCODED_RUSTFLAGS": "unwanted", "FASTFFT_FFTW_DIR": "/fixed/fftw"}
        with mock.patch.dict(os.environ, dirty, clear=True):
            environment, recorded = runner.benchmark_environment(self.campaign)
        for key in dirty:
            if key != "FASTFFT_FFTW_DIR":
                self.assertNotIn(key, environment)
                self.assertIn(key, recorded["removed"])
        self.assertEqual(environment["FASTFFT_FFTW_DIR"], "/fixed/fftw")
        self.assertEqual(environment["FASTFFT_ARENA_WISDOM_DIR"], str(self.campaign / "wisdom"))
        self.assertEqual(recorded["effective"], environment)

    def test_bad_preflight_never_checks_environment_or_runs_suite(self):
        self.marker.write_text('{"schema":1,"ready":false}')
        with mock.patch.object(runner, "wait_for_idle") as idle, mock.patch.object(runner, "run_suite") as run:
            self.assertEqual(runner.supervise(self.args()), 2)
        idle.assert_not_called()
        run.assert_not_called()
        status = json.loads((self.campaign / "status.json").read_text())
        self.assertEqual(status["state"], "supervisor_failed")

    def test_failed_suite_does_not_skip_or_repeat_later_suites(self):
        with mock.patch.object(runner, "wait_for_idle", return_value=True) as idle, mock.patch.object(
            runner, "run_suite", side_effect=self.fake_suite
        ) as run:
            self.assertEqual(runner.supervise(self.args()), 1)
        self.assertEqual([call.args[2] for call in run.call_args_list], list(runner.SUITES))
        self.assertEqual(idle.call_count, 7)
        status = json.loads((self.campaign / "status.json").read_text())
        self.assertEqual(status["state"], "completed_with_failures")
        self.assertEqual(len(status["suites"]), 7)
        self.assertIn("finished_at", status)

    def test_existing_campaign_is_never_overwritten(self):
        self.campaign.mkdir()
        existing = self.campaign / "status.json"
        existing.write_text("preserve this failed attempt")
        with self.assertRaises(FileExistsError):
            runner.supervise(self.args())
        self.assertEqual(existing.read_text(), "preserve this failed attempt")

    def test_stop_after_active_suite_preserves_exit_status(self):
        def finish_and_stop(exe, repo, suite, campaign):
            Path(campaign, "STOP").touch()
            return self.fake_suite(exe, repo, suite, campaign)

        with mock.patch.object(runner, "wait_for_idle", return_value=True), mock.patch.object(
            runner, "run_suite", side_effect=finish_and_stop
        ) as run:
            self.assertEqual(runner.supervise(self.args()), 2)
        self.assertEqual(run.call_count, 1)
        status = json.loads((self.campaign / "status.json").read_text())
        self.assertEqual(status["state"], "stopped")
        self.assertEqual(status["suites"][0]["exit_code"], 0)

    def test_source_changed_during_idle_wait_blocks_launch(self):
        def change_source(*args):
            (self.repo / "crates/lib.rs").write_text("changed during idle wait")
            return True

        with mock.patch.object(runner, "wait_for_idle", side_effect=change_source), mock.patch.object(
            runner, "run_suite"
        ) as run:
            self.assertEqual(runner.supervise(self.args()), 2)
        run.assert_not_called()

    def test_idle_wait_logs_failures_and_waits_without_bypass(self):
        self.campaign.mkdir()
        attempts = [{"ok": False, "reason": "compiler"}, {"ok": False, "reason": "boost"}, {"ok": True}]
        with mock.patch.object(runner, "environment_check", side_effect=attempts):
            self.assertTrue(runner.wait_for_idle(self.repo, self.exe, self.campaign, 0.001))
        recorded = [json.loads(line) for line in (self.campaign / "environment-checks.jsonl").read_text().splitlines()]
        self.assertEqual(recorded, attempts)

    def test_stop_marker_interrupts_idle_wait(self):
        self.campaign.mkdir()
        (self.campaign / "STOP").touch()
        with mock.patch.object(runner, "environment_check") as check:
            self.assertFalse(runner.wait_for_idle(self.repo, self.exe, self.campaign, 60))
        check.assert_not_called()

    def test_environment_requires_success_ok_boost_and_no_competitor(self):
        for code, output, competitors, expected in (
            (0, "cpu2: boost=1 siblings=2,10\nbench-env: OK\n", [], True),
            (1, "boost=1\nbench-env: OK\n", [], False),
            (0, "boost=1\nbench-env: NOT READY\n", [], False),
            (0, "boost=0\nbench-env: OK\n", [], False),
            (0, "boost=n/a\nbench-env: OK\n", [], False),
            (0, "boost=1\nbench-env: OK\n", [{"argv": ["rustc"], "state": "R"}], False),
        ):
            with self.subTest(output=output, code=code, competitors=competitors), mock.patch.object(
                runner.subprocess, "run", return_value=subprocess.CompletedProcess([], code, output, "")
            ), mock.patch.object(runner, "processes", return_value=iter(competitors)):
                self.assertEqual(runner.environment_check(self.repo, self.exe)["ok"], expected)

    def test_process_detector_handles_versioned_compilers_and_other_benchmarks(self):
        for name in ("cargo", "rustc", "gcc-14", "x86_64-linux-gnu-g++-14", "clang++-20",
                     "fastfft-arena", "fastfft-arena-other-build", "fastfft-tune"):
            self.assertTrue(runner.is_competing_process({"argv": [name], "state": "R"}, self.exe), name)
        for process in ({"argv": ["bash", "-c", "rustc"], "state": "S"},
                        {"argv": ["rustc"], "state": "Z (zombie)"}):
            self.assertFalse(runner.is_competing_process(process, self.exe))

    def test_real_fake_subprocess_preserves_exit_logs_pid_and_fresh_attempts(self):
        self.campaign.mkdir()
        first = runner.run_suite(self.exe, self.repo, "pow2", self.campaign)
        second = runner.run_suite(self.exe, self.repo, "pow2", self.campaign)
        self.assertNotEqual(first["attempt"], second["attempt"])
        for result in (first, second):
            attempt = Path(result["attempt"])
            self.assertEqual(result["state"], "failed")
            self.assertEqual(result["exit_code"], 7)
            self.assertEqual(result["pid"], result["pgid"])
            self.assertTrue(result["pid"] > 0)
            self.assertEqual((attempt / "stdout.log").read_text(), "fake-output\n")
            self.assertEqual((attempt / "stderr.log").read_text(), "fake-error\n")
            self.assertTrue((attempt / "processes.jsonl").exists())
            self.assertEqual(json.loads((attempt / "status.json").read_text()), result)

    def test_compiler_appearing_during_suite_invalidates_attempt(self):
        self.campaign.mkdir()
        self.exe.write_text("#!/bin/sh\nsleep 1\nexit 0\n")
        # The preflight can be clean while a compiler starts after launch.
        with mock.patch.object(runner, "running_observation", return_value={
            "at": "test", "ok": False, "reasons": ["external compiler"],
        }, create=True):
            result = runner.run_suite(self.exe, self.repo, "pow2", self.campaign)
        self.assertEqual(result["state"], "invalid")
        self.assertIn("external compiler", result["invalid_reasons"])

    @unittest.skipUnless(Path("/proc/self/stat").exists(), "process snapshots read Linux /proc")
    def test_current_process_snapshot_contains_actual_affinity(self):
        snapshot = runner.process_snapshot(os.getpid())
        self.assertEqual(snapshot["pid"], os.getpid())
        self.assertEqual(snapshot["pgid"], os.getpgid(0))
        self.assertTrue(snapshot["cpus_allowed_list"])
        self.assertGreater(snapshot["start_ticks"], 0)

    def test_sustained_idle_requires_every_observation_to_pass(self):
        self.idle.stop()
        self.campaign.mkdir()
        with mock.patch.object(runner, 'IDLE_SECONDS', 2), mock.patch.object(
            runner.time, 'sleep'
        ), mock.patch.object(runner, 'running_observation', side_effect=[
            {'ok': True, 'cpu_snapshot': {}}, {'ok': False, 'reasons': ['busy']},
        ]) as observation:
            self.assertFalse(runner.sustained_idle(self.campaign))
            self.assertEqual(observation.call_count, 2)

    def test_source_change_during_last_suite_prevents_completion(self):
        def change_last(exe, repo, suite, campaign):
            if suite == runner.SUITES[-1]:
                (self.repo / 'crates/lib.rs').write_text('changed during sweep')
            return {'suite': suite, 'state': 'completed', 'exit_code': 0}

        with mock.patch.object(runner, 'wait_for_idle', return_value=True), mock.patch.object(
            runner, 'run_suite', side_effect=change_last
        ):
            self.assertEqual(runner.supervise(self.args()), 2)


if __name__ == "__main__":
    unittest.main()

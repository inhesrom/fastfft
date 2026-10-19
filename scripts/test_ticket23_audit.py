"""Regression tests for the independent ticket 23 evidence audit."""

import copy
import contextlib
import importlib.util
import io
import json
from pathlib import Path
import tempfile
import unittest


MODULE = importlib.util.spec_from_file_location(
    "ticket23_audit", Path(__file__).with_name("audit-ticket23-gates.py"))
audit = importlib.util.module_from_spec(MODULE)
MODULE.loader.exec_module(audit)


def result_row(cell, lib, factor=1):
    if not audit.supported(cell, lib):
        return dict(lib=lib, status="unsupported", reason="documented adapter limit")
    method = ("scenario-reference" if cell["scenario"] else
              "rustfft-f64+roundtrip" if cell["n"] > 1 << 20 else "dd")
    verify = dict(method=method, rel_l2_eps=1, max_eps=2, passed=True)
    if method == "rustfft-f64+roundtrip":
        verify["roundtrip_eps"] = 1
    return dict(lib=lib, status="ok", time=dict(best=100 * factor, p1=101 * factor,
                                                median=110 * factor, samples=100),
                verify=verify if cell["verify"] else None,
                describe=f"stockham avx2 split L={cell['n']} radices=[2]")


def record(cell, process=None):
    cell = copy.deepcopy(cell)
    if process is not None:
        offset = process % len(cell["libs"])
        cell["libs"] = cell["libs"][offset:] + cell["libs"][:offset]
    return dict(spec=cell, key=audit.cell_key(cell), cpu=2, wall_s=1,
                clock_ghz=[3, 3], procs=3 if process is None else 1,
                results=[result_row(cell, lib, .5 if lib.startswith("fastfft") else 1)
                         for lib in cell["libs"]])


def fixture(suite):
    env = dict(env_check=dict(ok=True, problems=[]), boost="1", pinned_cpu=2,
               build_profile="arena", rustflags=audit.FLAGS, target_cpu_native=False,
               rustc="rustc 1.95.0 (test)", fftw=dict(linked=True), governor="performance",
               energy_performance_preference="performance", ac_power=True,
               cpu=dict(model_name="AMD Ryzen 7 7840HS"),
               run=dict(suites=[suite], profile="full", libs=audit.LIBS, misalign=0,
                        precisions=["f32", "f64"], max_n=16777216, filter=None,
                        procs=3, process_order="rotating", official=True,
                        cells=audit.COUNTS[suite]))
    meta = dict(official=True, cells=audit.COUNTS[suite], aborted=None,
                child_failures=0, max_drift=0, drift_flag=False)
    expected = audit.schedule(suite)
    return dict(env=env, meta=meta, merged=[record(cell) for cell in expected],
                raw=[record(cell, process) for cell in expected for process in range(3)])


def write_fixture(directory, data):
    for name in ("env", "meta"):
        (directory / f"{name}.json").write_text(json.dumps(data[name]))
    for source, filename in (("merged", "results.jsonl"), ("raw", "trials.jsonl")):
        (directory / filename).write_text("".join(json.dumps(row) + "\n" for row in data[source]))


def fake_run(suite, fast_factor=.5):
    cells = {}
    for cell in audit.expected_specs(suite):
        rows = {lib: result_row(cell, lib, fast_factor if lib.startswith("fastfft") else 1)
                for lib in audit.LIBS}
        cells[audit.cell_key(cell)] = dict(spec=cell, rows=rows,
                                          valid=dict.fromkeys(audit.LIBS, True))
    return dict(valid=True, _cells=cells)


def row_for(record, lib):
    return next(row for row in record["results"] if row["lib"] == lib)


class CoverageTests(unittest.TestCase):
    def test_machine_readable_g9_is_recomputed_without_rounding(self):
        with tempfile.TemporaryDirectory() as tmp:
            path = Path(tmp) / 'g9.json'
            report = dict(schema=1, gate='G9', fastfft_seconds=2.00001,
                          rustfft_seconds=1.0, ratio=2.00001, passed=False,
                          threshold=2.0, profile='release', rustflags='', jobs=1,
                          incremental=False)
            path.write_text(json.dumps(report))
            self.assertEqual(audit.evaluate_g9(path)['status'], 'FAIL')
            report['passed'] = True
            path.write_text(json.dumps(report))
            self.assertEqual(audit.evaluate_g9(path)['status'], 'INCOMPLETE')
            report.update(fastfft_seconds=2.0, ratio=2.0)
            path.write_text(json.dumps(report))
            self.assertEqual(audit.evaluate_g9(path)['status'], 'PASS')

    def test_contaminated_supervision_rejects_otherwise_valid_results(self):
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            directory = root / 'arena'
            directory.mkdir()
            write_fixture(directory, fixture('realworld'))
            self.assertTrue(audit.audit_suite('realworld', directory)['valid'])
            (root / 'status.json').write_text(json.dumps({
                'state': 'invalid', 'exit_code': 0, 'monitor_required': True,
                'invalid_reasons': ['competing compiler'],
            }))
            (root / 'monitor.jsonl').write_text('{"ok":false}\n')
            result = audit.audit_suite('realworld', directory)
            self.assertFalse(result['valid'])
            self.assertTrue(any('supervisor' in reason for reason in result['invalid_reasons']))

    def test_required_monitor_cannot_be_missing(self):
        with tempfile.TemporaryDirectory() as tmp:
            root = Path(tmp)
            directory = root / 'arena'
            directory.mkdir()
            write_fixture(directory, fixture('realworld'))
            (root / 'status.json').write_text(json.dumps({
                'state': 'completed', 'exit_code': 0, 'monitor_required': True,
            }))
            self.assertFalse(audit.audit_suite('realworld', directory)['valid'])

    def test_exact_suite_and_control_totals_and_support(self):
        controls = []
        for suite, count in audit.COUNTS.items():
            cells = audit.expected_specs(suite)
            self.assertEqual(len(cells), count)
            self.assertEqual(len({audit.cell_key(cell) for cell in cells}), count)
            controls.append(len(audit.schedule(suite)) - count)
        self.assertEqual(sum(audit.COUNTS.values()), 8900)
        self.assertEqual(controls, [9, 15, 7, 3, 2, 2, 329])
        self.assertEqual((8900 + sum(controls)) * 3, 27801)
        fft = sum((audit.expected_specs(suite) for suite in ("pow2", "smooth", "rough")), [])
        counts = {lib: sum(audit.supported(cell, lib) and
                          (not lib.startswith("phastft") or cell["direction"] == "forward")
                          for cell in fft)
                  for lib in ("phastft/split", "phastft/interleaved", "tfhe-fft", "oxifft")}
        self.assertEqual(counts, {"phastft/split": 48, "phastft/interleaved": 48,
                                  "tfhe-fft": 20, "oxifft": 656})

    def audit_fixture(self, data, suite="realworld"):
        with tempfile.TemporaryDirectory() as tmp:
            directory = Path(tmp)
            write_fixture(directory, data)
            return audit.audit_suite(suite, directory)

    def test_complete_fixture_and_required_scenarios(self):
        run = self.audit_fixture(fixture("realworld"))
        self.assertTrue(run["valid"], run["invalid_reasons"])
        self.assertEqual(run["row_error_count"], 0)
        result = audit.performance({"realworld": run}, ["realworld"], floor=1.3)
        self.assertEqual(result["status"], "PASS")
        self.assertEqual(result["valid_verified_pairs"], 6)

    def test_missing_cell_or_trial_rejects_attempt(self):
        for source, index in (("merged", 2), ("raw", 4)):
            with self.subTest(source=source):
                data = fixture("realworld")
                data[source].pop(index)
                run = self.audit_fixture(data)
                self.assertFalse(run["valid"])
                self.assertEqual(audit.performance({"realworld": run}, ["realworld"])["status"],
                                 "INCOMPLETE")

    def test_hidden_failed_raw_fastfft_row_blocks_passing_claim(self):
        data = fixture("realworld")
        row_for(data["raw"][4], "fastfft")["status"] = "failed-verify"
        row_for(data["raw"][4], "fastfft")["verify"]["passed"] = False
        run = self.audit_fixture(data)
        self.assertTrue(run["valid"])
        self.assertGreater(run["row_error_count"], 0)
        result = audit.performance({"realworld": run}, ["realworld"], floor=1.3)
        self.assertEqual(result["status"], "INCOMPLETE")
        self.assertEqual(result["valid_verified_pairs"], 5)

    def test_unrelated_competitor_error_is_row_specific(self):
        data = fixture("realworld")
        row_for(data["raw"][4], "oxifft").update(status="error", reason="planner panicked")
        run = self.audit_fixture(data)
        self.assertTrue(run["valid"])
        self.assertEqual(audit.performance({"realworld": run}, ["realworld"], floor=1.3)["status"],
                         "PASS")
        self.assertEqual(audit.performance({"realworld": run}, ["realworld"],
                                          comparator="oxifft")["status"], "INCOMPLETE")

    def test_unexpected_unsupported_is_failure_not_adapter_exclusion(self):
        data = fixture("realworld")
        row_for(data["raw"][4], "oxifft").update(status="unsupported")
        run = self.audit_fixture(data)
        self.assertGreater(run["row_error_count"], 0)
        self.assertEqual(run["counts"].get("trial1:oxifft:adapter_excluded", 0), 0)

    def test_supported_row_missing_is_not_ignored(self):
        data = fixture("realworld")
        data["raw"][4]["results"] = [row for row in data["raw"][4]["results"]
                                     if row["lib"] != "fastfft"]
        run = self.audit_fixture(data)
        self.assertFalse(run["valid"])
        self.assertTrue(any("missing row" in error for error in run["row_error_examples"]))

    def test_missing_unsupported_or_competitor_row_rejects_protocol(self):
        for lib in ("tfhe-fft", "oxifft"):
            data = fixture("realworld")
            data["raw"][4]["results"] = [row for row in data["raw"][4]["results"]
                                         if row["lib"] != lib]
            run = self.audit_fixture(data)
            self.assertFalse(run["valid"])

    def test_failed_control_invalidates_dependent_suite(self):
        data = fixture("realworld")
        row_for(data["raw"][0], "rustfft").update(status="error", reason="planner panicked")
        run = self.audit_fixture(data)
        self.assertFalse(run["valid"])
        self.assertTrue(any("invalid control" in error for error in run["invalid_reasons"]))

    def test_control_winner_mismatch_invalidates_dependent_suite(self):
        data = fixture("realworld")
        row_for(data["merged"][0], "rustfft")["time"]["median"] = 109
        run = self.audit_fixture(data)
        self.assertFalse(run["valid"])
        self.assertTrue(any("lowest-p1" in error and "invalid control" in error
                            for error in run["invalid_reasons"]))
        self.assertEqual(audit.performance({"realworld": run}, ["realworld"])["status"],
                         "INCOMPLETE")

    def test_initial_clock_spread_is_excluded_from_driver_meta_metric(self):
        data = fixture("realworld")
        data["merged"][0]["clock_ghz"] = [2.95, 3]
        data["raw"][0]["clock_ghz"] = [2.95, 3]
        # Driver's first control establishes baseline=3 and returns 0 drift.
        data["meta"]["max_drift"] = 0
        run = self.audit_fixture(data)
        self.assertTrue(run["valid"], run["invalid_reasons"])
        self.assertGreater(run["metadata"]["recomputed_drift"], 0)
        self.assertEqual(run["metadata"]["driver_recomputed_drift"], 0)

    def test_pow2_oxifft_planner_error_does_not_invalidate_g1(self):
        data = fixture("pow2")
        row_for(data["raw"][4], "oxifft").update(status="error", reason="planner panicked")
        run = self.audit_fixture(data, "pow2")
        self.assertTrue(run["valid"], run["invalid_reasons"])
        self.assertEqual(audit.performance({"pow2": run}, ["pow2"], geo=1.5, floor=.95)["status"],
                         "PASS")

    def test_winner_retains_both_metrics_from_lowest_p1_trial(self):
        data = fixture("realworld")
        # trial0 wins p1; a manually selected better median from trial1 is invalid.
        row_for(data["raw"][4], "fastfft")["time"] = dict(best=49, p1=52, median=53, samples=100)
        row_for(data["merged"][1], "fastfft")["time"]["median"] = 53
        run = self.audit_fixture(data)
        self.assertTrue(any("lowest-p1" in error for error in run["row_error_examples"]))
        self.assertFalse(run["_cells"][data["merged"][1]["key"]]["valid"]["fastfft"])

    def test_cpu_and_rotations_and_protocol_and_aborted(self):
        for mutation in (lambda data: data["raw"][4].update(cpu=3),
                         lambda data: data["raw"][4]["spec"].update(libs=audit.LIBS),
                         lambda data: data["env"].update(rustflags="-C target-cpu=native"),
                         lambda data: data["env"]["run"].update(profile="quick"),
                         lambda data: data["env"].update(boost="0"),
                         lambda data: data["meta"].update(aborted="drift")):
            data = fixture("realworld")
            mutation(data)
            self.assertFalse(self.audit_fixture(data)["valid"])

    def test_drift_exactly_three_percent_rejected_even_without_flag(self):
        data = fixture("realworld")
        data["meta"]["max_drift"] = .03
        data["raw"][4]["clock_ghz"] = [3, 3.09]
        run = self.audit_fixture(data)
        self.assertFalse(run["valid"])


class PerformanceTests(unittest.TestCase):
    def test_both_metrics_required(self):
        run = fake_run("pow2")
        for retained in run["_cells"].values():
            retained["rows"]["fastfft"]["time"]["median"] = 200
        result = audit.performance({"pow2": run}, ["pow2"], geo=1.5, floor=.95)
        self.assertEqual(result["status"], "FAIL")
        self.assertGreater(result["metrics"]["best"]["geomean"], 1.5)
        self.assertLess(result["metrics"]["median"]["geomean"], 1.5)

    def test_absent_competitor_and_smooth_and_scenario_and_batch(self):
        runs = {suite: fake_run(suite) for suite in ("pow2", "smooth", "rough", "realworld", "batch")}
        for retained in runs["pow2"]["_cells"].values():
            retained["valid"]["phastft/split"] = False
        self.assertEqual(audit.performance(runs, ["pow2", "smooth", "rough"],
                                          comparator="phastft/split", forward_only=True)["status"],
                         "INCOMPLETE")
        del runs["smooth"]
        self.assertEqual(audit.performance(runs, ["smooth"], lib="fastfft/avx2", geo=1.1)["status"],
                         "INCOMPLETE")
        runs["realworld"]["_cells"].pop(next(iter(runs["realworld"]["_cells"])))
        self.assertEqual(audit.performance(runs, ["realworld"], floor=1.3)["status"], "INCOMPLETE")
        del runs["batch"]
        self.assertEqual(audit.performance(runs, ["batch"], geo=1.5)["status"], "INCOMPLETE")

    def test_g4_floor_must_hold_jointly_on_same_cells(self):
        run = fake_run("pow2")
        # Each metric separately has >90% good cells, but joint fraction is <90%.
        selected = [retained for retained in run["_cells"].values()
                    if retained["spec"]["direction"] == "forward"
                    and audit.supported(retained["spec"], "phastft/split")]
        for retained in selected[:3]:
            retained["rows"]["fastfft"]["time"]["best"] = 200
        for retained in selected[3:6]:
            retained["rows"]["fastfft"]["time"]["median"] = 220
        result = audit.performance({"pow2": run}, ["pow2"], comparator="phastft/split",
                                   geo=1.1, floor=.97, fraction=.9, forward_only=True)
        self.assertEqual(result["status"], "FAIL")
        self.assertEqual(result["joint_fraction_at_floor"], 42 / 48)

    def test_small_n_p1_is_separate_from_release_best_median(self):
        run = fake_run("pow2")
        result = audit.performance({"pow2": run}, ["pow2"], small_n=True)
        self.assertEqual(result["valid_verified_pairs"], 64)
        self.assertEqual(set(result["metrics"]), {"p1"})


class AccuracyTests(unittest.TestCase):
    def test_fast_bound_requires_known_actual_engine_and_13_smooth(self):
        self.assertEqual(audit.accuracy_bound(256, "small avx2 n=256"), 18)
        self.assertEqual(audit.accuracy_bound(13 * 11, "stockham avx2 split L=143"),
                         2 * audit.math.log2(143) + 2)
        self.assertIsNone(audit.accuracy_bound(17, "stockham avx2 split L=17"))
        self.assertIsNone(audit.accuracy_bound(256, None))
        self.assertIsNone(audit.accuracy_bound(256, "unknown"))

    def test_actual_bluestein_length_including_2n_minus_2_and_nested_description(self):
        self.assertEqual(audit.accuracy_bound(17, "bluestein avx2 n=17 m=32 inner=[small avx2 n=32]"),
                         48)
        self.assertIsNone(audit.accuracy_bound(17, "bluestein avx2 n=17 inner=[small m=32]"))
        self.assertIsNone(audit.accuracy_bound(17, "bluestein avx2 n=17 m=16"))
        self.assertIsNone(audit.accuracy_bound(17, "stockham avx2 inner=[bluestein m=32]"))

    def test_strict_violation_in_hidden_raw_trial_and_both_fastfft_rows(self):
        cell = audit.spec("pow2", "f32", 256)
        rows = {lib: result_row(cell, lib) for lib in audit.LIBS}
        rows["fastfft/avx2"]["verify"]["rel_l2_eps"] = 3
        checker = audit.Accuracy()
        checker.inspect(cell, rows, "trial2")
        self.assertEqual(len(checker.failures), 1)  # Strict relative: 3 > 2.5.
        self.assertIn("fastfft/avx2", checker.failures[0]["cell"])

    def test_relative_violation_fails_without_an_established_engine_bound(self):
        cell = audit.spec("pow2", "f32", 256)
        rows = {lib: result_row(cell, lib) for lib in audit.LIBS}
        rows["fastfft"]["describe"] = "unknown engine"
        rows["fastfft"]["verify"]["rel_l2_eps"] = 3
        checker = audit.Accuracy()
        checker.inspect(cell, rows, "trial0")
        self.assertEqual(len(checker.failures), 1)  # Strict relative: 3 > 2.5.
        self.assertIsNone(checker.failures[0]["bound_eps"])
        self.assertEqual(checker.gaps["unestablished_actual_engine_bound"], 1)
        merged = audit.Accuracy()
        merged.inspect(cell, rows, "merged")
        self.assertEqual(merged.failures, [])
        self.assertEqual(len(merged.proxy_mismatches), 1)

    def test_merged_relative_mismatch_is_not_same_trial_verdict(self):
        cell = audit.spec("pow2", "f32", 256)
        rows = {lib: result_row(cell, lib) for lib in audit.LIBS}
        rows["fastfft"]["verify"]["rel_l2_eps"] = 3
        checker = audit.Accuracy()
        checker.inspect(cell, rows, "merged")
        self.assertEqual(checker.failures, [])
        self.assertEqual(len(checker.proxy_mismatches), 1)

    def test_proxy_methods_and_missing_verification_create_gaps(self):
        checker = audit.Accuracy()
        big = audit.spec("pow2", "f64", 1 << 21)
        rows = {lib: result_row(big, lib) for lib in audit.LIBS}
        rows["rustfft"]["verify"]["rel_l2_eps"] = 0
        rows["fastfft"]["verify"]["rel_l2_eps"] = 2
        checker.inspect(big, rows, "trial0")
        scenario = audit.spec("realworld", "f32", 1024, scenario="spectrogram")
        checker.inspect(scenario, {lib: result_row(scenario, lib) for lib in audit.LIBS}, "trial0")
        cell = audit.spec("batch", "f32", 32, batch=32768)
        checker.inspect(cell, {lib: result_row(cell, lib) for lib in audit.LIBS}, "trial0")
        rows["fastfft"]["verify"] = None
        checker.inspect(big, rows, "trial1")
        self.assertEqual(checker.failures, [])
        self.assertGreater(checker.gaps["above_dd_reference_and_true_relative_error"], 0)
        self.assertGreater(checker.gaps["scenario_pipeline_not_complex_fft_dd"], 0)
        self.assertGreater(checker.gaps["batch_unsampled_chunks"], 0)
        self.assertGreater(checker.gaps["absent_or_nonfinite_error_pair"], 0)
        self.assertEqual(checker.counts["trial0_sampled_batch_chunks"], 6)
        self.assertGreater(len(checker.proxy_mismatches), 0)

    def test_no_evidence_never_passes_accuracy_or_any_perf_gate(self):
        summary = audit.evaluate({})
        self.assertEqual(summary["gates"]["G7"]["status"], "INCOMPLETE")
        self.assertEqual(summary["gates"]["G8"]["status"], "OPEN")
        for gate in ("G1", "G2", "G3", "G4", "G5", "G6", "G9"):
            self.assertEqual(summary["gates"][gate]["status"], "INCOMPLETE")

    def test_rejected_attempt_violation_is_diagnostic_not_official_accuracy_failure(self):
        # An inadmissible attempt cannot establish a release verdict, even when
        # its numerical observation deserves investigation and preservation.
        run = dict(valid=False, observed_cells=0, directory="/rejected-sweep",
                   invalid_reasons=["clock drift >= 3%"],
                   accuracy=dict(strict_violation_count=1, gaps={}))
        gate = audit.evaluate({"sweep": run})["gates"]["G7"]
        self.assertEqual(gate["status"], "INCOMPLETE")
        self.assertEqual(gate["strict_violation_count"], 0)
        self.assertEqual(gate["rejected_attempt_diagnostic_strict_violation_count"], 1)


class G9AndArtifactTests(unittest.TestCase):
    def test_g9_ratio_independent_recompute_rounding_boundary_and_inconsistency(self):
        with tempfile.TemporaryDirectory() as tmp:
            path = Path(tmp) / "g9.txt"
            for fast, rust, printed, expected in [(15, 10, 1.5, "PASS"),
                                                  (21, 10, 2.1, "FAIL"),
                                                  (20, 10, 2, "INCOMPLETE"),
                                                  (15, 10, 1.2, "INCOMPLETE")]:
                path.write_text(f"clean release build: fastfft {fast:.1f}s, rustfft {rust:.1f}s, "
                                f"ratio {printed:.2f}× (G9 requires <= 2.0×)\n")
                self.assertEqual(audit.evaluate_g9(path)["status"], expected)

    def test_cli_preserves_existing_artifacts_and_writes_parseable_summary(self):
        with tempfile.TemporaryDirectory() as tmp:
            out, report = Path(tmp) / "summary.json", Path(tmp) / "audit.md"
            with contextlib.redirect_stdout(io.StringIO()):
                self.assertEqual(audit.main(["--out", str(out), "--report", str(report)]), 0)
            self.assertEqual(json.loads(out.read_text())["expected_noncontrol_cells"], 8900)
            self.assertIn("G8 | OPEN", report.read_text())
            with self.assertRaises(SystemExit), contextlib.redirect_stderr(io.StringIO()):
                audit.main(["--out", str(out), "--report", str(report)])

    def test_nan_raw_clock_and_error_write_structured_rejected_summary(self):
        with tempfile.TemporaryDirectory() as tmp:
            base = Path(tmp)
            directory = base / "raw"
            directory.mkdir()
            data = fixture("realworld")
            data["raw"][4]["clock_ghz"] = [float("nan"), 3]
            row_for(data["raw"][4], "fastfft")["verify"]["rel_l2_eps"] = float("nan")
            data["meta"]["max_drift"] = float("nan")
            write_fixture(directory, data)
            out, report = base / "summary.json", base / "report.md"
            with contextlib.redirect_stdout(io.StringIO()):
                self.assertEqual(audit.main(["--run", f"realworld={directory}", "--out", str(out),
                                             "--report", str(report)]), 0)
            summary = json.loads(out.read_text())
            self.assertEqual(summary["gates"]["G6"]["status"], "INCOMPLETE")
            self.assertIsNone(summary["suites"]["realworld"]["metadata"]["max_drift"])
            self.assertTrue(summary["rejected_attempts"])


if __name__ == "__main__":
    unittest.main()

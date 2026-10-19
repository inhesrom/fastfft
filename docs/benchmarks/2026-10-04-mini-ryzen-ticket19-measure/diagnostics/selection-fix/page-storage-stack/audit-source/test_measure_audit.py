"""The acceptance audit must fail closed on incomplete benchmark evidence."""

import importlib.util
from collections import Counter
from copy import deepcopy
import json
from pathlib import Path
import tempfile
import unittest

spec = importlib.util.spec_from_file_location("check_measure", Path(__file__).with_name("check-measure.py"))
module = importlib.util.module_from_spec(spec)
spec.loader.exec_module(module)


class MeasureAudit(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.path = Path(self.temp.name)
        self.meta = {"cells": 1, "official": True, "drift_flag": False, "child_failures": 0, "aborted": None}
        self.env = {"run": {"cells": 1}}
        self.row = {"key": "test", "spec": {"n": 64, "batch": 1, "suite": "pow2"},
                    "results": [{"lib": name, "status": "ok", "verify": {"passed": True},
                                 "describe": "small avx2", "time": {"best": 10, "p1": 11, "median": 12}}
                                for name in ["fastfft", "fastfft/measure"]]}

    def audit(self):
        (self.path / "results.jsonl").write_text(json.dumps(self.row) + "\n")
        (self.path / "meta.json").write_text(json.dumps(self.meta))
        (self.path / "env.json").write_text(json.dumps(self.env))
        return module.audit(self.path)

    def test_matching_plans_do_not_excuse_slow_timings(self):
        self.row["results"][1]["time"]["p1"] = 11.33
        result = self.audit()
        self.assertEqual(len(result["failures"]), 1)
        self.assertTrue(result["failures"][0]["same_plan"])

    def test_exact_threshold_passes(self):
        self.row["results"][1]["time"]["p1"] = 11 * 1.02
        result = self.audit()
        self.assertFalse(result["failures"])
        self.assertFalse(result["problems"])

    def test_large_cells_use_headline_best(self):
        self.row["spec"]["n"] = 4096
        self.row["results"][1]["time"]["best"] = 10.3
        self.assertEqual(len(self.audit()["failures"]), 1)

    def test_missing_cell_is_not_a_pass(self):
        self.meta["cells"] = 2
        self.assertTrue(self.audit()["problems"])

    def test_failed_verification_is_not_a_pass(self):
        self.row["results"][1]["verify"]["passed"] = False
        self.assertTrue(self.audit()["problems"])

    def test_drift_is_not_a_pass(self):
        self.meta["drift_flag"] = True
        self.assertTrue(self.audit()["problems"])

    def test_missing_child_process_is_not_a_pass(self):
        self.env["run"]["procs"] = 2
        self.assertTrue(self.audit()["problems"])

    def test_best_process_cannot_hide_failed_verification_in_another_trial(self):
        failed = json.loads(json.dumps(self.row))
        failed["results"][1]["verify"]["passed"] = False
        (self.path / "trials.jsonl").write_text(json.dumps(failed) + "\n")
        self.assertTrue(self.audit()["problems"])

    def test_best_process_cannot_hide_slow_promotion_in_another_trial(self):
        failed = json.loads(json.dumps(self.row))
        failed["results"][1]["describe"] = "different selected plan"
        failed["results"][1]["time"]["p1"] = 11 * 1.046
        (self.path / "trials.jsonl").write_text(json.dumps(failed) + "\n")
        result = self.audit()
        self.assertFalse(result["failures"])
        self.assertTrue(any("slower promotion" in p for p in result["problems"]))

    def test_improving_raw_promotion_passes(self):
        improved = json.loads(json.dumps(self.row))
        improved["results"][1]["describe"] = "different selected plan"
        improved["results"][1]["time"]["p1"] = 10
        (self.path / "trials.jsonl").write_text(json.dumps(improved) + "\n")
        self.assertFalse(self.audit()["problems"])

    def test_rotating_runs_require_all_raw_trials(self):
        self.env["run"].update(procs=2, process_order="rotating")
        self.row["procs"] = 2
        self.assertTrue(self.audit()["problems"])
        (self.path / "trials.jsonl").write_text((json.dumps(self.row) + "\n") * 2)
        self.assertFalse(self.audit()["problems"])

    def test_parent_workspace_is_retained_in_every_trial(self):
        self.env["run"].update(procs=2, process_order="rotating",
                               caller_scratch="parent-planned-shared-aligned")
        self.row["procs"] = 2
        self.row["spec"]["caller_scratch"] = 40
        (self.path / "trials.jsonl").write_text((json.dumps(self.row) + "\n") * 2)
        self.assertFalse(self.audit()["problems"])
        different = json.loads(json.dumps(self.row))
        del different["spec"]["caller_scratch"]
        (self.path / "trials.jsonl").write_text(json.dumps(self.row) + "\n" + json.dumps(different) + "\n")
        self.assertTrue(any("workspace reservation differs" in p for p in self.audit()["problems"]))

    def test_parent_workspace_cannot_be_missing_from_merged_spec(self):
        self.env["run"]["caller_scratch"] = "parent-planned-shared-aligned"
        self.assertTrue(any("missing parent workspace" in p for p in self.audit()["problems"]))


class FullMeasureAudit(unittest.TestCase):
    """Corrupt otherwise complete evidence without changing its suite counts."""

    def setUp(self):
        self.env = {
            "build_profile": "arena", "target_cpu_native": False,
            "rustflags": "-C llvm-args=-align-all-functions=6", "pinned_cpu": 4,
            "env_check": {"ok": True, "problems": []},
            "run": {"cells": 710, "procs": 8, "profile": "full", "process_order": "rotating",
                    "libs": ["fastfft", "fastfft/measure"], "precisions": ["f32", "f64"],
                    "suites": ["pow2", "smooth", "rough", "batch", "realworld", "datacheck"],
                    "misalign": 0, "filter": None, "official": True,
                    "caller_scratch": "parent-planned-shared-aligned",
                    "planning_samples": "secondary-after-execution-retained-runners"},
        }
        self.meta = {"cells": 710, "official": True, "drift_flag": False,
                     "child_failures": 0, "aborted": None, "max_drift": 0.002}
        self.rows, self.trials = [], []
        manifest = module.full_manifest()
        control_key = "control:f32:fwd:ip:n4096"
        control = {"suite": "control", "precision": "f32", "direction": "forward",
                   "placement": "inplace", "n": 4096, "batch": 1, "misalign": 0,
                   "scenario": None, "profile": "full", "data": "zero", "verify": False,
                   "seed": 1, "control": True}
        specs = [(control_key, control)]
        for index, entry in enumerate(manifest.items()):
            if index and index % 25 == 0:
                specs.append((control_key, control))
            specs.append(entry)
        specs.append((control_key, control))
        for key, spec in specs:
            for repetition in range(8):
                libs = ["fastfft"] if spec["control"] else ["fastfft", "fastfft/measure"]
                if repetition % 2:
                    libs.reverse()
                raw = {
                    "key": key, "spec": {**spec, "libs": libs, "caller_scratch": 0},
                    "cpu": 4, "procs": 1, "wall_s": repetition + 1,
                    "clock_ghz": [5.0, 5.01],
                    "results": [{"lib": lib, "status": "ok", "describe": "small avx2",
                                 "verify": {"passed": True}, "plan_ns": 100,
                                 "time": {"best": 10, "p1": 11, "median": 12}} for lib in libs],
                }
                self.trials.append(raw)
            merged = deepcopy(self.trials[-8])
            merged.update(procs=8, wall_s=36)
            self.rows.append(merged)

    def issues(self):
        return module.full_evidence_problems(self.env, self.meta, self.rows, self.trials)

    def test_valid_complete_fixture_and_manifest_boundaries(self):
        self.assertFalse(self.issues())
        manifest = module.full_manifest()
        self.assertEqual(Counter(spec["suite"] for spec in manifest.values()),
                         {"pow2": 192, "smooth": 328, "rough": 136,
                          "batch": 32, "realworld": 6, "datacheck": 16})
        self.assertEqual(manifest["pow2:f64:inv:oop:n16777216"]["seed"], 0x5eed0000 + 16777216)
        self.assertEqual(manifest["batch:f32:fwd:ip:n8:b131072"]["batch"], 131072)
        self.assertEqual(manifest["realworld:f32:fwd:ip:n4096:OverlapSave"]["scenario"], "overlap-save")
        self.assertEqual(manifest["datacheck:f64:fwd:imm:n1048576:random"]["data"], "random")

    def test_same_count_substitution_and_key_spec_mismatch_fail(self):
        self.rows[1]["key"] = "pow2:f32:fwd:ip:n3"
        self.assertTrue(any("manifest" in issue for issue in self.issues()))
        self.rows[1]["key"] = "pow2:f32:fwd:ip:n2"
        self.rows[1]["spec"]["n"] = 3
        self.assertTrue(any("key/spec mismatch" in issue for issue in self.issues()))

    def test_wrong_metadata_fails_even_with_complete_results(self):
        for field, value in (("procs", 1), ("profile", "quick"), ("process_order", "fixed"),
                             ("planning_samples", "before-execution")):
            with self.subTest(field=field):
                original = self.env["run"][field]
                self.env["run"][field] = value
                self.assertTrue(any(f"full protocol {field}" in issue for issue in self.issues()))
                self.env["run"][field] = original
        self.env["target_cpu_native"] = True
        self.assertTrue(any("target_cpu_native" in issue for issue in self.issues()))
        self.env["env_check"]["ok"] = False
        self.assertTrue(any("environment check" in issue for issue in self.issues()))

    def test_duplicate_raw_records_and_missing_repetitions_fail(self):
        self.trials[10] = deepcopy(self.trials[8])  # Same construction order; still four/four.
        self.assertTrue(any("duplicate complete raw" in issue for issue in self.issues()))
        self.trials.pop()
        self.assertTrue(any("repetition coverage" in issue for issue in self.issues()))

    def test_raw_order_and_cpu_must_match_protocol(self):
        self.trials[9]["spec"]["libs"].reverse()
        self.trials[9]["cpu"] = 12
        self.trials[9]["procs"] = 8
        issues = self.issues()
        self.assertTrue(any("construction order" in issue for issue in issues))
        self.assertTrue(any("CPU differs" in issue for issue in issues))
        self.assertTrue(any("raw process count" in issue for issue in issues))

    def test_invalid_same_plan_timing_and_missing_description_fail(self):
        self.trials[8]["results"][0]["time"]["median"] = float("nan")
        self.trials[9]["results"][0]["describe"] = None
        self.assertTrue(any("invalid full timing" in issue for issue in self.issues()))
        self.assertTrue(any("missing full plan description" in issue for issue in self.issues()))

    def test_initial_control_excursion_cannot_hide_behind_clean_meta(self):
        self.trials[0]["clock_ghz"][0] = 4.8
        self.rows[0]["clock_ghz"][0] = 4.8
        self.assertTrue(any("raw clock drift" in issue for issue in self.issues()))

    def test_decreasing_raw_clock_pair_is_valid(self):
        self.trials[8]["clock_ghz"] = [5.01, 5.0]
        self.assertFalse(self.issues())

    def test_missing_or_failed_controls_fail(self):
        self.trials[0]["clock_ghz"] = None
        self.rows[0]["results"][0]["status"] = "error"
        issues = self.issues()
        self.assertTrue(any("clock pair" in issue for issue in issues))
        self.assertTrue(any("invalid full timing/status" in issue for issue in issues))
        self.rows.pop(0)
        self.assertTrue(any("initial clock control" in issue for issue in self.issues()))

    def test_first_p1_tie_winner_is_required(self):
        # Both raw p1s tie, but the later raw row has a different best.
        self.trials[10]["results"][0]["time"]["best"] = 9
        self.rows[1]["results"][0]["time"] = deepcopy(self.trials[10]["results"][0]["time"])
        self.assertTrue(any("lowest-p1 raw winner" in issue for issue in self.issues()))

    def test_planning_statistic_is_independent_of_timing_winner(self):
        self.trials[8]["results"][0]["plan_ns"] = 10
        winner = self.trials[10]["results"][0]
        winner["time"]["p1"] = 10.9
        self.rows[1]["results"][0]["time"] = deepcopy(winner["time"])
        self.rows[1]["results"][0]["plan_ns"] = 10
        self.assertFalse(self.issues())


if __name__ == "__main__":
    unittest.main()

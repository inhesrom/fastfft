"""The diagnostic inspector must not invent deadline samples or hide mismatches."""
from copy import deepcopy
import importlib.util
from pathlib import Path
import unittest

spec = importlib.util.spec_from_file_location('replay', Path(__file__).with_name('inspect-replay.py'))
replay = importlib.util.module_from_spec(spec)
spec.loader.exec_module(replay)


class ReplayAudit(unittest.TestCase):
    def setUp(self):
        values = [10., 11., 12., 13., 14., 15., 16.]
        member = {'whole_buffer_ns': values, 'round_ends': list(range(1, 8)),
                  'calls': 3, 'stats': replay.stats(values, 32768)}
        pair = {'left': 'arena-estimate', 'right': 'internal-baseline',
                'identical_arc': False, 'contexts': [
                    {'loop': loop, 'members': [deepcopy(member), deepcopy(member)]}
                    for loop in ('arena-runner', 'selector-slices')]}
        self.data = {
            'replay': {'clock_ghz': [5., 5.], 'pair_rotation': 0,
                       'context_rotation': 0, 'member_rotation': 0},
            'role_map': [0, 1, 1],
            'storage': [{'plan_ptr': 0x10000}, {'plan_ptr': 0x20000}],
            # Legacy one-route capture: both calibrations completed, then
            # only the first baseline timing finished before the deadline.
            'selector': {'overflow': False, 'chosen_index': 0, 'len': 32,
                'direction': 'Forward', 'elapsed_ns': '1000010', 'budget_ns': '1000000',
                'configurations': [
                    {'index': 0, 'outcome': 'Incumbent', 'score': None},
                    {'index': 1, 'outcome': 'Incomplete', 'score': None}],
                'workloads': [{
                'candidate_index': 1, 'offset_index': 0, 'placement': 'InPlace', 'len': 32,
                'plan_ptrs': [0x20000, 0x50000], 'input_ptr': 0x30000,
                'output_ptr': 0x30000, 'scratch_ptr': 0, 'scratch_lens': [0, 0],
                'valid_mask': 1, 'samples_ns': [[10., None]]+[[None, None] for _ in range(6)],
                'outcome': 'Deadline', 'calls': [4, 8], 'best_ns': [0, 0], 'median_ns': [0, 0]}]},
            'comparisons': [deepcopy(pair) for _ in range(3)]}

    def check_data(self):
        problems = []
        replay.validate_replay(self.data, 'batch-test', 0, 32768, problems)
        return problems

    def test_partial_deadline_and_batch_units_are_valid(self):
        self.assertEqual(self.check_data(), [])

    def test_zero_is_not_an_unobserved_sample(self):
        self.data['selector']['workloads'][0]['samples_ns'][1][0] = 0
        self.assertTrue(self.check_data())

    def test_contexts_cannot_use_different_call_counts(self):
        self.data['comparisons'][0]['contexts'][1]['members'][0]['calls'] = 4
        self.assertTrue(self.check_data())

    def test_batch_denominator_and_summary_must_match(self):
        self.data['comparisons'][0]['contexts'][0]['members'][0]['stats']['best'] = 10.
        self.assertTrue(self.check_data())

    def test_replay_clock_drift_is_a_failure(self):
        self.data['replay']['clock_ghz'][1] = 4.
        self.assertTrue(self.check_data())

    def test_canonical_guard_covers_every_placement_and_representative_length(self):
        selector = deepcopy(self.data['selector'])
        selector.update(caller_routes=2, caller_route_coverage='canonical-offset', chosen_index=1)
        selector['configurations'][1].update(outcome='Qualified', score=.9)
        template = selector['workloads'][0]
        records = []
        for offset in range(3):
            for length in (32, 1 << 20):
                for placement in ('InPlace', 'OutOfPlace', 'Immutable'):
                    for route in range(2 if offset == 0 else 1):
                        record = deepcopy(template)
                        record.update(offset_index=offset, len=length, placement=placement,
                            caller_route=route, valid_mask=16383, outcome='Passed',
                            samples_ns=[[100., 90.] for _ in range(7)],
                            best_ns=[100., 90.], median_ns=[100., 90.])
                        records.append(record)
        selector['workloads'] = records
        groups = replay.candidate_workload_groups(selector, 1)
        self.assertEqual(len(groups), 18)
        self.assertEqual(sum(map(len, groups)), 24)
        # Secondary coverage is mandatory for the representative batch length.
        del selector['workloads'][7]
        with self.assertRaisesRegex(ValueError, 'caller-route workload prefix'):
            replay.candidate_workload_groups(selector, 1)

    def test_unknown_or_contradictory_coverage_is_rejected(self):
        selector = deepcopy(self.data['selector'])
        selector['caller_route_coverage'] = 'canonical-offset'
        with self.assertRaisesRegex(ValueError, 'caller-route coverage'):
            replay.candidate_workload_groups(selector, 1)
        selector.update(caller_routes=2, caller_route_coverage='sometimes-helper')
        with self.assertRaisesRegex(ValueError, 'caller-route coverage'):
            replay.candidate_workload_groups(selector, 1)


if __name__ == '__main__':
    unittest.main()

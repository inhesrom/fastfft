"""Malformed planning controls must fail; valid diagnostics never accept FFTs."""

from copy import deepcopy
import importlib.util
from pathlib import Path
import unittest


def load(name, filename):
    spec = importlib.util.spec_from_file_location(name, Path(__file__).with_name(filename))
    module = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(module)
    return module


audit = load('planning_audit', 'inspect-planning.py')
fixture = load('planning_context_fixture', 'test_context_audit.py')


def row(process):
    result = fixture.row(process, promoted=process % 3 == 0)
    d = result['measure_diagnostic']
    selector, context = d['selector'], d['context_control']
    promoted = selector['chosen_index'] == 1
    selector.update(elapsed_ns='5000000', budget_ns='1000000000', overflow=False)
    for index, config in enumerate(selector['configurations']):
        config['score'] = .75 if index == 1 and promoted else None
    for workload in selector['workloads']:
        workload['samples_ns'] = [[40., 30. if promoted else 42.] for _ in range(7)]
        workload['best_ns'] = workload['samples_ns'][0][:]
        workload['median_ns'] = workload['samples_ns'][0][:]
        workload['calls'] = [1024, 2048]
    phases = []
    for phase in audit.PHASES:
        paths = []
        for path in audit.PATHS:
            members = fixture.pair(audit.CALLS)['members']
            for member, calls in zip(members, audit.CALLS):
                member['calls'] = calls
            paths.append(dict(path=path, members=members))
        phases.append(dict(phase=phase, paths=paths))
    allocations = [[0x30000, 1024, 1024], [0x60000, 1024, 1024], [0x70000, 512, 512]]
    d['planning_control'] = dict(acceptance=False, process_index=process,
        plan_ptrs=context['plan_ptrs'][:], calls=audit.CALLS[:],
        original_chosen_index=selector['chosen_index'], original_selection_elapsed_ns='5000000',
        phases=phases, path_start=process % 2, member_start=(process // 2) % 2,
        exposure_member_start=(process // 4) % 2, exposure_path=0,
        exposure_elapsed_ns='100100000',
        exposure_batch_ns=[[40 * 1024, (35 + i) * 2048] for i in range(11)],
        exposure_truncated=False, addresses_before=deepcopy(context['addresses'][0]),
        addresses_after=deepcopy(context['addresses'][0]),
        allocations_before=allocations, allocations_after=deepcopy(allocations),
        storage_before=deepcopy(context['plan_regions']), storage_after=deepcopy(context['plan_regions']),
        perturbation='post-decision diagnostic with caller/code/stack perturbation')
    result['results'] = [dict(lib='fastfft/measure', plan_ns=1_000_000_000)]
    return result


class PlanningAudit(unittest.TestCase):
    def setUp(self):
        self.rows = [row(i) for i in range(8)]
        self.prior = dict(acceptance=False, cells=1, trials=8, problems=[], replay_problems=[])
        self.d = self.rows[0]['measure_diagnostic']
        self.p = self.d['planning_control']

    def bad(self, fragment):
        report = audit.audit_rows(self.rows, self.prior)
        self.assertFalse(report['acceptance'])
        self.assertTrue(any(fragment in problem for problem in report['problems']), report)

    def test_valid_promoted_and_retained_controls_are_diagnostic_only(self):
        report = audit.audit_rows(self.rows, self.prior)
        self.assertEqual(report['problems'], [])
        self.assertFalse(report['acceptance'])
        self.assertEqual(len(report['records']), 8)
        windows = report['records'][0]['exposure_windows']
        self.assertEqual(windows['first_seven'][1]['median'], 38.)
        self.assertEqual(windows['last_seven'][1]['median'], 42.)

    def test_dual_route_qualified_and_rejected_evidence_passes(self):
        self.rows = [fixture.dual_routes(result) for result in self.rows]
        self.assertEqual(audit.audit_rows(self.rows, self.prior)['problems'], [])

    def test_dual_score_is_worst_of_both_routes(self):
        self.rows = [fixture.dual_routes(result) for result in self.rows]
        selector = self.rows[0]['measure_diagnostic']['selector']
        for record in selector['workloads'][1::2]:
            record['samples_ns'] = [[40., 32.] for _ in range(7)]
            record['best_ns'] = record['median_ns'] = [40., 32.]
        self.bad('qualification score')
        selector['configurations'][1]['score'] = .8
        self.assertEqual(audit.audit_rows(self.rows, self.prior)['problems'], [])

    def test_rejecting_first_route_is_not_hidden_by_passed_last_route(self):
        self.rows = [fixture.dual_routes(result) for result in self.rows]
        record = self.rows[1]['measure_diagnostic']['selector']['workloads'][1]
        record.update(outcome='Passed', samples_ns=[[40., 30.] for _ in range(7)],
                      best_ns=[40., 30.], median_ns=[40., 30.])
        self.assertEqual(audit.audit_rows(self.rows, self.prior)['problems'], [])

    def partial_selector(self):
        result = fixture.dual_routes(row(0))
        selector = result['measure_diagnostic']['selector']
        config = deepcopy(selector['configurations'][1])
        config.update(index=2, outcome='Incomplete', score=None)
        selector['configurations'].append(config)
        records = deepcopy(selector['workloads'][:4])
        for record in records:
            record['candidate_index'] = 2
            record['plan_ptrs'][1] = 0x90000
        # At workload ordinal 1, route 1 completes before route 0 in round 6.
        records[2].update(outcome='Deadline', valid_mask=4095,
                          samples_ns=[[40., 30.] for _ in range(6)] + [[None, None]],
                          best_ns=[0., 0.], median_ns=[0., 0.])
        selector['workloads'].extend(records)
        return selector

    def test_incomplete_first_route_with_passed_last_route_is_valid(self):
        selector = self.partial_selector()
        self.assertEqual(audit.original_choice(selector), 1)

    def test_incomplete_first_route_with_rejected_last_route_is_valid(self):
        selector = self.partial_selector()
        selector['workloads'][-1].update(outcome='Rejected', samples_ns=[[40., 42.] for _ in range(7)],
                                         best_ns=[40., 42.], median_ns=[40., 42.])
        self.assertEqual(audit.original_choice(selector), 1)

    def test_partial_masks_must_follow_actual_route_interleaving(self):
        selector = self.partial_selector()
        selector['workloads'][-2]['valid_mask'] = 0
        with self.assertRaisesRegex(ValueError, 'chronological interleaving'):
            audit.original_choice(selector)

    def test_deadline_cannot_be_relabelled_as_complete_rejection(self):
        selector = self.partial_selector()
        selector['configurations'][2]['outcome'] = 'Rejected'
        with self.assertRaisesRegex(ValueError, 'candidate outcome disagrees'):
            audit.original_choice(selector)

    def test_missing_control_is_not_success(self):
        self.d['planning_control'] = None
        self.bad('missing or acceptance-labeled')

    def test_failed_context_or_replay_is_not_success(self):
        self.prior['replay_problems'] = ['clock failure']
        self.bad('required context/replay')
        self.prior['replay_problems'] = []
        self.prior['problems'] = ['missing location']
        self.bad('required context/replay')

    def test_duplicate_process_is_rejected(self):
        self.rows[7] = deepcopy(self.rows[6])
        self.bad('fixed-eight')

    def test_wrong_opt_in_flags_are_rejected(self):
        self.rows[0]['spec']['diagnostics']['measure_context'] = False
        self.bad('diagnostic flags')

    def test_frozen_chosen_cannot_be_substituted(self):
        self.p['original_chosen_index'] = 0
        self.bad('frozen chosen')

    def test_nominee_cannot_be_replaced_with_actual_retained_baseline(self):
        self.p['plan_ptrs'][1] = self.p['plan_ptrs'][0]
        self.bad('identities changed')

    def test_wrong_original_score_is_rejected(self):
        self.d['selector']['configurations'][1]['score'] = .8
        self.bad('qualification score')

    def test_strict_score_tie_keeps_first_qualified_candidate(self):
        selector = deepcopy(self.d['selector'])
        candidate = deepcopy(selector['configurations'][1])
        candidate['index'] = 2
        selector['configurations'].append(candidate)
        extra = deepcopy(selector['workloads'])
        for workload in extra:
            workload['candidate_index'] = 2
        selector['workloads'].extend(extra)
        self.assertEqual(audit.original_choice(selector), 1)
        selector['chosen_index'] = 2
        with self.assertRaisesRegex(ValueError, 'chosen index disagrees'):
            audit.original_choice(selector)

    def test_rejected_candidate_cannot_gain_score(self):
        self.rows[1]['measure_diagnostic']['selector']['configurations'][1]['score'] = .9
        self.bad('nonqualified candidate')

    def test_original_samples_must_support_qualification(self):
        w = self.d['selector']['workloads'][0]
        w['samples_ns'] = [[40., 39.] for _ in range(7)]
        w['best_ns'] = w['median_ns'] = [40., 39.]
        self.bad('does not qualify')

    def test_original_elapsed_must_match_frozen_trace(self):
        self.p['original_selection_elapsed_ns'] = '105000000'
        self.bad('elapsed changed')

    def test_original_elapsed_rejects_float_string(self):
        self.p['original_selection_elapsed_ns'] = '5000000.0'
        self.bad('integer-nanosecond')

    def test_paired_phases_and_paths_are_required(self):
        self.p['phases'].reverse()
        self.bad('planning phases')
        self.setUp()
        self.p['phases'][0]['paths'].pop()
        self.bad('direct/helper paths')

    def test_old_original_bridge_protocol_cannot_pass_as_crossover(self):
        for phase in self.p['phases']:
            for path, old_name in zip(phase['paths'], ['buffers_sample', 'slice_bridge']):
                path['path'] = old_name
        self.bad('direct/helper paths')

    def test_exposure_route_is_explicit_and_direct(self):
        self.p['exposure_path'] = 1
        self.bad('exposure must use direct route')
        self.setUp()
        self.p['exposure_path'] = False
        self.bad('exposure must use direct route')

    def test_allocation_snapshot_change_is_rejected(self):
        self.p['allocations_after'][1][2] += 1
        self.bad('selector allocations changed')

    def test_upstream_correctness_failure_blocks_crossover_report(self):
        self.prior['problems'] = ['original FFT verification failed']
        self.bad('required context/replay inspection failed')

    def test_rotations_are_independent_fixed_bits(self):
        for field in ('path_start', 'member_start', 'exposure_member_start'):
            with self.subTest(field=field):
                self.setUp()
                self.p[field] = 1
                self.bad('planning rotation')

    def test_consistent_wrong_denominator_fails_against_duration(self):
        member = self.p['phases'][0]['paths'][0]['members'][0]
        member['ns_per_call'] = [x / 96 for x in member['ns_per_call']]
        member['stats'] = audit.context.computed_stats(member['ns_per_call'])
        self.bad('actual timed batch duration')

    def test_seven_samples_and_integer_durations_required(self):
        member = self.p['phases'][0]['paths'][0]['members'][0]
        member['timed_batch_ns'][0] = 1.5
        self.bad('raw batch durations')
        self.setUp()
        self.p['phases'][0]['paths'][0]['members'][0]['ns_per_call'].pop()
        self.bad('context samples')

    def test_role_and_count_are_not_interchangeable(self):
        member = self.p['phases'][0]['paths'][0]['members'][1]
        member['role'] = 'chosen-measure'
        self.bad('role labels')
        self.setUp()
        self.p['phases'][0]['paths'][0]['members'][1]['calls'] = 1024
        self.bad('member calls')

    def test_exposure_must_be_complete_positive_integer_pairs(self):
        self.p['exposure_truncated'] = True
        self.bad('exposure truncated')
        self.setUp()
        self.p['exposure_elapsed_ns'] = '99999999'
        self.bad('shorter than 100ms')
        self.setUp()
        self.p['exposure_batch_ns'][0][0] = True
        self.bad('chronological planning exposure')

    def test_exposure_cannot_exceed_wall_duration(self):
        self.p['exposure_batch_ns'][0][0] = 100_100_000
        self.bad('exceed exposure wall')

    def test_control_cost_must_fit_actual_planning_time(self):
        self.rows[0]['results'][0]['plan_ns'] = 100_100_000
        self.bad('exceeds actual planning time')

    def test_address_and_storage_preservation_required(self):
        self.p['addresses_after'][0][0] += 64
        self.bad('caller addresses')
        self.setUp()
        self.p['storage_after'][1][1]['ptr'] += 64
        self.bad('plan storage changed')

    def test_retained_allocation_must_back_original_pointer_and_offsets(self):
        for snapshots in ('allocations_before', 'allocations_after'):
            self.p[snapshots][0][0] += 64
        self.bad('not in retained allocation')
        self.setUp()
        for snapshots in ('allocations_before', 'allocations_after'):
            self.p[snapshots][0][1] = 96
        self.bad('cannot contain declared offsets')


if __name__ == '__main__':
    unittest.main()

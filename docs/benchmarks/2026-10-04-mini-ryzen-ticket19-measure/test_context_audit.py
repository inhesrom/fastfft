"""Malformed context evidence must fail without changing acceptance metrics."""

from copy import deepcopy
import importlib.util
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch

_spec = importlib.util.spec_from_file_location('context_audit', Path(__file__).with_name('inspect-context.py'))
audit = importlib.util.module_from_spec(_spec)
_spec.loader.exec_module(audit)


def pair(calls, values=None):
    values = values or [[30. + i for i in range(7)], [35. + i for i in range(7)]]
    members = []
    for role, ns, count in zip(audit.ROLES, values, calls):
        raw = [round(v * count) for v in ns]
        normalized = [v / count for v in raw]
        members.append(dict(role=role, ns_per_call=normalized, timed_batch_ns=raw,
                            stats=audit.computed_stats(normalized)))
    return dict(calls=calls, members=members)


def region(owner, kind, ptr, size, length, capacity):
    return dict(owner=owner, kind=kind, index=0, ptr=ptr,
                element_bytes=size, len=length, capacity=capacity)


def row(process=0, promoted=False):
    baseline, nominee = 0x10000, 0x20000
    regions = [[region(owner, 'Object', owner, 24, 1, 0),
                region(owner, 'Twiddles', owner + 128, 4, n, n)]
               for owner, n in [(baseline, 192), (nominee, 368)]]
    numeric = [[[r['owner'], i, r['index'], r['ptr'], r['element_bytes'], r['len'], r['capacity']]
                for i, r in enumerate(plan)] for plan in regions]
    addresses = [[[p, p, 0], [p, p, 0]] for p in [0x30000, 0x30400, 0x30800, 0x40000]]
    config = lambda i, rs, outcome: dict(index=i, isa='Avx512Ymm', lanes=8,
        kernel='rectangular', rust_kernel='RectangularSmall', radices=rs, outcome=outcome)
    chosen = 1 if promoted else 0
    work = [dict(candidate_index=1, plan_ptrs=[baseline, nominee], placement=placement,
                 len=96, scratch_lens=[0, 0], offset_index=i, input_ptr=addresses[i][0][0],
                 output_ptr=addresses[i][0][1] if placement == 'InPlace' else 0x60000 + i * 1024,
                 valid_mask=16383, outcome='Passed' if promoted else 'Rejected')
            for i in range(3) for placement in ('InPlace', 'OutOfPlace', 'Immutable')]
    if not promoted:
        work = work[:1]
    all_values = [[30. + i / 10 for i in range(11)], [35. + i / 10 for i in range(11)]]
    context = dict(capture='complete', acceptance=False, candidate_index=1,
        actual_chosen_index=chosen, roles=audit.ROLES[:], plan_ptrs=[baseline, nominee],
        plan_regions=regions, storage_before=numeric, storage_after=deepcopy(numeric),
        addresses=addresses, addresses_after=deepcopy(addresses),
        qualification_address_matches=[dict(offset_index=i, input_matches=True,
            output_matches=True, scratch_active=False, scratch_matches=True)
            for i in (range(3) if promoted else range(1))],
        location=[dict(location=i, name='retained-selector' if i < 3 else 'original-arena',
                       samples=pair(audit.QUALIFICATION_COUNTS[:])) for i in range(4)],
        counts=[dict(location=0, samples=pair([k, k])) for k in audit.COUNTS],
        exposure=dict(location=0, elapsed_s=.1001,
            all=pair(audit.QUALIFICATION_COUNTS[:], all_values),
            first_seven=pair(audit.QUALIFICATION_COUNTS[:], [v[:7] for v in all_values]),
            last_seven=pair(audit.QUALIFICATION_COUNTS[:], [v[-7:] for v in all_values])),
        protocol=dict(rounds=7, warm_calls_per_sample=3,
            qualification_counts=audit.QUALIFICATION_COUNTS[:], count_crossover=audit.COUNTS[:],
            exposure_ms=100, process_index=process, elapsed_s=.2,
            exposure_member_start=(process // 2) % 2, location_member_start=(process // 4) % 2,
            count_member_start=process % 2, location_start=process % 4, count_start=(process // 2) % 4,
            block_order=[(t + process) % 3 for t in range(3)], reset=audit.RESET, sampler=audit.SAMPLER))
    diagnostic = dict(capture='complete', acceptance=False, context_control=context,
        units='ns per whole-buffer public call; summary stats divided by batch',
        roles=['arena-estimate', 'internal-baseline', 'chosen-measure'],
        replay=dict(elapsed_s=9.0),
        selector=dict(len=96, direction='Inverse', chosen_index=chosen, workloads=work,
            configurations=[config(0, [8, 12], 'Incumbent'),
                            config(1, [16, 6], 'Qualified' if promoted else 'Rejected')]),
        role_map=[0, 1, 2 if promoted else 1],
        storage=[dict(plan_ptr=0x50000, regions=[]),
                 dict(plan_ptr=baseline, regions=deepcopy(regions[0])),
                 dict(plan_ptr=nominee, regions=deepcopy(regions[1]))],
        buffers=dict(input_ptr=addresses[3][0][0], output_ptr=addresses[3][0][1]))
    return dict(key=audit.KEY, procs=1, measure_diagnostic=diagnostic,
        spec=dict(suite='smooth', precision='f32', direction='inverse', placement='inplace',
            n=96, batch=1, misalign=0, scenario=None, profile='full', data='zero', verify=True,
            control=False, libs=['fastfft', 'fastfft/measure'] if process % 2 == 0
                              else ['fastfft/measure', 'fastfft'],
            diagnostics=dict(process_index=process, measure_context=True, measure_trace=True,
                             sample_trace=True, factorial=False, execution_rotation=0)))


def dual_routes(result):
    """Expand a legacy fixture into the two-route trace schema, preserving roles."""
    diagnostic = result['measure_diagnostic']
    selector = diagnostic['selector']
    selector['caller_routes'] = 2
    records = []
    for old in selector['workloads']:
        for route in range(2):
            record = deepcopy(old)
            record['caller_route'] = route
            record.setdefault('calls', [1024, 2048])
            record.setdefault('scratch_ptr', 0)
            records.append(record)
    selector['workloads'] = records
    context = diagnostic['context_control']
    context['qualification_address_matches'] = [deepcopy(match)
        for match in context['qualification_address_matches'] for _ in range(2)]
    return result


def canonical_routes(result):
    result = dual_routes(result)
    diagnostic = result['measure_diagnostic']
    selector = diagnostic['selector']
    selector['caller_route_coverage'] = 'canonical-offset'
    selector['workloads'] = [w for w in selector['workloads']
                            if w['offset_index'] == 0 or w['caller_route'] == 0]
    context = diagnostic['context_control']
    matches = {m['offset_index']: m for m in context['qualification_address_matches']}
    context['qualification_address_matches'] = [deepcopy(matches[w['offset_index']])
        for w in selector['workloads'] if w['candidate_index'] == 1 and w['placement'] == 'InPlace']
    return result


class ContextAudit(unittest.TestCase):
    def setUp(self):
        self.rows = [row(i, promoted=i % 3 == 0) for i in range(8)]
        self.prior = dict(acceptance=False, cells=1, trials=8, problems=[])
        self.context = self.rows[0]['measure_diagnostic']['context_control']

    def check_bad(self, message):
        report = audit.audit_rows(self.rows, self.prior)
        self.assertFalse(report['acceptance'])
        self.assertTrue(any(message in p for p in report['problems']), report)

    def test_valid_promoted_and_retained_baselines_are_distinct_from_nomination(self):
        report = audit.audit_rows(self.rows, self.prior)
        self.assertEqual(report['problems'], [])
        self.assertFalse(report['acceptance'])
        self.assertEqual(len(report['records']), 8)

    def test_dual_route_promotions_and_rejected_then_passed_pair(self):
        self.rows = [dual_routes(result) for result in self.rows]
        # A rejected candidate can end in a Passed record; both routes matter.
        self.rows[1]['measure_diagnostic']['selector']['workloads'][1]['outcome'] = 'Passed'
        self.assertEqual(audit.audit_rows(self.rows, self.prior)['problems'], [])

    def test_dual_route_missing_record_and_mismatched_counts_fail(self):
        self.rows = [dual_routes(result) for result in self.rows]
        self.rows[0]['measure_diagnostic']['selector']['workloads'].pop()
        self.check_bad('caller-route workload prefix')
        self.setUp()
        self.rows = [dual_routes(result) for result in self.rows]
        self.rows[0]['measure_diagnostic']['selector']['workloads'][1]['calls'][0] *= 2
        self.check_bad('do not share calibrated counts')

    def test_dual_route_identity_cannot_be_missing_or_duplicated(self):
        self.rows = [dual_routes(result) for result in self.rows]
        records = self.rows[0]['measure_diagnostic']['selector']['workloads']
        del records[1]['caller_route']
        self.check_bad('missing caller-route identity')
        records[1]['caller_route'] = 0
        self.check_bad('caller-route workload prefix')

    def test_canonical_coverage_retains_nine_primary_and_three_helper_workloads(self):
        self.rows = [canonical_routes(result) for result in self.rows]
        report = audit.audit_rows(self.rows, self.prior)
        self.assertEqual(report['problems'], [])
        self.assertEqual(report['records'][0]['caller_route_coverage'], 'canonical-offset')
        self.assertEqual(len(self.rows[0]['measure_diagnostic']['selector']['workloads']), 12)

    def test_canonical_helper_is_required_and_noncanonical_helper_forbidden(self):
        self.rows = [canonical_routes(result) for result in self.rows]
        records = self.rows[0]['measure_diagnostic']['selector']['workloads']
        del records[1]
        self.check_bad('caller-route workload prefix')
        self.setUp()
        self.rows = [canonical_routes(result) for result in self.rows]
        records = self.rows[0]['measure_diagnostic']['selector']['workloads']
        extra = deepcopy(records[6])
        extra['caller_route'] = 1
        records.insert(7, extra)
        self.check_bad('caller-route workload prefix')

    def test_primary_offset_coverage_and_explicit_policy_cannot_be_dropped(self):
        self.rows = [canonical_routes(result) for result in self.rows]
        selector = self.rows[0]['measure_diagnostic']['selector']
        del selector['workloads'][6]
        self.check_bad('caller-route workload prefix')
        self.setUp()
        self.rows = [canonical_routes(result) for result in self.rows]
        del self.rows[0]['measure_diagnostic']['selector']['caller_route_coverage']
        self.check_bad('caller-route workload prefix')

    def test_wrong_denominator_is_rejected(self):
        member = self.context['location'][0]['samples']['members'][0]
        for key in ('best', 'p1', 'median', 'p10', 'p90'):
            member['stats'][key] /= 96
        self.check_bad('denominator')

    def test_consistently_wrong_samples_and_stats_fail_against_raw_durations(self):
        member = self.context['location'][0]['samples']['members'][0]
        member['ns_per_call'] = [v / 96 for v in member['ns_per_call']]
        member['stats'] = audit.computed_stats(member['ns_per_call'])
        self.check_bad('actual timed batch duration')

    def test_missing_or_fractional_raw_duration_is_rejected(self):
        member = self.context['location'][0]['samples']['members'][0]
        member['timed_batch_ns'].pop()
        self.check_bad('raw batch durations')
        self.setUp()
        self.context['location'][0]['samples']['members'][0]['timed_batch_ns'][0] = 1.5
        self.check_bad('raw batch durations')

    def test_missing_condition_is_rejected(self):
        self.context['counts'].pop()
        self.check_bad('missing or extra')

    def test_same_count_required_for_both_members(self):
        self.context['counts'][0]['samples']['calls'][1] = 992
        self.check_bad('call counts')

    def test_role_confusion_is_rejected(self):
        self.context['location'][0]['samples']['members'][1]['role'] = 'chosen-measure'
        self.check_bad('role labels')

    def test_actual_chosen_cannot_be_replaced_with_nominee(self):
        self.rows[1]['measure_diagnostic']['context_control']['actual_chosen_index'] = 1
        self.check_bad('actual chosen confused')

    def test_wrong_qualification_arc_is_rejected(self):
        self.rows[0]['measure_diagnostic']['selector']['workloads'][0]['plan_ptrs'][1] += 64
        self.check_bad('wrong nominated Arc')

    def test_qualified_candidate_requires_all_nine_workloads(self):
        self.rows[0]['measure_diagnostic']['selector']['workloads'].pop()
        self.check_bad('candidate outcome disagrees')

    def test_rejected_candidate_requires_a_completed_rejection(self):
        self.rows[1]['measure_diagnostic']['selector']['workloads'][0]['outcome'] = 'Passed'
        self.check_bad('candidate outcome disagrees')

    def test_address_match_boolean_cannot_hide_wrong_address(self):
        self.rows[0]['measure_diagnostic']['selector']['workloads'][0]['input_ptr'] += 64
        self.check_bad('original selector address mismatch')

    def test_storage_preservation_is_numerical(self):
        self.context['storage_after'][1][1][3] += 64
        self.check_bad('plan storage changed')

    def test_caller_preservation_is_numerical(self):
        self.context['addresses_after'][0][0][0] += 64
        self.check_bad('caller addresses changed')

    def test_recomputed_but_wrong_exposure_window_is_rejected(self):
        member = self.context['exposure']['first_seven']['members'][0]
        member['ns_per_call'][0] += 1
        member['timed_batch_ns'][0] += audit.QUALIFICATION_COUNTS[0]
        member['stats'] = audit.computed_stats(member['ns_per_call'])
        self.check_bad('windows disagree')

    def test_short_exposure_is_rejected(self):
        self.context['exposure']['elapsed_s'] = .099
        self.check_bad('shorter than100ms')

    def test_nan_and_incomplete_samples_are_rejected(self):
        self.context['counts'][0]['samples']['members'][0]['ns_per_call'][0] = float('nan')
        self.check_bad('nonpositive')
        self.setUp()
        self.context['counts'][0]['samples']['members'][0]['ns_per_call'].pop()
        self.check_bad('context samples')

    def test_wrong_rotation_is_rejected(self):
        self.context['protocol']['location_member_start'] = 1
        self.check_bad('protocol/rotation/reset')

    def test_unavailable_capture_and_duplicate_processes_fail(self):
        self.context['capture'] = 'nominated-contender-unavailable'
        self.check_bad('context unavailable')
        self.setUp()
        self.rows[7] = deepcopy(self.rows[6])
        self.check_bad('fixed-eight')

    def test_replay_inspector_must_succeed(self):
        self.prior['problems'] = ['clock drift']
        self.check_bad('required replay inspection failed')

    def test_inspect_executes_required_replay_inspector_and_fails_closed(self):
        with tempfile.TemporaryDirectory() as directory:
            with patch.object(audit.replay, 'inspect', side_effect=ValueError('invalid clock evidence')) as check:
                result = audit.inspect(Path(directory))
                check.assert_called_once()
                self.assertFalse(result['acceptance'])
                self.assertIn('invalid clock evidence', result['problems'][0])


if __name__ == '__main__':
    unittest.main()

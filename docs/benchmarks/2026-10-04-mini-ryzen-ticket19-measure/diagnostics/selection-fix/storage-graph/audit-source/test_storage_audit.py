import copy
import importlib.util
from pathlib import Path
import unittest

spec = importlib.util.spec_from_file_location('storage_audit', Path(__file__).with_name('inspect-storage.py'))
audit = importlib.util.module_from_spec(spec)
spec.loader.exec_module(audit)


def storage():
    signatures = [
        ('Object', 0, 272, 1, 0), ('EmbeddedPlan', 0, 120, 1, 0),
        ('Radices', 0, 8, 3, 3), ('VectorDescriptors', 0, 24, 3, 3),
        ('Twiddles', 0, 4, 14, 14), ('Twiddles', 1, 4, 112, 112),
        ('Twiddles', 2, 4, 896, 896), ('PhaseBTwiddles', 0, 4, 8192, 8192),
        ('Metadata', 0, 0, 8, 0), ('Metadata', 2, 0, 1, 0),
        ('Metadata', 10, 0, 9216, 0), ('Metadata', 11, 0, 9216, 0),
        ('Metadata', 12, 0, 9216, 0),
    ]
    result = []
    for i in range(2):
        base = (i + 1) * 0x100000
        owner = {'plan_ptr': base, 'runner_ptr': base + 0x1000, 'regions': []}
        for j, (kind, index, size, length, capacity) in enumerate(signatures):
            ptr = 0 if kind == 'Metadata' else base if kind == 'Object' else base + 8 if kind == 'EmbeddedPlan' else base + (j + 1) * 0x1000
            owner['regions'].append({'owner': base, 'kind': kind, 'index': index, 'ptr': ptr,
                                    'element_bytes': size, 'len': length, 'capacity': capacity})
        result.append(owner)
    return result


def trial(process=0):
    original = storage(); start = bool((process // 2) % 2)
    d = {'capture': 'storage-crossover', 'status': 'complete', 'acceptance': False,
         'process_index': process, 'calls': 19, 'member_start': (process // 4) % 2,
         'assignment_start': start, 'restored': True, 'initial_storage': original,
         'restored_storage': copy.deepcopy(original), 'buffers': [[0x10000, 4096], [0x20000, 4096], [0x30000, 9224]],
         'clock_ghz': [5., 5.], 'preflight_restored': True, 'sample_capacity': 32768,
         'sample_storage_grew': False, 'units': 'ns per whole-buffer public call', 'elapsed_s': 7.3, 'phases': []}
    for i in range(4):
        swapped = [False, True, True, False][i] ^ start
        phase = {'index': i, 'swapped': swapped, 'members': []}
        for member, role in enumerate(['estimate', 'measure']):
            values = [100. + member] * 7
            phase['members'].append({'role': role, 'calls': 19, 'warmup_calibrated_calls': 20, 'whole_buffer_ns': values,
                'round_ends': list(range(1, 8)), 'stats': audit.stats(values),
                'storage': audit.assigned(original, swapped)[member]})
        d['phases'].append(phase)
    return {'key': 'pow2:f32:fwd:ip:n4096', 'clock_ghz': [5., 5.], 'cpu': 4, 'procs': 1, 'wall_s': 2.,
        'spec': {'suite': 'pow2', 'precision': 'f32', 'direction': 'forward', 'placement': 'inplace',
                 'n': 4096, 'batch': 1, 'misalign': 0, 'caller_scratch': 9224, 'scenario': None,
                 'profile': 'full', 'data': 'zero', 'seed': 0x5eed_1000, 'control': False, 'verify': True,
                 'libs': ['fastfft', 'fastfft/measure'] if process % 2 == 0 else ['fastfft/measure', 'fastfft'],
                 'diagnostics': {'process_index': process, 'storage_crossover': True,
                    'measure_trace': False, 'measure_context': False, 'factorial': False,
                    'sample_trace': False, 'execution_rotation': 0}},
        'results': [{'lib': lib, 'status': 'ok', 'verify': {'passed': True}, 'describe': audit.DESCRIPTION,
                     'calls_per_batch': 19, 'plan_ns': 1000., 'time': audit.stats([2500.] * 7)}
                    for lib in ['fastfft', 'fastfft/measure']], 'measure_diagnostic': d}


class StorageAuditTests(unittest.TestCase):
    def test_all_eight_balance_combinations(self):
        for process in range(8):
            self.assertEqual(len(audit.inspect_trial(trial(process), process)['phases']), 4)

    def assert_rejected(self, change):
        row = trial(); change(row['measure_diagnostic'])
        with self.assertRaises(ValueError): audit.inspect_trial(row, 0)

    def test_rejects_non_target_mutation(self):
        self.assert_rejected(lambda d: d['phases'][1]['members'][0]['storage']['regions'][0].update(ptr=999))

    def test_rejects_missing_swap(self):
        self.assert_rejected(lambda d: d['phases'][1]['members'][0].update(storage=copy.deepcopy(d['initial_storage'][0])))

    def test_rejects_failed_restoration(self):
        self.assert_rejected(lambda d: d['restored_storage'][0].update(plan_ptr=999))

    def test_rejects_wrong_assignment(self):
        self.assert_rejected(lambda d: d['phases'][1].update(swapped=False))

    def test_rejects_corrupted_raw_statistics(self):
        self.assert_rejected(lambda d: d['phases'][0]['members'][0]['whole_buffer_ns'].__setitem__(0, 42.))

    def test_rejects_missing_round(self):
        self.assert_rejected(lambda d: d['phases'][0]['members'][0]['round_ends'].__setitem__(1, 1))

    def test_rejects_clock_excursion(self):
        self.assert_rejected(lambda d: d.update(clock_ghz=[4., 5.]))

    def test_rejects_sample_growth(self):
        self.assert_rejected(lambda d: d.update(sample_storage_grew=True))

    def test_rejects_missing_preflight_restore(self):
        self.assert_rejected(lambda d: d.update(preflight_restored=False))

    def test_rejects_aliased_targets(self):
        original = storage(); original[1]['regions'][7]['ptr'] = original[0]['regions'][7]['ptr']
        with self.assertRaises(ValueError): audit.assigned(original, True)

    def test_rejects_missing_non_target_even_when_all_snapshots_agree(self):
        d = trial()['measure_diagnostic']
        for snapshots in [d['initial_storage'], d['restored_storage']] + [[m['storage'] for m in p['members']] for p in d['phases']]:
            for s in snapshots: s['regions'] = [r for r in s['regions'] if r['kind'] != 'Radices']
        row = trial(); row['measure_diagnostic'] = d
        with self.assertRaises(ValueError): audit.inspect_trial(row, 0)

    def test_rejects_wrong_target_precision_length_capacity_and_owner(self):
        for field, value in [('element_bytes', 8), ('len', 4096), ('capacity', 9000), ('owner', 1234)]:
            with self.subTest(field=field):
                original = storage(); original[0]['regions'][7][field] = value
                with self.assertRaises(ValueError): audit.assigned(original, False)

    def test_rejects_duplicate_metadata_identity(self):
        original = storage(); original[0]['regions'][-1]['index'] = 11
        with self.assertRaises(ValueError): audit.assigned(original, False)

    def test_rejects_overlapping_or_unaligned_caller_buffers(self):
        self.assert_rejected(lambda d: d['buffers'].__setitem__(1, d['buffers'][0][:]))
        self.assert_rejected(lambda d: d['buffers'][0].__setitem__(0, 0x10004))

    def test_rejects_missing_caller_buffer_or_wrong_length(self):
        self.assert_rejected(lambda d: d['buffers'].pop())
        self.assert_rejected(lambda d: d['buffers'][2].__setitem__(1, 4096))

    def test_rejects_incomplete_exposure_units_and_warmup(self):
        self.assert_rejected(lambda d: d.update(elapsed_s=7.19))
        self.assert_rejected(lambda d: d.update(elapsed_s=float('nan')))
        self.assert_rejected(lambda d: d.update(units='ns per transform'))
        self.assert_rejected(lambda d: d['phases'][0]['members'][0].update(warmup_calibrated_calls=0))

    def test_rejects_wrong_key_spec_cpu_and_process_count(self):
        changes = [lambda r: r.update(key='pow2:f32:inv:ip:n4096'),
                   lambda r: r['spec'].update(batch=2), lambda r: r['spec'].update(n=8192),
                   lambda r: r.update(cpu=0), lambda r: r.update(procs=8),
                   lambda r: r['spec']['diagnostics'].update(execution_rotation=1)]
        for change in changes:
            row = trial(); change(row)
            with self.assertRaises(ValueError): audit.inspect_trial(row, 0)

    def test_rejects_missing_duplicate_or_wrong_original_result(self):
        changes = [lambda r: r['results'].pop(), lambda r: r['results'].append(copy.deepcopy(r['results'][0])),
                   lambda r: r['results'][0].update(describe=None),
                   lambda r: r['results'][0]['verify'].update(passed='true'),
                   lambda r: r['results'][0]['time'].update(p1=float('nan')),
                   lambda r: r['results'][0].update(calls_per_batch=0)]
        for change in changes:
            row = trial(); change(row)
            with self.assertRaises(ValueError): audit.inspect_trial(row, 0)

    def test_rejects_missing_original_timing(self):
        row = trial(); del row['results'][0]['time']
        with self.assertRaises(KeyError): audit.inspect_trial(row, 0)


def graph_trial(process=0):
    row = trial(process)
    row['key'] = 'pow2:f32:fwd:oop:n4096'
    row['spec']['placement'] = 'outofplace'
    row['spec']['diagnostics'].update(storage_crossover=False, storage_graph=True)
    d = row['measure_diagnostic']
    d.update(capture='storage-graph', condition_start=(process // 2) % 4, elapsed_s=14.5)
    template = copy.deepcopy(d['phases'][0]); d['phases'] = []
    for i, mask in enumerate([0, 1, 3, 2, 2, 3, 1, 0]):
        mask ^= d['condition_start']
        phase = copy.deepcopy(template)
        phase.update(index=i, condition=mask, swapped=bool(mask & 1), remaining_swapped=bool(mask & 2))
        expected = audit.assigned(d['initial_storage'], bool(mask & 1), bool(mask & 2))
        for member in range(2): phase['members'][member]['storage'] = expected[member]
        d['phases'].append(phase)
    return row


class StorageGraphAuditTests(unittest.TestCase):
    def test_all_eight_processes_cover_every_combination_twice(self):
        for process in range(8):
            result = audit.inspect_trial(graph_trial(process), process, graph=True)
            self.assertEqual(sorted(p['condition'] for p in result['phases']), [0, 0, 1, 1, 2, 2, 3, 3])

    def assert_rejected(self, change):
        row = graph_trial(); change(row['measure_diagnostic'])
        with self.assertRaises(ValueError): audit.inspect_trial(row, 0, graph=True)

    def test_rejects_missing_remaining_exchange(self):
        self.assert_rejected(lambda d: d['phases'][3]['members'][0].update(storage=copy.deepcopy(d['initial_storage'][0])))

    def test_rejects_joint_exchange_without_phase_b(self):
        def change(d):
            for region in d['phases'][2]['members'][0]['storage']['regions']:
                if region['kind'] == 'PhaseBTwiddles':
                    region['ptr'] = next(r['ptr'] for r in d['initial_storage'][0]['regions'] if r['kind'] == 'PhaseBTwiddles')
        self.assert_rejected(change)

    def test_rejects_missing_factor_repeat(self):
        self.assert_rejected(lambda d: d['phases'].pop())

    def test_rejects_wrong_condition_rotation(self):
        self.assert_rejected(lambda d: d.update(condition_start=1))

    def test_rejects_short_exposure(self):
        self.assert_rejected(lambda d: d.update(elapsed_s=7.3))

    def test_rejects_inplace_graph(self):
        row = graph_trial(); row['spec']['placement'] = 'inplace'; row['key'] = 'pow2:f32:fwd:ip:n4096'
        with self.assertRaises(ValueError): audit.inspect_trial(row, 0, graph=True)


if __name__ == '__main__': unittest.main()

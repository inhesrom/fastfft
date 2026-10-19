#!/usr/bin/env python3
"""Audit the fixed eight-process N96 context experiment; never grant acceptance.

Run only on a completed run directory. The replay inspector is executed first;
its problems must be empty. Per-call values must agree with the separately
recorded integer batch durations and declared call counts. This checks numerical
consistency, not provenance against a malicious producer.
"""

import argparse
from collections import Counter
import importlib.util
import json
import math
from pathlib import Path
import statistics

_spec = importlib.util.spec_from_file_location(
    'context_replay_inspector', Path(__file__).with_name('inspect-replay.py'))
replay = importlib.util.module_from_spec(_spec)
_spec.loader.exec_module(replay)

KEY = 'smooth:f32:inv:ip:n96'
ROLES = ['internal-baseline', 'nominated-contender']
COUNTS = [718, 992, 1024, 2048]
QUALIFICATION_COUNTS = [1024, 2048]
RESET = 'zero once per block/location; no reset between timed samples'
SAMPLER = 'one non-inlined timed entry; same public slice loop for every condition'


def require(condition, message):
    if not condition:
        raise ValueError(message)


def integer(value, minimum=0):
    return type(value) is int and value >= minimum


def positive(value):
    return type(value) in (int, float) and math.isfinite(value) and value > 0


def computed_stats(values):
    ordered = sorted(values)
    quantile = lambda q: ordered[math.floor((len(ordered) - 1) * q + 0.5)]
    return dict(best=ordered[0], p1=quantile(.01), median=statistics.median(ordered),
                p10=quantile(.10), p90=quantile(.90), samples=len(ordered))


def pair_samples(pair, calls, count=None):
    require(pair['calls'] == calls and all(integer(k, 1) for k in pair['calls']),
            'incorrect or unequal declared call counts')
    members = pair['members']
    require(len(members) == 2 and [m['role'] for m in members] == ROLES,
            'incorrect baseline/nominated role labels')
    values = []
    for member, calls_per_sample in zip(members, calls):
        ns = member['ns_per_call']
        require(isinstance(ns, list) and len(ns) >= 7 and all(map(positive, ns)),
                'missing or nonpositive context samples')
        require(count is None or len(ns) == count, 'expected exactly seven samples')
        batches = member['timed_batch_ns']
        require(isinstance(batches, list) and len(batches) == len(ns)
                and all(integer(t, 1) for t in batches), 'missing or invalid raw batch durations')
        require(all(math.isclose(value, elapsed / calls_per_sample, rel_tol=1e-12, abs_tol=0.0)
                    for value, elapsed in zip(ns, batches)),
                'per-call denominator disagrees with actual timed batch duration')
        summary = member['stats']
        expected = computed_stats(ns)
        require(integer(summary['samples']) and summary['samples'] == len(ns),
                'incorrect summary sample count')
        require(all(positive(summary[name]) and math.isclose(summary[name], expected[name],
                    rel_tol=1e-12, abs_tol=0.0) for name in expected if name != 'samples'),
                'summary disagrees with whole-buffer per-call samples (denominator)')
        values.append(ns)
    require(len(values[0]) == len(values[1]), 'unpaired exposure samples')
    return values


def batch_durations(pair):
    return [member['timed_batch_ns'] for member in pair['members']]


def validate_row(row):
    spec = row['spec']
    expected = dict(suite='smooth', precision='f32', direction='inverse', placement='inplace',
                    n=96, batch=1, misalign=0, scenario=None, profile='full', data='zero',
                    verify=True, control=False)
    require(row['key'] == KEY and all(spec[k] == v for k, v in expected.items()),
            'wrong context cell specification or units')
    require(spec['verify'] is True and spec['control'] is False, 'invalid verification/control flags')
    require(all(integer(spec[k], 1) for k in ('n', 'batch')), 'noninteger transform dimensions')
    dspec = spec['diagnostics']
    process = dspec['process_index']
    require(integer(process) and process < 8, 'invalid process index')
    require(all(dspec[k] is True for k in ('measure_context', 'measure_trace', 'sample_trace'))
            and dspec['factorial'] is False and dspec['execution_rotation'] == 0,
            'incorrect context diagnostic flags')
    require(spec['libs'] == (['fastfft', 'fastfft/measure'] if process % 2 == 0
                            else ['fastfft/measure', 'fastfft']), 'incorrect construction rotation')
    require(row['procs'] == 1, 'context row is not a single raw process')
    diagnostic = row['measure_diagnostic']
    require(diagnostic['capture'] == 'complete' and diagnostic['acceptance'] is False,
            'incomplete or acceptance-labeled replay capture')
    require(diagnostic['units'] == 'ns per whole-buffer public call; summary stats divided by batch'
            and diagnostic['roles'] == ['arena-estimate', 'internal-baseline', 'chosen-measure'],
            'incorrect replay units or original roles')
    context = diagnostic['context_control']
    require(context['capture'] == 'complete' and context['acceptance'] is False,
            'context unavailable or acceptance-labeled')
    require(context['candidate_index'] == 1 and context['roles'] == ROLES,
            'wrong nominated contender or role mapping')
    selector = diagnostic['selector']
    require(selector['len'] == 96 and selector['direction'] == 'Inverse',
            'wrong captured selector transform')
    chosen = selector['chosen_index']
    require(integer(chosen) and context['actual_chosen_index'] == chosen,
            'actual chosen confused with nominated contender')
    configs = selector['configurations']
    require(len(configs) > max(1, chosen), 'missing candidate configuration')
    for index, radices, outcome in [(0, [8, 12], ['Incumbent']),
                                    (1, [16, 6], ['Rejected', 'Qualified'])]:
        config = configs[index]
        require(config['index'] == index and config['radices'] == radices
                and config['isa'] == 'Avx512Ymm' and config['lanes'] == 8
                and config['kernel'] == 'rectangular'
                and config['rust_kernel'] == 'RectangularSmall'
                and config['outcome'] in outcome, 'wrong nominated/baseline dispatch or outcome')
    require(chosen == 0 or configs[chosen]['outcome'] == 'Qualified',
            'actual chosen has no qualification')
    ptrs = context['plan_ptrs']
    require(len(ptrs) == 2 and all(integer(p, 1) for p in ptrs) and ptrs[0] != ptrs[1],
            'invalid distinct baseline/nominated identities')
    role_map, storage = diagnostic['role_map'], diagnostic['storage']
    require(storage[role_map[1]]['plan_ptr'] == ptrs[0], 'wrong internal baseline Arc')
    chosen_ptr = storage[role_map[2]]['plan_ptr']
    if chosen == 0:
        require(chosen_ptr == ptrs[0], 'retained actual chosen is not baseline')
    elif chosen == 1:
        require(chosen_ptr == ptrs[1], 'promoted actual chosen is not nominated Arc')
    else:
        require(chosen_ptr not in ptrs, 'another chosen candidate aliases nominated/baseline')

    regions = context['plan_regions']
    before, after = context['storage_before'], context['storage_after']
    require(len(regions) == len(before) == len(after) == 2 and before == after,
            'plan storage changed or preservation snapshots missing')
    for plan, (named, numeric) in enumerate(zip(regions, before)):
        require(len(named) == len(numeric) and len(named) >= 2, 'incomplete region metadata')
        for r, n in zip(named, numeric):
            require(len(n) == 7 and all(integer(x) for x in n)
                    and n[0] == ptrs[plan] == r['owner']
                    and n[2:] == [r[k] for k in ('index', 'ptr', 'element_bytes', 'len', 'capacity')],
                    'region snapshot does not match named storage/Arc identity')
        objects = [r for r in named if r['kind'] == 'Object']
        twiddles = [r for r in named if r['kind'] == 'Twiddles']
        require(len(objects) == len(twiddles) == 1 and objects[0]['ptr'] == ptrs[plan],
                'missing plan object or coefficient region')
        tw = twiddles[0]
        require(integer(tw['ptr'], 1) and tw['element_bytes'] == 4
                and tw['len'] == [192, 368][plan] and tw['capacity'] >= tw['len'],
                'incorrect N96 coefficient storage')
    require(regions[0] == storage[role_map[1]]['regions'], 'baseline storage differs across replay')
    if chosen == 1:
        require(regions[1] == storage[role_map[2]]['regions'], 'chosen storage differs across replay')

    addresses = context['addresses']
    require(addresses == context['addresses_after'] and len(addresses) == 4,
            'caller addresses changed or preservation snapshot missing')
    for pair in addresses:
        require(len(pair) == 2 and pair[0] == pair[1], 'plans do not share caller slices')
        for a in pair:
            require(len(a) == 3 and all(integer(v) for v in a) and a[0] > 0
                    and a[0] == a[1] and a[0] % 64 == 0 and a[2] == 0,
                    'invalid in-place/zero-scratch caller region')
    require([addresses[i][0][0] - addresses[0][0][0] for i in range(3)] == [0, 1024, 2048],
            'incorrect retained selector offsets')
    require(addresses[3][0][0] == diagnostic['buffers']['input_ptr']
            == diagnostic['buffers']['output_ptr'], 'original arena caller address differs')
    nominated = [w for w in selector['workloads'] if w['candidate_index'] == 1]
    nominated_groups = replay.candidate_workload_groups(selector, 1)
    require(nominated and all(w['plan_ptrs'] == ptrs for w in nominated),
            'wrong nominated Arc relative to captured qualification')
    require(all(w['len'] == 96 and w['scratch_lens'] == [0, 0] for w in nominated),
            'wrong nominated workload length or scratch')
    workload_order = [(i, p) for i in range(3) for p in ('InPlace', 'OutOfPlace', 'Immutable')]
    require([(group[0]['offset_index'], group[0]['placement']) for group in nominated_groups]
            == workload_order[:len(nominated_groups)]
            and len(nominated_groups) <= 9 and all(w['valid_mask'] == 16383 for w in nominated),
            'nominated qualification is not a completed workload prefix')
    if configs[1]['outcome'] == 'Qualified':
        require(len(nominated_groups) == 9 and all(w['outcome'] == 'Passed' for w in nominated),
                'qualified nominated contender lacks all nine passing workloads')
    else:
        require(any(w['outcome'] == 'Rejected' for w in nominated_groups[-1])
                and all(w['outcome'] == 'Passed' for group in nominated_groups[:-1] for w in group),
                'rejected nominated contender lacks its rejecting workload')
    ip = [w for w in nominated if w['placement'] == 'InPlace']
    matches = context['qualification_address_matches']
    require(ip and [m['offset_index'] for m in matches] == [w['offset_index'] for w in ip],
            'missing or duplicated qualification address comparisons')
    for w, match in zip(ip, matches):
        offset = w['offset_index']
        require(integer(offset) and offset < 3 and w['input_ptr'] == addresses[offset][0][0]
                and w['output_ptr'] == addresses[offset][0][1]
                and match['input_matches'] is True and match['output_matches'] is True
                and match['scratch_active'] is False and match['scratch_matches'] is True,
                'original selector address mismatch or invented address match')
    if chosen != 0:
        selected_workloads = [w for w in selector['workloads'] if w['candidate_index'] == chosen]
        selected_groups = replay.candidate_workload_groups(selector, chosen)
        require(selected_workloads and all(w['plan_ptrs'] == [ptrs[0], chosen_ptr]
                                          for w in selected_workloads),
                'actual chosen Arc differs from its qualification')
        require([(group[0]['offset_index'], group[0]['placement']) for group in selected_groups]
                == workload_order
                and all(w['outcome'] == 'Passed' and w['valid_mask'] == 16383 for w in selected_workloads),
                'actual chosen lacks complete qualifying workloads')

    protocol = context['protocol']
    required = dict(rounds=7, warm_calls_per_sample=3, qualification_counts=QUALIFICATION_COUNTS,
                    count_crossover=COUNTS, exposure_ms=100, process_index=process,
                    exposure_member_start=(process // 2) % 2, location_member_start=(process // 4) % 2,
                    count_member_start=process % 2, location_start=process % 4,
                    count_start=(process // 2) % 4, block_order=[(t + process) % 3 for t in range(3)],
                    reset=RESET, sampler=SAMPLER)
    require(all(protocol[k] == v for k, v in required.items()), 'incorrect context protocol/rotation/reset')
    require(positive(protocol['elapsed_s']) and positive(diagnostic['replay']['elapsed_s'])
            and protocol['elapsed_s'] <= diagnostic['replay']['elapsed_s'],
            'invalid context elapsed time or outside replay bracket')
    locations, counts = context['location'], context['counts']
    require(len(locations) == len(counts) == 4, 'missing or extra location/count condition')
    timed_ns = 0.0
    for index, location in enumerate(locations):
        require(location['location'] == index and location['name'] == (
            'retained-selector' if index < 3 else 'original-arena'), 'incorrect location condition')
        pair_samples(location['samples'], QUALIFICATION_COUNTS, 7)
        timed_ns += sum(map(sum, batch_durations(location['samples'])))
    for count, condition in zip(COUNTS, counts):
        require(condition['location'] == 0, 'count control moved caller location')
        pair_samples(condition['samples'], [count, count], 7)
        timed_ns += sum(map(sum, batch_durations(condition['samples'])))
    exposure = context['exposure']
    require(exposure['location'] == 0 and positive(exposure['elapsed_s'])
            and .1 <= exposure['elapsed_s'] <= protocol['elapsed_s'], 'exposure shorter than100ms or invalid elapsed')
    all_ns = pair_samples(exposure['all'], QUALIFICATION_COUNTS)
    first = pair_samples(exposure['first_seven'], QUALIFICATION_COUNTS, 7)
    last = pair_samples(exposure['last_seven'], QUALIFICATION_COUNTS, 7)
    require(first == [v[:7] for v in all_ns] and last == [v[-7:] for v in all_ns],
            'exposure windows disagree with chronological samples')
    all_raw = batch_durations(exposure['all'])
    require(batch_durations(exposure['first_seven']) == [v[:7] for v in all_raw]
            and batch_durations(exposure['last_seven']) == [v[-7:] for v in all_raw],
            'exposure raw-duration windows disagree with chronology')
    exposure_ns = sum(map(sum, all_raw))
    require(exposure_ns <= exposure['elapsed_s'] * 1e9 * (1 + 1e-9)
            and timed_ns + exposure_ns <= protocol['elapsed_s'] * 1e9 * (1 + 1e-9),
            'reported timed batches exceed enclosing wall duration')
    return dict(process=process, actual_chosen_index=chosen, nominated_index=1,
                exposure_pairs=len(all_ns[0]))


def audit_rows(rows, replay_report):
    problems, records = [], []
    if (replay_report.get('problems') != [] or replay_report.get('acceptance') is not False
            or replay_report.get('cells') != 1 or replay_report.get('trials') != 8):
        problems.append('required replay inspection failed or lacks exact1cell/8trial coverage')
    indices = []
    for number, row in enumerate(rows):
        try:
            record = validate_row(row)
            indices.append(record['process'])
            records.append(record)
        except (KeyError, TypeError, ValueError, IndexError, ArithmeticError) as error:
            problems.append(f'row{number}: {error}')
    if len(rows) != 8 or Counter(indices) != Counter(range(8)):
        problems.append('missing, invalid or duplicate fixed-eight process evidence')
    return dict(acceptance=False, cells=1 if rows else 0, trials=len(rows),
                problems=problems, replay_problems=replay_report.get('problems'), records=records)


def inspect(run):
    try:
        prior = replay.inspect(run)
        env = json.loads((run / 'env.json').read_text())
        require(env['run']['procs'] == 8 and env['run']['profile'] == 'full'
                and env['run']['process_order'] == 'rotating', 'wrong fixed-eight run metadata')
        flags = env['run']['diagnostics']
        require(all(flags[k] is True for k in ('measure_context', 'measure_trace', 'sample_trace'))
                and flags['factorial'] is False and flags['execution_rotation'] == 0
                and flags['process_index'] == 0, 'wrong declared context flags')
        rows = []
        for line in (run / 'trials.jsonl').open():
            row = json.loads(line)
            if not row['spec']['control']:
                rows.append(row)
        return audit_rows(rows, prior)
    except (OSError, KeyError, TypeError, ValueError, IndexError, ArithmeticError) as error:
        return dict(acceptance=False, cells=0, trials=0,
                    problems=[f'required completed-run/replay inspection failed: {error}'], records=[])


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('run', type=Path)
    parser.add_argument('--out', type=Path, required=True)
    args = parser.parse_args()
    report = inspect(args.run)
    args.out.write_text(json.dumps(report, indent=2) + '\n')
    print(json.dumps({k: report[k] for k in ('acceptance', 'cells', 'trials', 'problems')}))
    raise SystemExit(bool(report['problems']))


if __name__ == '__main__':
    main()

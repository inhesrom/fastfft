#!/usr/bin/env python3
"""Audit the fixed Phase-B storage intervention, never performance acceptance."""
import argparse
import copy
import datetime
import json
import math
from pathlib import Path
import statistics


def check(condition, message):
    if not condition:
        raise ValueError(message)


DESCRIPTION = 'stockham avx512-ymm split L=8 radices=8x8x8 scratch=9224 scratch_oop=9224 scratch_immutable=9224'
# (kind, index, element bytes, len, capacity), in the frozen accessor's order.
REGIONS = [
    ('Object', 0, 272, 1, 0), ('EmbeddedPlan', 0, 120, 1, 0),
    ('Radices', 0, 8, 3, 3), ('VectorDescriptors', 0, 24, 3, 3),
    ('Twiddles', 0, 4, 14, 14), ('Twiddles', 1, 4, 112, 112),
    ('Twiddles', 2, 4, 896, 896), ('PhaseBTwiddles', 0, 4, 8192, 8192),
    ('Metadata', 0, 0, 8, 0), ('Metadata', 2, 0, 1, 0),
    ('Metadata', 10, 0, 9216, 0), ('Metadata', 11, 0, 9216, 0),
    ('Metadata', 12, 0, 9216, 0),
]


def positive(value):
    return type(value) in (int, float) and math.isfinite(value) and value > 0


def original_stats(result):
    check(result['status'] == 'ok' and result['describe'] == DESCRIPTION, 'wrong original executable')
    check(type(result['calls_per_batch']) is int and result['calls_per_batch'] > 0, 'invalid original calls')
    check(positive(result['plan_ns']), 'invalid original planning time')
    s = result['time']
    check(type(s['samples']) is int and s['samples'] > 0, 'invalid original sample count')
    check(all(positive(s[k]) for k in ['best', 'p1', 'p10', 'median', 'p90']), 'invalid original timing')
    check(s['best'] <= s['p1'] <= s['p10'] <= s['median'] <= s['p90'], 'inconsistent original percentiles')


def clock_pair(value):
    check(type(value) is list and len(value) == 2 and all(positive(c) for c in value), 'invalid clock pair')
    return value


def frozen_spec(row, control=False):
    s = row['spec']
    check(type(row['cpu']) is int and row['cpu'] == 4 and type(row['procs']) is int and row['procs'] == 1, 'wrong raw CPU/process count')
    check(positive(row['wall_s']), 'invalid original elapsed time')
    expected = {'suite': 'control' if control else 'pow2', 'precision': 'f32', 'n': 4096,
                'batch': 1, 'misalign': 0, 'caller_scratch': 9224, 'profile': 'full',
                'data': 'zero', 'seed': 1 if control else 0x5eed_1000, 'scenario': None, 'control': control, 'verify': not control}
    check(all(type(s[k]) is type(v) and s[k] == v for k, v in expected.items()), 'wrong frozen cell spec')
    directions = {'forward': 'fwd', 'inverse': 'inv'}
    placements = {'inplace': 'ip', 'outofplace': 'oop'}
    check(s['direction'] in directions and s['placement'] in placements, 'wrong direction/placement')
    check(row['key'] == f"{s['suite']}:f32:{directions[s['direction']]}:{placements[s['placement']]}:n4096", 'key/spec mismatch')
    d = s['diagnostics']
    check(type(d['execution_rotation']) is int and d['execution_rotation'] == 0, 'unexpected execution rotation')
    check(all(d[k] is False for k in ['measure_trace', 'measure_context', 'factorial', 'sample_trace']), 'confounded diagnostics')
    check(d['storage_crossover'] is (not control), 'wrong crossover opt-in')
    clock_pair(row['clock_ghz'])


def stats(values):
    check(values and all(type(x) in (int, float) and math.isfinite(x) and x > 0 for x in values), "invalid raw samples")
    s = sorted(values)
    result = {"best": s[0], "median": statistics.median(s), "samples": len(s)}
    result.update({name: s[math.floor((len(s) - 1) * q + 0.5)] for name, q in [("p1", .01), ("p10", .1), ("p90", .9)]})
    return result


def assigned(original, swapped):
    check(len(original) == 2, "expected two storage owners")
    expected = copy.deepcopy(original)
    targets = []
    for owner in original:
        check(type(owner['plan_ptr']) is int and owner['plan_ptr'] > 0, "invalid plan address")
        check(type(owner['runner_ptr']) is int and owner['runner_ptr'] > 0, "invalid runner address")
        check([(r['kind'], r['index'], r['element_bytes'], r['len'], r['capacity']) for r in owner['regions']] == REGIONS,
              'incomplete or unexpected Stockham storage signature')
        for r in owner['regions']:
            check(all(type(r[k]) is int and r[k] >= 0 for k in ['owner', 'index', 'ptr', 'element_bytes', 'len', 'capacity']), 'invalid region numbers')
            check(r['owner'] == owner['plan_ptr'], 'region belongs to wrong plan')
            check((r['ptr'] == 0) if r['kind'] == 'Metadata' else (r['ptr'] > 0), 'invalid region pointer')
        check(owner['regions'][0]['ptr'] == owner['plan_ptr'], 'object identity mismatch')
        check(owner['regions'][1]['ptr'] == owner['plan_ptr'] + 8, 'embedded plan address mismatch')
        regions = [r for r in owner['regions'] if r['kind'] == 'PhaseBTwiddles']
        check(len(regions) == 1 and regions[0]['index'] == 0, "expected one Phase-B target")
        check(regions[0]['ptr'] > 0 and regions[0]['len'] > 0, "empty target")
        targets.append(regions[0])
    check(original[0]['plan_ptr'] != original[1]['plan_ptr'], "aliased plans")
    check(original[0]['runner_ptr'] != original[1]['runner_ptr'], "aliased runners")
    check(targets[0]['ptr'] != targets[1]['ptr'], "aliased target tables")
    check(all(targets[0][k] == targets[1][k] for k in ['len', 'capacity', 'element_bytes']), "different target layout")
    if swapped:
        for i, owner in enumerate(expected):
            for region in owner['regions']:
                if region['kind'] == 'PhaseBTwiddles':
                    region['ptr'] = targets[1 - i]['ptr']
    return expected


def inspect_trial(row, process):
    frozen_spec(row)
    check(type(process) is int and 0 <= process < 8, 'invalid process index')
    d = row['measure_diagnostic']
    check(d['capture'] == 'storage-crossover' and d['status'] == 'complete' and d['acceptance'] is False, 'incomplete or unsupported crossover')
    check(row['spec']['diagnostics']['process_index'] == process == d['process_index'], 'process sequence mismatch')
    check(row['spec']['diagnostics']['storage_crossover'] is True, 'missing intervention flag')
    check(not any(row['spec']['diagnostics'][k] for k in ['measure_trace', 'measure_context', 'factorial']), 'confounded diagnostics')
    check(row['spec']['libs'] == (['fastfft', 'fastfft/measure'] if process % 2 == 0 else ['fastfft/measure', 'fastfft']), 'construction order mismatch')
    check(d['calls'] == 19 and d['member_start'] == (process // 4) % 2 and d['assignment_start'] == bool((process // 2) % 2), 'crossover balance mismatch')
    check(type(d['process_index']) is int and type(row['spec']['diagnostics']['process_index']) is int,
          'noninteger process index')
    check(type(d['calls']) is int and type(d['member_start']) is int and type(d['assignment_start']) is bool, 'invalid rotation types')
    check(d['units'] == 'ns per whole-buffer public call', 'wrong timing units')
    check(positive(d['elapsed_s']) and d['elapsed_s'] >= 7.2, 'incomplete four-phase exposure')
    check(len(d['phases']) == 4 and d['restored'] is True, 'missing phases/restoration')
    check(d['preflight_restored'] is True and d['sample_capacity'] == 32768 and d['sample_storage_grew'] is False, 'preflight or sample capacity failure')
    original = assigned(d['initial_storage'], False)
    check(d['restored_storage'] == original, 'storage restoration mismatch')
    check(len(d['buffers']) == 3, 'missing caller buffer')
    spans = []
    for (pointer, length), expected in zip(d['buffers'], [4096, 4096, 9224]):
        check(type(pointer) is int and pointer > 0 and pointer % 64 == 0 and type(length) is int and length == expected, 'invalid original caller buffer')
        spans.append((pointer, pointer + length * 8))
    check(all(a[1] <= b[0] or b[1] <= a[0] for i, a in enumerate(spans) for b in spans[i + 1:]), 'overlapping caller buffers')
    libs = {lib['lib']: lib for lib in row['results']}
    check(len(row['results']) == 2 and set(libs) == {'fastfft', 'fastfft/measure'} and all(lib['verify']['passed'] is True for lib in libs.values()), 'original correctness failure')
    for lib in libs.values(): original_stats(lib)
    clocks = clock_pair(row['clock_ghz']) + clock_pair(d['clock_ghz'])
    check(max(clocks) / min(clocks) <= 1.03, 'within-process original/replay clock drift exceeds 3%')
    phases = []
    for i, phase in enumerate(d['phases']):
        swapped = [False, True, True, False][i] ^ d['assignment_start']
        check(phase['index'] == i and phase['swapped'] is swapped, 'assignment sequence mismatch')
        members = phase['members']
        check([m['role'] for m in members] == ['estimate', 'measure'], 'member identities mismatch')
        check([m['storage'] for m in members] == assigned(original, swapped), 'non-target mutation or incorrect target exchange')
        computed = []
        for m in members:
            check(type(m['calls']) is int and m['calls'] == 19, 'recorded call count differs')
            check(type(m['warmup_calibrated_calls']) is int and m['warmup_calibrated_calls'] > 0, 'invalid warmup calibration')
            ns = m['whole_buffer_ns']; ends = m['round_ends']
            check(len(ns) <= d['sample_capacity'], 'sample capacity exceeded')
            check(len(ends) == 7 and all(type(e) is int for e in ends) and all(a < b for a, b in zip([0] + ends, ends)) and ends[-1] == len(ns), 'incomplete round coverage')
            s = stats(ns)
            check(type(m['stats']['samples']) is int and all(positive(m['stats'][k]) for k in s), 'invalid reported statistics')
            check(all(math.isclose(s[k], m['stats'][k], rel_tol=1e-12) for k in s), 'summary differs from raw samples')
            computed.append(s)
        phases.append({'index': i, 'swapped': swapped, 'ratios': {k: computed[1][k] / computed[0][k] for k in ['best', 'p1', 'median']}, 'stats': computed})
    timed_seconds = sum(sum(m['whole_buffer_ns']) * 19 for p in d['phases'] for m in p['members']) / 1e9
    check(timed_seconds <= d['elapsed_s'], 'batch durations exceed total replay duration')
    targets = [[r['ptr'] for r in owner['regions'] if r['kind'] == 'PhaseBTwiddles'][0] for owner in original]
    return {'key': row['key'], 'process': process, 'target_mod64': [p % 64 for p in targets], 'target_mod4096': [p % 4096 for p in targets], 'phases': phases}


def audit(run, quiet_log):
    problems = []; summaries = []; counts = {}
    rows = [json.loads(line) for line in (run / 'trials.jsonl').open()]
    expected = {f'pow2:f32:{direction}:{placement}:n4096' for direction in ['fwd', 'inv'] for placement in ['ip', 'oop']}
    for row in rows:
        if row['spec'].get('control'): continue
        process = counts.get(row['key'], 0); counts[row['key']] = process + 1
        try: summaries.append(inspect_trial(row, process))
        except (ValueError, KeyError, TypeError, IndexError) as exc: problems.append(f"{row['key']} process {process}: {exc}")
    if set(counts) != expected or any(n != 8 for n in counts.values()): problems.append('fixed four-cell/eight-process coverage mismatch')
    meta = json.loads((run / 'meta.json').read_text()); env = json.loads((run / 'env.json').read_text())
    if meta['cells'] != 4 or meta['child_failures'] or meta['aborted'] or meta['drift_flag'] or meta['max_drift'] > .03: problems.append('run completion/drift failure')
    if meta['official'] is not False or env['env_check']['ok'] is not True: problems.append('diagnostic environment mismatch')
    for field, value in [('procs', 8), ('profile', 'full'), ('process_order', 'rotating')]:
        if env['run'][field] != value: problems.append(f'wrong {field}')
    if env['build_profile'] != 'arena' or env['rustflags'] != '-C llvm-args=-align-all-functions=6' or env['target_cpu_native']: problems.append('build metadata mismatch')
    logs = [json.loads(line) for line in quiet_log.open()]
    policies = [r for r in logs if r['event'] == 'policy']
    starts = [i for i, r in enumerate(logs) if r['event'] == 'started']
    if len(policies) != 1 or policies[0]['quiet_seconds'] != 60 or policies[0]['core'] != 4 or len(starts) != 1:
        problems.append('quiet policy/start coverage mismatch')
    elif starts:
        before = logs[:starts[0]]
        boundary = policies[0]['utc']; consecutive = 0
        for r in before:
            if r['event'] == 'waiting':
                if r['quiet']: consecutive += 1
                else: boundary = r['utc']; consecutive = 0
        delta = (datetime.datetime.fromisoformat(logs[starts[0]]['utc']) - datetime.datetime.fromisoformat(boundary)).total_seconds()
        if consecutive < 12 or delta < 60: problems.append('insufficient sustained quiet before launch')
        environments = [r for r in before if r['event'] == 'environment']
        if not environments or environments[-1]['returncode'] != 0: problems.append('missing successful prelaunch environment check')
    running = [r for r in logs if r['event'] == 'running']
    if not running or any(not r['quiet'] for r in running): problems.append('running quiet-monitor failure')
    if logs[-1]['event'] != 'finished' or logs[-1]['returncode'] != 0: problems.append('monitor did not finish successfully')
    controls = [r for r in rows if r['spec'].get('control')]
    if len(controls) != 16: problems.append('control trial coverage mismatch')
    elif controls:
        for i, r in enumerate(controls):
            try:
                frozen_spec(r, control=True)
                check(r['key'] == 'control:f32:fwd:ip:n4096' and r['spec']['libs'] == ['fastfft'], 'wrong control cell')
                check(r['spec']['diagnostics']['process_index'] == i % 8, 'control process order mismatch')
                check(len(r['results']) == 1 and r['results'][0]['lib'] == 'fastfft', 'wrong control result')
                original_stats(r['results'][0])
                check(not r.get('measure_diagnostic'), 'unexpected control intervention')
            except (ValueError, KeyError, TypeError, IndexError) as exc:
                problems.append(f'control {i}: {exc}')
        if any(not r['spec'].get('control') for r in rows[:8] + rows[-8:]) or any(r['spec'].get('control') for r in rows[8:-8]):
            problems.append('controls must bracket the four ordinary cells')
        reference = max(c for r in controls[:8] for c in r['clock_ghz'])
        for r in rows:
            endpoints = r['clock_ghz'] + r.get('measure_diagnostic', {}).get('clock_ghz', []) if r.get('measure_diagnostic') else r['clock_ghz']
            if any(abs(c / reference - 1) > .03 for c in endpoints):
                problems.append(f"{r['key']}: original/replay endpoint exceeds 3% from initial control")
    return {'acceptance': False, 'evidence_valid': not problems, 'problems': problems, 'counts': counts, 'quiet_running_samples': len(running), 'trials': summaries}


if __name__ == '__main__':
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('run', type=Path); p.add_argument('--quiet-log', type=Path, required=True); p.add_argument('--out', type=Path, required=True)
    args = p.parse_args(); result = audit(args.run, args.quiet_log)
    args.out.write_text(json.dumps(result, indent=2) + '\n')
    print(json.dumps({k: v for k, v in result.items() if k != 'trials'}))
    raise SystemExit(int(not result['evidence_valid']))

#!/usr/bin/env python3
"""Audit the fixed-eight N96 direct/helper caller crossover; never grant acceptance.

Only inspect completed runs. Context/replay validation is required first.
The numerical checks establish internal consistency, not execution provenance:
reported order cannot independently prove call order or unchanged machine code.
"""

import argparse
from collections import Counter
import importlib.util
import json
import math
from pathlib import Path

_spec = importlib.util.spec_from_file_location(
    'planning_context_inspector', Path(__file__).with_name('inspect-context.py'))
context = importlib.util.module_from_spec(_spec)
_spec.loader.exec_module(context)
require, integer, positive = context.require, context.integer, context.positive
PATHS = ['buffers_sample_direct', 'buffers_sample_helper']
PHASES = ['before-exposure', 'after-exposure']
CALLS = [1024, 2048]


def decimal_ns(value):
    require(isinstance(value, str) and value.isascii() and value.isdecimal()
            and str(int(value)) == value and int(value) > 0,
            'invalid integer-nanosecond string')
    return int(value)


def original_choice(selector):
    """Reconstruct qualification scores and the original strict winner rule."""
    configs, workloads = selector['configurations'], selector['workloads']
    require(2 <= len(configs) <= 8 and selector['overflow'] is False,
            'invalid candidate coverage or trace overflow')
    require(all(integer(w['candidate_index'], 1) and w['candidate_index'] < len(configs)
                for w in workloads), 'workload has no candidate')
    require([w['candidate_index'] for w in workloads] ==
            sorted(w['candidate_index'] for w in workloads), 'candidate workload order changed')
    expected_order = [(i, p) for i in range(3)
                      for p in ('InPlace', 'OutOfPlace', 'Immutable')]
    best, chosen = 1.0, 0
    for index, config in enumerate(configs):
        require(config['index'] == index, 'candidate index sequence changed')
        group = [w for w in workloads if w['candidate_index'] == index]
        outcome, score = config['outcome'], config['score']
        require(outcome in ('Incumbent', 'Qualified', 'Rejected', 'Incomplete',
                            'BuildDeadline', 'Unvisited'), 'unknown original candidate outcome')
        if index == 0:
            require(outcome == 'Incumbent' and score is None and not group,
                    'original incumbent outcome/score changed')
            continue
        require(outcome != 'Incumbent', 'multiple incumbent candidates')
        require([(w['offset_index'], w['placement']) for w in group] == expected_order[:len(group)]
                and len(group) <= 9, 'candidate workload prefix changed')
        ratios = []
        for w in group:
            require(w['len'] == 96 and len(w['samples_ns']) == 7,
                    'wrong original workload length or rounds')
            if w['outcome'] == 'Deadline':
                require(w is group[-1] and outcome == 'Incomplete', 'unexpected partial workload')
                continue
            require(w['outcome'] in ('Passed', 'Rejected') and w['valid_mask'] == 16383,
                    'original workload is not complete')
            samples = w['samples_ns']
            require(all(len(pair) == 2 and all(map(positive, pair)) for pair in samples),
                    'invalid original selector samples')
            stats = [context.computed_stats([pair[m] for pair in samples]) for m in range(2)]
            for name in ('best', 'median'):
                require(len(w[name + '_ns']) == 2 and all(
                    positive(w[name + '_ns'][m]) and math.isclose(
                        w[name + '_ns'][m], stats[m][name], rel_tol=1e-12, abs_tol=0.0)
                    for m in range(2)), 'original selector summary changed')
            ratio = max(stats[1][name] / stats[0][name] for name in ('best', 'median'))
            if w['outcome'] == 'Passed':
                require(ratio <= .970000000001, 'original passing workload does not qualify')
            else:
                require(w is group[-1] and outcome == 'Rejected' and ratio > .97,
                        'original rejecting workload does not reject')
            ratios.append(ratio)
        if outcome == 'Qualified':
            require(len(group) == 9 and all(w['outcome'] == 'Passed' for w in group)
                    and positive(score) and math.isclose(score, max(ratios), rel_tol=1e-12,
                                                        abs_tol=0.0),
                    'original qualification score changed or incomplete')
            if score < best:
                best, chosen = score, index
        else:
            require(score is None, 'nonqualified candidate has a score')
            if outcome in ('Unvisited', 'BuildDeadline'):
                require(not group, 'unvisited candidate has workload evidence')
            elif outcome in ('Rejected', 'Incomplete'):
                require(group and group[-1]['outcome'] == (
                    'Rejected' if outcome == 'Rejected' else 'Deadline'),
                    'candidate outcome disagrees with workload evidence')
    require(selector['chosen_index'] == chosen, 'frozen chosen index disagrees with original scores')
    return chosen


def validate_row(row):
    # Includes exact cell eligibility, flags, nomination, original retained Arc
    # identities, region metadata and all post-arena context conditions.
    base = context.validate_row(row)
    d = row['measure_diagnostic']
    c, selector = d['context_control'], d['selector']
    p = d['planning_control']
    require(isinstance(p, dict) and p['acceptance'] is False,
            'missing or acceptance-labeled planning control')
    process = base['process']
    require(integer(p['process_index']) and p['process_index'] == process,
            'wrong planning process index')
    require(p['calls'] == CALLS and all(integer(k, 1) for k in p['calls']),
            'wrong planning fixed call counts')
    require(p['plan_ptrs'] == c['plan_ptrs'], 'planning baseline/nominee identities changed')
    chosen = original_choice(selector)
    require(integer(p['original_chosen_index']) and p['original_chosen_index'] == chosen,
            'planning intervention changed frozen chosen index')
    elapsed = decimal_ns(p['original_selection_elapsed_ns'])
    require(elapsed == decimal_ns(selector['elapsed_ns']), 'original selection elapsed changed')
    decimal_ns(selector['budget_ns'])
    for key, expected in [('path_start', process % 2), ('member_start', (process // 2) % 2),
                          ('exposure_member_start', (process // 4) % 2)]:
        require(integer(p[key]) and p[key] == expected, 'incorrect planning rotation: ' + key)
    require(integer(p['exposure_path']) and p['exposure_path'] == 0,
            'exposure must use direct route through shared warmed dispatcher')
    require(p['storage_before'] == p['storage_after'] == c['plan_regions'],
            'planning plan storage changed or does not match retained objects')
    require(p['addresses_before'] == p['addresses_after'] == c['addresses'][0],
            'planning caller addresses differ from original retained selector offset zero')
    allocations = p['allocations_before']
    require(allocations == p['allocations_after'] and len(allocations) == 3,
            'planning selector allocations changed')
    for allocation in allocations:
        require(len(allocation) == 3 and all(integer(x) for x in allocation)
                and allocation[0] > 0 and allocation[2] >= allocation[1],
                'invalid selector allocation metadata')
    # Complex<f32> is eight bytes; aligned slice 0 rounds its Vec base to 64.
    for index in (0, 1):
        ptr, length, _ = allocations[index]
        aligned = (ptr + 63) // 64 * 64
        require(length * 8 >= aligned - ptr + 2048 + 96 * 8,
                'selector allocation cannot contain declared offsets')
        if index == 0:
            require(aligned == p['addresses_before'][0][0],
                    'original selector input is not in retained allocation')
    require(isinstance(p['perturbation'], str) and p['perturbation'],
            'missing diagnostic perturbation notice')
    phases = p['phases']
    require(len(phases) == 2 and [phase['phase'] for phase in phases] == PHASES,
            'missing or misordered planning phases')
    phase_summary, timed = [], 0
    for phase in phases:
        paths = phase['paths']
        require(len(paths) == 2 and [path['path'] for path in paths] == PATHS,
                'missing or misordered direct/helper paths')
        summaries = []
        for path in paths:
            members = path['members']
            require(len(members) == 2 and [m['calls'] for m in members] == CALLS,
                    'planning member calls changed')
            values = context.pair_samples(dict(calls=CALLS, members=members), CALLS, 7)
            timed += sum(sum(m['timed_batch_ns']) for m in members)
            summaries.append(dict(path=path['path'], medians=[context.computed_stats(v)['median']
                                                            for v in values]))
        phase_summary.append(dict(phase=phase['phase'], paths=summaries))
    exposure = p['exposure_batch_ns']
    exposure_ns = decimal_ns(p['exposure_elapsed_ns'])
    require(p['exposure_truncated'] is False and exposure_ns >= 100_000_000,
            'planning exposure truncated or shorter than 100ms')
    require(isinstance(exposure, list) and 7 <= len(exposure) <= 16384
            and all(isinstance(pair, list) and len(pair) == 2
                    and all(integer(v, 1) for v in pair) for pair in exposure),
            'invalid chronological planning exposure durations')
    require(sum(map(sum, exposure)) <= exposure_ns,
            'planning exposure timed batches exceed exposure wall time')
    measure = [result for result in row['results'] if result['lib'] == 'fastfft/measure']
    require(len(measure) == 1 and positive(measure[0]['plan_ns'])
            and elapsed + exposure_ns + timed <= measure[0]['plan_ns'] * (1 + 1e-12),
            'frozen elapsed plus planning control exceeds actual planning time')
    windows = {}
    for name, window in [('first_seven', exposure[:7]), ('last_seven', exposure[-7:])]:
        windows[name] = [context.computed_stats([pair[m] / CALLS[m] for pair in window])
                         for m in range(2)]
    return dict(process=process, original_chosen_index=chosen,
                original_selection_elapsed_ns=elapsed, phases=phase_summary,
                exposure_pairs=len(exposure), exposure_elapsed_ns=exposure_ns,
                exposure_windows=windows)


def audit_rows(rows, context_report):
    problems, records = [], []
    if (context_report.get('problems') != [] or context_report.get('acceptance') is not False
            or context_report.get('cells') != 1 or context_report.get('trials') != 8
            or context_report.get('replay_problems') != []):
        problems.append('required context/replay inspection failed or lacks fixed-eight coverage')
    for number, row in enumerate(rows):
        try:
            records.append(validate_row(row))
        except (KeyError, TypeError, ValueError, IndexError, ArithmeticError) as error:
            problems.append(f'row{number}: {error}')
    if len(rows) != 8 or Counter(r['process'] for r in records) != Counter(range(8)):
        problems.append('missing, invalid or duplicate fixed-eight planning evidence')
    return dict(acceptance=False, cells=1 if rows else 0, trials=len(rows), problems=problems,
                context_problems=context_report.get('problems'), records=records)


def inspect(run):
    try:
        prior = context.inspect(run)
        with (run / 'trials.jsonl').open() as stream:
            rows = [row for line in stream if not (row := json.loads(line))['spec']['control']]
        return audit_rows(rows, prior)
    except (OSError, KeyError, TypeError, ValueError, IndexError, ArithmeticError) as error:
        return dict(acceptance=False, cells=0, trials=0, records=[],
                    problems=[f'required completed-run inspection failed: {error}'])


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

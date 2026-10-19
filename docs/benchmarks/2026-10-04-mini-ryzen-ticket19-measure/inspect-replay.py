#!/usr/bin/env python3
"""Validate and summarize unofficial Measure traces without waiving acceptance."""

import argparse
from collections import Counter, defaultdict
import json
import math
from pathlib import Path
import statistics


def stats(values, batch=1):
    ordered = sorted(values)
    return {'best': ordered[0] / batch,
            'p1': ordered[math.floor((len(ordered)-1)*0.01+0.5)] / batch,
            'median': statistics.median(ordered) / batch}


def positive(value):
    return isinstance(value, (int, float)) and math.isfinite(value) and value > 0


def caller_routes(selector):
    routes = selector.get('caller_routes', 1)
    if type(routes) is not int or routes not in (1, 2):
        raise ValueError('invalid selector caller-route count')
    return routes


def caller_route_coverage(selector):
    coverage = selector.get('caller_route_coverage', 'full')
    if coverage not in ('full', 'canonical-offset') or (
            coverage == 'canonical-offset' and caller_routes(selector) != 2):
        raise ValueError('invalid selector caller-route coverage')
    return coverage


def candidate_workload_groups(selector, index):
    """Validate route-ordered workload prefixes, including legacy single-route captures."""
    routes = caller_routes(selector)
    coverage = caller_route_coverage(selector)
    n = selector['len']
    lengths = [n]
    if 8 <= n <= 1024 and n & (n - 1) == 0:
        lengths.append(1 << 20)
    expected_groups = [[(offset, length, placement, route) for route in range(
        routes if coverage == 'full' or offset == 0 else 1)]
        for offset in range(3) for length in lengths
        for placement in ('InPlace', 'OutOfPlace', 'Immutable')]
    expected = [key for group in expected_groups for key in group]
    records = [w for w in selector['workloads'] if w['candidate_index'] == index]
    if any(type(w.get('caller_route', 0 if routes == 1 else None)) is not int for w in records):
        raise ValueError('invalid or missing caller-route identity')
    keys = [(w['offset_index'], w['len'], w['placement'],
             w.get('caller_route', 0 if routes == 1 else None)) for w in records]
    if len(records) > len(expected) or keys != expected[:len(records)]:
        raise ValueError('missing, duplicated or misordered caller-route workload prefix')
    groups, consumed = [], 0
    for expected_group in expected_groups:
        if consumed == len(records):
            break
        end = consumed + len(expected_group)
        if end > len(records):
            raise ValueError('missing caller-route workload prefix companion')
        groups.append(records[consumed:end])
        consumed = end
    for workload, group in enumerate(groups):
        active_routes = len(group)
        if active_routes == 2:
            common = ('calls', 'plan_ptrs', 'input_ptr', 'output_ptr', 'scratch_ptr', 'scratch_lens')
            if any(group[0][key] != group[1][key] for key in common):
                raise ValueError('caller routes do not share calibrated counts/plans/buffers')
        masks, prefixes = [0] * active_routes, {tuple([0] * active_routes)}
        for round_index in range(7):
            for route_turn in range(active_routes):
                if active_routes == 2:
                    route = (workload + round_index + route_turn) % 2
                else:
                    route = 0
                for member_turn in range(2):
                    if active_routes == 2:
                        member = (workload // 2 + round_index // 2 + route + member_turn) % 2
                    else:
                        member = (round_index + member_turn) % 2
                    masks[route] |= 1 << (2 * round_index + member)
                    prefixes.add(tuple(masks))
        if tuple(w['valid_mask'] for w in group) not in prefixes:
            raise ValueError('caller-route sample masks violate chronological interleaving')
        for w in group:
            if type(w['valid_mask']) is not int or not 0 <= w['valid_mask'] <= 16383:
                raise ValueError('invalid caller-route sample mask')
            if w['outcome'] in ('Passed', 'Rejected') and w['valid_mask'] != 16383:
                raise ValueError('completed caller route has partial samples')
            if w['outcome'] == 'Deadline' and not 0 <= w['valid_mask'] < 16383:
                raise ValueError('deadline caller route invents completed evidence')
    outcome = selector['configurations'][index]['outcome']
    if outcome in ('Unvisited', 'BuildDeadline', 'Incumbent'):
        if groups:
            raise ValueError('unvisited/incumbent candidate has caller-route evidence')
    elif outcome in ('Qualified', 'Rejected', 'Incomplete'):
        if not groups or any(w['outcome'] != 'Passed' for group in groups[:-1] for w in group):
            raise ValueError('candidate continued beyond a failed/incomplete workload')
        last = [w['outcome'] for w in groups[-1]]
        if outcome == 'Qualified':
            valid = len(records) == len(expected) and all(x == 'Passed' for x in last)
        elif outcome == 'Rejected':
            valid = all(x in ('Passed', 'Rejected') for x in last) and 'Rejected' in last
        else:
            valid = all(x in ('Passed', 'Rejected', 'Deadline') for x in last) and 'Deadline' in last
        if not valid:
            raise ValueError('candidate outcome disagrees with complete/partial caller-route pair')
    else:
        raise ValueError('unknown candidate outcome')
    return groups


def validate_replay(diagnostic, key, process, batch, problems):
    prefix = f'{key}/{process}'
    clocks = diagnostic['replay']['clock_ghz']
    if not all(map(positive, clocks)) or abs(clocks[1]/clocks[0]-1) > 0.03:
        problems.append(f'{prefix}: replay clock instability')
    rotations = diagnostic['replay']
    if (rotations['pair_rotation'], rotations['context_rotation'], rotations['member_rotation']) != (
            process % 3, process % 2, (process // 2) % 2):
        problems.append(f'{prefix}: incorrect replay counterbalancing')
    selector = diagnostic['selector']
    if selector['overflow']:
        problems.append(f'{prefix}: selector trace overflow')
    workloads = selector['workloads']
    try:
        caller_routes(selector)
        for index in range(len(selector['configurations'])):
            candidate_workload_groups(selector, index)
    except (KeyError, TypeError, ValueError, IndexError) as error:
        problems.append(f'{prefix}: {error}')
    role_map = diagnostic['role_map']
    storage = diagnostic['storage']
    if len(role_map) != 3 or any(i < 0 or i >= len(storage) for i in role_map):
        problems.append(f'{prefix}: invalid plan-role mapping')
    elif (selector['chosen_index'] == 0) != (role_map[1] == role_map[2]):
        problems.append(f'{prefix}: retained-baseline identity disagrees with decision')
    if len(diagnostic['comparisons']) != 3:
        problems.append(f'{prefix}: missing declared comparison')
    for w in workloads:
        valid = w['valid_mask']
        if valid < 0 or valid >= 1 << 14:
            problems.append(f'{prefix}: invalid selector mask')
        samples = w['samples_ns']
        for round_index, pair in enumerate(samples):
            for plan, value in enumerate(pair):
                active = bool(valid & (1 << (2*round_index+plan)))
                if (active and not positive(value)) or (not active and value is not None):
                    problems.append(f'{prefix}: invented/missing selector sample')
                if active and w['calls'][plan] <= 0:
                    problems.append(f'{prefix}: sample has no calibrated calls')
        if w['outcome'] in ('Passed', 'Rejected'):
            if valid != (1 << 14)-1:
                problems.append(f'{prefix}: incomplete selector statistics')
            else:
                for plan in range(2):
                    computed = stats([pair[plan] for pair in samples])
                    if not all(math.isclose(computed[m], w[f'{m}_ns'][plan], rel_tol=1e-12)
                               for m in ('best', 'median')):
                        problems.append(f'{prefix}: selector summaries disagree')
        if w['outcome'] == 'Passed' and max(w['best_ns'][1]/w['best_ns'][0],
                                            w['median_ns'][1]/w['median_ns'][0]) > 0.970000000001:
            problems.append(f'{prefix}: passing workload exceeds promotion threshold')
    comparisons = []
    for pair in diagnostic['comparisons']:
        contexts = []
        counts = []
        for context in pair['contexts']:
            computed = []
            for member in context['members']:
                ns = member['whole_buffer_ns']
                ends = member['round_ends']
                if ends[-1] != len(ns) or any(a >= b for a, b in zip([0]+ends[:-1], ends)):
                    problems.append(f'{prefix}: replay round boundaries invalid')
                if not ns or not all(map(positive, ns)):
                    problems.append(f'{prefix}: invalid replay samples')
                    continue
                computed.append(stats(ns, batch))
                if any(not math.isclose(computed[-1][m], member['stats'][m], rel_tol=1e-12)
                       for m in computed[-1]):
                    problems.append(f'{prefix}: replay summaries disagree')
            counts.append([m['calls'] for m in context['members']])
            if len(computed) == 2:
                contexts.append({'loop': context['loop'], 'ratios': {
                    m: computed[1][m]/computed[0][m] for m in computed[0]}})
        if len(counts) != 2 or counts[0] != counts[1]:
            problems.append(f'{prefix}: unmatched loop-context call counts')
        comparisons.append({'left': pair['left'], 'right': pair['right'],
                            'identical_arc': pair['identical_arc'], 'contexts': contexts})
    return comparisons


def inspect(run):
    env = json.loads((run / 'env.json').read_text())
    meta = json.loads((run / 'meta.json').read_text())
    problems = []
    if env.get('rustflags') != '-C llvm-args=-align-all-functions=6' or env.get('target_cpu_native'):
        problems.append('diagnostic build flags differ from declared protocol')
    if env.get('build_profile') != 'arena':
        problems.append('diagnostic build profile differs from declared protocol')
    if env['run']['official'] or meta['official']:
        problems.append('instrumented run must be unofficial')
    if meta['aborted'] or meta['child_failures'] or meta['drift_flag']:
        problems.append('driver stability failure')
    expected = env['run']['procs']
    trials = defaultdict(list)
    records = []
    for line in (run / 'trials.jsonl').open():
        row = json.loads(line)
        probes = row.get('clock_probes', [])
        expected_probes = 4 if row.get('measure_diagnostic', {}).get('capture') == 'complete' else 2
        if len(probes) != expected_probes:
            problems.append(f"{row['key']}: missing per-probe evidence")
        for probe in probes:
            computed = max(probe['iterations']*4/sample['wall_ns'] for sample in probe['samples'])
            if not math.isclose(computed, probe['selected_ghz'], rel_tol=1e-12):
                problems.append(f"{row['key']}: probe maximum disagrees with evidence")
            if any(sample['cpus'] != [row['cpu'], row['cpu']] or not positive(sample['thread_cpu_ns'])
                   for sample in probe['samples']):
                problems.append(f"{row['key']}: incomplete or unpinned probe CPU evidence")
        if row['spec']['control']:
            continue
        key = row['key']
        trials[key].append(row)
        libs = {r['lib']: r for r in row['results']}
        if set(libs) != {'fastfft', 'fastfft/measure'} or any(
                r['status'] != 'ok' or not r.get('verify', {}).get('passed') for r in libs.values()):
            problems.append(f'{key}: incorrect or missing library')
            continue
        process = row['spec']['diagnostics']['process_index']
        for name, lib in libs.items():
            trace = lib.get('sample_trace')
            if not trace:
                problems.append(f'{key}/{process}/{name}: missing sample trace')
                continue
            values = trace['whole_buffer_ns']
            ends = trace['round_ends']
            if len(ends) != 7 or ends[-1] != len(values) or any(
                    a >= b for a, b in zip([0] + ends[:-1], ends)) or not all(map(positive, values)):
                problems.append(f'{key}/{process}/{name}: invalid chronological samples')
                continue
            computed = stats(values, trace['batch'])
            if any(not math.isclose(computed[m], lib['time'][m], rel_tol=1e-12) for m in computed):
                problems.append(f'{key}/{process}/{name}: sample summaries disagree')
        metric = 'p1' if row['spec']['n'] <= 256 and row['spec']['batch'] == 1 else 'best'
        record = {'key': key, 'process': process, 'construction_first': row['spec']['libs'][0],
                  'execution_rotation': row['spec']['diagnostics']['execution_rotation'],
                  'changed_plan': libs['fastfft']['describe'] != libs['fastfft/measure']['describe'],
                  'original_stats': {name: lib['time'] for name, lib in libs.items()},
                  'original_ratios': {m: libs['fastfft/measure']['time'][m] / libs['fastfft']['time'][m]
                                      for m in ('best', 'p1', 'median')}, 'metric': metric}
        diagnostic = row.get('measure_diagnostic')
        if row['spec']['diagnostics']['measure_trace']:
            if not diagnostic or diagnostic['capture'] != 'complete':
                problems.append(f'{key}/{process}: no complete capture')
            else:
                record['chosen_index'] = diagnostic['selector']['chosen_index']
                base_clock = statistics.mean(row['clock_ghz'])
                if any(abs(c/base_clock-1) > 0.03 for c in diagnostic['replay']['clock_ghz']):
                    problems.append(f'{key}/{process}: replay clock differs from original bracket')
                record['comparisons'] = validate_replay(diagnostic, key, process, row['spec']['batch'], problems)
        records.append(record)
    if len(trials) != meta['cells']:
        problems.append('cell coverage differs from driver metadata')
    for key, rows in trials.items():
        indices = [r['spec']['diagnostics']['process_index'] for r in rows]
        if len(rows) != expected or Counter(indices) != Counter(range(expected)):
            problems.append(f'{key}: missing or duplicate process index')
    return {'acceptance': False, 'cells': len(trials), 'trials': len(records),
            'problems': problems, 'records': records}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('run', type=Path)
    parser.add_argument('--out', type=Path, required=True)
    args = parser.parse_args()
    report = inspect(args.run)
    args.out.write_text(json.dumps(report, indent=2)+'\n')
    print(json.dumps({'cells': report['cells'], 'trials': report['trials'],
                      'problems': report['problems'],
                      'changed_plan_trials': sum(r['changed_plan'] for r in report['records']),
                      'promoted_trials': sum(r.get('chosen_index', 0) != 0 for r in report['records'])}))
    raise SystemExit(bool(report['problems']))


if __name__ == '__main__':
    main()

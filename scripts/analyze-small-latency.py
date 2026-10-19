#!/usr/bin/env python3
"""Read-only ticket-11 gates. Never generates or edits a dispatch table.

candidate CSV... --precision f32 --n 16 --cap avx512 --incumbent generic:sse2:4
arena results.jsonl[.gz]                 # complete 64-cell unchanged gate
compare before.jsonl[.gz] after.jsonl[.gz] # matched library order and specs

Arena gates judge p1 (the 1st-percentile batch time, a best time that single
outlier batches cannot set) and the median.
"""
import argparse
import csv
import gzip
import itertools
import json
import math
import statistics
from pathlib import Path

ISAS = ['scalar', 'sse2', 'avx2', 'avx512-ymm', 'avx512']
CASES = set(itertools.product(['Forward', 'Inverse'], ['ip', 'op', 'immutable']))
STATS = ['best', 'median']
ARENA_STATS = ['p1', 'median']


def geo(xs):
    xs = list(xs)
    if not xs:
        raise ValueError('empty geometric mean')
    return math.exp(statistics.mean(map(math.log, xs)))


def positive(x):
    x = float(x)
    if not math.isfinite(x) or x <= 0:
        raise ValueError(f'nonpositive/nonfinite measurement: {x}')
    return x


def text(path):
    return gzip.open(path, 'rt') if str(path).endswith('.gz') else open(path)


def read_timings(paths, precision, n):
    groups = {}
    for path in paths:
        with text(path) as f:
            for line in f:
                # libtest may prefix the first stderr record with "test ...".
                if 'timing,' not in line:
                    continue
                row = next(csv.reader([line[line.index('timing,'):]]))
                if len(row) != 13:
                    raise ValueError(f'malformed row: {row}')
                _, pid, prec, size, kernel, isa, lanes, decomposition, direction, placement, surface, best, median = row
                times = dict(zip(STATS, map(positive, [best, median])))
                if prec != precision or int(size) != n:
                    continue
                if kernel not in ['stockham', 'generic', 'specialized', 'rustfft'] or surface not in ['public', 'concrete', 'kernel']:
                    raise ValueError(f'unknown identity/surface: {row}')
                if kernel != 'rustfft' and isa not in ISAS:
                    raise ValueError(f'unknown ISA: {isa}')
                identity = f'{kernel}:{isa}:{int(lanes)}'
                key = (identity, decomposition, surface, direction, placement)
                procs = groups.setdefault(key, {})
                if pid in procs:
                    raise ValueError(f'duplicate process/case: {key} pid={pid}')
                procs[pid] = times
    if not groups:
        raise ValueError('no matching timing records')
    aggregate, process_sets = {}, {}
    for (identity, decomposition, surface, direction, placement), procs in groups.items():
        if len(procs) != 3:
            raise ValueError(f'expected 3 processes: {identity} {surface} {direction} {placement}')
        entry = aggregate.setdefault(identity, {}).setdefault(surface, {'decomposition': decomposition, 'cases': {}})
        if entry['decomposition'] != decomposition:
            raise ValueError('ambiguous candidate identity/decomposition')
        key = (identity, surface)
        if process_sets.setdefault(key, set(procs)) != set(procs):
            raise ValueError(f'inconsistent process coverage: {key}')
        if (direction, placement) not in CASES:
            raise ValueError('invalid direction/placement')
        entry['cases'][f'{direction}:{placement}'] = {
            stat: statistics.median(p[stat] for p in procs.values()) for stat in STATS
        }
    for surfaces in aggregate.values():
        for entry in surfaces.values():
            if set(entry['cases']) != {f'{d}:{p}' for d, p in CASES}:
                raise ValueError('incomplete six-case matrix')
            entry['geomean_ns'] = {stat: geo(t[stat] for t in entry['cases'].values()) for stat in STATS}
    return aggregate


def decide(aggregate, cap, incumbent):
    eligible = {k: v['public'] for k, v in aggregate.items()
                if 'public' in v and not k.startswith('rustfft:') and ISAS.index(k.split(':')[1]) <= ISAS.index(cap)}
    if incumbent not in eligible:
        raise ValueError('missing incumbent public measurements')
    rust = [v['public'] for k, v in aggregate.items() if k.startswith('rustfft:') and 'public' in v]
    if len(rust) != 1:
        raise ValueError('expected one complete RustFFT public comparator')
    rust, old = rust[0], eligible[incumbent]
    decisions, qualified = {}, []
    for name, cand in eligible.items():
        reasons, cases = [], {}
        for stat in STATS:
            if cand['geomean_ns'][stat] > old['geomean_ns'][stat] * .97:
                reasons.append(f'{stat}: less than 3% geomean improvement')
        for case, times in cand['cases'].items():
            cases[case] = {}
            for stat in STATS:
                previous, now, reference = old['cases'][case][stat], times[stat], rust['cases'][case][stat]
                cases[case][stat] = {'ns': now, 'change': now / previous - 1,
                                     'rustfft_speedup': reference / now}
                if now > previous * 1.03:
                    reasons.append(f'{case} {stat}: >3% slowdown')
                if reference / previous >= .95 and reference / now < .95:
                    reasons.append(f'{case} {stat}: crosses 0.95 RustFFT floor')
        decisions[name] = {'qualifies': not reasons, 'reasons': reasons,
                           'geomean_ns': cand['geomean_ns'], 'cases': cases}
        if not reasons:
            qualified.append(name)
    def rank(k):
        _, isa, lanes = k.split(':')
        return (eligible[k]['geomean_ns']['median'], eligible[k]['geomean_ns']['best'], ISAS.index(isa), int(lanes), k)
    selected = min(qualified, key=rank) if qualified else incumbent
    return {'incumbent': incumbent, 'cap': cap, 'selected': selected, 'decisions': decisions,
            'surfaces': aggregate, 'note': 'Public-call gate only; arena confirmation required.'}


def load_arena(path):
    cells = {}
    with text(path) as f:
        for line in f:
            c = json.loads(line)
            if c['spec']['control']:
                continue
            if c['key'] in cells:
                raise ValueError(f'duplicate arena cell: {c["key"]}')
            if c.get('procs') != 3:
                raise ValueError('arena cell must have three processes')
            if len({r['lib'] for r in c['results']}) != len(c['results']):
                raise ValueError('duplicate library row')
            for r in c['results']:
                if r['lib'] in ['fastfft', 'rustfft']:
                    if r['status'] != 'ok' or not r.get('time'):
                        raise ValueError('missing/failed required library')
                    if not c['spec'].get('verify') or not r.get('verify', {}).get('passed'):
                        raise ValueError('required library was not successfully verified')
                    for stat in ARENA_STATS:
                        if stat not in r['time']:
                            raise ValueError(f'arena results lack {stat}; rerun with a current arena')
                        positive(r['time'][stat])
            cells[c['key']] = c
    return cells


def lib(c, name):
    found = [r for r in c['results'] if r['lib'] == name]
    if len(found) != 1:
        raise ValueError(f'missing {name}')
    return found[0]


def audit(cells):
    expected = set(itertools.product(['f32', 'f64'], [2**k for k in range(1, 9)],
                                     ['forward', 'inverse'], ['inplace', 'out_of_place']))
    seen, ratios = set(), {'f32': {}, 'f64': {}}
    for key, c in cells.items():
        s = c['spec']
        # Serde uses outofplace in arena; normalize explicitly, not by key substring.
        placement = {'outofplace': 'out_of_place'}.get(s['placement'], s['placement'])
        identity = (s['precision'], s['n'], s['direction'], placement)
        if s['suite'] != 'pow2' or s['batch'] != 1 or s['misalign'] != 0 or identity not in expected:
            raise ValueError(f'unexpected acceptance cell: {key}')
        if identity in seen:
            raise ValueError('duplicate acceptance identity')
        seen.add(identity)
        a, b = lib(c, 'fastfft'), lib(c, 'rustfft')
        ratios[s['precision']][key] = {stat: b['time'][stat] / a['time'][stat] for stat in ARENA_STATS}
    if seen != expected:
        raise ValueError(f'incomplete 64-cell acceptance: missing {sorted(expected-seen)}')
    result = {}
    for prec, cases in ratios.items():
        stats = {}
        for stat in ARENA_STATS:
            gm = geo(r[stat] for r in cases.values())
            failures = {k: r[stat] for k, r in cases.items() if r[stat] < .95}
            stats[stat] = {'geomean': gm, 'worst': min(r[stat] for r in cases.values()),
                           'below_floor': failures, 'passes': gm >= 1.2 and not failures}
        result[prec] = {'cells': cases, 'statistics': stats, 'passes': all(s['passes'] for s in stats.values())}
    return {'cell_count': len(seen), 'precision': result, 'passes': all(r['passes'] for r in result.values())}


def compare(before, after):
    if set(before) != set(after):
        raise ValueError('unmatched before/after cells')
    result = {}
    for key, a in before.items():
        b = after[key]
        if a['spec'] != b['spec'] or [r['lib'] for r in a['results']] != [r['lib'] for r in b['results']]:
            raise ValueError(f'unmatched flags or library row order: {key}')
        changes = {stat: lib(b, 'fastfft')['time'][stat]/lib(a, 'fastfft')['time'][stat]-1 for stat in ARENA_STATS}
        result[key] = {'change': changes, 'flag': any(x > .03 for x in changes.values()),
                       'before_plan': lib(a, 'fastfft').get('describe'), 'after_plan': lib(b, 'fastfft').get('describe')}
    return result


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    sub = parser.add_subparsers(dest='command', required=True)
    p = sub.add_parser('candidate')
    p.add_argument('files', nargs='+', type=Path)
    p.add_argument('--precision', choices=['f32', 'f64'], required=True)
    p.add_argument('--n', type=int, required=True)
    p.add_argument('--cap', choices=ISAS, required=True)
    p.add_argument('--incumbent', required=True)
    p = sub.add_parser('arena'); p.add_argument('file', type=Path)
    p = sub.add_parser('compare'); p.add_argument('before', type=Path); p.add_argument('after', type=Path)
    args = parser.parse_args()
    try:
        if args.command == 'candidate':
            result = decide(read_timings(args.files, args.precision, args.n), args.cap, args.incumbent)
        elif args.command == 'arena':
            result = audit(load_arena(args.file))
            metadata = args.file.parent/'meta.json'
            if metadata.exists():
                meta = json.loads(metadata.read_text())
                if meta.get('child_failures') != 0 or meta.get('aborted') is not None:
                    raise ValueError('arena had child failures or was aborted')
                result['environment_qualification'] = meta
        else:
            result = compare(load_arena(args.before), load_arena(args.after))
    except (ValueError, KeyError) as e:
        parser.error(str(e))
    print(json.dumps(result, indent=2, sort_keys=True, allow_nan=False))


if __name__ == '__main__':
    main()

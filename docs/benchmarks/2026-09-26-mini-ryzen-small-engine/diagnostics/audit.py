import gzip
import itertools
import json
import math
from pathlib import Path

ROOT = Path.cwd()
OUT = ROOT / 'docs/benchmarks/2026-09-26-mini-ryzen-small-engine'


def read_run(name):
    path = ROOT / 'target/arena' / name / 'results.jsonl'
    return {r['key']: r for line in path.read_text().splitlines()
            if not (r := json.loads(line))['spec']['control']}


def result(row, lib='fastfft'):
    return next(r for r in row['results'] if r['lib'] == lib)


def gm(values):
    values = list(values)
    return math.exp(sum(map(math.log, values)) / len(values))


def gate():
    rows = read_run('small-final')
    before = read_run('small-before')
    expected = {f'pow2:{p}:{d}:{m}:n{2**i}' for p, d, m, i in
                itertools.product(('f32', 'f64'), ('fwd', 'inv'), ('ip', 'oop'), range(1, 9))}
    assert rows.keys() == expected
    for row in rows.values():
        assert row['cpu'] == 2 and row['procs'] == 3
        assert row['spec']['profile'] == 'full'
        assert {r['lib'] for r in row['results']} == {'fastfft', 'rustfft'}
        assert all(r['status'] == 'ok' and r['verify']['passed'] for r in row['results'])
    stats = {}
    for precision in ('f32', 'f64'):
        subset = {k: r for k, r in rows.items() if r['spec']['precision'] == precision}
        stats[precision] = {}
        for statistic in ('best', 'median'):
            ratios = {k: result(r, 'rustfft')['time'][statistic] / result(r)['time'][statistic]
                      for k, r in subset.items()}
            floor = min(ratios.values())
            mean = gm(ratios.values())
            stats[precision][statistic] = {
                'geomean': mean, 'minimum': floor, 'worst_cell': min(ratios, key=ratios.get),
                'below_floor': [{'cell': k, 'ratio': v} for k, v in ratios.items() if v < .95],
                'passed': floor >= .95 and mean >= 1.2,
                'own_speedup_vs_baseline': gm(result(before[k])['time'][statistic] /
                                              result(r)['time'][statistic] for k, r in subset.items())}
    (OUT / 'acceptance.json').write_text(json.dumps(stats, indent=2) + '\n')
    print(json.dumps(stats, indent=2))


def regression():
    broad = read_run('small-regressions')
    ticket10 = read_run('ticket10-m3-quick')
    pairs = [(read_run(f'small-repeat-before-{i}'), read_run(f'small-repeat-after-{i}'))
             for i in (1, 2)]
    audit = {}
    for key in pairs[0][0]:
        sample = pairs[0][0][key]
        changes = []
        for before, after in pairs:
            assert before.keys() == after.keys() == pairs[0][0].keys()
            for rows in (before, after):
                row = rows[key]
                assert row['cpu'] == 2 and row['procs'] == 3
                assert all(r['status'] == 'ok' and r['verify']['passed'] for r in row['results'])
            changes.append({s: result(after[key])['time'][s] / result(before[key])['time'][s] - 1
                            for s in ('best', 'median')})
        audit[key] = {
            'changes': changes,
            'repeatable_over_3pct': any(all(c[s] > .03 for c in changes) for s in ('best', 'median')),
            'same_plan': all(result(b[key])['describe'] == result(a[key])['describe'] for b, a in pairs),
            'plan': result(sample)['describe'],
            'broad_change': {s: result(broad[key])['time'][s] / result(ticket10[key])['time'][s] - 1
                             for s in ('best', 'median')},
        }
    (OUT / 'regression-audit.json').write_text(json.dumps(audit, indent=2) + '\n')
    for key, stats in audit.items():
        ratios = [f'{c[s]*100:+.1f}%' for c in stats['changes'] for s in ('best', 'median')]
        print(key, *ratios, 'REPEATS' if stats['repeatable_over_3pct'] else '',
              'same plan' if stats['same_plan'] else 'CHANGED PLAN')
    print('Broad suite own speedup vs ticket10, excluding N<=256')
    for suite in ('pow2', 'smooth', 'rough', 'batch'):
        for p in ('f32', 'f64'):
            subset = {k: r for k, r in broad.items() if r['spec']['suite'] == suite
                      and r['spec']['precision'] == p and r['spec']['n'] > 256}
            print(suite, p, len(subset), {s: gm(result(ticket10[k])['time'][s] / result(r)['time'][s]
                                              for k, r in subset.items()) for s in ('best', 'median')})


if __name__ == '__main__':
    import sys
    regression() if '--regression' in sys.argv else gate()

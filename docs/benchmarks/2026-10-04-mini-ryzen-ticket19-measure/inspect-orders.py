#!/usr/bin/env python3
"""Retain every predeclared construction/execution group in paired controls."""
import argparse
from collections import defaultdict
import json
import math
from pathlib import Path


def analyze(path):
    report = json.loads(path.read_text())
    groups = defaultdict(list)
    for row in report['records']:
        construction = int(row['construction_first'] == 'fastfft/measure')
        execution = construction ^ row['execution_rotation']
        groups[row['key'], construction, execution].append(row)
    output = []
    for (key, construction, execution), rows in sorted(groups.items()):
        winners = {name: min(rows, key=lambda r: r['original_stats'][name]['p1'])
                   for name in ('fastfft', 'fastfft/measure')}
        metrics = ('best', 'p1', 'median')
        merged = {m: winners['fastfft/measure']['original_stats']['fastfft/measure'][m]
                  / winners['fastfft']['original_stats']['fastfft'][m] for m in metrics}
        paired = {m: math.exp(sum(math.log(r['original_ratios'][m]) for r in rows)/len(rows))
                  for m in metrics}
        output.append({'key': key, 'construction_first': 'measure' if construction else 'estimate',
                       'execution_first': 'measure' if execution else 'estimate',
                       'processes': [r['process'] for r in rows],
                       'changed_plans': sum(r['changed_plan'] for r in rows),
                       'group_winners': {name: r['process'] for name, r in winners.items()},
                       'merged_ratios': merged, 'paired_geomean_ratios': paired,
                       'paired_ratios': {m: [r['original_ratios'][m] for r in rows] for m in metrics}})
    return {'input': str(path), 'problems': report['problems'], 'groups': output}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('reports', nargs='+', type=Path)
    parser.add_argument('--out', type=Path, required=True)
    args = parser.parse_args()
    results = [analyze(path) for path in args.reports]
    args.out.write_text(json.dumps(results, indent=2)+'\n')
    print(json.dumps([{'input': r['input'], 'groups': len(r['groups']), 'problems': r['problems']}
                      for r in results]))


if __name__ == '__main__':
    main()

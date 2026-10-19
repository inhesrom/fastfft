"""Summarize every audited phase; this is diagnostic, never acceptance."""
from pathlib import Path
import json
import statistics as s

p = Path(__file__).parent
a = json.loads((p / 'inspection.json').read_text())
out = {'acceptance': False, 'source': 'inspection.json',
       'summary_statistic': 'arithmetic mean of both phase occurrences per condition; every process retained',
       'trials': [], 'cells': {}}
for t in a['trials']:
    row = {'key': t['key'], 'process': t['process'], 'members': {}}
    for i, name in enumerate(['estimate', 'measure']):
        vals = {str(c): {stat: s.mean(ph['stats'][i][stat] for ph in t['phases'] if ph['condition'] == c)
                        for stat in ['best', 'p1', 'median']} for c in range(3)}
        row['members'][name] = {
            'conditions': vals,
            'ratios_to_zero': {str(c): {stat: vals[str(c)][stat] / vals['0'][stat]
                                      for stat in ['best', 'p1', 'median']} for c in [1, 2]},
            'final_zero_over_first': {stat: t['phases'][-1]['stats'][i][stat] / t['phases'][0]['stats'][i][stat]
                                     for stat in ['best', 'p1', 'median']}}
    out['trials'].append(row)
for key in dict.fromkeys(t['key'] for t in a['trials']):
    tt = [t for t in out['trials'] if t['key'] == key]
    summary = {}
    for member in ['estimate', 'measure']:
        summary[member] = {}
        for c in ['1', '2']:
            ratios = [t['members'][member]['ratios_to_zero'][c]['p1'] for t in tt]
            summary[member][c] = {'p1_percent_by_process': [round((r - 1) * 100, 4) for r in ratios],
                                  'mean_p1_percent': 100 * (s.mean(ratios) - 1)}
        summary[member]['zero_p1'] = [t['members'][member]['conditions']['0']['p1'] for t in tt]
        summary[member]['zero_return_percent'] = [100 * (t['members'][member]['final_zero_over_first']['p1'] - 1) for t in tt]
    out['cells'][key] = summary
(p / 'effects.json').write_text(json.dumps(out, indent=2) + '\n')
print(json.dumps(out['cells'], indent=2))

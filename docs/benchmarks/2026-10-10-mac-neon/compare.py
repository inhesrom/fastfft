#!/usr/bin/env python3
"""Compare retained three-process captures; use the median process per metric."""
import csv, json, math, pathlib, statistics, sys
root=pathlib.Path(__file__).resolve().parent

def read(name):
    cells={}
    for line in (root/name).read_text().splitlines():
        row=json.loads(line)
        for result in row['results']:
            assert result['status']=='ok' and result['verify']['passed'], row
            cells.setdefault((row['key'],result['lib']),[]).append(result)
    assert all(len(rows)==3 for rows in cells.values()), 'Expected three independent children per cell'
    return {key:{metric:statistics.median(r['time'][metric] for r in rows) for metric in ['best','median']} for key,rows in cells.items()}

before,after=read('before.jsonl'),read('after.jsonl')
assert before.keys()==after.keys(), 'Incomplete before/after captures'
rows=[]
for (key,lib),old in before.items():
    if lib!='fastfft': continue
    new=after[key,lib]
    rows.append(dict(key=key,before_best_ns=old['best'],after_best_ns=new['best'],best_speedup=old['best']/new['best'],before_median_ns=old['median'],after_median_ns=new['median'],median_speedup=old['median']/new['median'],rustfft_median_speedup=before[key,'rustfft']['median']/after[key,'rustfft']['median']))
with (root/'comparison.csv').open('w') as f:
    writer=csv.DictWriter(f,fieldnames=rows[0].keys());writer.writeheader();writer.writerows(rows)
def geo(values): return math.exp(statistics.mean(math.log(x) for x in values))
summary={}
for suite in ['all','pow2','smooth','rough','batch']:
    subset=[r for r in rows if suite=='all' or r['key'].split(':')[0]==suite]
    summary[suite]=dict(cells=len(subset),best_speedup=geo(r['best_speedup'] for r in subset),median_speedup=geo(r['median_speedup'] for r in subset),minimum_median_speedup=min(r['median_speedup'] for r in subset),rustfft_median_speedup=geo(r['rustfft_median_speedup'] for r in subset))
summary['slower_cells']=[r for r in rows if r['median_speedup']<0.97]
(root/'summary.json').write_text(json.dumps(summary,indent=2)+'\n')
print(json.dumps(summary,indent=2))

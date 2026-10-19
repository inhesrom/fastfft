from pathlib import Path
import json,subprocess,datetime
b=Path(__file__).parent
d=Path('docs/benchmarks/2026-10-04-mini-ryzen-ticket19-measure')
subprocess.run(['python3',str(d/'inspect-large-coefficients.py'),str(b/'run'),'--quiet-log',str(b/'run-quiet.jsonl'),'--out',str(b/'inspection.json')],check=True)
subprocess.run(['python3',str(b/'inspect-mappings.py'),str(b)],check=True)
x=json.loads((b/'inspection.json').read_text());meta=json.loads((b/'run/meta.json').read_text());restore=json.loads((b/'run-affinity-proof.json').read_text())
assert x['evidence_valid'] and restore['passed']
effects=[]
for row in x['trials']:
    means={}
    for swap in [False,True]:
        ps=[p for p in row['phases'] if p['swapped']==swap]
        means[str(swap)]={k:[sum(p['stats'][m][k] for p in ps)/len(ps) for m in [0,1]] for k in ['best','p1','median']}
    ratios={s:{k:v[1]/v[0] for k,v in metrics.items()} for s,metrics in means.items()}
    effects.append(dict(key=row['key'],process=row['process'],means=means,ratios=ratios))
(b/'effects.json').write_text(json.dumps(effects,indent=2)+'\n')
merged=[]
for l in (b/'run/results.jsonl').open():
    r=json.loads(l)
    if r['spec']['control']:continue
    libs={v['lib']:v for v in r['results']};e=libs['fastfft'];m=libs['fastfft/measure']
    merged.append(dict(key=r['key'],ratios={k:m['time'][k]/e['time'][k] for k in ['best','p1','median']},estimate=e['time'],measure=m['time']))
x=dict(utc=datetime.datetime.now(datetime.timezone.utc).isoformat(),acceptance=False,evidence_valid=True,meta=meta,counts=x['counts'],quiet_running_samples=x['quiet_running_samples'],live_masks_restored=restore['live_threads'],exited_threads=restore['exited_threads'],original_merged=merged,effects=effects,limits=['Diagnostic only, cannot waive original acceptance failures','smaps totals apply to whole VMAs; addresses do not establish physical cache colors'])
(b/'checkpoint.json').write_text(json.dumps(x,indent=2)+'\n')
print(json.dumps({k:v for k,v in x.items() if k!='effects'},indent=2))
for r in effects:print(r['key'],r['process'],r['ratios'])

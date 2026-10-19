from pathlib import Path
import json,datetime
b=Path('target/ticket19/selection-fix/fourstep-storage-anchor')
def read(p):
    if not p.exists():return []
    values=[]
    for line in p.read_text().splitlines():
        try:values.append(json.loads(line))
        except json.JSONDecodeError:pass
    return values
quiet=read(b/'full-quiet.jsonl')
status=[r for r in quiet if r['event'] in ['waiting','started','running','finished','interrupted']]
running=[r for r in quiet if r['event']=='running']
rows=[r for r in read(b/'full/results.jsonl') if not r['spec']['control']]
fail=[]
for r in rows:
    libs={v['lib']:v for v in r['results']}
    metric='p1' if r['spec']['n']<=256 and r['spec']['batch']==1 else 'best'
    ratio=libs['fastfft/measure']['time'][metric]/libs['fastfft']['time'][metric]
    if ratio>1.02:fail.append({'key':r['key'],'metric':metric,'ratio':ratio})
x={'utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'completed_cells':len(rows),'expected_cells':710,'provisional_failures':fail,'last_completed':rows[-1]['key'] if rows else None,'running_monitor_samples':len(running),'dirty_running_samples':sum(r['quiet'] is not True for r in running),'last_monitor':{k:status[-1].get(k) for k in ['utc','event','quiet','load1','background_busy_cores']} if status else None}
(b/'full-progress.json').write_text(json.dumps(x,indent=2)+'\n')
print(json.dumps(x))

from pathlib import Path
import json,datetime
b=Path(__file__).parent
def read(p):
 if not p.exists():return []
 out=[]
 for line in p.read_text().splitlines():
  try:out.append(json.loads(line))
  except json.JSONDecodeError:pass
 return out
quiet=read(b/'run-quiet.jsonl');running=[r for r in quiet if r['event']=='running'];status=[r for r in quiet if r['event'] in ['waiting','started','running','finished','interrupted']]
rows=[r for r in read(b/'run/results.jsonl') if not r['spec']['control']];trials=[r for r in read(b/'run/trials.jsonl') if not r['spec']['control']]
x=dict(utc=datetime.datetime.now(datetime.timezone.utc).isoformat(),cells=len(rows),trials=len(trials),expected_cells=5,expected_trials=40,running_monitor_samples=len(running),dirty_running_samples=sum(r['quiet'] is not True for r in running),last_completed=rows[-1]['key'] if rows else None,last_monitor={k:status[-1].get(k) for k in ['utc','event','quiet','load1','background_busy_cores']} if status else None)
(b/'progress.json').write_text(json.dumps(x,indent=2)+'\n');print(json.dumps(x))

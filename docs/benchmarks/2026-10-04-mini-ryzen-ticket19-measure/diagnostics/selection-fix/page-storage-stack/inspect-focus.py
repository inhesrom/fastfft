from pathlib import Path
from collections import Counter
import importlib.util,json,datetime
b=Path('target/ticket19/selection-fix/page-storage-stack')
spec=importlib.util.spec_from_file_location('measure_audit','scripts/check-measure.py')
a=importlib.util.module_from_spec(spec);spec.loader.exec_module(a)
plan=json.loads((b/'plan.json').read_text())
manifest=a.full_manifest()
expected=set()
for clause in plan['filters']:
    f=dict(item.split('=',1) for item in clause.split(','))
    key=f"{f['suite']}:{f['precision']}:{f['dir']}:{f['place']}:n{f['n']}"
    if int(f['batch'])>1:key+=f":b{f['batch']}"
    assert key in manifest
    expected.add(key)
assert len(expected)==plan['cells']==34
rows=[json.loads(l) for l in (b/'focus/results.jsonl').read_text().splitlines()]
trials=[json.loads(l) for l in (b/'focus/trials.jsonl').read_text().splitlines()]
ordinary=[r for r in rows if not r['spec']['control']]
raw=[r for r in trials if not r['spec']['control']]
issues=[]
env=json.loads((b/'focus/env.json').read_text())
required_run={'cells':34,'procs':8,'profile':'full','process_order':'rotating','libs':['fastfft','fastfft/measure'],'suites':['pow2','smooth','batch'],'filter':';'.join(plan['filters']),'official':True,'caller_scratch':'parent-planned-shared-aligned','planning_samples':'secondary-after-execution-retained-runners'}
for key,value in required_run.items():
    if env.get('run',{}).get(key)!=value:issues.append('focus run protocol '+key)
for key,value in {'pinned_cpu':4,'build_profile':'arena','target_cpu_native':False,'rustflags':'-C llvm-args=-align-all-functions=6'}.items():
    if env.get(key)!=value:issues.append('focus environment '+key)
if env.get('env_check',{}).get('ok') is not True:issues.append('focus environment check failed')
if Counter(r['key'] for r in ordinary)!=Counter({key:1 for key in expected}):issues.append('focus merged coverage mismatch')
if Counter(r['key'] for r in raw)!=Counter({key:8 for key in expected}):issues.append('focus raw coverage mismatch')
for row in ordinary+raw:
    required=manifest.get(row['key'],{})
    if any(row['spec'].get(k)!=v for k,v in required.items()):issues.append('focus semantic spec mismatch: '+row['key'])
    if row.get('cpu')!=4:issues.append('focus CPU mismatch')
for row in ordinary:
    if row.get('procs')!=8:issues.append('focus merged process count mismatch')
for row in raw:
    if row.get('procs')!=1:issues.append('focus raw process count mismatch')
meta=json.loads((b/'focus/meta.json').read_text())
for field,value in [('cells',34),('child_failures',0),('aborted',None),('drift_flag',False),('official',True)]:
    if field not in meta or meta[field]!=value:issues.append('focus meta '+field)
if not 0<=meta.get('max_drift',100)<=0.03:issues.append('focus drift exceeds 3%')
quiet=[json.loads(l) for l in (b/'focus-quiet.jsonl').read_text().splitlines()]
policies=[r for r in quiet if r.get('event')=='policy']
if len(policies)!=1 or policies[0].get('quiet_seconds',0)<60:issues.append('missing 60-second quiet policy')
starts=[i for i,r in enumerate(quiet) if r.get('event')=='started']
if len(starts)!=1:issues.append('focus launch count mismatch')
else:
    before=quiet[:starts[0]]
    environments=[r for r in before if r.get('event')=='environment']
    if not environments or environments[-1].get('returncode')!=0:issues.append('focus prelaunch envcheck failed')
    waiting=[r for r in before if r.get('event')=='waiting']
    if len(waiting)<12 or any(r.get('quiet') is not True for r in waiting[-12:]):issues.append('focus sustained quiet preflight missing')
finished=[r for r in quiet if r.get('event')=='finished']
if len(finished)!=1 or finished[0].get('returncode')!=0:issues.append('focus monitor completion failed')
running=[r for r in quiet if r.get('event')=='running']
dirty=[r for r in running if r.get('quiet') is not True]
if not running or dirty:issues.append('focus lacks completely quiet running monitor')
restore=json.loads((b/'focus-affinity-proof.json').read_text())
if restore.get('passed') is not True:issues.append('focus affinity restoration failed')
audit=a.audit(b/'focus')
(b/'focus-audit.json').write_text(json.dumps(audit,indent=2)+'\n')
checkpoint={'utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'acceptance':False,'focus_passed':not (issues or audit['problems'] or audit['failures']),'cells':len(ordinary),'ordinary_trials':len(raw),'control_rows':len(rows)-len(ordinary),'control_trials':len(trials)-len(raw),'protocol_issues':issues,'audit_failures':audit['failures'],'audit_problems':audit['problems'],'meta':meta,'quiet_running_samples':len(running),'quiet_dirty_samples':dirty,'restoration':restore.get('passed'),'full710_launched':False}
(b/'focus-checkpoint.json').write_text(json.dumps(checkpoint,indent=2)+'\n')
print(json.dumps(checkpoint,indent=2))
raise SystemExit(not checkpoint['focus_passed'])

from pathlib import Path
import json,datetime,importlib.util
b=Path('target/ticket19/selection-fix/failed-two-cells-fixed-recheck')
spec=importlib.util.spec_from_file_location('measure_audit','scripts/check-measure.py');a=importlib.util.module_from_spec(spec);spec.loader.exec_module(a)
audit=a.audit(b/'run',require_full=False);(b/'run-audit.json').write_text(json.dumps(audit,indent=2)+'\n')
quiet=[json.loads(l) for l in (b/'run-quiet.jsonl').open()];issues=[]
policies=[r for r in quiet if r['event']=='policy'];starts=[i for i,r in enumerate(quiet) if r['event']=='started']
if len(policies)!=1 or policies[0]['quiet_seconds']!=300 or policies[0]['core']!=4 or len(starts)!=1:issues.append('quiet policy/start mismatch')
else:
    before=quiet[:starts[0]];boundary=policies[0]['utc'];consecutive=0
    for r in before:
        if r['event']=='waiting':
            if r['quiet']:consecutive+=1
            else:boundary=r['utc'];consecutive=0
    delta=(datetime.datetime.fromisoformat(quiet[starts[0]]['utc'])-datetime.datetime.fromisoformat(boundary)).total_seconds()
    if consecutive<60 or delta<300:issues.append('insufficient sustainedquiet')
    env=[r for r in before if r['event']=='environment']
    if not env or env[-1]['returncode']!=0:issues.append('envcheck failed')
expected={'pow2:f32:fwd:oop:n262144','batch:f32:fwd:oop:n32:b32768'}
if audit['cells']!=2 or {r['key'] for r in audit['comparisons']}!=expected:issues.append('fixed two-case coverage mismatch')
running=[r for r in quiet if r['event']=='running'];dirty=[r for r in running if r['quiet'] is not True]
if not running or dirty:issues.append('running monitor not completely quiet')
if quiet[-1]['event']!='finished' or quiet[-1]['returncode']!=0:issues.append('monitor completion failed')
proof=json.loads((b/'run-affinity-proof.json').read_text())
if not proof['passed']:issues.append('affinity restoration failed')
result={'utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'accepted':not(issues or audit['problems'] or audit['failures']),'cells':audit['cells'],'suites':audit['suites'],'problems':issues+audit['problems'],'failures':audit['failures'],'quiet_running_samples':len(running),'quiet_dirty_samples':dirty,'restoration':proof,'provenance':json.loads((b/'provenance.json').read_text())}
(b/'focused-checkpoint.json').write_text(json.dumps(result,indent=2)+'\n');print(json.dumps({k:v for k,v in result.items() if k not in ['restoration','provenance']},indent=2));raise SystemExit(not result['accepted'])

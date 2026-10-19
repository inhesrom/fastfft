from pathlib import Path
import json,datetime,re
b=Path('target/ticket19/selection-fix/fourstep-storage-anchor')
rows=[json.loads(l) for l in (b/'positive-quiet.jsonl').read_text().splitlines()]
log=(b/'positive.log').read_text()
issues=[]
if not re.search(r'test result: ok\. 13 passed; 0 failed;',log):issues.append('expected 13 passing Measure tests')
for name in ['measurement_can_promote_a_faster_public_plan','large_promotion_can_use_the_remaining_global_budget']:
    if not re.search(r'test measure::tests::'+name+r' \.\.\..*?\bok\b',log,re.S):issues.append('positive control absent: '+name)
policy=[r for r in rows if r.get('event')=='policy']
if len(policy)!=1 or policy[0].get('quiet_seconds',0)<60:issues.append('60-second quiet policy missing')
starts=[i for i,r in enumerate(rows) if r.get('event')=='started']
if len(starts)!=1:issues.append('launch count mismatch')
else:
    before=rows[:starts[0]]
    waiting=[r for r in before if r.get('event')=='waiting']
    if len(waiting)<12 or any(r.get('quiet') is not True for r in waiting[-12:]):issues.append('sustained prelaunch quiet missing')
    env=[r for r in before if r.get('event')=='environment']
    if not env or env[-1].get('returncode')!=0:issues.append('environment preflight failed')
running=[r for r in rows if r.get('event')=='running']
if not running or any(r.get('quiet') is not True for r in running):issues.append('running monitor not completely quiet')
finished=[r for r in rows if r.get('event')=='finished']
if len(finished)!=1 or finished[0].get('returncode')!=0:issues.append('control run failed')
restored=json.loads((b/'positive-affinity-proof.json').read_text())
if restored.get('passed') is not True:issues.append('affinity restore failed')
checkpoint={'utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'acceptance':False,'positive_controls_passed':not issues,'issues':issues,'quiet_running_samples':len(running),'restoration':restored.get('passed'),'test_provenance':json.loads((b/'test-provenance.json').read_text())}
(b/'positive-checkpoint.json').write_text(json.dumps(checkpoint,indent=2)+'\n')
print(json.dumps(checkpoint,indent=2))
raise SystemExit(bool(issues))

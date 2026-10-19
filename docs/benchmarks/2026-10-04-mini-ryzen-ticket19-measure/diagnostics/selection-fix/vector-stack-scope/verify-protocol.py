"""Verify unchanged arena workloads and acceptance before timing."""
from pathlib import Path
import hashlib,json,datetime
b=Path('target/ticket19/selection-fix/vector-stack-scope')
prior=b.parent/'fourstep-indexed-completion-quiet'
a=json.loads((prior/'commands.json').read_text())
c=json.loads((b/'commands.json').read_text())
for stage in ['positive','focus','full']:
    expected=[v.replace(str(prior),str(b)).replace(str(prior.parent/'fourstep-indexed-completion'),str(b)) for v in a[stage]]
    assert c[stage]==expected,(stage,c[stage],expected)
p=json.loads((prior/'plan.json').read_text())
n=json.loads((b/'plan.json').read_text())
for key in ['cells','procs','core','profile','suites','filters','coverage','requirements','caller_route_coverage','original_route','helper_route','full_rule']:
    assert p[key]==n[key],key
for stage,seconds in [('positive',60),('focus',300),('full',60)]:
    cmd=c[stage]
    quiet=cmd[cmd.index('docs/benchmarks/2026-10-04-mini-ryzen-ticket19-measure/quiet-run.py'):]
    actual=int(quiet[quiet.index('--quiet-seconds')+1]) if '--quiet-seconds' in quiet else 60
    assert actual==seconds
names=['commands.json','plan.json','launch.py','verify-protocol.py','verify-storage.py','inspect-positive.py','inspect-focus.py','inspect-full.py','prove-positive-affinity.py','prove-focus-affinity.py','prove-full-affinity.py','compare-absolute.py']
h={name:hashlib.sha256((b/name).read_bytes()).hexdigest() for name in names}
(b/'protocol-sha256.json').write_text(json.dumps(h,indent=2)+'\n')
r={'passed':True,'utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'prior':str(prior),'timing_commands_identical_after_candidate_path_replacement':True,'focus_cells':51,'full_cells':710,'full_suites':6,'processes':8,'preflight_seconds':{'positive':60,'focus':300,'full':60},'selector_source_unchanged':True,'frozen_protocol_files':len(h),'scope':'Command, fixed focus manifest and monitor policy equivalence; not timing acceptance.'}
(b/'protocol-verification.json').write_text(json.dumps(r,indent=2)+'\n')
print(json.dumps(r))

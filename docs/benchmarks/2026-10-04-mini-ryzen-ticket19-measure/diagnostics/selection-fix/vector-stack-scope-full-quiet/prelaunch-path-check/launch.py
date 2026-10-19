from pathlib import Path
import datetime,hashlib,json,subprocess
b=Path(__file__).parent
p=Path('target/ticket19/selection-fix/vector-stack-scope')
d=Path('target/ticket19/selection-fix/n16384-owner-crossover')
assert not (b/'full.log').exists(),'one fixed completion attempt only'
for manifest in ['source-sha256.json','audit-source-sha256.json']:
    for name,h in json.loads((p/manifest).read_text()).items():assert hashlib.sha256(Path(name).read_bytes()).hexdigest()==h,name
assert json.loads((p/'protocol-verification.json').read_text())['passed']
for name in ['alignment-verification.json','storage-verification.json','iterator-code-verification.json','stack-context-code-verification.json']:
    assert json.loads((p/name).read_text())['passed'],name
assert '78 passed; 0 failed;' in (p/'library-tests.log').read_text()
assert '2 passed; 0 failed;' in (p/'description-tests.log').read_text()
assert json.loads((p/'positive-checkpoint.json').read_text())['positive_controls_passed']
assert json.loads((p/'focus-checkpoint.json').read_text())['focus_passed']
assert json.loads((p/'absolute-review.json').read_text())['acceptable']
assert json.loads((d/'checkpoint.json').read_text())['diagnostic_evidence_valid']
review=json.loads((d/'next-step-review.json').read_text());assert review['recommendation']=='one fixed complete unchanged-default capture for completion and quiet coverage'
provenance=json.loads((b/'provenance.json').read_text());assert hashlib.sha256(Path(provenance['executable']).read_bytes()).hexdigest()==provenance['sha256']
expected=json.loads((p/'commands.json').read_text())['full'];expected=[v if v==provenance['executable'] else v.replace(str(p),str(b)) for v in expected];i=expected.index('--attribute');expected[i:i]=['--quiet-seconds','300']
command=json.loads((b/'commands.json').read_text())['full'];assert command==expected
record={'utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'command':command,'provenance':provenance,'one_fixed_completion_attempt':True,'quiet_start_seconds':300,'prior_failure_retained':True,'scope':'Same frozen default executable and full710 protocol. Stricter five-minute preflight; all running quiet and 2% gates unchanged. No automatic retries.'}
(b/'full-start.json').write_text(json.dumps(record,indent=2)+'\n')
print('Entering fresh five-minute quiet gate; unchanged default executable',provenance['sha256'],flush=True)
with (b/'full.log').open('x') as log:r=subprocess.run(command,stdout=log,stderr=subprocess.STDOUT)
print('Driver exit',r.returncode,flush=True);print((b/'full.log').read_text()[-4500:],flush=True);raise SystemExit(r.returncode)

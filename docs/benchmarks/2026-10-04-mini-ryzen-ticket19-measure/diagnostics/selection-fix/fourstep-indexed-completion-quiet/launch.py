from pathlib import Path
import json,hashlib,subprocess,sys,datetime
b=Path('target/ticket19/selection-fix/fourstep-indexed-completion-quiet')
stage=sys.argv[1]
assert stage in ['positive','focus','full']
assert not (b/(stage+'.log')).exists(), 'fixed attempt already has a log'
for name,h in json.loads((b/'source-sha256.json').read_text()).items():
    assert hashlib.sha256(Path(name).read_bytes()).hexdigest()==h,name
for name,h in json.loads((b/'audit-source-sha256.json').read_text()).items():
    assert hashlib.sha256(Path(name).read_bytes()).hexdigest()==h,name
provenance=json.loads((b/('test-provenance.json' if stage=='positive' else 'provenance.json')).read_text())
assert hashlib.sha256(Path(provenance['executable']).read_bytes()).hexdigest()==provenance['sha256']
assert 'test result: ok.' in (b/'library-tests.log').read_text() and '0 failed;' in (b/'library-tests.log').read_text()
assert json.loads((b/'alignment-verification.json').read_text())['passed']
assert json.loads((b/'storage-verification.json').read_text())['passed']
assert json.loads((b/'iterator-code-verification.json').read_text())['passed']
assert '2 passed; 0 failed;' in (b/'description-tests.log').read_text()
if stage in ['focus','full']:
    assert json.loads((b/'positive-checkpoint.json').read_text())['positive_controls_passed']
if stage=='full':
    assert json.loads((b/'focus-checkpoint.json').read_text())['focus_passed']
    assert json.loads((b/'absolute-review.json').read_text())['acceptable']
command=json.loads((b/'commands.json').read_text())[stage]
record={'utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'stage':stage,'command':command,'provenance':provenance}
(b/(stage+'-start.json')).write_text(json.dumps(record,indent=2)+'\n')
print('Entering fresh quiet gate for',stage,'with executable',provenance['sha256'],flush=True)
with (b/(stage+'.log')).open('w') as log:
    result=subprocess.run(command,stdout=log,stderr=subprocess.STDOUT)
print('Driver exit',result.returncode,flush=True)
print((b/(stage+'.log')).read_text()[-4500:],flush=True)
raise SystemExit(result.returncode)

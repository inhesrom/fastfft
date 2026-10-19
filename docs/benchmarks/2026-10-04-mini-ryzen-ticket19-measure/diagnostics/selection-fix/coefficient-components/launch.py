from pathlib import Path
import json,hashlib,subprocess,datetime,os
b=Path('target/ticket19/selection-fix/coefficient-components')
assert not (b/'run.log').exists(),'fixed run already has a log'
for name,h in json.loads((b/'source-sha256.json').read_text()).items():assert hashlib.sha256(Path(name).read_bytes()).hexdigest()==h,name
for name,h in json.loads((b/'audit-source-sha256.json').read_text()).items():assert hashlib.sha256(Path(name).read_bytes()).hexdigest()==h,name
p=json.loads((b/'provenance.json').read_text());assert hashlib.sha256(Path(p['executable']).read_bytes()).hexdigest()==p['sha256']
assert '12 passed; 0 failed;' in (b/'agent-validation/shift-tests.log').read_text()
assert json.loads((b/'storage-verification.json').read_text())['passed']
assert 'Ran 27 tests' in (b/'audit-tests.log').read_text() and 'OK' in (b/'audit-tests.log').read_text()
assert json.loads((b/'code-verification.json').read_text())['passed']
assert json.loads((b/'iterator-code-verification.json').read_text())['passed']
assert all(not os.environ.get(k) for k in ['FASTFFT_ISA_CAP','FASTFFT_REQUIRE_ISA','FASTFFT_TEST_QUICK','CARGO_ENCODED_RUSTFLAGS'])
cmd=json.loads((b/'commands.json').read_text())['run']
(b/'run-start.json').write_text(json.dumps({'utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'command':cmd,'provenance':p},indent=2)+'\n')
print('Entering fresh quiet gate; executable',p['sha256'],flush=True)
with (b/'run.log').open('w') as f:r=subprocess.run(cmd,stdout=f,stderr=subprocess.STDOUT)
print('Driver exit',r.returncode,flush=True);print((b/'run.log').read_text()[-4500:],flush=True)
raise SystemExit(r.returncode)

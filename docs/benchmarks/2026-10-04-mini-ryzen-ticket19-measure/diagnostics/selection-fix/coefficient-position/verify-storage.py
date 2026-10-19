from pathlib import Path
import hashlib,json,importlib.util,datetime
b=Path(__file__).parent
s=importlib.util.spec_from_file_location('audit','docs/benchmarks/2026-10-04-mini-ryzen-ticket19-measure/inspect-coefficient-position.py');a=importlib.util.module_from_spec(s);s.loader.exec_module(a)
files=json.loads((b/'agent-validation/source-sha256.json').read_text())
for p,h in files.items():assert hashlib.sha256(Path(p).read_bytes()).hexdigest()==h,p
x=json.loads((b/'agent-validation/geometry-with-offsets.json').read_text())
for plan in x['plans']:
 n=plan['n'];obj=plan['regions'][0]['ptr']
 # The constructor-only probe omits owner/runner fields. Infer the region owner
 # from its direct FFT object only to adapt the geometry audit; runner=object
 # is a positive placeholder, not a measured runner identity.
 regions=[dict(r,owner=obj) for r in plan['regions']]
 a.validate_storage(dict(plan_ptr=obj,runner_ptr=obj,regions=regions),n)
 assert plan['scratch']==[a.SCRATCH[n]]*3
assert '8 passed; 0 failed;' in (b/'agent-validation/tests.log').read_text()
for name in ['clippy-tuning.log','clippy-no-tuning.log']:assert 'Finished' in (b/'agent-validation'/name).read_text()
r=dict(utc=datetime.datetime.now(datetime.timezone.utc).isoformat(),passed=True,source_files_verified=len(files),native_tests=8,geometry=x['scope'],limitation='Constructor geometry used retained default+tuning rlib; new diagnostic audit requires identical actual live regions. Runner identity not probed here. No Miri or benchmark.')
(b/'storage-verification.json').write_text(json.dumps(r,indent=2)+'\n');print(json.dumps(r))

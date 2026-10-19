from pathlib import Path
import subprocess,os,datetime,json
b=Path('target/ticket19/selection-fix/coefficient-components')
env=dict(os.environ,RUSTFLAGS='-C llvm-args=-align-all-functions=6')
steps=[('arena-clippy.log',['cargo','clippy','-j1','-pfastfft-arena','--features','measure-diagnostics','--','-D','warnings'],None),('audit-tests.log',['python3','docs/benchmarks/2026-10-04-mini-ryzen-ticket19-measure/test_coefficient_components_audit.py'],None),('build.log',['cargo','build','-j1','--profile','arena','-pfastfft-arena','--features','measure-diagnostics'],env)]
for name,cmd,e in steps:
 if name=='build.log':subprocess.run(['python3',str(b/'snapshot.py')],check=True)
 print(datetime.datetime.now(datetime.timezone.utc).isoformat(),name,flush=True)
 with (b/name).open('w') as f:r=subprocess.run(cmd,stdout=f,stderr=subprocess.STDOUT,env=e)
 if r.returncode:
  print((b/name).read_text()[-8000:],flush=True);raise SystemExit(r.returncode)
 print((b/name).read_text()[-500:],flush=True)

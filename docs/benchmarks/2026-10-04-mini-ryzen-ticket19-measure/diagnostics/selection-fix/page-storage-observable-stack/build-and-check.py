from pathlib import Path
import json,subprocess,os,datetime
b=Path('target/ticket19/selection-fix/page-storage-observable-stack');cmds=json.loads((b/'commands.json').read_text())
stages=[('diagnostic-check',cmds['diagnostic-compile-check'],False),('checks',cmds['library-clippy'],False),('diagnostic-clippy',cmds['diagnostic-clippy'],False),('build',['cargo','test','-j1','--release','-pfastfft','--lib','--no-run'],True),('freeze-tests',['python3',str(b/'freeze.py')],False),('library-tests',cmds['library-correctness'],False),('arena-build',['cargo','build','-j1','--profile','arena','-pfastfft-arena'],True),('freeze-arena',['python3',str(b/'freeze-arena.py')],False)]
for name,cmd,rustflags in stages:
    print(datetime.datetime.now(datetime.timezone.utc).isoformat(),name,flush=True)
    env=os.environ.copy()
    if rustflags:env['RUSTFLAGS']='-C llvm-args=-align-all-functions=6'
    with (b/(name+'.log')).open('w') as log:r=subprocess.run(cmd,stdout=log,stderr=subprocess.STDOUT,env=env)
    print((b/(name+'.log')).read_text()[-1400:],flush=True)
    if r.returncode:raise SystemExit(r.returncode)

from pathlib import Path
import json,subprocess,os,datetime
b=Path('target/ticket19/selection-fix/canonical-storage')
commands=json.loads((b/'commands.json').read_text())
for name,command,logname in [
    ('scalar-storage-check',commands['scalar-storage-check'],'storage-tests.log'),
    ('diagnostic-compile-check',commands['diagnostic-compile-check'],'diagnostic-check.log'),
]:
    print(datetime.datetime.now(datetime.timezone.utc).isoformat(),name,flush=True)
    with (b/logname).open('w') as f:
        result=subprocess.run(command,stdout=f,stderr=subprocess.STDOUT)
    print((b/logname).read_text()[-4500:],flush=True)
    if result.returncode:raise SystemExit(result.returncode)

import json, subprocess, sys, pathlib
binary, output = sys.argv[1:]
sizes = {'pow2': [2, 4, 8, 16, 32, 64, 128, 256, 1024, 4096, 16384, 65536], 'smooth': [120, 210, 1000, 1331, 15625], 'rough': [17, 257, 1009], 'batch': [8, 32, 256, 1024]}
with open(output, 'w') as out:
    for precision in ['f32', 'f64']:
        for suite, ns in sizes.items():
            for n in ns:
                spec = dict(suite=suite, precision=precision, direction='forward', placement='inplace', n=n, batch=(1<<20)//n if suite=='batch' else 1, misalign=0, scenario=None, libs=['fastfft','rustfft'], profile='quick', data='zero', verify=True, seed=1592590338, control=False)
                for trial in range(3):
                    p = subprocess.run([binary, 'run-cell', '--core', '2', '--spec', json.dumps(spec)], capture_output=True, text=True, check=True)
                    row=json.loads(p.stdout)
                    assert all(r['status']=='ok' and r['verify']['passed'] for r in row['results']), row
                    row['trial']=trial
                    out.write(json.dumps(row)+'\n'); out.flush()
                print(precision,suite,n,flush=True)

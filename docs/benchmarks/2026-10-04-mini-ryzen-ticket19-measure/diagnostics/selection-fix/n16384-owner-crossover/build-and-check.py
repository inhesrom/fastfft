from pathlib import Path
import datetime,json,os,subprocess,sys
b=Path(__file__).parent
env=os.environ.copy();env['RUSTFLAGS']='-C llvm-args=-align-all-functions=6'
for k in ['FASTFFT_ISA_CAP','FASTFFT_REQUIRE_ISA','FASTFFT_TEST_QUICK','CARGO_ENCODED_RUSTFLAGS']:
    assert not env.get(k),k
commands=[('build.log',['cargo','build','-j1','--profile','arena','-pfastfft-arena','--features','measure-diagnostics']),('swap-tests.log',['cargo','test','-j1','--release','-pfastfft','--no-default-features','--features','sse2,tuning','--lib','coefficient_swap','--','--test-threads=1']),('audit-tests.log',['python3','-m','unittest','discover','-s','docs/benchmarks/2026-10-04-mini-ryzen-ticket19-measure','-p','test_large_coefficient_audit.py']),('clippy.log',['cargo','clippy','-j1','--workspace','--all-targets','--features','fastfft-arena/measure-diagnostics','--','-D','warnings']),('formatting.log',['cargo','fmt','--all','--','--check']),('diff-check.log',['git','diff','--check'])]
(b/'build-plan.json').write_text(json.dumps({'created_utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'features':'default SIMD + measure-diagnostics/tuning; selector tracing off','acceptance':False,'RUSTFLAGS':env['RUSTFLAGS'],'commands':commands},indent=2)+'\n')
(b/'toolchain.json').write_text(json.dumps({name:subprocess.check_output(cmd,text=True) for name,cmd in [('rustc',['rustc','-vV']),('cargo',['cargo','-V'])]},indent=2)+'\n')
for name,cmd in commands:
    print('Checking',name,flush=True)
    with (b/name).open('x') as log:r=subprocess.run(cmd,env=env,stdout=log,stderr=subprocess.STDOUT)
    if r.returncode:
        print((b/name).read_text()[-5000:],flush=True);sys.exit(r.returncode)
print('All build and validation checks passed.',flush=True)

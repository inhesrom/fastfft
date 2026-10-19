from pathlib import Path
import datetime,hashlib,json,re
b=Path(__file__).parent
asm=(b/'crossover-disassembly.txt').read_text();routines=[]
for block in asm.split('Disassembly of section .text:'):
    if not re.search(r'<fastfft_arena::coefficient_crossover::run_fixed>:',block):continue
    lines=block.splitlines();sites=[]
    for i,line in enumerate(lines):
        if not re.search(r'call\s+\*0x38\(',line):continue
        context='\n'.join(lines[max(0,i-15):i+3])
        match=re.search(r'mov\s+\$0x([14]),%edx',context);assert match,context
        assert re.search(r'mov\s+\$0x5f5e100,%r8d',context),context
        sites.append({'address':line.split(':')[0].strip(),'calls':int(match[1],16),'turn_ns':100000000,'context':context})
    assert len(sites)==2,sites
    assert sites[0]['calls']==sites[1]['calls']
    routines.append({'entry':next(l for l in lines if '<fastfft_arena::coefficient_crossover::run_fixed>:' in l),'sites':sites})
assert len(routines)==3 and sum(r['sites'][0]['calls']==4 for r in routines)==2
for manifest in ['source-sha256.json','audit-source-sha256.json']:
    for p,h in json.loads((b/manifest).read_text()).items():assert hashlib.sha256(Path(p).read_bytes()).hexdigest()==h,p
assert json.loads((b/'production-source-verification.json').read_text())['passed']
assert '21 passed; 0 failed;' in (b/'swap-tests.log').read_text()
assert 'Ran 31 tests' in (b/'audit-tests.log').read_text() and 'OK' in (b/'audit-tests.log').read_text()
assert 'Finished' in (b/'clippy.log').read_text()
assert not (b/'formatting.log').read_text() and not (b/'diff-check.log').read_text()
p=json.loads((b/'provenance.json').read_text())
record={'utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'passed':True,'acceptance':False,'executable_sha256':p['sha256'],'routines':routines,'scope':'Both compiled const-four replay routines have two measured member calls through the shared Runner::turn route, with four calls and 100ms per turn. Legacy const-one routine retains its two one-call sites. This diagnostic build is a distinct code context and supplies no production acceptance.'}
(b/'code-verification.json').write_text(json.dumps(record,indent=2)+'\n')
print(json.dumps({'passed':True,'compiled_four_call_routines':2,'four_call_sites':4,'sha256':p['sha256']}))

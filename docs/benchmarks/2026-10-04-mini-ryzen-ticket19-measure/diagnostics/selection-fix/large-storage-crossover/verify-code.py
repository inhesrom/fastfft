from pathlib import Path
import json,re,datetime,hashlib
b=Path(__file__).parent
s=(b/'crossover-disassembly.txt').read_text();sites=[]
for block in s.split('Disassembly of section .text:'):
    if not re.search(r'<fastfft_arena::coefficient_crossover::run_fixed>:',block):continue
    lines=block.splitlines()
    for i,line in enumerate(lines):
        if re.search(r'call\s+\*0x38\(',line):
            context='\n'.join(lines[max(0,i-12):i+6])
            assert re.search(r'mov\s+\$0x1,%edx',context),context
            assert re.search(r'mov\s+\$0x5f5e100,%r8d',context),context
            sites.append(dict(callsite=line.split(':')[0].strip(),calls=1,turn_ns=100000000,context=context))
assert len(sites)==2,('expected both member calls in shared fixed replay',len(sites))
assert len((b/'replay-callers.txt').read_text().splitlines())==1, 'one shared replay entry caller'
p=json.loads((b/'provenance.json').read_text())
x=dict(utc=datetime.datetime.now(datetime.timezone.utc).isoformat(),passed=True,executable_sha256=p['sha256'],callsites=sites,shared_replay_function=True,entry_callers=(b/'replay-callers.txt').read_text(),
       mapping_capture_source_order='after original/replay endpoints and final restoration, before sample JSON; caller workspace geometry derived after timing',
       timing_source_sha256=hashlib.sha256(Path('bench/arena/src/fastfft_adapter.rs').read_bytes()).hexdigest())
(b/'code-verification.json').write_text(json.dumps(x,indent=2)+'\n');print(json.dumps(dict(passed=True,callsites=len(sites),sha256=p['sha256'])))

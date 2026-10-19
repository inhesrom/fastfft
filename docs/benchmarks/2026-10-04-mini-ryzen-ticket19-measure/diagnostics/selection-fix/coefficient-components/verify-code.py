from pathlib import Path
import re,json,datetime,hashlib
b=Path(__file__).parent
s=(b/'position-disassembly.txt').read_text();functions=[]
for block in s.split('Disassembly of section .text:'):
 header=re.search(r'([0-9a-f]+) <fastfft_arena::coefficient_components::run_fixed>:',block)
 if not header:continue
 lines=block.splitlines();sites=[]
 for i,line in enumerate(lines):
  if re.search(r'call\s+\*0x38\(',line):
   context='\n'.join(lines[max(0,i-14):i+3]);m=re.search(r'mov\s+\$0x(a0|14),%edx',context)
   assert m,context
   assert re.search(r'mov\s+\$0x5f5e100,%r8d',context),context
   sites.append(dict(callsite=line.split(':')[0].strip(),calls=int(m[1],16),turn_ns=100000000,context=context))
 assert len(sites)==2 and sites[0]['calls']==sites[1]['calls'],sites
 functions.append(dict(address=header[1],calls=sites[0]['calls'],callsites=sites))
assert len(functions)==4 and sorted(f['calls'] for f in functions)==[20,20,160,160]
p=json.loads((b/'provenance.json').read_text())
r=dict(utc=datetime.datetime.now(datetime.timezone.utc).isoformat(),passed=True,executable_sha256=p['sha256'],functions=functions,
 generic_instantiations='Two scalar types times both fixed call counts; frozen source validates precision/length and dispatches N4096 to20 and N210 to160. Both member turn callsites checked in each generated function.',
 limitation='Scoped call-argument check, not an instruction-equivalence/performance claim. Original arena timing is unchanged; tuning build is diagnostic only.',
 source_sha256=hashlib.sha256(Path('bench/arena/src/coefficient_components.rs').read_bytes()).hexdigest())
(b/'code-verification.json').write_text(json.dumps(r,indent=2)+'\n');print(json.dumps(dict(passed=True,functions=len(functions),callsites=sum(len(f['callsites']) for f in functions))))

#!/usr/bin/env python3
"""Read-only extraction of a SHA-verified frozen ELF. Never executes it."""
from pathlib import Path
import argparse,hashlib,json,re,subprocess
p=argparse.ArgumentParser();p.add_argument('executable',type=Path);p.add_argument('sha256');p.add_argument('output',type=Path);a=p.parse_args()
assert hashlib.sha256(a.executable.read_bytes()).hexdigest()==a.sha256,'frozen SHA mismatch'
a.output.mkdir(parents=True,exist_ok=True)
def run(args):return subprocess.check_output(args,text=True)
symbols=run(['nm','-S','-C',str(a.executable)]);(a.output/'symbols.txt').write_text(symbols);entries=[]
for line in symbols.splitlines():
 v=line.split(maxsplit=3)
 if len(v)==4 and v[2].lower()=='t':
  try:entries.append((int(v[0],16),int(v[1],16),v[3]))
  except ValueError:pass
probes={}
for start,size,name in entries:
 if 'SmallVector>::rectangle' in name:
  for offset in [0x20,0x80,0x100]:
   if offset<size:probes[start+offset]=(start,size,name)
dwarf=run(['addr2line','-a','-f','-C','-i','-e',str(a.executable),*[hex(x) for x in probes]])
(a.output/'locator-dwarf.txt').write_text(dwarf);located={}
for block in re.split(r'(?m)(?=^0x[0-9a-fA-F]+$)',dwarf):
 lines=block.splitlines()
 if not lines or not lines[0].startswith('0x'):continue
 sym=probes[int(lines[0],16)];vm=re.search(r'::(F\d+x\d+v?) as ',sym[2]);
 if not vm:continue
 vector=vm[1]
 for line in lines[1:]:
  m=re.fullmatch(r'(?:rectangle|run(?:<fastfft::isa::x86::'+vector+r', )?)<?(\d+), (\d+), (\d+), (true|false), (true|false)>',line)
  # addr2line uses rectangle<N,..> or run<Vector,N,..> depending on inlining.
  if not m:
   m=re.fullmatch(r'run<fastfft::isa::x86::'+vector+r', (\d+), (\d+), (\d+), (true|false), (true|false)>',line)
  if m:located.setdefault((vector,*m.groups()),set()).add(sym)
wanted={}
for v,m,n in [('F32x16',14,15),('F32x16',15,14),('F64x4v',14,15),('F64x4v',15,14)]:
 key=(v,'210',str(m),str(n),'true','false');assert len(located.get(key,set()))==1,(key,located.get(key));wanted[f'Small-{v}-n210-{m}x{n}-inverse']=next(iter(located[key]))
for n,m,b,inv in [(80,8,10,'false'),(80,16,5,'false'),(96,8,12,'true')]:
 for batch in ['false','true']:
  key=('F32x8v',str(n),str(m),str(b),inv,batch);assert len(located.get(key,set()))==1,key
  name=f'control-n{n}-'+('inverse' if inv=='true' else 'forward')+f'-{m}x{b}'+('-batch' if batch=='true' else '')
  wanted[name]=next(iter(located[key]))
# Observe costs at representative narrow fused leaves, not a performance claim.
for vector,width in [('F32x4',4),('F64x2',2),('F32x8',8),('F64x4',4),('F32x8v',8),('F64x4v',4),('F32x16',16),('F64x8',8)]:
 options=[(key,sym) for key,values in located.items() if key[0]==vector and key[4:] == ('true','false') and 1<int(key[2])<=width and 1<int(key[3])<=width for sym in values]
 if options:
  key,sym=min(options,key=lambda x:(int(x[0][1]),int(x[0][2])));wanted[f'representative-{vector}-n{key[1]}-{key[2]}x{key[3]}']=sym
for start,size,name in entries:
 if ' as fastfft::engine::fourstep::PanelVector>::execute' in name:
  m=re.search(r'::(\w+) as ',name);wanted['FourStep-'+m[1]]=(start,size,name)
functions={}
for label,(start,size,name) in wanted.items():
 asm=run(['objdump','-d','-C','-Mintel',f'--start-address={start}',f'--stop-address={start+size}',str(a.executable)])
 path=a.output/(label+'.asm');path.write_text(asm)
 functions[label]={'start':hex(start),'end':hex(start+size),'bytes':size,'symbol':name,'assembly':path.name,'assembly_sha256':hashlib.sha256(asm.encode()).hexdigest()}
result={'executable':str(a.executable),'sha256':a.sha256,'functions':functions,'scope':'Static extraction; all SIMD FourStep entries plus scalar entries, exact N210 kernels, six tiled controls, representative fused lower-width leaves.'}
(a.output/'located.json').write_text(json.dumps(result,indent=2)+'\n');print(json.dumps({'executable':str(a.executable),'functions':len(functions),'labels':list(functions)}))

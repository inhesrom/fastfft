#!/usr/bin/env python3
"""Locate exact single-transform kernels through DWARF; no FFT execution."""
import argparse,json,re,subprocess
from pathlib import Path
p=argparse.ArgumentParser();p.add_argument('executable',type=Path);p.add_argument('output',type=Path);a=p.parse_args()
a.output.mkdir(parents=True,exist_ok=True)
def run(args):return subprocess.check_output(args,text=True)
symbols=run(['nm','-n','-C',str(a.executable)])
(a.output/'symbols.txt').write_text(symbols)
entries=[]
for line in symbols.splitlines():
 parts=line.split(maxsplit=2)
 if len(parts)==3 and re.fullmatch('[0-9a-fA-F]+',parts[0]):entries.append((int(parts[0],16),parts[2]))
starts=sorted(set(x[0] for x in entries));probes={}
for start,name in entries:
 if 'F32x8v as fastfft::engine::small::SmallVector>::rectangle' not in name:continue
 end=next(x for x in starts if x>start)
 for offset in [0x20,0x80,0x100]:
  if start+offset<end:probes[start+offset]=(start,end)
dwarf=run(['addr2line','-a','-f','-C','-i','-e',str(a.executable),*[hex(x) for x in probes]])
(a.output/'locator-dwarf.txt').write_text(dwarf)
want={'n96-inverse-8x12':'rectangle<96, 8, 12, true, false>', 'n80-forward-8x10':'rectangle<80, 8, 10, false, false>', 'n80-forward-16x5':'rectangle<80, 16, 5, false, false>'}
found={k:set() for k in want}
for block in re.split(r'(?m)(?=^0x[0-9a-fA-F]+$)',dwarf):
 lines=block.splitlines()
 if not lines or not lines[0].startswith('0x'):continue
 address=int(lines[0],16)
 for key,identity in want.items():
  if identity in lines or identity.replace('rectangle<', 'run<fastfft::isa::x86::F32x8v, ') in lines:found[key].add(probes[address])
result={}
for key,ranges in found.items():
 if len(ranges)!=1:raise RuntimeError((key,'ambiguous or missing',ranges))
 start,end=next(iter(ranges))
 assembly=run(['objdump','-d','-C','-Mintel',f'--start-address={start}',f'--stop-address={end}',str(a.executable)])
 (a.output/(key+'.asm')).write_text(assembly)
 result[key]={'identity':want[key],'start':hex(start),'end':hex(end),'assembly':key+'.asm'}
(a.output/'located.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result,indent=2))

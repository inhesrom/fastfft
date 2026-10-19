"""Static caller/stack inspection only: never execute the retained binary."""
from pathlib import Path
import json,re,subprocess,hashlib,collections
B=Path('target/ticket19/selection-fix');O=B/'fourstep-indexed-completion-quiet';A=O/'selection-code';A.mkdir(exist_ok=True);E=B/'fourstep-indexed-completion/fastfft-arena'
def run(a):return subprocess.check_output(a,text=True)
s=run(['nm','-S','-C',str(E)]);entries=[]
for line in s.splitlines():
 v=line.split(maxsplit=3)
 if len(v)==4 and v[2].lower()=='t':
  try:entries.append((int(v[0],16),int(v[1],16),v[3]))
  except ValueError:pass
probes={}
for start,size,name in entries:
 if any(t+' as fastfft::engine::small::SmallVector>::rectangle' in name for t in ['F32x16','F64x4v']):
  for off in [0x20,0x80,0x100]:
   if off<size:probes[start+off]=(start,size,name)
dwarf=run(['addr2line','-a','-f','-C','-i','-e',str(E),*[hex(x) for x in probes]])
(A/'small-locator-dwarf.txt').write_text(dwarf)
wanted={(t,m,n):set() for t in ['F32x16','F64x4v'] for m,n in [(14,15),(15,14)]}
for block in re.split(r'(?m)(?=^0x[0-9a-fA-F]+$)',dwarf):
 lines=block.splitlines()
 if not lines or not lines[0].startswith('0x'):continue
 address=int(lines[0],16);sym=probes[address]
 for k in wanted:
  t,m,n=k;needle=f'rectangle<210, {m}, {n}, true, false>'
  if t+' as ' in sym[2] and any(needle in line or needle.replace('rectangle<',f'run<fastfft::isa::x86::{t}, ') in line for line in lines):wanted[k].add(sym)
selected=[]
for key,found in wanted.items():
 assert len(found)==1,(key,found)
 selected.append((f'Small-{key[0]}-{key[1]}x{key[2]}',next(iter(found))))
for start,size,name in entries:
 if name in ['fastfft::measure::sample_helper','fastfft::measure::sample_routed','fastfft::measure::Buffers<T>::sample','<fastfft_arena::fastfft_adapter::FastRunner<T> as fastfft_arena::adapters::Runner<T>>::run','<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_with_scratch','<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch','fastfft::fft::FftImpl<T>::run_chunk'] or name=='<fastfft::isa::x86::F64x8 as fastfft::engine::fourstep::PanelVector>::execute':
  selected.append((f'function-{start:x}',(start,size,name)))
results={}
for label,(start,size,name) in selected:
 asm=run(['objdump','-d','-C','-Mintel','--no-show-raw-insn',f'--start-address={start}',f'--stop-address={start+size}',str(E)])
 (A/(label+'.asm')).write_text(asm);ins=[]
 for ln in asm.splitlines():
  m=re.match(r'\s*([0-9a-f]+):\s+(.+)',ln)
  if m:ins.append((int(m[1],16),m[2]))
 accesses=[]
 for addr,txt in ins:
  if not re.search(r'\b[xyz]mm\d+\b',txt):continue
  for match in re.finditer(r'((?:[XYZ]MM|Q|D|)WORD) PTR \[(rsp|rbp)([+-]0x[0-9a-f]+)?\]',txt):
   width={'ZMMWORD':64,'YMMWORD':32,'XMMWORD':16,'QWORD':8,'DWORD':4,'WORD':2}[match[1]];off=int(match[3],16) if match[3] else 0
   accesses.append({'address':hex(addr),'instruction':txt,'base':match[2],'offset':off,'bytes':width,'offset_mod64':off%64})
 phases={str(residue):sum(((residue+a['offset'])%64)+a['bytes']>64 for a in accesses if a['base']=='rsp') for residue in [0,16,32,48]}
 results[label]={'symbol':name,'start':hex(start),'bytes':size,'prologue':[{'address':hex(a),'instruction':i} for a,i in ins[:22]],'explicit_rsp_align':[{'address':hex(a),'instruction':i} for a,i in ins if re.match('and +rsp,',i)],'static_vector_stack_accesses':accesses,'static_rsp_vector_memory_sites':sum(a['base']=='rsp' for a in accesses),'potential_split_line_sites_by_rsp_mod64':phases,'caveat':'Static sites across whole symbol, not dynamic counts or proof all branches execute. RBP/derived/indexed bases are not attributed to RSP.'}
(O/'selection-code-proof.json').write_text(json.dumps({'executable':str(E),'sha256':hashlib.sha256(E.read_bytes()).hexdigest(),'functions':results,'scope':'Static virtual addresses and instruction shapes; no live stack or data addresses from these default captures.'},indent=2)+'\n')
for label,r in results.items():print(label,r['symbol'],r['bytes'],'align',r['explicit_rsp_align'],'sites',r['static_rsp_vector_memory_sites'],'split_phases',r['potential_split_line_sites_by_rsp_mod64'])

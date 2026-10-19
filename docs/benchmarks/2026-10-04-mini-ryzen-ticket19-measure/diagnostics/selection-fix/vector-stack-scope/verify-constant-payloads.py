#!/usr/bin/env python3
from pathlib import Path
import json,re,importlib.util
B=Path(__file__).resolve().parent;s=importlib.util.spec_from_file_location('proof',B/'prove-stack-addresses.py');m=importlib.util.module_from_spec(s);s.loader.exec_module(m);old=m.Elf(B.parent/'fourstep-indexed-completion/fastfft-arena');new=m.Elf(B/'fastfft-arena')
def content(e,a,n):
 for lo,hi,off in e.segs:
  if lo<=a and a+n<=hi:return e.b[off+a-lo:off+a-lo+n].hex()
 raise ValueError(hex(a))
def constants(p,e):
 out=[]
 for _,op,args,full in m.parse(p):
  if not (op.startswith('v') or re.search(r'\b[xyz]mm\d',args)):continue
  z=re.search(r'((?:[XYZ]MM|Q|D|)WORD) PTR \[rip[^]]*\].*#\s+([0-9a-f]+)',full)
  if z:
   width={'ZMMWORD':64,'YMMWORD':32,'XMMWORD':16,'QWORD':8,'DWORD':4,'WORD':2}[z[1]];out.append({'bytes':width,'data':content(e,int(z[2],16),width)})
 return out
rows=[]
for r in json.loads((B/'fused-inventory-comparison.json').read_text())['rows']:
 if not (r['full_normalized_identity'] or r['vector_sequence_identity']):continue
 o=constants(Path(r['prior']['assembly']),old);n=constants(Path(r['current']['assembly']),new);rows.append({'identity':[r[k] for k in ('vector','n','rows','cols','inverse','batch')],'passed':o==n,'prior_count':len(o),'current_count':len(n)})
for label,r in json.loads((B/'stack-context-comparison.json').read_text())['functions'].items():
 if not (r['full_normalized_identity'] or r['vector_sequence_identity_after_erasing_stack_offsets_and_aligned_move_names']):continue
 o=constants(B/'stack-context-prior'/r['prior']['assembly'],old);n=constants(B/'stack-context-current'/r['current']['assembly'],new);rows.append({'identity':label,'passed':o==n,'prior_count':len(o),'current_count':len(n)})
out={'passed':all(r['passed'] for r in rows),'scope':'Direct RIP-relative vector memory constant payloads in instruction-identical or vector-sequence-identical reviewed functions. Jump-table relocations and indirect table data are outside this constant-payload check.','rows':rows};(B/'constant-payload-verification.json').write_text(json.dumps(out,indent=2)+'\n');print(out['passed'],len(rows),[r for r in rows if not r['passed']])

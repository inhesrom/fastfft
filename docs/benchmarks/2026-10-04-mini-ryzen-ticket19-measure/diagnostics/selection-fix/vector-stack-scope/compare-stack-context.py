#!/usr/bin/env python3
"""Compare retained disassembly; outputs evidence, never declares acceptance."""
from pathlib import Path
import re,json,collections,difflib
B=Path(__file__).resolve().parent

def instructions(p):
 result=[]
 for line in p.read_text().splitlines():
  m=re.match(r'\s*([0-9a-f]+):\t[^\t]+\t(.+)',line)
  if m:
   text=m[2].split('#')[0].strip()
   if text!='int3':result.append((int(m[1],16),text))
 return result

def normalize(ins,loc,stack=False,moves=False):
 out=[];lo,hi=int(loc['start'],16),int(loc['end'],16)
 for addr,text in ins:
  text=re.sub(r'\[rip(?:[+-]0x[0-9a-f]+)?\]','[rip+RELOC]',text)
  m=re.match(r'(j\w+|call)\s+([0-9a-f]+)\s*<(.*)>',text)
  if m:
   target=int(m[2],16);text=m[1]+' '+(hex(target-lo) if lo<=target<hi else 'EXTERNAL<'+m[3]+'>')
  if stack:text=re.sub(r'\[(rsp|rbp)(?:[+-]0x[0-9a-f]+)?\]',r'[\1+STACK]',text)
  if moves:text=re.sub(r'\bvmova(ps|pd)\b',r'vmovu\1',text)
  out.append(text)
 return out

def is_vector(t):return bool(re.match(r'v\w',t) or re.search(r'\b[xyz]mm[0-9]+\b',t))

def stats(ins):
 vec=[(a,t) for a,t in ins if is_vector(t)];mem=[];seeds=[]
 for a,t in ins:
  if re.match(r'(?:lea\s+\w+,\[(?:rsp|rbp)|mov\s+\w+,(?:rsp|rbp))',t):seeds.append({'address':hex(a),'instruction':t})
 for a,t in vec:
  for m in re.finditer(r'((?:[XYZ]MM|Q|D|)WORD) PTR \[([^]]+)\]',t):
   width={'ZMMWORD':64,'YMMWORD':32,'XMMWORD':16,'QWORD':8,'DWORD':4,'WORD':2}[m[1]];operand=m[2];direct=re.fullmatch(r'(rsp|rbp)([+-]0x[0-9a-f]+)?',operand)
   z={'address':hex(a),'instruction':t,'operand':operand,'bytes':width}
   if direct:z.update(base=direct[1],offset=int(direct[2],16) if direct[2] else 0)
   mem.append(z)
 direct=[m for m in mem if m.get('base')=='rsp'];align=[{'address':hex(a),'instruction':t} for a,t in ins[:30] if re.match(r'and\s+rsp,',t)];subs=[int(m[1],16) for a,t in ins[:30] if (m:=re.match(r'sub\s+rsp,0x([0-9a-f]+)',t))]
 return {'instructions':len(ins),'vector_instructions':len(vec),'vector_memory_instructions':len(set(m['address'] for m in mem)),'direct_rsp_vector_memory_sites':len(direct),'direct_rsp_vector_bytes_static':sum(m['bytes'] for m in direct),'direct_rsp_offset_mod64':dict(collections.Counter(str(m['offset']%64) for m in direct)),'direct_rsp_split_line_sites_at_rsp0':[m for m in direct if m['offset']%64+m['bytes']>64],'explicit_frame_bytes':sum(subs),'prologue_alignment':align,'prologue':[{'address':hex(a),'instruction':t} for a,t in ins[:25]],'stack_base_definitions':seeds,'vector_memory':mem,'limitations':'Counts are static whole-symbol sites, not dynamic path counts. Direct-RSP scan does not prove derived-base alignment. Instruction equality normalizes relocations but not constant content.'}

old=json.loads((B/'stack-context-prior/located.json').read_text());new=json.loads((B/'stack-context-current/located.json').read_text());out={};diffdir=B/'stack-context-diffs';diffdir.mkdir(exist_ok=True)
for label,nloc in new['functions'].items():
 oloc=old['functions'][label];oi=instructions(B/'stack-context-prior'/oloc['assembly']);ni=instructions(B/'stack-context-current'/nloc['assembly']);on=normalize(oi,oloc);nn=normalize(ni,nloc);os,ns=stats(oi),stats(ni)
 ov=normalize([(a,t) for a,t in oi if is_vector(t)],oloc,True,True);nv=normalize([(a,t) for a,t in ni if is_vector(t)],nloc,True,True)
 # Opcode traffic is a weaker fallback, never a substitute for vector/dataflow review.
 oc=collections.Counter(t.split()[0] for a,t in oi if is_vector(t));nc=collections.Counter(t.split()[0] for a,t in ni if is_vector(t))
 delta={k:ns[k]-os[k] for k in ['instructions','vector_instructions','vector_memory_instructions','direct_rsp_vector_memory_sites','direct_rsp_vector_bytes_static','explicit_frame_bytes']}
 (diffdir/(label+'-full.diff')).write_text('\n'.join(difflib.unified_diff(on,nn,fromfile='prior',tofile='current'))+'\n');(diffdir/(label+'-vectors.diff')).write_text('\n'.join(difflib.unified_diff(ov,nv,fromfile='prior vectors',tofile='current vectors'))+'\n')
 out[label]={'prior':oloc,'current':nloc,'prior_stats':os,'current_stats':ns,'delta':delta,'full_normalized_identity':on==nn,'vector_sequence_identity_after_erasing_stack_offsets_and_aligned_move_names':ov==nv,'vector_opcode_delta':{k:nc[k]-oc[k] for k in sorted(set(nc)|set(oc)) if nc[k]!=oc[k]},'reviewed_passed':None}
 print(label,delta,'full_same',on==nn,'vec_same',ov==nv,'split_rsp',len(ns['direct_rsp_split_line_sites_at_rsp0']))
(B/'stack-context-comparison.json').write_text(json.dumps({'prior_sha256':old['sha256'],'current_sha256':new['sha256'],'functions':out,'scope':'Evidence only; reviewed alignment/arithmetic/traffic gates must be added separately.'},indent=2)+'\n')

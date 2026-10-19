#!/usr/bin/env python3
"""Conservative CFG low-bit/stack-alias analysis of retained x86 Intel objdump.
No execution. Unknown indexed/derived local accesses fail; jump tables decoded from ELF.
"""
from pathlib import Path
import re,json,struct,collections,argparse
REGS=['rax','rbx','rcx','rdx','rsi','rdi','rbp','rsp']+[f'r{i}' for i in range(8,16)]
def reg(s):
 s=s.strip()
 for r in REGS:
  if s==r or (r[1:].isdigit() and s in (r+'d',r+'w',r+'b')):return r
 return {'eax':'rax','ax':'rax','al':'rax','ebx':'rbx','bx':'rbx','bl':'rbx','ecx':'rcx','cx':'rcx','cl':'rcx','edx':'rdx','dx':'rdx','dl':'rdx','esi':'rsi','si':'rsi','sil':'rsi','edi':'rdi','di':'rdi','dil':'rdi','ebp':'rbp','bp':'rbp','bpl':'rbp','esp':'rsp','sp':'rsp','spl':'rsp'}.get(s)
U=(0,0,False)
def const(x):return (6,x%64,False)
def join(a,b):
 k=min(a[0],b[0]);v=(a[1]^b[1]);k=min(k,(v&-v).bit_length()-1) if v else k
 return k,a[1]% (1<<k),a[2] or b[2]
def add(a,b,sign=1):
 k=min(a[0],b[0]);return k,(a[1]+sign*b[1])%(1<<k),a[2] or b[2]
def shift(a,n):
 k=min(6,a[0]+n);return k,(a[1]<<n)%(1<<k),a[2]
def merge(a,b):
 if a is None:return b.copy(),True
 c={};change=False
 for k in a.keys()|b.keys():
  v=join(a.get(k,U),b.get(k,U))
  if v!=U:c[k]=v
  if v!=a.get(k,U):change=True
 return c,change
class Elf:
 def __init__(self,p):
  self.b=p.read_bytes();h=struct.unpack_from('<16sHHIQQQIHHHHHH',self.b);self.segs=[]
  for i in range(h[10]):
   ph=struct.unpack_from('<IIQQQQQQ',self.b,h[5]+i*h[9])
   if ph[0]==1:self.segs.append((ph[3],ph[3]+ph[5],ph[2]))
 def i32(self,a):
  for lo,hi,off in self.segs:
   if lo<=a<hi:return struct.unpack_from('<i',self.b,off+a-lo)[0]
  raise ValueError(hex(a))
def parse(p):
 out=[]
 for line in p.read_text().splitlines():
  m=re.match(r'\s*([0-9a-f]+):\t[^\t]+\t(.+)',line)
  if m:
   full=m[2];t=full.split('#')[0].strip()
   if t=='int3':continue
   spl=t.split(None,1);out.append((int(m[1],16),spl[0],spl[1] if len(spl)>1 else '',full))
 return out
def run(p,elf):
 ins=parse(p);idx={v[0]:i for i,v in enumerate(ins)};succ=[];tables=[];unsupported=[]
 for i,(addr,op,args,full) in enumerate(ins):
  ss=[]
  if op.startswith('j'):
   m=re.match(r'([0-9a-f]+)\s+<',args)
   if m:
    if int(m[1],16) in idx:ss.append(idx[int(m[1],16)])
   else:
    # LLVM table: LEA base RIP; MOVSXD target,[base+idx*4]; ADD target,base; JMP target.
    win=ins[max(0,i-16):i];leas=[(j,v) for j,v in enumerate(win) if v[1]=='lea' and '[rip' in v[2] and '#' in v[3]];resolved=False
    for j,v in reversed(leas):
     mt=re.search(r'#\s+([0-9a-f]+)',v[3]);base=reg(v[2].split(',')[0]);tail=win[j+1:]
     if not mt or not any(x[1]=='movsxd' and '['+base+'+' in x[2] for x in tail):continue
     n=None
     for x in reversed(win[:j]):
      mm=re.fullmatch(r'\w+,0x([0-9a-f]+)',x[2])
      if x[1]=='cmp' and mm:n=int(mm[1],16)+1;break
     if n is None or n>64:continue
     table=int(mt[1],16);targets=[table+elf.i32(table+4*k) for k in range(n)]
     if not all(t in idx for t in targets):continue
     ss.extend(idx[t] for t in targets);tables.append({'jump':hex(addr),'table':hex(table),'entries':n,'targets':[hex(t) for t in targets]});resolved=True;break
    if not resolved:unsupported.append({'address':hex(addr),'kind':'unresolved_indirect_jump','instruction':full})
   if op!='jmp' and i+1<len(ins):ss.append(i+1)
  elif op not in ('ret','retq','ud2') and i+1<len(ins):ss=[i+1]
  succ.append(list(set(ss)))
 def memexpr(expr,s):
  # Low six address bits; flags whether any summand derives from stack.
  out=const(0)
  for term in re.findall(r'[+-]?[^+-]+',expr):
   sign=-1 if term.startswith('-') else 1;term=term.lstrip('+-')
   if '*' in term:
    rr,scale=term.split('*');n=int(scale,0);v=s.get(reg(rr),U);v=shift(v,n.bit_length()-1)
   elif reg(term):v=s.get(reg(term),U)
   elif term=='rip':v=U
   else:
    try:v=const(int(term,0))
    except ValueError:v=U
   out=add(out,v,sign)
  return out
 def slot(x):
  m=re.search(r'\[rsp([+-]0x[0-9a-f]+)?\]',x)
  return 'S'+str(int(m[1],16) if m and m[1] else 0) if m else None
 def val(x,s):
  r=reg(x)
  if r:return s.get(r,U)
  if '[' in x:return s.get(slot(x),U) if slot(x) else U
  try:return const(int(x,0))
  except ValueError:return U
 def setv(s,r,v):
  if v==U:s.pop(r,None)
  else:s[r]=v
 def transfer(i,st):
  s=st.copy();addr,op,args,full=ins[i];aa=args.split(',');dest=aa[0] if aa else '';dr=reg(dest);old=s.get(dr,U)
  if op in ('push','pop'):
   s['rsp']=add(s.get('rsp',U),const(-8 if op=='push' else 8))
   if op=='pop' and dr:setv(s,dr,U)
  elif op in ('mul','div','idiv') or (op=='imul' and len(aa)==1):
   t=any(s.get(r,U)[2] for r in (('rax','rdx') if op in ('div','idiv') else ('rax',))) or any(val(a,s)[2] for a in aa)
   setv(s,'rax',(0,0,t));setv(s,'rdx',(0,0,t))
  elif op=='xchg' and len(aa)==2 and dr and reg(aa[1]):
   rr=reg(aa[1]);v=s.get(rr,U);setv(s,rr,old);setv(s,dr,v)
  elif op=='call':
   return_alias=(0,0,any(s.get(r,U)[2] for r in ('rdi','rsi','rdx','rcx','r8','r9')))
   for r in ('rax','rcx','rdx','rsi','rdi','r8','r9','r10','r11'):setv(s,r,U)
   setv(s,'rax',return_alias)
  elif op in ('lea',):
   if dr:setv(s,dr,memexpr(aa[1].strip('[]'),s))
  elif op.startswith('mov') and not op.startswith('movs') or op in ('movsxd','movsx','movzx'):
   if len(aa)>1:
    v=val(aa[1],s)
    if dr:
     if dest not in REGS and not dest.startswith('e') and not dest.endswith('d'):v=(v[0],v[1],v[2] or old[2])
     setv(s,dr,v)
    elif slot(dest):
     if not dest.startswith('QWORD'):v=(v[0],v[1],v[2] or s.get(slot(dest),U)[2])
     setv(s,slot(dest),v)
  elif op.startswith('cmov'):
   if dr:setv(s,dr,join(old,val(aa[1],s)))
  elif op in ('xor','sub') and len(aa)==2 and aa[0]==aa[1]:setv(s,dr,const(0))
  elif op in ('add','sub') and dr:setv(s,dr,add(old,val(aa[1],s),-1 if op=='sub' else 1))
  elif op in ('inc','dec') and dr:setv(s,dr,add(old,const(1 if op=='inc' else -1)))
  elif op in ('shl','sal') and dr:
   try:setv(s,dr,shift(old,int(aa[1],0)))
   except ValueError:setv(s,dr,(0,0,old[2]))
  elif op=='and' and dr:
   try:
    mask=int(aa[1],0)&63;lowzero=next((j for j in range(6) if mask&(1<<j)),6);k=max(old[0],lowzero);setv(s,dr,(k,(old[1]&mask)%(1<<k),old[2]))
   except ValueError:setv(s,dr,(0,0,old[2] or val(aa[1],s)[2]))
  elif op=='imul' and dr:
   try:
    n=int(aa[-1],0);v=val(aa[1],s) if len(aa)==3 else old;k=min(6,v[0]+(n&-n).bit_length()-1) if n else 6;setv(s,dr,(k,v[1]*n%(1<<k),v[2]))
   except ValueError:setv(s,dr,(0,0,any(val(a,s)[2] for a in aa)))
  elif op in ('cmp','test','nop','nopl','nopw','ret','retq','ud2','vzeroupper') or op.startswith('j') or op.startswith('v') or re.search(r'\b[xyz]mm\d',args):
   if dr and op.startswith('v'):setv(s,dr,U)
  elif dr:setv(s,dr,(0,0,any(val(a,s)[2] for a in aa)))
  # Vector writes to fixed stack cannot introduce a pointer alias.
  if '[' in dest and (op.startswith('v') or re.search(r'\b[xyz]mm\d',args)) and slot(dest):setv(s,slot(dest),U)
  return s
 states=[None]*len(ins);states[0]={'rsp':(4,8,True)};q=collections.deque([0]);queued={0};steps=0
 while q:
  i=q.popleft();queued.remove(i);out=transfer(i,states[i]);steps+=1
  for j in succ[i]:
   states[j],changed=merge(states[j],out)
   if changed and j not in queued:q.append(j);queued.add(j)
  if steps>5000000:raise RuntimeError('dataflow convergence cap')
 checks=[];bad=[];indirectstores=[];indirectloads=[];stackcalls=[];reachable=0
 for i,(addr,op,args,full) in enumerate(ins):
  s=states[i]
  if s is None:continue
  reachable+=1
  if op=='call':
   args_with_stack={r:s[r] for r in ('rdi','rsi','rdx','rcx','r8','r9') if s.get(r,U)[2]}
   if args_with_stack:stackcalls.append({'address':hex(addr),'instruction':full,'stack_arguments':args_with_stack})
  vector=op.startswith('v') or bool(re.search(r'\b[xyz]mm\d',args))
  for m in re.finditer(r'((?:[XYZ]MM|Q|D|)WORD) PTR \[([^]]+)\]',args):
   value=memexpr(m[2],s)
   if not value[2] or not vector:continue
   width={'ZMMWORD':64,'YMMWORD':32,'XMMWORD':16,'QWORD':8,'DWORD':4,'WORD':2}[m[1]];res=[x for x in range(64) if x%(1<<value[0])==value[1]];ok=all(x+width<=64 and x%width==0 for x in res)
   z={'address':hex(addr),'instruction':full,'bytes':width,'residues_mod64':res,'passed':ok};checks.append(z)
   if not ok:bad.append(z)
  aa=args.split(',')
  if len(aa)>1 and reg(aa[0]) and '[' in aa[1] and not slot(aa[1]) and op!='lea':
   mm=re.search(r'\[([^]]+)\]',aa[1])
   if mm and memexpr(mm[1],s)[2]:indirectloads.append({'address':hex(addr),'instruction':full})
  if len(aa)>1 and '[' in aa[0] and reg(aa[1]) and s.get(reg(aa[1]),U)[2] and not slot(aa[0]):indirectstores.append({'address':hex(addr),'instruction':full})
 return {'assembly':str(p),'instructions':len(ins),'reachable_instructions':reachable,'iterations':steps,'jump_tables':tables,'unsupported_control_flow':unsupported,'local_vector_memory_checks':checks,'unproved_local_vector_memory':bad,'unresolved_stack_pointer_stores':indirectstores,'derived_scalar_stack_loads_to_review':indirectloads,'calls_with_stack_arguments_to_review':stackcalls,'passed':not(unsupported or bad or indirectstores),'limitations':'Low-bit/alias model covers recorded instruction families; review transfer semantics and all unsupported constructs. Caller-clobbered registers lose aliases; RAX conservatively may return an argument-derived stack alias. Escaping stack-pointer stores fail; source review must establish that local-array copying calls do not introduce pointer values into vector storage. Does not prove arithmetic equivalence.'}
if __name__=='__main__':
 p=argparse.ArgumentParser();p.add_argument('executable',type=Path);p.add_argument('assembly',type=Path);p.add_argument('output',type=Path);a=p.parse_args();r=run(a.assembly,Elf(a.executable));a.output.write_text(json.dumps(r,indent=2)+'\n');print(json.dumps({k:v for k,v in r.items() if k not in ('jump_tables','local_vector_memory_checks','unproved_local_vector_memory','derived_scalar_stack_loads_to_review','calls_with_stack_arguments_to_review')},indent=2));print('checks',len(r['local_vector_memory_checks']),'unproved',len(r['unproved_local_vector_memory']))

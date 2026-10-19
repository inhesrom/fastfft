#!/usr/bin/env python3
"""Exhaust all fused specializations present in frozen prior DWARF with N<=W."""
from pathlib import Path
import bisect,json,re,subprocess,hashlib,sys
all_fused="--all-fused" in sys.argv
B=Path(__file__).resolve().parent;A=B/'stack-context-prior';O=B/('all-fused-inventory' if all_fused else 'one-panel-inventory');O.mkdir(exist_ok=True);meta=json.loads((A/'located.json').read_text());E=Path(meta['executable']);assert hashlib.sha256(E.read_bytes()).hexdigest()==meta['sha256']
entries=[]
for line in (A/'symbols.txt').read_text().splitlines():
 v=line.split(maxsplit=3)
 if len(v)==4 and v[2].lower()=='t':
  try:entries.append((int(v[0],16),int(v[1],16),v[3]))
  except ValueError:pass
entries.sort();starts=[x[0] for x in entries];located={};seen=set();classified=set()
for block in re.split(r'(?m)(?=^0x[0-9a-fA-F]+$)',(A/'locator-dwarf.txt').read_text()):
 lines=block.splitlines()
 if not lines or not lines[0].startswith('0x'):continue
 address=int(lines[0],16);start,size,symbol=entries[bisect.bisect_right(starts,address)-1];assert start<=address<start+size
 vm=re.search(r'::(F\d+x(\d+)v?) as ',symbol)
 if not vm:continue
 v,w=vm[1],int(vm[2]);seen.add(start)
 for line in lines[1:]:
  m=re.fullmatch(r'(?:rectangle<|run<fastfft::isa::x86::'+v+r', )(\d+), (\d+), (\d+), (true|false), (true|false)>',line)
  if not m:continue
  classified.add(start);n,r,c=int(m[1]),int(m[2]),int(m[3]);key=(v,n,r,c,m[4],m[5])
  if r<=w and c<=w and (all_fused or n<=w):located[key]=(start,size,symbol,w)
g={'__file__':str(B/'compare-stack-context.py')};exec((B/'compare-stack-context.py').read_text().split('old=json.loads')[0],g)
rows=[]
for key,(start,size,symbol,w) in sorted(located.items()):
 name='-'.join(map(str,key));p=O/(name+'.asm');text=subprocess.check_output(['objdump','-d','-C','-Mintel',f'--start-address={start}',f'--stop-address={start+size}',str(E)],text=True);p.write_text(text);ins=g['instructions'](p);st=g['stats'](ins)
 rsp_mem=[(hex(a),t) for a,t in ins if '[' in t and ('[rsp' in t or '[rbp' in t)];stackdefs=st['stack_base_definitions'];row={'vector':key[0],'n':key[1],'rows':key[2],'cols':key[3],'inverse':key[4]=='true','batch':key[5]=='true','lanes':w,'start':hex(start),'bytes':size,'assembly':str(p),'instructions':st['instructions'],'vector_instructions':st['vector_instructions'],'explicit_frame_bytes':st['explicit_frame_bytes'],'prologue_alignment':st['prologue_alignment'],'vector_stack_operands':[m for m in st['vector_memory'] if 'rsp' in m['operand'] or 'rbp' in m['operand']],'direct_rsp_vector_memory_sites':st['direct_rsp_vector_memory_sites'],'all_rsp_rbp_memory_instructions':rsp_mem,'stack_base_definitions':stackdefs,'no_stack_memory_or_stack_base_evidence':not rsp_mem and not stackdefs}
 rows.append(row)
result={'all_fused_mode':all_fused,'binary_sha256':meta['sha256'],'scope':'Every selected fused rectangle specialization (N<=W by default, all fused with --all-fused) identifiable in all1228 frozen prior SmallVector rectangle symbols, both directions and single/batch variants present. Compiler inventory, not a proof for uninstantiated generic parameters/future toolchains.','rectangle_symbols_total':sum('SmallVector>::rectangle' in s for _,_,s in entries),'rectangle_symbols_probed':len(seen),'rectangle_symbols_with_identity':len(classified),'unclassified_symbols':[hex(a) for a in sorted(seen-classified)],'qualifying_specializations':len(rows),'all_qualifying_have_no_vector_stack_sites':all(r['direct_rsp_vector_memory_sites']==0 for r in rows),'all_qualifying_have_no_stack_memory_or_derived_stack_bases':all(r['no_stack_memory_or_stack_base_evidence'] for r in rows),'rows':rows}
(B/('all-fused-inventory.json' if all_fused else 'one-panel-inventory.json')).write_text(json.dumps(result,indent=2)+'\n');print(json.dumps({k:v for k,v in result.items() if k!='rows'}));print('counterexamples',[{k:r[k] for k in ['vector','n','rows','cols','inverse','batch','explicit_frame_bytes','direct_rsp_vector_memory_sites','all_rsp_rbp_memory_instructions']} for r in rows if not r['no_stack_memory_or_stack_base_evidence']][:15])

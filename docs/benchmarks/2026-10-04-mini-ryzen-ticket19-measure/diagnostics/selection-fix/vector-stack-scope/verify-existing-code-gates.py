from pathlib import Path
import json,hashlib,re
B=Path(__file__).resolve().parent;P=B.parent/'fourstep-indexed-completion';g={'__file__':str(B/'compare-stack-context.py')};exec((B/'compare-stack-context.py').read_text().split('old=json.loads')[0],g)
read=lambda p:json.loads(p.read_text());sha=lambda p:hashlib.sha256(p.read_bytes()).hexdigest();c=read(B/'stack-context-comparison.json');loc=read(B/'stack-context-current/located.json');assert sha(B/'fastfft-arena')==c['current_sha256']==read(B/'provenance.json')['sha256']
previous=read(P/'alignment-verification.json');pk={x['kernel']:x for x in previous['kernels']};rows=[]
for label,z in c['functions'].items():
 if not label.startswith('control-'):continue
 key=label[len('control-'):];proof=pk[key];assert proof['passed'];assert z['full_normalized_identity'];st=z['current_stats'];assert st['prologue_alignment'] and st['explicit_frame_bytes']%64==0;assert not st['direct_rsp_split_line_sites_at_rsp0']
 rows.append({'kernel':key,'passed':True,'current':z['current'],'prior':z['prior'],'full_normalized_instruction_identity':True,'current_stats':{k:st[k] for k in ['instructions','vector_instructions','direct_rsp_vector_memory_sites','explicit_frame_bytes']},'distinct_local_vector_operands':proof['distinct_local_vector_operands'],'derived_base_proof':'Inherited through full instruction identity; prior packed index takes0/64 scaled8, generic anchor addresses not dereferenced, RBP only restores stack.'})
assert len(rows)==6
align={'passed':True,'scope':'Exactly six prior N80/N96 single/batch tiled/packed controls; complete normalized instruction identity preserves reviewed direct/derived local addresses. No general Small or FourStep claim.','production_binary_sha256':c['current_sha256'],'prior_production_binary_sha256':c['prior_sha256'],'kernels':rows,'normalization':'Strip int3; normalize RIP displacements and direct branch/call relocations. All other instructions preserved. Constant contents not independently compared.'}
(B/'alignment-verification.json').write_text(json.dumps(align,indent=2)+'\n');(B/'alignment-verification.md').write_text('# Six unchanged Small controls\n\nPASS: all six N80/N96 single/batch streams have complete normalized instruction identity with the frozen indexed default. Existing direct and derived local-stack proofs transfer exactly; frames and vector traffic are unchanged. This is a scoped static check, not timing acceptance.\n\nCandidate SHA: `'+c['current_sha256']+'`.\n')
functions=[]
for label in ['FourStep-F64x8','FourStep-F32x8v','FourStep-F32x16']:
 z=c['functions'][label];xs=g['instructions'](B/'stack-context-current'/z['current']['assembly']);patterns=[]
 for i,(a,t) in enumerate(xs):
  if 'movabs' in t and '0xaaaaaaaaaaaaaaab' in t and i>0 and i+2<len(xs) and xs[i-1][1].startswith('shr') and xs[i+1][1].startswith('imul') and xs[i+2][1].startswith('cmp'):patterns.append(hex(a))
 assert not patterns;functions.append({'variant':label,'current':z['current'],'old_skip_patterns':patterns,'scope':'No old stride24 pointer-distance skip bookkeeping; not absence of legitimate radix multiply/divide.'})
xs=g['instructions'](B/'stack-context-current/FourStep-F64x8.asm');look=dict(xs)
checks={0xe5a11c:'mov    rcx,QWORD PTR [rdi+0x20]',0xe5a120:'mov    QWORD PTR [rsp+0x78],rcx',0xe5a129:'mov    rcx,QWORD PTR [rdi+0x28]',0xe5a12d:'mov    QWORD PTR [rsp+0x70],rcx',0xe65143:'cmp    QWORD PTR [rsp+0x78],0x2',0xe65a03:'cmp    QWORD PTR [rsp+0x78],0x2',0xe6eda3:'cmp    QWORD PTR [rsp+0x70],0x2',0xe6ee4e:'cmp    QWORD PTR [rsp+0x70],0x2',0xe6fdc3:'cmp    QWORD PTR [rsp+0x70],0x2',0xe7012b:'cmp    QWORD PTR [rsp+0x70],0x2',0xe709d0:'cmp    QWORD PTR [rsp+0x70],0x2'}
for a,t in checks.items():assert look[a]==t,(hex(a),look.get(a),t)
windows=[]
for a in checks:
 i=next(i for i,z in enumerate(xs) if z[0]==a);windows.append({'start':hex(a),'instructions':[{'address':hex(j),'instruction':t} for j,t in xs[i:i+7]]})
# Guard branch direction and zero-range exits.
for a in [0xe65143,0xe65a03]:
 i=next(i for i,z in enumerate(xs) if z[0]==a);assert any(re.match(r'jb\s+e66290\b',t) for _,t in xs[i+1:i+5])
for a in [0xe6ee4e,0xe7012b,0xe709d0]:
 i=next(i for i,z in enumerate(xs) if z[0]==a);assert re.match(r'jb\s+e71210\b',xs[i+1][1])
for a in [0xe6eda3,0xe6fdc3]:
 i=next(i for i,z in enumerate(xs) if z[0]==a);assert xs[i+1][1].startswith('jae') and re.match(r'jmp\s+e71210\b',xs[i+2][1])
it={'passed':True,'scope':'Compiled indexed empty-range guards preserved for known N210 count1/1; no old iterator divide pattern in three principal variants. Source arithmetic and full loop equivalence not established by this narrow check.','binary_sha256':c['current_sha256'],'functions':functions,'F64x8_count_guard_evidence':windows,'N210':'Column count1 storedRSP+0x78 and rowcount1 storedRSP+0x70; directCMP2 skips later passes.','caveat':'Code scheduling differs; count/guard proof is independent of exact instruction identity.'}
(B/'iterator-code-verification.json').write_text(json.dumps(it,indent=2)+'\n');(B/'iterator-code-verification.md').write_text('# Indexed empty-range gate\n\nPASS for the compiled guards. F64x8 inverse entry loads column/row counts at `0xe5a11c`/`0xe5a129` into RSP+0x78/+0x70. Column guards `0xe65143` and `0xe65a03` branch below2 to `0xe66290`; all five recorded inverse row guards route count1 to `0xe71210`. The known N210 counts1/1 skip remaining passes directly. The old stride24 iterator divide pattern remains absent in F64x8/F32x8v/F32x16. Exact asserted windows are retained in JSON. This is not a speed or complete arithmetic-equivalence proof.\n')
print('Six control and indexed empty-range gates PASS, scoped static checks only.')

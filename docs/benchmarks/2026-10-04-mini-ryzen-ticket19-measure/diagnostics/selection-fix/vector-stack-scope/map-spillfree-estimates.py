#!/usr/bin/env python3
from pathlib import Path
import json,re,hashlib,collections
B=Path(__file__).resolve().parent; A=B.parent/'vector-stack-anchor'; P=B.parent/'full-deferred-reserved-all8/results.jsonl'
inventory=json.loads((A/'all-fused-inventory.json').read_text())['rows']; selected=[]
for r in inventory:
 reg=16 if r['vector'] in ('F32x8','F64x4') else 32
 if 2*r['lanes']>=reg and r['n']>r['lanes'] and not r['vector_stack_operands']:selected.append(r)
lookup={(r['vector'],r['n'],r['rows'],r['cols'],r['inverse'],r['batch']):r for r in selected}
rows=[json.loads(s) for s in P.read_text().splitlines()];ordinary={r['key']:r for r in rows if not r['spec'].get('control')};matches=[];covered=set();recipes=[]
for key,r in ordinary.items():
 s=r['spec']; e=next(z for z in r['results'] if z['lib']=='fastfft');desc=e['describe'];m=re.match(r'small (\S+) n=(\d+) decomposition=(\d+)x(\d+)',desc)
 if not m:continue
 vector={('f32','avx512'):'F32x16',('f32','avx2'):'F32x8',('f32','avx512-ymm'):'F32x8v',('f64','avx512'):'F64x8',('f64','avx2'):'F64x4',('f64','avx512-ymm'):'F64x4v'}.get((s['precision'],m[1]))
 k=(vector,int(m[2]),int(m[3]),int(m[4]),s['direction']=='inverse',s['batch']>1)
 recipes.append({'key':key,'identity':k,'description':desc})
 if k in lookup:
  covered.add(k);matches.append({'key':key,'spec':s,'description':desc,'identity':k,'prior_time':e['time']})
nested=[]
for key,r in ordinary.items():
 desc=next(z['describe'] for z in r['results'] if z['lib']=='fastfft')
 if desc.startswith('small '):continue
 for m in re.finditer(r'small ([^]]+)',desc):nested.append({'key':key,'description':m[0],'rectangular':'kernel=rectangular' in m[0]})
out={'nested_small_descriptions':nested,'nested_rectangular_count':sum(z['rectangular'] for z in nested),'scope':'Default Estimate top-level recipes from retained complete prior full710 capture. No execution. Nested Small descriptions are separately retained; none uses a rectangular kernel. Deterministic Estimate recipe stability requires unchanged planner-source verification.','source':str(P),'source_sha256':hashlib.sha256(P.read_bytes()).hexdigest(),'ordinary_unique_cells':len(ordinary),'selected_previously_spillfree_variants':len(selected),'matched_cells':matches,'matched_specializations':len(covered),'all_top_level_small_recipes':recipes,'unmatched_specializations':[{k:r[k] for k in ('vector','n','rows','cols','inverse','batch')} for r in selected if (r['vector'],r['n'],r['rows'],r['cols'],r['inverse'],r['batch']) not in covered]}
(B/'spillfree-estimate-coverage.json').write_text(json.dumps(out,indent=2)+'\n');print(json.dumps({k:v for k,v in out.items() if k not in ('all_top_level_small_recipes','unmatched_specializations','matched_cells','nested_small_descriptions')},indent=2));print('matched',[(r['key'],r['description']) for r in matches])

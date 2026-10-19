#!/usr/bin/env python3
from pathlib import Path
import importlib.util,json,collections
B=Path(__file__).resolve().parent;s=importlib.util.spec_from_file_location('proof',B/'prove-stack-addresses.py');m=importlib.util.module_from_spec(s);s.loader.exec_module(m);elf=m.Elf(B.parent/'fourstep-indexed-completion/fastfft-arena');rs=json.loads((B.parent/'vector-stack-anchor/all-fused-inventory.json').read_text())['rows'];out=[]
for r in rs:
 if not r['vector_stack_operands']:continue
 proof=m.run(Path(r['assembly']),elf);assert not r['prologue_alignment'];sites=[]
 for z in proof['local_vector_memory_checks']:
  cross=[v for v in z['residues_mod64'] if v+z['bytes']>64]
  if cross:sites.append(z|{'line_crossing_residues':cross})
 out.append({'identity':[r[k] for k in ('vector','n','rows','cols','inverse','batch')],'no_rsp_alignment_mask':not r['prologue_alignment'],'vector_stack_sites':len(proof['local_vector_memory_checks']),'caller_phase_line_crossing_sites':sites,'exposed':bool(sites),'control_flow_complete':not proof['unsupported_control_flow']})
result={'passed':all(x['exposed'] and x['control_flow_complete'] for x in out),'scope':'Prior frozen fused spill variants. Start with SysV entry RSP=8 mod16; abstract interpreter unions all four legal residues mod64. An exposed site means at least one legal caller phase crosses a64-byte cache line, not an observed timing reversal.','variants':len(out),'family_counts':dict(collections.Counter(x['identity'][0] for x in out)),'rows':out};(B/'prior-fused-exposure-verification.json').write_text(json.dumps(result,indent=2)+'\n');print(result['passed'],result['variants'],result['family_counts'])

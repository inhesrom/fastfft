#!/usr/bin/env python3
from pathlib import Path
import importlib.util,json,tempfile
B=Path(__file__).resolve().parent;s=importlib.util.spec_from_file_location('proof',B/'prove-stack-addresses.py');m=importlib.util.module_from_spec(s);s.loader.exec_module(m)
cases={
 'aligned_direct':(['and rsp,0xffffffffffffffc0','sub rsp,0x100','vmovaps zmm0,ZMMWORD PTR [rsp+0x40]'],True),
 'split_direct':(['and rsp,0xffffffffffffffc0','sub rsp,0x100','vmovups zmm0,ZMMWORD PTR [rsp+0x10]'],False),
 'unaligned_abi':(['sub rsp,0x88','vmovups zmm0,ZMMWORD PTR [rsp]'],False),
 'derived_aligned_index':(['and rsp,0xffffffffffffffc0','lea rax,[rsp+0x40]','mov r9,rdi','shl r9,0x6','vmovups zmm0,ZMMWORD PTR [rax+r9*1]'],True),
 'derived_unknown_index':(['and rsp,0xffffffffffffffc0','lea rax,[rsp+0x40]','vmovups zmm0,ZMMWORD PTR [rax+rdi*1]'],False),
 'derived_pointer_spill_reload':(['and rsp,0xffffffffffffffc0','lea rax,[rsp+0x10]','mov QWORD PTR [rsp+0x80],rax','mov rcx,QWORD PTR [rsp+0x80]','vmovups zmm0,ZMMWORD PTR [rcx]'],False),
 'derived_pointer_xchg':(['and rsp,0xffffffffffffffc0','lea rax,[rsp+0x10]','xchg rax,rdi','vmovups zmm0,ZMMWORD PTR [rdi]'],False),
 'implicit_mul_kills_known_rax':(['and rsp,0xffffffffffffffc0','mov rax,0x40','mul rdi','vmovups zmm0,ZMMWORD PTR [rsp+rax*1]'],False),
 'complete_r8_overwrite_clears_alias':(['and rsp,0xffffffffffffffc0','lea r8,[rsp+0x10]','mov r8,rdi','vmovups zmm0,ZMMWORD PTR [r8]'],True),
}
result=[]
with tempfile.TemporaryDirectory() as tmp:
 for name,(xs,expected) in cases.items():
  p=Path(tmp)/'test.asm';p.write_text('\n'.join(f' {0x100+i:x}:\t90\t{x}' for i,x in enumerate(xs+['ret']))+'\n');r=m.run(p,None);assert r['passed']==expected,(name,r)
  result.append({'test':name,'expected':expected,'actual':r['passed'],'checks':len(r['local_vector_memory_checks'])})
(B/'stack-address-proof-selftest.json').write_text(json.dumps({'passed':True,'cases':result},indent=2)+'\n');print('9 address-checker semantic controls PASS')

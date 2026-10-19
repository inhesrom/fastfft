#!/usr/bin/env python3
"""Reproduce scoped review from frozen binary provenance and retained exact assembly.
No build, disassembly, FFT, or benchmark is performed by this script.
"""
from pathlib import Path
import hashlib,json,re
B=Path(__file__).resolve().parent
P=B.parent/'fourstep-storage-anchor'
D=B.parent/'coefficient-components'
def read(p):return json.loads(p.read_text())
def sha(p):return hashlib.sha256(p.read_bytes()).hexdigest()
def ins(p):
    out=[]
    for line in p.read_text().splitlines():
        m=re.match(r'\s*([0-9a-f]+):\t[^\t]+\t(.+)',line)
        if m:
            s=m[2].split('#')[0].strip()
            if s!='int3':out.append((int(m[1],16),s))
    return out
def norm(xs,loc):
    start,end=int(loc['start'],16),int(loc['end'],16);out=[]
    for addr,s in xs:
        s=re.sub(r'\[rip(?:[+-]0x[0-9a-f]+)?\]','[rip+RELOC]',s)
        m=re.match(r'(j\w+|call)\s+([0-9a-f]+)\s*<(.*)>',s)
        if m:
            t=int(m[2],16);s=m[1]+' '+(hex(t-start) if start<=t<end else 'EXTERNAL<'+m[3]+'>')
        out.append(s)
    return out
def stats(xs,loc):
    frames=[int(m[1],16) for _,s in xs[:25] if (m:=re.fullmatch(r'sub\s+rsp,0x([0-9a-f]+)',s))]
    return dict(instructions=len(xs),vector_instructions=sum(s.startswith('v') for _,s in xs),stack_vector_instructions=sum(s.startswith('v') and '[rsp' in s for _,s in xs),explicit_frame_bytes=sum(frames),symbol_span_bytes=int(loc['end'],16)-int(loc['start'],16))
def write(name,data):(B/name).write_text(json.dumps(data,indent=2)+'\n')
prov=read(B/'provenance.json');binary_sha=sha(B/'fastfft-arena');assert binary_sha==prov['sha256']
assert prov['features']=='default SIMD; no diagnostics/tuning'
oldsha=read(P/'provenance.json')['sha256']
normalization='Exclude int3 padding; normalize RIP-relative displacements, internal direct branches to function-relative offsets, external direct branches/calls to demangled symbol names. All other instructions/operands must match. This does not compare relocated constant contents or absolute function placement.'
previous=read(P/'alignment-verification.json');previous_k={x['kernel']:x for x in previous['kernels']}
mloc=read(B/'matrix-current/located.json');ploc=read(P/'matrix-current/located.json');kernels=[]
for name,c in mloc.items():
    path=B/'matrix-current'/c['assembly'];old=P/'matrix-current'/ploc[name]['assembly'];xs,ys=ins(path),ins(old)
    equal=norm(xs,c)==norm(ys,ploc[name]);assert equal,name
    assert any(re.fullmatch(r'and\s+rsp,0xffffffffffffffc0',s) for _,s in xs[:15]),name
    st=stats(xs,c);oldst=stats(ys,ploc[name]);assert st==oldst
    assert st['explicit_frame_bytes']%64==0
    proof=previous_k[name];assert proof['passed']
    for x in proof['distinct_local_vector_operands']:
        assert x['offset_mod64']+x['width_bytes']<=64
        assert any(x['operand'] in s for _,s in xs)
    kernels.append(dict(kernel=name,identity=c['identity'],current=c,prior=ploc[name],assembly_sha256=sha(path),prior_assembly_sha256=sha(old),full_normalized_instruction_identity=True,current_stats=st,prior_stats=oldst,passed=True,stack_alignment_bytes=64,distinct_local_vector_operands=proof['distinct_local_vector_operands'],derived_base_proof='Full instruction identity preserves prior reviewed base provenance: generic anchor-address registers are not dereferenced; rbp only restores rsp. Packed index rax(single)/r10(batch) takes 0 or 64, scaled by 8 gives 0 or 512; caller-derived bases are not local stack bases. All local vector intervals lie within a 64-byte line.'))
align=dict(passed=True,scope='Effective local vector stack alignment and static instruction identity for exactly six located Small kernels. Not performance acceptance, caller-buffer alignment, physical cache behavior, or FourStep stack alignment.',production_binary_sha256=binary_sha,prior_production_binary_sha256=oldsha,normalization=normalization,kernels=kernels,batch_cost_caveats=previous['batch_cost_caveats']+['Current-vs-anchor instructions, frames and stack-vector counts are unchanged; canonical-vs-anchor costs still apply.','Generic batch frame setup/two LEAs occur once per batch; two scalar anchor stores occur per transform. N96 batch retains 24 to 30 static vector stack accesses versus canonical and needs measured acceptance.','Function addresses and surrounding executable placement change despite normalized local instruction identity.'])
write('alignment-verification.json',align)
rows='\n'.join(f"| {x['kernel']} | {x['current']['start']}–{x['current']['end']} | {x['current_stats']['explicit_frame_bytes']} | {x['current_stats']['stack_vector_instructions']} | {x['current_stats']['instructions']} |" for x in kernels)
(B/'alignment-verification.md').write_text(f'''# Default Small-kernel alignment review

PASS scoped to local vector stack alignment. Frozen default executable `{binary_sha}` was SHA-verified before read-only DWARF/objdump extraction. No source edit, FFT execution, or benchmark was performed.

All six exact Small single/batch functions have full normalized instruction identity with the prior default anchor executable `{oldsha}`. {normalization}

| Kernel | Current address range | Explicit frame bytes | Static vector stack accesses | Instructions |
|---|---|---:|---:|---:|
{rows}

Each entry aligns RSP to 64 bytes and subtracts a multiple of 64. The identical instruction streams preserve the previously reviewed effective-address proof, including derived bases: generic observable-anchor addresses are not dereferenced, and RBP is used only to restore the stack. Packed single/batch indices are 0 or 64, scaled by 8, preserving aligned matrix accesses. YMM local slots are 32-byte aligned; XMM accesses are 16-byte aligned. Every reviewed local vector memory interval fits within one 64-byte line. Caller-derived pointers are not silently treated as stack pointers. The JSON retains every distinct local vector operand and its width/modulo.

Static costs are unchanged from the anchor candidate, not waived. In particular N96 batch retains 30 vector stack accesses versus canonical 24, and 558 vector instructions versus 545. Two scalar anchor stores execute per generic transform; frame setup and two anchor-address LEAs are once per batch. N80 generic batch has fewer stack accesses than canonical, which by itself proves no speedup. Absolute code placement changes. This gate makes no performance or physical-cache claim; the unchanged focus and absolute review remain required.
''')
floc=read(B/'fourstep-current/located.json');assert floc['sha256']==binary_sha
oloc=read(P/'fourstep-current/located.json');dloc=read(D/'fourstep-current/located.json')
def skip_patterns(xs):
    found=[]
    for i,(_,s) in enumerate(xs):
        if 'movabs' in s and '0xaaaaaaaaaaaaaaab' in s and i>1 and i+2<len(xs) and xs[i-1][1].startswith('shr') and xs[i+1][1].startswith('imul') and xs[i+2][1].startswith('cmp'):
            found.append([dict(address=hex(a),instruction=v) for a,v in xs[i-3:i+4]])
    return found
functions=[]
for name,c in floc['functions'].items():
    path=B/'fourstep-current'/c['assembly'];xs=ins(path);o=oloc['functions'][name];oldpath=P/'fourstep-current'/o['assembly'];ys=ins(oldpath);d=dloc['functions'][name];zs=ins(D/'fourstep-current'/d['assembly'])
    equal=norm(xs,c)==norm(zs,d);assert equal,name
    oldpatterns,newpatterns=skip_patterns(ys),skip_patterns(xs);assert len(oldpatterns)==14 and not newpatterns
    st,ost=stats(xs,c),stats(ys,o)
    functions.append(dict(variant=name,current=c,prior=o,current_stats=st,prior_stats=ost,explicit_frame_delta_bytes=st['explicit_frame_bytes']-ost['explicit_frame_bytes'],symbol_span_delta_bytes=c['bytes']-o['bytes'],full_normalized_identity_with_indexed_diagnostic=True,prior_stride24_skip_pattern_count=len(oldpatterns),current_stride24_skip_pattern_count=0,prior_stride24_skip_patterns=oldpatterns,current_assembly_sha256=sha(path),prior_assembly_sha256=sha(oldpath)))
# Independent exact-address instruction assertions in this default executable.
xs=ins(B/'fourstep-current/F64x8.asm');lookup=dict(xs)
checks={0xe58288:'mov    rax,QWORD PTR [rdi+0x20]',0xe5828c:'mov    QWORD PTR [rsp+0x10],rax',0xe58295:'mov    rcx,QWORD PTR [rdi+0x28]',0xe58299:'mov    QWORD PTR [rsp+0x58],rcx',0xe63453:'cmp    QWORD PTR [rsp+0x10],0x2',0xe63cc3:'cmp    QWORD PTR [rsp+0x10],0x2',0xe6cea9:'cmp    QWORD PTR [rsp+0x58],0x2',0xe6de73:'cmp    QWORD PTR [rsp+0x58],0x2',0xe6e1ea:'cmp    QWORD PTR [rsp+0x58],0x2',0xe6eab5:'cmp    QWORD PTR [rsp+0x58],0x2',0xe6347d:'mov    esi,0x1',0xe634e6:'inc    rsi',0xe634fd:'cmp    rsi,QWORD PTR [rsp+0x10]',0xe63516:'lea    rax,[rsi+rsi*2]'}
for a,s in checks.items():assert lookup[a]==s,(hex(a),lookup.get(a),s)
branches={0xe6346b:('jb',0xe644f0),0xe63cd1:('jb',0xe644f0),0xe6ceaf:('jb',0xe6f320),0xe6de79:('jae',0xe6e1f6),0xe6de7f:('jmp',0xe6f320),0xe6e1f0:('jb',0xe6f320),0xe6eabb:('jb',0xe6f320)}
for a,(op,t) in branches.items():assert re.match(op+r'\s+'+f'{t:x}'+r'\s',lookup[a])
windows=[(0xe58280,0xe582aa),(0xe63453,0xe63485),(0xe63cc3,0xe63ceb),(0xe6c28c,0xe6c2d0),(0xe6cea9,0xe6ced9),(0xe6de73,0xe6de98),(0xe6e1ea,0xe6e212),(0xe6eab5,0xe6eadc),(0xe634e6,0xe6352c)]
evidence=[dict(start=hex(lo),end=hex(hi),instructions=[dict(address=hex(a),instruction=s) for a,s in xs if lo<=a<hi]) for lo,hi in windows]
iterator=dict(passed=True,scope='Default production compiled indexed completion: direct count/range guards for empty remaining passes; removal of old stride-24 pointer-distance iterator bookkeeping. Not speed acceptance or full arithmetic equivalence.',binary_sha256=binary_sha,prior_default_binary_sha256=oldsha,indexed_diagnostic_binary_sha256=dloc['sha256'],normalization=normalization,functions=functions,F64x8_path_evidence=evidence,N210_condition='Known constructor geometry has column/row pass counts 1/1. Both stored counts compare directly against 2; empty remaining ranges skip completion. This review does not execute a constructor or FFT.',F32_scope='Both full normalized symbols match the reviewed indexed diagnostic; direct count/index behavior is preserved, and all 14 old pointer-distance skip patterns disappear independently versus the old default in each variant.',caveats=['F64x8 explicit frame grows 112 bytes, F32x8v 64 bytes, F32x16 128 bytes versus prior default; reduced code spans are not a speed proof.','Ordinary radix arithmetic MOVABS/MUL/IMUL remains; the narrow removed pattern is pointer-distance count reconstruction for skip(1).','Descriptor index-times-24 address formation remains correctly; it is not the removed iterator divide.','Register allocation, stack slots, branch placement and executable layout differ from prior default. No causal performance claim follows from these checks.','Numeric correctness and quiet timing acceptance are separate gates.'])
write('iterator-code-verification.json',iterator)
rows='\n'.join(f"| {x['variant']} | {x['current']['start']}–{x['current']['end']} | 14 → 0 | {x['prior_stats']['explicit_frame_bytes']} → {x['current_stats']['explicit_frame_bytes']} | {x['prior']['bytes']} → {x['current']['bytes']} |" for x in functions)
(B/'iterator-code-verification.md').write_text(f'''# Default indexed-completion code gate

PASS scoped to the compiled empty-remaining-pass guards in frozen default executable `{binary_sha}`. Compared against default anchor `{oldsha}`, not solely against a diagnostic executable. SHA was verified before read-only extraction; no source edit, build, FFT, or benchmark.

F64x8 inverse ungrouped entry loads column count from plan+0x20 at `0xe58288` into RSP+0x10 and row count from plan+0x28 at `0xe58295` into RSP+0x58. For the known N210 geometry both counts are 1. Column full/partial guards at `0xe63453` / `0xe63cc3` compare the stored count with 2 and branch to `0xe644f0` without reconstructing a length from pointer distance.

The unblocked inverse row path at `0xe6c28c` / `0xe6c2a0` forms the row descriptor base from the column count times 24. Row guards at `0xe6cea9`, `0xe6de73`, `0xe6e1ea`, and `0xe6eab5` compare the retained row count with 2 and route an empty range to `0xe6f320`. The second guard branches to nonempty work when count ≥2 and otherwise jumps to that exit. This legitimate descriptor address calculation does not reconstruct an iterator count.

The nonempty column range starts index 1 at `0xe6347d`, increments at `0xe634e6`, compares directly with stored count at `0xe634fd`, and forms the live descriptor index at `0xe63516`. Radix multiplications remain, as required.

| Variant | Current address range | Old pointer-distance skip sites | Explicit frame bytes | Symbol span bytes |
|---|---|---:|---:|---:|
{rows}

All three default symbols have full normalized instruction identity with the reviewed indexed diagnostic, and an independent scan against the old default finds 14 old SHR3/MOVABS0xaaaaaaaaaaaaaaab/IMUL/CMP iterator patterns per variant versus zero now. Exact default guard instructions and branch targets are asserted by the retained reproduction script and recorded in JSON.

Frames grow by 112/64/128 bytes even while code spans shrink. Register allocation, stack offsets, code and branch placement change; this is not a one-instruction performance counterfactual. No speed, cache-mechanism, or full arithmetic-equivalence claim is made. Correctness tests and fresh quiet performance/absolute review remain separate requirements.
''')
print(json.dumps(dict(binary_sha256=binary_sha,alignment_passed=align['passed'],iterator_passed=iterator['passed'],small_kernels=len(kernels),fourstep_variants=len(functions))))

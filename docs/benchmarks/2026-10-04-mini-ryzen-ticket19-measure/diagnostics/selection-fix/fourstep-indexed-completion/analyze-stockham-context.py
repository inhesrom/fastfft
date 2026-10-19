"""Read retained captures and disassemble frozen binaries; never execute an FFT."""
from pathlib import Path
import json,statistics,hashlib,re,subprocess
B=Path('target/ticket19/selection-fix');O=B/'fourstep-indexed-completion';A=O/'stockham-context-extracts';A.mkdir(exist_ok=True)
runs=['canonical-storage','fourstep-storage-anchor','fourstep-indexed-completion','coefficient-components']
data={}; code={}
for run in runs:
 p=B/run/('run/trials.jsonl' if run=='coefficient-components' else 'focus/trials.jsonl'); cells={}
 for line in p.open():
  x=json.loads(line); key=x['key']
  if not key.startswith('pow2:') or not key.endswith(':n4096'):continue
  rows=cells.setdefault(key,[]);d=x.get('measure_diagnostic');row={'process':d['process_index'] if d else len(rows),'members':{m['lib']:{'stats':m['time'],'calls':m['calls_per_batch'],'recipe':m['describe']} for m in x['results']},'clock_ghz':x.get('clock_ghz')}
  if d:
   row['geometry']={'buffers':d['buffers'],'initial_storage':d['initial_storage']}
   row['geometry_mod4096']={'buffers':[ptr%4096 for ptr,n in d['buffers']],'members':[{r['kind']+':'+str(r['index']):r['ptr']%4096 for r in z['regions'] if r['ptr']} for z in d['initial_storage']]}
   row['replay_phases']=[{'index':ph['index'],'condition':ph['condition'],'members':[{k:v for k,v in m.items() if k in ['role','stats','scope','shift','calls']} for m in ph['members']]} for ph in d['phases']]
  else: row['geometry']=None
  rows.append(row)
 data[run]={}
 for key,rows in cells.items():
  summary={lib:{metric:{'mean':statistics.mean(r['members'][lib]['stats'][metric] for r in rows),'median':statistics.median(r['members'][lib]['stats'][metric] for r in rows),'min':min(r['members'][lib]['stats'][metric] for r in rows),'max':max(r['members'][lib]['stats'][metric] for r in rows)} for metric in ['best','p1','median']} for lib in ['fastfft','fastfft/measure']}
  data[run][key]={'processes':rows,'summary':summary}
 exe=B/run/'fastfft-arena';syms=[]
 for ln in subprocess.check_output(['nm','-S','-C',str(exe)],text=True).splitlines():
  v=ln.split(maxsplit=3)
  if len(v)==4 and v[2].lower()=='t':
   try:syms.append((int(v[0],16),int(v[1],16),v[3]))
   except ValueError:pass
 wanted=[s for s in syms if s[2]=='fastfft::engine::stockham_f32' or s[2]=='<fastfft::fft::FftImpl<T> as fastfft::api::Fft<T>>::process_outofplace_with_scratch' or s[2]=='<fastfft_arena::fastfft_adapter::FastRunner<T> as fastfft_arena::adapters::Runner<T>>::run']
 cs=[]
 for i,(start,size,name) in enumerate(wanted):
  asm=subprocess.check_output(['objdump','-d','-C','-Mintel','--no-show-raw-insn',f'--start-address={start}',f'--stop-address={start+size}',str(exe)],text=True)
  f=A/f'{run}-{i}.asm';f.write_text(asm);norm=[]
  for ln in asm.splitlines():
   m=re.match(r'\s*([0-9a-f]+):\s+(.+)',ln)
   if not m:continue
   ins=m[2].split("#",1)[0].rstrip()
   # Preserve local branch offsets and external symbolic target identities. RIP displacements are placement dependent.
   ins=re.sub(r'\b([0-9a-f]+) <(.+)>',lambda m: ('LOCAL+'+hex(int(m[1],16)-start) if start<=int(m[1],16)<start+size else '<'+re.sub(r'\+0x[0-9a-f]+$','',m[2])+'>'),ins)
   ins=re.sub(r'\[rip[+-]0x[0-9a-f]+\]','[rip+RELOC]',ins)
   ins=re.sub(r'#\s*[0-9a-f]+', '# ADDR', ins)
   norm.append(ins)
  nf=f.with_suffix('.normalized.txt');nf.write_text('\n'.join(norm)+'\n')
  cs.append({'name':name,'address':hex(start),'size':size,'instructions':len(norm),'normalized_sha256':hashlib.sha256('\n'.join(norm).encode()).hexdigest(),'assembly':str(f),'normalized':str(nf)})
 code[run]={'binary_sha256':hashlib.sha256(exe.read_bytes()).hexdigest(),'functions':cs}
result={'scope':'Read-only retained capture statistics plus static disassembly. No FFT/build/benchmark. All eight processes retained; indices across runs are not matched pairs. Indexed capture is contaminated and incomplete. Default captures have no runtime geometry; diagnostic geometry is not substituted for it.','runs':data,'code':code,'normalization':'Local target offsets retained; external symbol names retained; RIP displacements and all comments erased. Constant contents and indirect targets not independently verified. Identity is instruction-shape comparison, not semantic/full executable/caller/cache equivalence.'}
(O/'stockham-context-extracts.json').write_text(json.dumps(result,indent=2)+'\n')
for run,cells in data.items():
 for key,c in cells.items():
  print(run,key,[(lib,round(c['summary'][lib]['p1']['mean'],2),round(c['summary'][lib]['p1']['median'],2),[round(r['members'][lib]['stats']['p1'],2) for r in c['processes']]) for lib in ['fastfft','fastfft/measure']])
for run,c in code.items():print(run,[(x['name'],x['size'],x['normalized_sha256'][:12]) for x in c['functions']])

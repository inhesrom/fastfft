import json,runpy,tempfile
from pathlib import Path
analyze=runpy.run_path('scripts/analyze-tuning.py')['analyze']
env={'kind':'environment','cpuinfo':'vendor_id: AuthenticAMD\ncpu family: 25\nmodel: 116\n','features':dict(sse2=True,avx2=True,avx512=True),'args':[]}
def candidate(n,rs,p1,median,mode):
 return dict(kind='candidate',precision='f32',n=n,kernel='stockham',isa='scalar',lanes=1,radices=rs,placement=mode,p1_ns=p1,median_ns=median)
def rows(n,at,bt,restricted=False):
 out=[dict(env,args=['--shortlist'] if restricted else [])]
 for rs,t in [([n],at),([2,n//2],bt)]:
  for m in range(3):out.append(candidate(n,rs,*t,m))
 out.append(dict(kind='estimate',precision='f32',n=n,cap='avx512',kernel='stockham',isa='scalar',lanes=1,radices=[n]))
 return out
with tempfile.TemporaryDirectory() as d:
 files=[]
 for name,data in [('screen',rows(8,(90,100),(95,99))+rows(16,(50,51),(60,61))),('refine1',rows(8,(108,109),(100,101),True)),('refine2',rows(8,(106,107),(99,100),True))]:
  p=Path(d)/name
  p.write_text(''.join(json.dumps(r)+'\n' for r in data));files.append(p)
 _,recipes,audit,calibrated,_=analyze(files[:1],'inplace',refinements=files[1:])
 assert calibrated
 a=next(r for r in audit if r['n']==8)
 assert a['full_catalog'] and a['ip_ratio']==106/99
 assert a['ratios']['0:median_ns']==107/100
 assert next(r for r in recipes if r['n']==8)['ns']==99
 assert next(r for r in recipes if r['n']==16)['ns']==50
 assert next(r for r in audit if r['n']==16)['objective_ratio']==1
 _,_,audit,calibrated,_=analyze([], 'inplace',refinements=files[1:])
 assert not calibrated and not audit[0]['full_catalog']
print('PASS: refinements supersede screening samples, merge their own paired statistics, preserve untouched cases, and cannot invent full catalogs.')

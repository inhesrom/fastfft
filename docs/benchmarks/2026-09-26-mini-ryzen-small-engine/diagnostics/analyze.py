import sys,math
from collections import defaultdict
D=defaultdict(list)
for path in sys.argv[1:]:
 for l in open(path):
  if not l.startswith('candidate,'):continue
  _,p,n,e,isa,lan,dr,mode,best,med=l.strip().split(',')
  D[p,int(n),e,isa,int(lan)].append(float(med))
for p in ['f32','f64']:
 for n in sorted(set(k[1] for k in D if k[0]==p)):
  values=[(math.exp(sum(map(math.log,v))/len(v)),e,i,lan) for (pp,nn,e,i,lan),v in D.items() if pp==p and nn==n]
  print(p,n,sorted((round(t,2),e,i,lan) for t,e,i,lan in values))

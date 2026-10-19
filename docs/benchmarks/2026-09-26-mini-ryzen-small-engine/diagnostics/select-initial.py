import math,statistics
from collections import defaultdict
D=defaultdict(list); old={}
order=['scalar','sse2','avx2','avx512-ymm','avx512']
rust=['Scalar','Sse2','Avx2','Avx512Ymm','Avx512']
for j in [3,4,5]:
 for l in open(f'target/arena/small-candidates-{j}.csv'):
  if l.startswith('candidate,'):
   _,p,n,e,isa,lan,dr,mode,best,med=l.strip().split(',')
   D[p,int(n),e,isa,int(lan),dr,mode].append(float(med))
  if 'existing,' in l:
   l=l[l.index('existing,'):]
   _,p,n,cap,isa,lan=l.strip().split(',')
   old[p,int(n),cap]=('stockham',isa,int(lan))
G=defaultdict(list)
for k,v in D.items(): G[k[:5]].append(statistics.median(v))
G={k:math.exp(statistics.mean(map(math.log,v))) for k,v in G.items()}
s='''//! Focused Zen 4 choices for ticket 11 (three processes, median timings
//! across both directions and all three placements). Within 3%, retain the
//! previous Stockham choice. General cost-model tuning remains ticket 18.
//! Evidence: docs/benchmarks/2026-09-26-mini-ryzen-small-engine/.

use crate::engine::Shape;
use crate::isa::Isa;
use Isa::{Scalar, Sse2, Avx2, Avx512Ymm, Avx512};

type Choice = (bool, Isa, usize);

pub(super) fn preferred(n: usize, isa: Isa, f64_: bool) -> Option<(bool, Shape)> {
    let choices: [Choice; 5] = match (f64_, n) {
'''
for p in ['f32','f64']:
 for n in sorted(set(k[1] for k in G if k[0]==p)):
  choices=[]
  for cap in order:
   opts=[(t,e,i,lan) for (pp,nn,e,i,lan),t in G.items() if pp==p and nn==n and order.index(i)<=order.index(cap)]
   t,e,i,lan=min(opts)
   oe,oi,ol=old[p,n,cap]
   ot=G[p,n,oe,oi,ol]
   if t>=ot*0.97:e,i,lan=oe,oi,ol
   else:
    # Tie between new alternatives: favor the lower tier, then fewer lanes.
    ties=sorted((order.index(ii),ll,ee,ii) for tt,ee,ii,ll in opts if tt <= t/0.97)
    _,lan,e,i=ties[0]
   choices.append(f'({str(e=="small").lower()}, {rust[order.index(i)]}, {lan})')
  s+=f'        ({str(p=="f64").lower()}, {n}) => [{", ".join(choices)}],\n'
s+='''        _ => return None,
    };
    let index = match isa { Scalar => 0, Sse2 => 1, Avx2 => 2, Avx512Ymm => 3, Avx512 => 4 };
    let (small, isa, lanes) = choices[index];
    Some((small, Shape { isa, lanes }))
}
'''
open('crates/fastfft/src/small_dispatch.rs','w').write(s)

from pathlib import Path
import json
old=Path('target/ticket19/selection-fix/canonical-storage/focus')
new=Path('target/ticket19/selection-fix/page-storage-stack/focus')
key='smooth:f32:inv:ip:n1000000'
result={}
for name,base in [('prior',old),('candidate',new)]:
    rows=[json.loads(l) for l in (base/'results.jsonl').open()]
    merged=next(r for r in rows if r['key']==key)
    trials=[json.loads(l) for l in (base/'trials.jsonl').open()]
    raw=[r for r in trials if r['key']==key]
    result[name]={'merged':{r['lib']:r['time'] for r in merged['results']},'trials':[{'process':i,'members':{m['lib']:m['time'] for m in r['results']}} for i,r in enumerate(raw)]}
result['candidate_over_prior']={lib:{stat:result['candidate']['merged'][lib][stat]/result['prior']['merged'][lib][stat] for stat in ['best','p1','median']} for lib in ['fastfft','fastfft/measure']}
result['limitation']='Separate-run absolute comparison, not a randomized same-session counterfactual. Retains best/p1/median and all eight trials; no selected subset.'
Path('target/ticket19/selection-fix/page-storage-stack/absolute-times.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result['candidate_over_prior'],indent=2))

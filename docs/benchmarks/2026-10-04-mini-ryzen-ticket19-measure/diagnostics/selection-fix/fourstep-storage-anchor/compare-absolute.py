from pathlib import Path
import json
old=Path('target/ticket19/selection-fix/canonical-storage/focus')
new=Path('target/ticket19/selection-fix/fourstep-storage-anchor/focus')
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
Path('target/ticket19/selection-fix/fourstep-storage-anchor/absolute-times.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps(result['candidate_over_prior'],indent=2))

all_rows={}
for name,base in [('prior',old),('candidate',new)]:
    all_rows[name]={r['key']:r for r in (json.loads(l) for l in (base/'results.jsonl').open()) if not r['spec']['control']}
comparisons=[]
for key,r in all_rows['candidate'].items():
    if key not in all_rows['prior']:continue
    prev=all_rows['prior'][key];before={x['lib']:x for x in prev['results']};after={x['lib']:x for x in r['results']}
    metric='p1' if r['spec']['n']<=256 and r['spec']['batch']==1 else 'best'
    comparisons.append({'key':key,'metric':metric,'candidate_over_prior':{lib:after[lib]['time'][metric]/before[lib]['time'][metric] for lib in after},'old_descriptions':{lib:x.get('describe') for lib,x in before.items()},'new_descriptions':{lib:x.get('describe') for lib,x in after.items()}})
Path('target/ticket19/selection-fix/fourstep-storage-anchor/all-absolute-times.json').write_text(json.dumps({'comparisons':comparisons,'new_focus_cases_without_prior_focus':sorted(set(all_rows['candidate'])-set(all_rows['prior'])),'limitation':result['limitation']},indent=2)+'\n')

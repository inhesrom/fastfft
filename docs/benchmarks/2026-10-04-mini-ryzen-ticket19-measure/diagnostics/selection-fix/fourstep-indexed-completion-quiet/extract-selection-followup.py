from pathlib import Path
import json,statistics
B=Path('target/ticket19/selection-fix');O=B/'fourstep-indexed-completion-quiet'
keys=['smooth:f32:inv:ip:n210','smooth:f64:inv:ip:n210','smooth:f64:inv:oop:n210','smooth:f64:fwd:oop:n165375','smooth:f64:inv:oop:n165375']
runs={'current':O/'focus','anchor':B/'fourstep-storage-anchor/focus','full_deferred':B/'full-deferred-reserved-all8','components':B/'coefficient-components/run'};out={}
for name,p in runs.items():
 cells={k:[] for k in keys}
 for ln in (p/'trials.jsonl').open():
  x=json.loads(ln);k=x['key']
  if k not in cells:continue
  members={m['lib']:{'recipe':m.get('describe'),'stats':m.get('time'),'calls':m.get('calls_per_batch'),'plan_ns':m.get('plan_ns')} for m in x['results']}
  row={'process':len(cells[k]),'audit_trial_1based':len(cells[k])+1,'members':members,'clock_ghz':x.get('clock_ghz')}
  if 'fastfft' in members and 'fastfft/measure' in members:
   e,m=members['fastfft'],members['fastfft/measure'];row['same_recipe']=e['recipe']==m['recipe'];row['ratios']={s:m['stats'][s]/e['stats'][s] for s in ['best','p1','median']}
  cells[k].append(row)
 merged={x['key']:x for x in (json.loads(l) for l in (p/'results.jsonl').open()) if x['key'] in keys} if (p/'results.jsonl').exists() else {}
 out[name]={}
 for k,rows in cells.items():
  if not rows:continue
  out[name][k]={'processes':rows,'merged':merged.get(k),'summary':{lib:{s:{'mean':statistics.mean(r['members'][lib]['stats'][s] for r in rows),'median':statistics.median(r['members'][lib]['stats'][s] for r in rows)} for s in ['best','p1','median']} for lib in ['fastfft','fastfft/measure']}}
  print(name,k)
  for r in rows:print(r['process'],[(lib,z['recipe'].split(' scratch=')[0],*[round(z['stats'][s],3) for s in ['best','p1','median']],z['calls']) for lib,z in r['members'].items()],r.get('ratios'))
(O/'selection-followup-records.json').write_text(json.dumps({'scope':'All retained processes; cross-run labels unpaired; current capture contaminated and invalid for acceptance.','runs':out},indent=2)+'\n')

#!/usr/bin/env python3
"""Read-only comparison of retained trials; never pairs process indices across builds."""
from pathlib import Path
import json,statistics,hashlib,collections
B=Path(__file__).resolve().parent;ROOT=B.parent
RUNS={'current':B/'focus','anchor':ROOT/'fourstep-storage-anchor/focus','canonical':ROOT/'canonical-storage/focus','full_deferred':ROOT/'full-deferred-reserved-all8','indexed_contaminated':ROOT/'fourstep-indexed-completion-quiet/focus'}
STATS=('best','p1','median');LIBS=('fastfft','fastfft/measure');data={};provenance={}
for name,path in RUNS.items():
 raw=collections.defaultdict(list);merged={}
 for line in (path/'results.jsonl').read_text().splitlines():
  r=json.loads(line)
  if not r['spec'].get('control'):merged[r['key']]=r
 for line in (path/'trials.jsonl').read_text().splitlines():
  r=json.loads(line)
  if not r['spec'].get('control'):raw[r['key']].append(r)
 data[name]={}
 for key,m in merged.items():
  trials=[]
  for i,r in enumerate(raw[key]):
   trials.append({'process_ordinal_within_this_run_only':i,'members':{z['lib']:{k:z.get(k) for k in ('describe','time','calls_per_batch','plan_ns','status')} for z in r['results'] if z['lib'] in LIBS}})
  agg={}
  for lib in LIBS:
   members=[t['members'][lib] for t in trials if lib in t['members']]
   if not members:continue
   agg[lib]={stat:{'mean':statistics.mean(z['time'][stat] for z in members),'median_of_process_values':statistics.median(z['time'][stat] for z in members),'minimum':min(z['time'][stat] for z in members),'maximum':max(z['time'][stat] for z in members)} for stat in STATS}
  data[name][key]={'spec':m['spec'],'trial_count':len(trials),'merged':{z['lib']:{k:z.get(k) for k in ('describe','time','calls_per_batch','status')} for z in m['results'] if z['lib'] in LIBS},'all_process_statistics':agg,'trials':trials}
 provenance[name]={'directory':str(path),'raw_sha256':hashlib.sha256((path/'trials.jsonl').read_bytes()).hexdigest(),'merged_sha256':hashlib.sha256((path/'results.jsonl').read_bytes()).hexdigest(),'ordinary_cells':len(data[name]),'use':'contaminated exploratory evidence only; cannot establish clean acceptance' if name=='indexed_contaminated' else 'retained cross-run baseline; not randomized paired counterfactual'}
comparisons={}
for key,cur in data['current'].items():
 assert cur['trial_count']==8,(key,cur['trial_count'])
 comparisons[key]={}
 for baseline in RUNS.keys()-{'current'}:
  if key not in data[baseline]:continue
  old=data[baseline][key];ratios={}
  for lib in LIBS:
   if lib not in cur['all_process_statistics'] or lib not in old['all_process_statistics']:continue
   ratios[lib]={'mean':{s:cur['all_process_statistics'][lib][s]['mean']/old['all_process_statistics'][lib][s]['mean'] for s in STATS},'median_of_process_values':{s:cur['all_process_statistics'][lib][s]['median_of_process_values']/old['all_process_statistics'][lib][s]['median_of_process_values'] for s in STATS},'merged':{s:cur['merged'][lib]['time'][s]/old['merged'][lib]['time'][s] for s in STATS}}
  comparisons[key][baseline]={'baseline_trial_count':old['trial_count'],'ratios':ratios}
result={'scope':'All eight retained ordinary trials for each available cell and both members. Summaries use arithmetic means of per-process best/p1/median plus median/min/max and official merged records. No cross-build pairing of process ordinals.','provenance':provenance,'comparisons':comparisons,'runs':{n:{k:r for k,r in cells.items() if k in data['current']} for n,cells in data.items()},'limitations':['Separate captures have different clocks, host state, code/stack/address geometry, and process realizations; these ratios are descriptive, not randomized causal estimates.','No contaminated subset is promoted to clean evidence.','All records and all metrics retained; no new absolute acceptance threshold.']}
(B/'all8-absolute-records.json').write_text(json.dumps(result,indent=2)+'\n')
lines=[]
for key,rows in comparisons.items():
 vals=[]
 for name in ('anchor','canonical','full_deferred','indexed_contaminated'):
  if name in rows:
   r=rows[name]['ratios'];e=r['fastfft']['mean'];m=r['fastfft/measure']['mean'];vals.append(f"{name}: E {e['best']:.4f}/{e['p1']:.4f}/{e['median']:.4f} M {m['best']:.4f}/{m['p1']:.4f}/{m['median']:.4f}")
 lines.append(key+' | '+' | '.join(vals))
(B/'all8-absolute-comparisons.txt').write_text('\n'.join(lines)+'\n');print('wrote',len(comparisons),'cells; every current trial count=8')

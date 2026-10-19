from pathlib import Path
import json,math,statistics
b=Path(__file__).parent
x=json.loads((b/'inspection-corrected.json').read_text());assert x['evidence_valid']
rows=[]
for t in x['trials']:
    states={swapped:[p for p in t['phases'] if p['swapped']==swapped] for swapped in [False,True]}
    r={'process':t['process']}
    for metric in ['best','p1','median']:
        ratios={state:statistics.mean(p['ratios'][metric] for p in phases) for state,phases in states.items()}
        r[metric]={'original_ratio':ratios[False],'swapped_ratio':ratios[True],'owner_log_effect':(math.log(ratios[False])-math.log(ratios[True]))/2,'member_log_effect':(math.log(ratios[False])+math.log(ratios[True]))/2,'original_phase_ratios':[p['ratios'][metric] for p in states[False]],'swapped_phase_ratios':[p['ratios'][metric] for p in states[True]]}
    rows.append(r)
out={'acceptance':False,'evidence_valid':True,'rows':rows,'p1_reversals':sum((r['p1']['original_ratio']-1)*(r['p1']['swapped_ratio']-1)<0 for r in rows),'p1_owner_effect_range':[min(math.expm1(r['p1']['owner_log_effect']) for r in rows),max(math.expm1(r['p1']['owner_log_effect']) for r in rows)],'scope':'Within-process balanced reversible owner experiment. All phases retained; no process index pairing across builds; does not waive the retained production miss or establish a production remedy.'}
(b/'findings.json').write_text(json.dumps(out,indent=2)+'\n')
for r in rows:print(r['process'],*(round(r['p1'][k],6) for k in ['original_ratio','swapped_ratio']), 'owner_pct',round(100*math.expm1(r['p1']['owner_log_effect']),3))
print({k:v for k,v in out.items() if k!='rows'})

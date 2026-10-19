#!/usr/bin/env python3
"""Audit fixed in-allocation coefficient shifts. Diagnostic, never acceptance."""
import argparse
import copy
import datetime
import importlib.util
import json
from pathlib import Path

_spec=importlib.util.spec_from_file_location('large_audit',Path(__file__).with_name('inspect-large-coefficients.py'))
_base=importlib.util.module_from_spec(_spec);_spec.loader.exec_module(_base)
check,positive,clock_pair,sample_record=_base.check,_base.positive,_base.clock_pair,_base.sample_record
COEFFICIENTS={'Twiddles','PhaseBTwiddles','ColumnTwiddles','RowTwiddles','CrossTwiddles','FineTwiddles'}
KEYS={'pow2:f32:fwd:oop:n4096','pow2:f32:inv:ip:n4096','pow2:f32:inv:oop:n4096',
      'smooth:f64:inv:ip:n210','smooth:f64:inv:oop:n210'}
DESCRIPTIONS={4096:_base.DESCRIPTIONS[4096],210:'fourstep avx512 split L=8 decomposition=14x15 radices=14/15 scratch=456 scratch_oop=456 scratch_immutable=456'}
CALLS={4096:20,210:160};SCRATCH={4096:9224,210:456}


def signatures(n):
    if n==4096:
        r=[('Object',0,192,1,0),('EmbeddedPlan',0,112,1,0),('CoefficientStorage',0,4096,10,10),('PassDescriptors',0,24,3,0)]
        for i,v in enumerate([14,112,896]):r += [('Radices',i,8,1,0),('Twiddles',i,4,v,0)]
        return r+[('PhaseBTwiddles',0,4,8192,0),('Metadata',0,0,8,0),('Metadata',2,0,1,0)]+[('Metadata',i,0,9216,0) for i in [10,11,12]]
    return [('Object',0,192,1,0),('EmbeddedPlan',0,160,1,0),('CoefficientStorage',0,4096,2,2),
            ('PassDescriptors',0,24,1,0),('ColumnRadices',0,8,1,0),('ColumnTwiddles',0,8,26,0),
            ('PassDescriptors',1,24,1,0),('RowRadices',0,8,1,0),('RowTwiddles',0,8,28,0),
            ('CrossTwiddles',0,8,448,0),('FineTwiddles',0,8,0,0),('Metadata',0,0,8,0),('Metadata',2,0,1,0)
           ]+[('Metadata',i,0,v,0) for i,v in enumerate([212,120,1,124,0,0,1],3)]


def validate_storage(s,n,canonical=True):
    check(all(type(s[k]) is int and s[k]>0 for k in ['plan_ptr','runner_ptr']),'invalid object address')
    regions=s['regions'];check(regions,'missing regions')
    check(len({(r['kind'],r['index']) for r in regions})==len(regions),'duplicate regions')
    for r in regions:
        check(all(type(r[k]) is int and r[k]>=0 for k in ['owner','index','ptr','element_bytes','len','capacity']),'invalid region numbers')
        check(r['owner']==s['plan_ptr'],'wrong region owner')
        check(r['ptr']>0 if r['element_bytes'] and r['len'] else r['ptr']==0,'invalid region pointer')
    check(regions[0]['kind']=='Object' and regions[0]['ptr']==s['plan_ptr'],'object mismatch')
    if not canonical:return
    check([(r['kind'],r['index'],r['element_bytes'],r['len'],r['capacity']) for r in regions]==signatures(n),'canonical signature mismatch')
    by={(r['kind'],r['index']):r for r in regions};base=by['CoefficientStorage',0]['ptr']
    check(base%4096==0,'backing page alignment')
    offsets={('PassDescriptors',0):0}
    if n==4096:
        for i,off in enumerate([128,192,640]):offsets['Radices',i]=24*i;offsets['Twiddles',i]=off
        offsets['PhaseBTwiddles',0]=4224
    else:
        offsets.update({('ColumnRadices',0):0,('ColumnTwiddles',0):64,('PassDescriptors',1):24,
                        ('RowRadices',0):24,('RowTwiddles',0):320,('CrossTwiddles',0):576})
    for key,off in offsets.items():check(by[key]['ptr']==base+off,'canonical relative offset')
    check(by['EmbeddedPlan',0]['ptr']==s['plan_ptr']+(8 if n==4096 else 0),'embedded offset')


def positioned(original,shift,enabled):
    result=copy.deepcopy(original)
    for m,s in enumerate(result):
        for r in s['regions']:
            if enabled[m] and r['kind'] in COEFFICIENTS and r['len']:r['ptr']+=shift
    return result


def frozen_spec(row,control=False):
    s=row['spec'];n=s['n'];check(n in CALLS,'unexpected size')
    expected={'suite':'control' if control else ('pow2' if n==4096 else 'smooth'),
              'precision':'f32' if n==4096 else 'f64','batch':1,'misalign':0,'caller_scratch':SCRATCH[n],
              'profile':'full','data':'zero','scenario':None,'control':control,'verify':not control,
              'seed':1 if control else 0x5eed0000+n}
    check(all(type(s[k]) is type(v) and s[k]==v for k,v in expected.items()),'wrong frozen spec')
    direction={'forward':'fwd','inverse':'inv'}[s['direction']];placement={'inplace':'ip','outofplace':'oop'}[s['placement']]
    check(row['key']==f"{s['suite']}:{s['precision']}:{direction}:{placement}:n{n}",'key mismatch')
    check(row['key']=='control:f32:fwd:ip:n4096' if control else row['key'] in KEYS,'unexpected frozen cell')
    check(type(row['cpu']) is int and row['cpu']==4 and type(row['procs']) is int and row['procs']==1,'wrong CPU/process')
    check(positive(row['wall_s']),'invalid original duration');clock_pair(row['clock_ghz'])
    d=s['diagnostics']
    check(d['coefficient_position'] is (not control) and d['sample_trace'] is (not control),'wrong opt-in')
    check(all(d[k] is False for k in ['measure_trace','measure_context','factorial','coefficient_crossover']),'confounded diagnostics')
    check(type(d['execution_rotation']) is int and d['execution_rotation']==0,'execution rotation')
    return n


def original_stats(lib,n,control=False,require_description=True):
    check(lib['status']=='ok','original row failed')
    check(not require_description or lib['describe']==DESCRIPTIONS[n],'unexpected original plan')
    check(type(lib['calls_per_batch']) is int and lib['calls_per_batch']>0 and positive(lib['plan_ns']),'original planning/count')
    s=lib['time'];check(type(s['samples']) is int and s['samples']>0 and all(positive(s[k]) for k in ['best','p1','p10','median','p90']),'invalid original stats')
    if not control:
        check(lib['verify']['passed'] is True,'original correctness failed')
        trace=lib['sample_trace'];check(trace['batch']==1,'original units')
        sample_record({**trace,'calls':lib['calls_per_batch'],'warmup_calibrated_calls':lib['calls_per_batch'],'stats':s},lib['calls_per_batch'])


def inspect_trial(row,process):
    n=frozen_spec(row);d=row['measure_diagnostic'];enabled=[True,n==4096]
    check(type(process) is int and 0<=process<8,'invalid process')
    check(d['capture']=='coefficient-position' and d['acceptance'] is False and d['status']=='complete','invalid capture')
    check(type(d['process_index']) is int and type(row['spec']['diagnostics']['process_index']) is int and d['process_index']==process==row['spec']['diagnostics']['process_index'],'process mismatch')
    order=['fastfft','fastfft/measure'] if process%2==0 else ['fastfft/measure','fastfft']
    check(row['spec']['libs']==order and [r['lib'] for r in row['results']]==order,'construction order')
    check(d['reverse_positions'] is bool(process&2) and type(d['member_start']) is int and d['member_start']==process//4,'factor balance')
    check(type(d['calls']) is int and d['calls']==CALLS[n] and d['shifted']==enabled and all(type(v) is bool for v in d['shifted']),'calls/targets')
    check(d['units']=='ns per whole-buffer public call' and positive(d['elapsed_s']) and d['elapsed_s']>=10.8,'incomplete timing')
    check(all(d[k] is True for k in ['restored','backing_bytes_restored','preflight_restored']),'restoration failure')
    check(d['sample_capacity']==32768 and d['sample_storage_grew'] is False,'sample allocation changed')
    original=d['initial_storage'];check(len(original)==2,'missing original plan')
    for i,s in enumerate(original):validate_storage(s,n,enabled[i])
    check(original[0]['plan_ptr']!=original[1]['plan_ptr'] and original[0]['runner_ptr']!=original[1]['runner_ptr'],'aliased plans/runners')
    check(d['restored_storage']==original,'final geometry restoration')
    check(len(d['buffers'])==3,'missing buffer')
    spans=[]
    for (p,l),need in zip(d['buffers'],[n,n,SCRATCH[n]]):
        check(type(p) is int and p>0 and p%64==0 and type(l) is int and l==need,'caller buffer mismatch')
        spans.append((p,p+l*(8 if n==4096 else 16)))
    for s in original:
        for r in s['regions']:
            if r['capacity']:spans.append((r['ptr'],r['ptr']+r['element_bytes']*r['capacity']))
    check(all(a[1]<=b[0] or b[1]<=a[0] for i,a in enumerate(spans) for b in spans[i+1:]),'aliased allocations')
    results={r['lib']:r for r in row['results']}
    check(d['descriptions']==[results[k]['describe'] for k in ['fastfft','fastfft/measure']],'description mismatch')
    for lib,r in results.items():original_stats(r,n,require_description=lib=='fastfft' or n==4096)
    clocks=clock_pair(row['clock_ghz'])+clock_pair(d['clock_ghz']);check(max(clocks)/min(clocks)<=1.03,'within-trial drift')
    positions=[0,1024,64,64,1024,0] if process&2 else [0,64,1024,1024,64,0]
    check(len(d['phases'])==6,'missing phase');phases=[]
    for i,p in enumerate(d['phases']):
        check(type(p['index']) is int and p['index']==i and type(p['position']) is int and p['position']==positions[i],'phase assignment')
        members=p['members'];check([m['role'] for m in members]==['estimate','measure'],'phase member order')
        check([m['storage'] for m in members]==positioned(original,positions[i],enabled),'coefficient displacement/non-target mutation')
        for m,enabled_member in zip(members,enabled):
            check(m['shifted'] is enabled_member and type(m['shift']) is int and m['shift']==(positions[i] if enabled_member else 0),'member intervention')
            check(m['coefficients_equal'] is True and m['output_bitwise_equal'] is True,'phase correctness')
        values=[sample_record(m,CALLS[n],32768) for m in members]
        phases.append({'index':i,'position':positions[i],'stats':values})
    check(sum(sum(m['whole_buffer_ns'])*CALLS[n] for p in d['phases'] for m in p['members'])/1e9<=d['elapsed_s'],'sample duration exceeds replay')
    check(d['memory_mappings']['captured_after_timing'] is True and not d['memory_mappings']['smaps'].startswith('read error:'),'missing post-timing mappings')
    return {'key':row['key'],'process':process,'phases':phases}


def quiet(log):
    rows=[json.loads(l) for l in log.open()];policy=[r for r in rows if r['event']=='policy'];starts=[i for i,r in enumerate(rows) if r['event']=='started']
    check(len(policy)==1 and policy[0]['quiet_seconds']==60 and policy[0]['core']==4 and len(starts)==1,'quiet policy/start')
    before=rows[:starts[0]];boundary=policy[0]['utc'];count=0
    for r in before:
        if r['event']=='waiting':
            if r['quiet']:count+=1
            else:boundary=r['utc'];count=0
    check(count>=12 and (datetime.datetime.fromisoformat(rows[starts[0]]['utc'])-datetime.datetime.fromisoformat(boundary)).total_seconds()>=60,'insufficient quiet preflight')
    env=[r for r in before if r['event']=='environment'];check(env and env[-1]['returncode']==0,'environment preflight')
    running=[r for r in rows if r['event']=='running'];check(running and all(r['quiet'] is True for r in running),'dirty running monitor')
    check(rows[-1]['event']=='finished' and rows[-1]['returncode']==0,'monitor completion')
    return len(running)


def audit(run,quiet_log):
    problems=[];summaries=[];counts={};running=0
    rows=[json.loads(l) for l in (run/'trials.jsonl').open()]
    for r in rows:
        if r['spec']['control']:continue
        p=counts.get(r['key'],0);counts[r['key']]=p+1
        try:summaries.append(inspect_trial(r,p))
        except (ValueError,KeyError,TypeError,IndexError,OverflowError) as e:problems.append(f"{r['key']} process{p}: {e}")
    try:
        check(counts=={k:8 for k in KEYS},'fixed coverage')
        meta=json.loads((run/'meta.json').read_text());env=json.loads((run/'env.json').read_text())
        check(meta['cells']==5 and meta['child_failures']==0 and meta['aborted'] is None and meta['drift_flag'] is False and meta['max_drift']<=.03 and meta['official'] is False,'completion/drift')
        check(env['env_check']['ok'] is True and env['build_profile']=='arena' and env['rustflags']=='-C llvm-args=-align-all-functions=6' and env['target_cpu_native'] is False,'build/environment')
        for k,v in {'procs':8,'profile':'full','process_order':'rotating','cells':5,'suites':['pow2','smooth'],'libs':['fastfft','fastfft/measure'],'official':False}.items():check(env['run'][k]==v,'protocol '+k)
        controls=[r for r in rows if r['spec']['control']];check(len(controls)==16,'control coverage')
        check(all(r['spec']['control'] for r in rows[:8]+rows[-8:]) and all(not r['spec']['control'] for r in rows[8:-8]),'control bracketing')
        for i,r in enumerate(controls):
            frozen_spec(r,True);check(r['spec']['libs']==['fastfft'] and len(r['results'])==1 and r['results'][0]['lib']=='fastfft' and r['spec']['diagnostics']['process_index']==i%8,'control libraries/order')
            original_stats(r['results'][0],4096,True);check(not r.get('measure_diagnostic'),'control diagnostic')
        ref=max(c for r in controls[:8] for c in r['clock_ghz'])
        check(all(abs(c/ref-1)<=.03 for r in rows for c in r['clock_ghz']+(r.get('measure_diagnostic') or {}).get('clock_ghz',[])),'control clock drift')
        running=quiet(quiet_log)
    except (ValueError,KeyError,TypeError,IndexError) as e:problems.append(str(e))
    return {'acceptance':False,'evidence_valid':not problems,'problems':problems,'counts':counts,'quiet_running_samples':running,'trials':summaries}

if __name__=='__main__':
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('run',type=Path);p.add_argument('--quiet-log',type=Path,required=True);p.add_argument('--out',type=Path,required=True)
    a=p.parse_args();r=audit(a.run,a.quiet_log);a.out.write_text(json.dumps(r,indent=2)+'\n');print(json.dumps({k:v for k,v in r.items() if k!='trials'}));raise SystemExit(not r['evidence_valid'])

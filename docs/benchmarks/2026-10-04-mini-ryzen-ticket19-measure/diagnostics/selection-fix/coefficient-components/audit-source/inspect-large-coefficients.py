#!/usr/bin/env python3
"""Audit the fixed N75600/N165375 full-storage crossover, never acceptance."""
import argparse
import copy
import datetime
import importlib.util
import json
import math
from pathlib import Path

_spec = importlib.util.spec_from_file_location('storage_audit', Path(__file__).with_name('inspect-storage.py'))
_base = importlib.util.module_from_spec(_spec)
_spec.loader.exec_module(_base)
check, positive, stats, clock_pair = _base.check, _base.positive, _base.stats, _base.clock_pair

DESCRIPTIONS = {
    75600: 'stockham avx512-ymm split L=8 radices=14x15x15x3 scratch=152232 scratch_oop=152232 scratch_immutable=152232',
    165375: 'fourstep avx512 split L=8 decomposition=375x441 radices=15x5x5/7x7x9 scratch=172436 scratch_oop=172436 scratch_immutable=172436',
    4096: _base.DESCRIPTION,
}
CALLS = {75600: 1, 165375: 1}
SCRATCH = {75600: 152232, 165375: 172436, 4096: 9224}
PRECISION = {75600: 'f32', 165375: 'f64', 4096: 'f32'}
TARGETS = {'CoefficientStorage', 'PassDescriptors', 'Radices', 'Twiddles', 'PhaseBTwiddles',
           'ColumnRadices','RowRadices','VectorDescriptors','ColumnTwiddles','RowTwiddles','CrossTwiddles','FineTwiddles'}
PASS_LENS = [26,392,5880,12600]
PASS_OFFSETS = [128,256,1856,25408]


def signatures(n):
    if n == 75600:
        result = [('Object',0,272,1,0),('EmbeddedPlan',0,112,1,0),
                  ('CoefficientStorage',0,4096,167,167),('PassDescriptors',0,24,4,0)]
        for i,length in enumerate(PASS_LENS):
            result += [('Radices',i,8,1,0),('Twiddles',i,4,length,0)]
        return result + [('PhaseBTwiddles',0,4,151296,0),('Metadata',0,0,8,0),
                         ('Metadata',2,0,1,0)] + [('Metadata',i,0,152224,0) for i in [10,11,12]]
    check(n == 165375, 'unexpected geometry')
    result = [('Object',0,272,1,0),('EmbeddedPlan',0,240,1,0),
              ('ColumnRadices',0,8,3,4),('RowRadices',0,8,3,4),
              ('VectorDescriptors',0,24,3,3),('VectorDescriptors',1,24,3,3)]
    for kind,lengths in [('ColumnTwiddles',[28,120,600]),('RowTwiddles',[12,84,784])]:
        result += [(kind,i,8,v,v) for i,v in enumerate(lengths)]
    return result + [('CrossTwiddles',0,8,336000,336000),('FineTwiddles',0,8,0,0),
                     ('Metadata',0,0,8,0),('Metadata',2,0,1,0)] + [
                         ('Metadata',i,0,v,0) for i,v in enumerate([165376,3528,1,3532,0,0,1],3)]


def assigned(original, exchanged, n):
    check(type(exchanged) is bool and len(original)==2,'invalid ownership assignment')
    spans=[]
    for owner in original:
        check(all(type(owner[k]) is int and owner[k]>0 for k in ['plan_ptr','runner_ptr']),'invalid object address')
        regions=owner['regions']
        check([(r['kind'],r['index'],r['element_bytes'],r['len'],r['capacity']) for r in regions]==signatures(n),'storage signature mismatch')
        for r in regions:
            check(all(type(r[k]) is int and r[k]>=0 for k in ['owner','index','ptr','element_bytes','len','capacity']),'invalid region numbers')
            check(r['owner']==owner['plan_ptr'],'wrong region owner')
            empty=r['kind']=='Metadata' or r['kind']=='FineTwiddles'
            check((r['ptr']==0) if empty else r['ptr']>0,'invalid region address')
            if r['capacity']:
                check(r['ptr']%min(r['element_bytes'],4096)==0 if r['kind']=='CoefficientStorage' else r['ptr']%8==0,'owner alignment mismatch')
                spans.append((r['ptr'],r['ptr']+r['element_bytes']*r['capacity']))
        by={(r['kind'],r['index']):r for r in regions}
        check(regions[0]['ptr']==owner['plan_ptr'],'object pointer mismatch')
        embedded=by[('EmbeddedPlan',0)]
        check(owner['plan_ptr']<=embedded['ptr'] and embedded['ptr']+embedded['element_bytes']<=owner['plan_ptr']+272,'embedded plan outside object')
        if n==75600:
            base=by[('CoefficientStorage',0)]['ptr']
            check(by[('PassDescriptors',0)]['ptr']==base,'descriptor prefix mismatch')
            for i,offset in enumerate(PASS_OFFSETS):
                check(by[('Radices',i)]['ptr']==base+24*i and by[('Twiddles',i)]['ptr']==base+offset,'canonical pass view mismatch')
            check(by[('PhaseBTwiddles',0)]['ptr']==base+75840,'canonical Phase-B view mismatch')
    check(original[0]['plan_ptr']!=original[1]['plan_ptr'] and original[0]['runner_ptr']!=original[1]['runner_ptr'],'aliased objects')
    check(all(a[1]<=b[0] or b[1]<=a[0] for i,a in enumerate(spans) for b in spans[i+1:]),'aliased storage owners')
    result=copy.deepcopy(original)
    if exchanged:
        for i,owner in enumerate(result):
            for j,r in enumerate(owner['regions']):
                if r['kind'] in TARGETS:r['ptr']=original[1-i]['regions'][j]['ptr']
    return result


def workspace(n, buffers):
    x,y,s=[r[0] for r in buffers]
    if n==75600:
        return dict(path='stockham ordinary out-of-place',complex_bytes=8,misaligned_io=False,
                    gated_scratch_reserved=152224,gated_scratch_used=False,input=x,output=y)
    return dict(path='fourstep ungrouped unblocked',complex_bytes=16,matrix=s,
                work1=s+165376*16,work2=s+(165376+3528)*16,matrix_len=165376,work_len=3528,input=x,output=y)


def sample_record(record, calls, capacity=None):
    check(type(record['calls']) is int and record['calls'] == calls, 'wrong fixed call count')
    check(type(record['warmup_calibrated_calls']) is int and record['warmup_calibrated_calls'] > 0, 'invalid warmup')
    ns,ends=record['whole_buffer_ns'],record['round_ends']
    check(len(ends)==7 and all(type(e) is int for e in ends) and all(a<b for a,b in zip([0]+ends,ends)) and ends[-1]==len(ns), 'incomplete turn coverage')
    if capacity is not None:check(len(ns)<=capacity,'sample capacity exceeded')
    computed=stats(ns)
    check(type(record['stats']['samples']) is int and all(math.isclose(computed[k],record['stats'][k],rel_tol=1e-12) for k in computed),'summary/raw mismatch')
    return computed


def frozen_spec(row, control=False):
    s=row['spec']; n=4096 if control else s['n']
    check(control or n in CALLS,'unexpected cell size')
    expected={'suite':'control' if control else 'smooth','precision':PRECISION[n],'direction':'forward' if control else 'inverse',
              'placement':'inplace' if control else 'outofplace','n':n,'batch':1,'misalign':0,'caller_scratch':SCRATCH[n],
              'profile':'full','data':'zero','scenario':None,'control':control,'verify':not control,'seed':1 if control else 0x5eed0000+n}
    check(all(type(s[k]) is type(v) and s[k]==v for k,v in expected.items()),'wrong frozen spec')
    check(row['key']==f"{expected['suite']}:{PRECISION[n]}:{'fwd' if control else 'inv'}:{'ip' if control else 'oop'}:n{n}",'key/spec mismatch')
    check(type(row['cpu']) is int and row['cpu']==4 and type(row['procs']) is int and row['procs']==1,'wrong raw CPU/process')
    check(positive(row['wall_s']),'invalid original elapsed time')
    d=s['diagnostics']
    check(d['coefficient_crossover'] is (not control) and d['sample_trace'] is (not control),'wrong diagnostic opt-in')
    check(all(d[k] is False for k in ['measure_trace','measure_context','factorial']) and type(d['execution_rotation']) is int and d['execution_rotation']==0,'confounded diagnostic')
    clock_pair(row['clock_ghz'])
    return n


def original_stats(lib,n,control=False):
    check(lib['status']=='ok' and lib['describe']==DESCRIPTIONS[n],'unexpected original executable')
    check(type(lib['calls_per_batch']) is int and lib['calls_per_batch']>0 and positive(lib['plan_ns']),'invalid original planning/count')
    reported=lib['time']
    check(type(reported['samples']) is int and reported['samples']>0 and all(positive(reported[k]) for k in ['best','p1','p10','median','p90']),'invalid original stats')
    if not control:
        check(lib['verify']['passed'] is True,'original correctness failed')
        trace=lib['sample_trace'];check(trace['batch']==1,'wrong original sample units')
        sample_record({**trace,'calls':lib['calls_per_batch'],'warmup_calibrated_calls':lib['calls_per_batch'],'stats':reported},lib['calls_per_batch'])


def inspect_trial(row,process):
    n=frozen_spec(row);d=row['measure_diagnostic'];calls=CALLS[n]
    check(type(process) is int and 0<=process<8,'wrong process index')
    check(d['capture']=='large-storage-crossover' and d['status']=='complete' and d['acceptance'] is False,'incomplete crossover')
    check(type(d['process_index']) is int and type(row['spec']['diagnostics']['process_index']) is int and row['spec']['diagnostics']['process_index']==process==d['process_index'],'process mismatch')
    order=['fastfft','fastfft/measure'] if process%2==0 else ['fastfft/measure','fastfft']
    check(row['spec']['libs']==order and [v['lib'] for v in row['results']]==order,'construction/result order mismatch')
    check(type(d['calls']) is int and d['calls']==calls and type(d['member_start']) is int and d['member_start']==(process//4)%2,'call/member balance mismatch')
    check(d['assignment_start'] is bool((process//2)%2) and type(d['condition_start']) is int and d['condition_start']==int(d['assignment_start']),'assignment balance mismatch')
    check(d['units']=='ns per whole-buffer public call' and positive(d['elapsed_s']) and d['elapsed_s']>=7.2,'incomplete phase exposure')
    check(d['restored'] is True and d['preflight_restored'] is True and d['sample_capacity']==32768 and d['sample_storage_grew'] is False,'storage restoration/capacity failure')
    original=assigned(d['initial_storage'],False,n)
    check(d['restored_storage']==original,'incorrect final restoration')
    check(len(d['buffers'])==3,'missing caller buffer')
    spans=[]
    for (ptr,length),need in zip(d['buffers'],[n,n,SCRATCH[n]]):
        check(type(ptr) is int and ptr>0 and ptr%64==0 and type(length) is int and length==need,'caller buffer mismatch')
        spans.append((ptr,ptr+length*(8 if n==75600 else 16)))
    check(all(a[1]<=b[0] or b[1]<=a[0] for i,a in enumerate(spans) for b in spans[i+1:]),'overlapping caller buffers')
    check(d['workspace']==workspace(n,d['buffers']),'effective workspace mismatch')
    for lib in row['results']:original_stats(lib,n)
    clocks=clock_pair(row['clock_ghz'])+clock_pair(d['clock_ghz'])
    check(max(clocks)/min(clocks)<=1.03,'within-trial clock drift')
    check(len(d['phases'])==4,'wrong phase count')
    phases=[]
    for i,phase in enumerate(d['phases']):
        condition=[0,1,1,0][i]^d['condition_start'];swapped=bool(condition)
        check(type(phase['index']) is int and phase['index']==i and type(phase['condition']) is int and phase['condition']==condition and phase['swapped'] is swapped,'phase assignment mismatch')
        members=phase['members']
        check([m['role'] for m in members]==['estimate','measure'],'wrong phase members')
        check([m['storage'] for m in members]==assigned(original,swapped,n),'wrong target exchange or non-target mutation')
        values=[sample_record(m,calls,32768) for m in members]
        phases.append({'index':i,'swapped':swapped,'stats':values,'ratios':{k:values[1][k]/values[0][k] for k in ['best','p1','median']}})
    check(sum(sum(m['whole_buffer_ns'])*calls for p in d['phases'] for m in p['members'])/1e9<=d['elapsed_s'],'timed batches exceed replay duration')
    return {'key':row['key'],'process':process,'phases':phases}


def audit(run,quiet_log):
    problems=[];summaries=[];counts={}
    rows=[json.loads(l) for l in (run/'trials.jsonl').open()]
    for row in rows:
        if row['spec'].get('control'):continue
        process=counts.get(row['key'],0);counts[row['key']]=process+1
        try:summaries.append(inspect_trial(row,process))
        except (ValueError,KeyError,TypeError,IndexError) as e:problems.append(f"{row['key']} process {process}: {e}")
    if counts!={f'smooth:{PRECISION[n]}:inv:oop:n{n}':8 for n in CALLS}:problems.append('fixed coverage mismatch')
    meta=json.loads((run/'meta.json').read_text());env=json.loads((run/'env.json').read_text())
    if meta['cells']!=2 or meta['child_failures'] or meta['aborted'] or meta['drift_flag'] or meta['max_drift']>.03 or meta['official'] is not False:problems.append('completion/drift failure')
    if env['env_check']['ok'] is not True or env['build_profile']!='arena' or env['rustflags']!='-C llvm-args=-align-all-functions=6' or env['target_cpu_native']:problems.append('build/environment mismatch')
    for k,v in {'procs':8,'profile':'full','process_order':'rotating','cells':2,'suites':['smooth'],'libs':['fastfft','fastfft/measure'],'official':False}.items():
        if env['run'].get(k)!=v:problems.append('run protocol '+k)
    logs=[json.loads(l) for l in quiet_log.open()];policies=[r for r in logs if r['event']=='policy'];starts=[i for i,r in enumerate(logs) if r['event']=='started']
    if len(policies)!=1 or policies[0]['quiet_seconds']!=60 or policies[0]['core']!=4 or len(starts)!=1:problems.append('quiet policy/start mismatch')
    else:
        before=logs[:starts[0]];boundary=policies[0]['utc'];consecutive=0
        for r in before:
            if r['event']=='waiting':
                if r['quiet']:consecutive+=1
                else:boundary=r['utc'];consecutive=0
        delta=(datetime.datetime.fromisoformat(logs[starts[0]]['utc'])-datetime.datetime.fromisoformat(boundary)).total_seconds()
        if consecutive<12 or delta<60:problems.append('insufficient sustained quiet')
        environments=[r for r in before if r['event']=='environment']
        if not environments or environments[-1]['returncode']!=0:problems.append('missing environment preflight')
    running=[r for r in logs if r['event']=='running']
    if not running or any(r['quiet'] is not True for r in running):problems.append('running monitor failed')
    if logs[-1]['event']!='finished' or logs[-1]['returncode']!=0:problems.append('monitor completion failed')
    controls=[r for r in rows if r['spec'].get('control')]
    if len(controls)!=16:problems.append('control coverage mismatch')
    else:
        for i,r in enumerate(controls):
            try:
                frozen_spec(r,True)
                check(r['spec']['libs']==['fastfft'] and len(r['results'])==1 and r['results'][0]['lib']=='fastfft','wrong control libraries')
                check(r['spec']['diagnostics']['process_index']==i%8,'control process order')
                original_stats(r['results'][0],4096,True)
                check(not r.get('measure_diagnostic'),'control intervention present')
            except (ValueError,KeyError,TypeError,IndexError) as e:problems.append(f'control {i}: {e}')
        if any(not r['spec']['control'] for r in rows[:8]+rows[-8:]) or any(r['spec']['control'] for r in rows[8:-8]):problems.append('controls do not bracket cells')
        reference=max(c for r in controls[:8] for c in r['clock_ghz'])
        for r in rows:
            endpoints=r['clock_ghz']+(r.get('measure_diagnostic') or {}).get('clock_ghz',[])
            if any(abs(c/reference-1)>.03 for c in endpoints):problems.append('clock endpoint outside control 3%')
    return {'acceptance':False,'evidence_valid':not problems,'problems':problems,'counts':counts,'quiet_running_samples':len(running),'trials':summaries}

if __name__=='__main__':
    p=argparse.ArgumentParser(description=__doc__);p.add_argument('run',type=Path);p.add_argument('--quiet-log',type=Path,required=True);p.add_argument('--out',type=Path,required=True)
    args=p.parse_args();result=audit(args.run,args.quiet_log);args.out.write_text(json.dumps(result,indent=2)+'\n');print(json.dumps({k:v for k,v in result.items() if k!='trials'}));raise SystemExit(not result['evidence_valid'])

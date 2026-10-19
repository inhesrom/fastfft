#!/usr/bin/env python3
"""Fixed N262144 sample-only diagnostic audit; never production acceptance."""
import argparse
import copy
import datetime as dt
import hashlib
import importlib.util
import json
import math
from pathlib import Path

BASE = Path(__file__).resolve().parent
ROOT = BASE.parents[3]
MATH = ROOT / 'docs/benchmarks/2026-10-04-mini-ryzen-ticket19-measure/inspect-storage.py'
module = importlib.util.spec_from_file_location('retained_audit_math', MATH)
maths = importlib.util.module_from_spec(module)
module.loader.exec_module(maths)
check, stats, positive, clock_pair = maths.check, maths.stats, maths.positive, maths.clock_pair
KEY = 'pow2:f32:fwd:oop:n262144'
CONTROL = 'control:f32:fwd:ip:n4096'
LIBS = ['fastfft', 'fastfft/measure']
DESCRIPTION = 'fourstep avx512-ymm split L=8 decomposition=512x512 radices=8x8x8/8x8x8 scratch=336392 scratch_oop=336392 scratch_immutable=336392'
FIELDS = ['best', 'p1', 'p10', 'median', 'p90', 'samples']
ERRORS = (ValueError, KeyError, TypeError, IndexError, OSError)


def read(path):
    return json.loads(path.read_text())


def lines(path):
    return [json.loads(line) for line in path.read_text().splitlines()]


def close(a, b):
    return math.isclose(a, b, rel_tol=1e-12)


def ratios(members):
    by = {r['lib']: r for r in members}
    return {k: by[LIBS[1]]['time'][k] / by[LIBS[0]]['time'][k]
            for k in ['best', 'p1', 'median']}


def spec_check(row, process, control):
    s = row['spec']; n = 4096 if control else 262144
    expected = dict(suite='control' if control else 'pow2', precision='f32',
        direction='forward', placement='inplace' if control else 'outofplace',
        n=n, batch=1, misalign=0, caller_scratch=9224 if control else 336392,
        profile='full', data='zero', scenario=None, control=control,
        verify=not control, seed=1 if control else 0x5eed0000+n)
    check(all(type(s[k]) is type(v) and s[k] == v for k, v in expected.items()), 'frozen spec mismatch')
    check(row['key'] == (CONTROL if control else KEY), 'key mismatch')
    check(row['cpu'] == 4 and row['procs'] == 1 and positive(row['wall_s']), 'CPU/process/wall mismatch')
    order = ['fastfft'] if control else LIBS[process % 2:] + LIBS[:process % 2]
    check(s['libs'] == order and [v['lib'] for v in row['results']] == order, 'member order mismatch')
    d = s['diagnostics']
    check(all(d[k] is False for k in ['measure_trace','measure_context','factorial']), 'selector/factorial intervention')
    check(type(d['process_index']) is int and d['process_index'] == process, 'process index mismatch')
    check(d['sample_trace'] is (not control) and type(d['execution_rotation']) is int and d['execution_rotation'] == 0, 'sample/rotation mismatch')
    for k, v in d.items():
        if k not in ['sample_trace', 'execution_rotation', 'process_index']:
            check(v is False, 'extra diagnostic enabled: '+k)
    check(not row.get('measure_diagnostic') and not row.get('clock_probes'), 'extra intervention')
    clock_pair(row['clock_ghz'])
    return order


def inspect(row, process, control):
    order = spec_check(row, process, control); rounds = []
    for lib in row['results']:
        check(lib['status'] == 'ok' and lib['describe'] == (maths.DESCRIPTION if control else DESCRIPTION), 'wrong recipe/status')
        check(type(lib['calls_per_batch']) is int and lib['calls_per_batch'] > 0 and positive(lib['plan_ns']), 'invalid calls/planning')
        s = lib['time']
        check(type(s['samples']) is int and s['samples'] > 0 and all(positive(s[k]) for k in FIELDS[:-1]), 'invalid statistics')
        check(s['best'] <= s['p1'] <= s['p10'] <= s['median'] <= s['p90'], 'unordered statistics')
        if control:
            check(not lib.get('sample_trace'), 'unexpected control trace')
            continue
        check(lib['calls_per_batch'] == 1, 'CALLS differs from fixed target 1')
        check(lib['verify']['passed'] is True, 'verification failed')
        trace = lib['sample_trace']; values = trace['whole_buffer_ns']; ends = trace['round_ends']
        check(type(trace['batch']) is int and trace['batch'] == 1, 'trace units mismatch')
        check(len(ends) == 7 and all(type(x) is int for x in ends)
              and all(a < b for a, b in zip([0]+ends, ends)) and ends[-1] == len(values), 'seven nonempty rounds required')
        computed = stats(values)
        check(all(close(computed[k], s[k]) for k in FIELDS), 'trace/summary mismatch')
        start = 0
        for r, end in enumerate(ends):
            sample = values[start:end]
            # Disjoint bins classify every sample, including tied quantiles.
            bins = [0, 0, 0, 0]; low = []; high = []
            for index, value in enumerate(sample, start):
                slot = 0 if value <= s['p1'] else 1 if value <= s['p10'] else 2 if value < s['p90'] else 3
                bins[slot] += 1
                if value <= s['p1']: low.append(index)
                if value >= s['p90']: high.append(index)
            rounds.append(dict(process=process, construction_first=order[0], member=lib['lib'],
                round=r, turn_position=(order.index(lib['lib'])-r)%2,
                sample_range=[start,end], stats=stats(sample), member_p1=s['p1'],
                member_p10=s['p10'], member_p90=s['p90'], bins=bins,
                low_tail_sample_indices=low, high_tail_sample_indices=high,
                at_or_below_retained_E_p1_302902_ns=sum(v <= 302902 for v in sample),
                at_or_below_retained_M_best_308333_ns=sum(v <= 308333 for v in sample)))
            start = end
    return rounds


def merge_check(raw, merged):
    check(merged['procs'] == 8 and merged['cpu'] == 4 and merged['key'] == raw[0]['key'], 'merged identity mismatch')
    check(merged['spec'] == raw[0]['spec'], 'merged requested spec mismatch')
    check(close(merged['wall_s'], sum(r['wall_s'] for r in raw)), 'merged elapsed mismatch')
    endpoints = [c for r in raw for c in r['clock_ghz']]
    check(merged['clock_ghz'] == [min(endpoints),max(endpoints)], 'merged clock mismatch')
    expected = copy.deepcopy(raw[0]['results'])
    for row in raw[1:]:
        for member in row['results']:
            i = next(i for i, v in enumerate(expected) if v['lib'] == member['lib'])
            if member['time']['p1'] < expected[i]['time']['p1']:
                plan = min(expected[i]['plan_ns'],member['plan_ns'])
                expected[i] = copy.deepcopy(member); expected[i]['plan_ns'] = plan
    check(merged['results'] == expected, 'raw/merged member-selection mismatch')
    check(not merged.get('measure_diagnostic') and not merged.get('clock_probes'), 'merged intervention')


def quiet_check(log):
    policies = [r for r in log if r['event'] == 'policy']
    starts = [i for i,r in enumerate(log) if r['event'] == 'started']
    check(len(policies) == len(starts) == 1, 'quiet policy/start count')
    check(policies[0]['quiet_seconds'] == 300 and policies[0]['core'] == 4, 'quiet policy mismatch')
    before = log[:starts[0]]; boundary = policies[0]['utc']; count = 0
    for r in before:
        if r['event'] == 'waiting':
            if r['quiet'] is True: count += 1
            else: count = 0; boundary = r['utc']
    seconds = (dt.datetime.fromisoformat(log[starts[0]]['utc'])-dt.datetime.fromisoformat(boundary)).total_seconds()
    check(count >= 60 and seconds >= 300, 'sustained 300s quiet missing')
    env = [r for r in before if r['event'] == 'environment']
    check(env and env[-1]['returncode'] == 0, 'environment preflight failed')
    running = [r for r in log if r['event'] == 'running']
    check(running and all(r['quiet'] is True for r in running), 'running monitor contamination')
    check(log[-1]['event'] == 'finished' and log[-1]['returncode'] == 0, 'quiet completion failed')


def affinity_check(proof, journal, log):
    check(proof['passed'] is True and proof['journal_restored'] is True and journal['restored'] is True, 'affinity restoration failed')
    expected = {v['tid']:v for v in journal['threads'].values()}
    threads = proof['threads']; check(expected and len(threads) == len(expected), 'affinity thread coverage')
    check(len({v['tid'] for v in threads}) == len(threads) and {v['tid'] for v in threads} == set(expected), 'affinity thread identities')
    live = 0; exited = 0
    for t in threads:
        source = expected[t['tid']]
        if t.get('exited') is True: exited += 1; continue
        live += 1
        check(t['starttime'] == source['starttime'] and t['passed'] is True
            and t['mask'] == t['expected_mask'] == source['original_mask'], 'live affinity mismatch')
    check(proof['live_threads'] == live and proof['exited_threads'] == exited, 'affinity counts mismatch')
    check(dt.datetime.fromisoformat(proof['utc']) >= dt.datetime.fromisoformat(log[-1]['utc']), 'affinity proof precedes completion')


def audit(args):
    problems = []; tails = []; summaries = []
    def guard(label, fn):
        try: return fn()
        except ERRORS as e: problems.append(label+': '+str(e)); return None
    paths = [args.run/'trials.jsonl',args.run/'results.jsonl',args.run/'meta.json',args.run/'env.json',args.quiet_log,args.affinity_proof,args.affinity_journal]
    loaded = [guard(str(p),lambda p=p: lines(p) if p.suffix == '.jsonl' else read(p)) for p in paths]
    rows,merged,meta,env,logs,proof,journal = loaded
    if rows is not None:
        guard('coverage',lambda: check(len(rows) == 24 and [r['key'] for r in rows] == [CONTROL]*8+[KEY]*8+[CONTROL]*8, 'expected 8 controls + 8 ordinary + 8 controls'))
        for i,row in enumerate(rows):
            control = not 8 <= i < 16; process = i % 8
            detail = guard('trial '+str(i),lambda row=row,process=process,control=control: inspect(row,process,control))
            if detail is not None: tails.extend(detail)
            if not control:
                result = guard('ratios '+str(process),lambda: ratios(row['results']))
                if result is not None: summaries.append(dict(process=process,ratios=result,observed_over_2pct={k:v > 1.02 for k,v in result.items()}))
        if len(rows) == 24:
            def drift():
                ref = max(c for r in rows[:8] for c in clock_pair(r['clock_ghz']))
                check(all(abs(c/ref-1) <= .03 for r in rows for c in clock_pair(r['clock_ghz'])), 'clock endpoint outside control 3%')
            guard('drift',drift)
        if merged is not None:
            guard('merged coverage',lambda: check(len(merged) == 3 and [r['key'] for r in merged] == [CONTROL,KEY,CONTROL], 'merged cell coverage'))
            if len(rows) == 24 and len(merged) == 3:
                for i in range(3): guard('merge '+str(i),lambda i=i: merge_check(rows[8*i:8*i+8],merged[i]))
    if meta is not None:
        guard('meta',lambda: check(meta['cells'] == 1 and meta['child_failures'] == 0 and not meta['aborted'] and meta['drift_flag'] is False and 0 <= meta['max_drift'] <= .03 and meta['official'] is False, 'completion/drift/official mismatch'))
    if env is not None:
        def environment():
            check(env['env_check']['ok'] is True and env['build_profile'] == 'arena' and env['rustflags'] == '-C llvm-args=-align-all-functions=6' and env['target_cpu_native'] is False, 'build/env mismatch')
            for k,v in dict(procs=8,profile='full',process_order='rotating',cells=1,suites=['pow2'],libs=LIBS,official=False).items():
                check(env['run'][k] == v,'run '+k)
        guard('env',environment)
    if logs is not None: guard('quiet',lambda: quiet_check(logs))
    if all(v is not None for v in [proof,journal,logs]): guard('affinity',lambda: affinity_check(proof,journal,logs))
    merged_ratios = None
    if merged is not None:
        ordinary = [r for r in merged if r.get('key') == KEY]
        if len(ordinary) == 1: merged_ratios = guard('merged ratios',lambda: ratios(ordinary[0]['results']))
    groups = []
    for first in LIBS:
        for member in LIBS:
            for turn in [0,1]:
                group = [r for r in tails if r['construction_first'] == first and r['member'] == member and r['turn_position'] == turn]
                groups.append(dict(construction_first=first,member=member,turn_position=turn,
                    rounds=len(group),samples=sum(sum(r['bins']) for r in group),
                    bins=[sum(r['bins'][i] for r in group) for i in range(4)]))
    args.out.parent.mkdir(parents=True,exist_ok=True)
    tail_path = args.out.with_name('tails.jsonl')
    tail_path.write_text(''.join(json.dumps(r)+'\n' for r in tails))
    result = dict(acceptance=False,evidence_valid=not problems,problems=problems,
        key=KEY,ordinary_trials=len(summaries),trace_rounds=len(tails),
        quiet_running_samples=sum(r.get('event') == 'running' for r in (logs or [])),
        merged_ratios=merged_ratios,merged_observed_over_2pct={k:v > 1.02 for k,v in (merged_ratios or {}).items()},
        trials=summaries,groups=groups,tail_records=str(tail_path),
        bin_labels=['value <= member p1','member p1 < value <= member p10','member p10 < value < member p90','remaining: value >= member p90'],
        interpretation='Descriptive tails only; ties retained. No noise or causal classification. Diagnostic validity never replaces or waives retained full-run failures.',
        sha256={str(p):hashlib.sha256(p.read_bytes()).hexdigest() for p in paths+[MATH,Path(__file__),tail_path] if p.exists()})
    args.out.write_text(json.dumps(result,indent=2)+'\n')
    return result


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--run',type=Path,default=BASE/'run')
    parser.add_argument('--quiet-log',type=Path,default=BASE/'run-quiet.jsonl')
    parser.add_argument('--affinity-proof',type=Path,default=BASE/'run-affinity-proof.json')
    parser.add_argument('--affinity-journal',type=Path,default=BASE/'run-affinity.json')
    parser.add_argument('--out',type=Path,default=BASE/'inspection.json')
    result = audit(parser.parse_args())
    print(json.dumps({k:result[k] for k in ['acceptance','evidence_valid','problems','ordinary_trials','trace_rounds','merged_ratios']}))
    raise SystemExit(not result['evidence_valid'])

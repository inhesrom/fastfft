import copy
import importlib.util
from pathlib import Path
import unittest

s=importlib.util.spec_from_file_location('position_audit',Path(__file__).with_name('inspect-coefficient-components.py'))
a=importlib.util.module_from_spec(s);s.loader.exec_module(a)


def storage(n,m):
    plan=0x100000+m*0x10000;base=0x200000+m*0x10000
    regions=[]
    for kind,i,size,length,cap in a.signatures(n):
        p=0 if kind=='Metadata' or not length else base
        if kind=='Object':p=plan
        elif kind=='EmbeddedPlan':p=plan+(8 if n==4096 else 0)
        elif n==4096:
            if kind=='Radices':p=base+24*i
            elif kind=='Twiddles':p=base+[128,192,640][i]
            elif kind=='PhaseBTwiddles':p=base+4224
        else:
            if kind in ['PassDescriptors','ColumnRadices','RowRadices']:p=base+(24 if i==1 or kind=='RowRadices' else 0)
            elif kind=='ColumnTwiddles':p=base+64
            elif kind=='RowTwiddles':p=base+320
            elif kind=='CrossTwiddles':p=base+576
        regions.append(dict(owner=plan,kind=kind,index=i,ptr=p,element_bytes=size,len=length,capacity=cap))
    return dict(plan_ptr=plan,runner_ptr=plan+0x1000,regions=regions)


def trial(n=4096,process=0):
    enabled=[n==4096,n==4096];direction='forward' if n==4096 else 'inverse';placement='outofplace'
    suite='pow2' if n==4096 else 'smooth';prec='f32' if n==4096 else 'f64'
    order=['fastfft','fastfft/measure'] if process%2==0 else ['fastfft/measure','fastfft']
    diagnostics=dict(measure_trace=False,measure_context=False,factorial=False,coefficient_crossover=False,coefficient_position=False,coefficient_components=True,sample_trace=True,execution_rotation=0,process_index=process)
    spec=dict(suite=suite,precision=prec,direction=direction,placement=placement,n=n,batch=1,misalign=0,caller_scratch=a.SCRATCH[n],profile='full',data='zero',scenario=None,control=False,verify=True,seed=0x5eed0000+n,libs=order,diagnostics=diagnostics)
    ns=[float(100+i) for i in range(14)];stats=a._base.stats(ns);ends=list(range(2,15,2));original=[storage(n,0),storage(n,1)]
    # An unchanged Small-style reference needs no canonical descriptor layout.
    if n==210:original[1]['regions']=[original[1]['regions'][0]]
    descriptions=[a.DESCRIPTIONS[n],a.DESCRIPTIONS[n] if n==4096 else 'small avx512-ymm n=210 test reference']
    results=[]
    for lib in order:
        m=['fastfft','fastfft/measure'].index(lib)
        results.append(dict(lib=lib,status='ok',describe=descriptions[m],calls_per_batch=17,plan_ns=100,time=copy.deepcopy(stats),verify={'passed':True},sample_trace=dict(whole_buffer_ns=ns[:],round_ends=ends[:],batch=1)))
    positions=[0,2,1,1,2,0] if process&2 else [0,1,2,2,1,0]
    phases=[]
    for p,shift in enumerate(positions):
        owners=a.components(original,shift,enabled);members=[]
        for m in range(2):members.append(dict(role=['estimate','measure'][m],shifted=enabled[m],shift=1024 if enabled[m] and shift else 0,scope="none" if not enabled[m] or not shift else "phase_b" if shift==1 else "all",calls=a.CALLS[n],warmup_calibrated_calls=17,stats=copy.deepcopy(stats),whole_buffer_ns=ns[:],round_ends=ends[:],storage=owners[m],coefficients_equal=True,output_bitwise_equal=True))
        phases.append(dict(index=p,condition=shift,members=members))
    d=dict(capture='coefficient-components',acceptance=False,status='complete',process_index=process,reverse_components=bool(process&2),member_start=process//4,calls=a.CALLS[n],shifted=enabled,units='ns per whole-buffer public call',elapsed_s=10.9,restored=True,backing_bytes_restored=True,preflight_restored=True,sample_capacity=32768,sample_storage_grew=False,initial_storage=original,restored_storage=copy.deepcopy(original),descriptions=descriptions,buffers=[[0x300000,n],[0x400000,n],[0x500000,a.SCRATCH[n]]],clock_ghz=[4.0,4.0],phases=phases,memory_mappings={'captured_after_timing':True,'smaps':'synthetic map'})
    return dict(spec=spec,key=f'{suite}:{prec}:{"fwd" if n==4096 else "inv"}:oop:n{n}',cpu=4,procs=1,wall_s=1.8,clock_ghz=[4.0,4.0],results=results,measure_diagnostic=d)


class AuditTests(unittest.TestCase):
    def test_all_balanced_valid_cases(self):
        for n in [210,4096]:
            for p in range(8):
                with self.subTest(n=n,p=p):a.inspect_trial(trial(n,p),p)
    def reject(self,change,n=4096):
        r=trial(n);change(r,r['measure_diagnostic'])
        with self.assertRaises((ValueError,KeyError,TypeError,IndexError)):a.inspect_trial(r,0)
    def test_moved_descriptor(self):self.reject(lambda r,d:d['phases'][1]['members'][0]['storage']['regions'][3].update(ptr=0x200040))
    def test_moved_owner(self):self.reject(lambda r,d:d['phases'][1]['members'][0]['storage']['regions'][2].update(ptr=0x201000))
    def test_moved_runner(self):self.reject(lambda r,d:d['phases'][1]['members'][0]['storage'].update(runner_ptr=123))
    def test_wrong_coefficient_offset(self):self.reject(lambda r,d:d['phases'][1]['members'][0]['storage']['regions'][5].update(ptr=0x2000c0))
    def test_phase_b_did_not_move(self):self.reject(lambda r,d:next(v for v in d['phases'][1]['members'][0]['storage']['regions'] if v['kind']=='PhaseBTwiddles').update(ptr=0x201080))
    def test_wrong_component_scope(self):self.reject(lambda r,d:d['phases'][1]['members'][0].update(scope='all'))
    def test_control_was_shifted(self):self.reject(lambda r,d:d['phases'][1]['members'][1].update(shifted=True,shift=64),210)
    def test_changed_recipe(self):self.reject(lambda r,d:r['results'][0].update(describe='wrong'))
    def test_capacity_growth(self):self.reject(lambda r,d:d.update(sample_storage_grew=True))
    def test_backing_restore_failure(self):self.reject(lambda r,d:d.update(backing_bytes_restored=False))
    def test_wrong_restored_geometry(self):self.reject(lambda r,d:d['restored_storage'][0].update(plan_ptr=1))
    def test_changed_coefficients(self):self.reject(lambda r,d:d['phases'][1]['members'][0].update(coefficients_equal=False))
    def test_wrong_output(self):self.reject(lambda r,d:d['phases'][1]['members'][0].update(output_bitwise_equal=False))
    def test_wrong_calls(self):self.reject(lambda r,d:d['phases'][1]['members'][0].update(calls=21))
    def test_incomplete_rounds(self):self.reject(lambda r,d:d['phases'][1]['members'][0].update(round_ends=[2,4,6,8,10,12,13]))
    def test_corrupt_summary(self):self.reject(lambda r,d:d['phases'][1]['members'][0]['stats'].update(best=1))
    def test_wrong_phase_order(self):self.reject(lambda r,d:d['phases'][1].update(condition=2))
    def test_missing_phase(self):self.reject(lambda r,d:d['phases'].pop())
    def test_wrong_member_balance(self):self.reject(lambda r,d:d.update(member_start=1))
    def test_clock_drift(self):self.reject(lambda r,d:d.update(clock_ghz=[4,3]))
    def test_original_failed_correctness(self):self.reject(lambda r,d:r['results'][0]['verify'].update(passed=False))
    def test_aliased_buffers(self):self.reject(lambda r,d:d['buffers'][1].__setitem__(0,d['buffers'][0][0]))
    def test_missing_mapping(self):self.reject(lambda r,d:d['memory_mappings'].update(smaps='read error: denied'))
    def test_confounded_selector_trace(self):self.reject(lambda r,d:r['spec']['diagnostics'].update(measure_trace=True))
    def test_wrong_backing_capacity(self):self.reject(lambda r,d:d['initial_storage'][0]['regions'][2].update(capacity=11))
    def test_bad_original_samples(self):self.reject(lambda r,d:r['results'][0]['sample_trace']['whole_buffer_ns'].__setitem__(0,-1))

if __name__=='__main__':unittest.main()

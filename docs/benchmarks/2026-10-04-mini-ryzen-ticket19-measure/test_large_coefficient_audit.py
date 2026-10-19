import copy
import importlib.util
import json
from pathlib import Path
import tempfile
import unittest

spec=importlib.util.spec_from_file_location('large_coefficient_audit',Path(__file__).with_name('inspect-large-coefficients.py'))
audit=importlib.util.module_from_spec(spec);spec.loader.exec_module(audit)


def storage(n):
    result=[]
    for i in range(2):
        plan=0x10000+i*0x1000;base=0x10000000+i*0x2000000
        owner={'plan_ptr':plan,'runner_ptr':plan+0x800,'regions':[]}
        cursor=base
        for kind,index,size,length,capacity in audit.signatures(n):
            if kind=='Object':ptr=plan
            elif kind=='EmbeddedPlan':ptr=plan+8
            elif kind in ['Metadata','FineTwiddles']:ptr=0
            elif n==165375:
                ptr=cursor;cursor+=max(capacity*size,64)+4096;cursor=(cursor+63)//64*64
            elif kind in ['CoefficientStorage','PassDescriptors']:ptr=base
            elif kind=='Radices':ptr=base+24*index
            elif kind=='PhaseBTwiddles':ptr=base+audit.STOCKHAM[n][3]
            elif kind=='Twiddles':ptr=base+audit.STOCKHAM[n][2][index]
            owner['regions'].append({'owner':plan,'kind':kind,'index':index,'ptr':ptr,'element_bytes':size,'len':length,'capacity':capacity})
        result.append(owner)
    return result


def trial(n=75600,process=0):
    original=storage(n);start=bool((process//2)%2);calls=audit.CALLS[n]
    d={'capture':'large-storage-crossover','status':'complete','acceptance':False,'process_index':process,
       'calls':calls,'member_start':(process//4)%2,'assignment_start':start,'condition_start':int(start),
       'restored':True,'preflight_restored':True,'sample_capacity':32768,'sample_storage_grew':False,
       'units':'ns per whole-buffer public call','clock_ghz':[5.,5.],'elapsed_s':7.3,
       'initial_storage':original,'restored_storage':copy.deepcopy(original),
       'buffers':[[0x20000000,n],[0x24000000,n],[0x28000000,audit.SCRATCH[n]]],'phases':[]}
    d['workspace']=audit.workspace(n,d['buffers'])
    if n==16384:
        d.update(backing_bytes_restored=True,output_bitwise_restored=True,
                 verification_input='original seeded nonzero correctness input',
                 memory_mappings={'captured_after_timing':True,'smaps':{'path':'/proc/self/smaps',
                     'text':'00010000-30000000 rw-p 00000000 00:00 0\n'}})
    for i in range(4):
        condition=[0,1,1,0][i]^int(start);members=[]
        for member,role in enumerate(['estimate','measure']):
            values=[100.+member]*7
            members.append({'role':role,'calls':calls,'warmup_calibrated_calls':calls,'whole_buffer_ns':values,
                            'round_ends':list(range(1,8)),'stats':audit.stats(values),'storage':audit.assigned(original,bool(condition),n)[member]})
            if n==16384:members[-1].update(coefficients_equal=True,output_bitwise_equal=True)
        d['phases'].append({'index':i,'condition':condition,'swapped':bool(condition),'members':members})
    order=['fastfft','fastfft/measure'] if process%2==0 else ['fastfft/measure','fastfft']
    values=[100.]*7
    return {'key':f'{audit.suite(n)}:{audit.PRECISION[n]}:inv:oop:n{n}','cpu':4,'procs':1,'wall_s':2.,'clock_ghz':[5.,5.],
        'spec':{'suite':audit.suite(n),'precision':audit.PRECISION[n],'direction':'inverse','placement':'outofplace','n':n,'batch':1,
                'misalign':0,'caller_scratch':audit.SCRATCH[n],'profile':'full','data':'zero','scenario':None,
                'control':False,'verify':True,'seed':0x5eed0000+n,'libs':order,'diagnostics':{'coefficient_crossover':True,
                'sample_trace':True,'measure_trace':False,'measure_context':False,'factorial':False,'execution_rotation':0,'process_index':process}},
        'results':[{'lib':name,'status':'ok','verify':{'passed':True},'describe':audit.DESCRIPTIONS[n],'calls_per_batch':calls,
                    'plan_ns':1000.,'time':audit.stats(values),'sample_trace':{'batch':1,'whole_buffer_ns':values.copy(),'round_ends':list(range(1,8))}} for name in order],
        'measure_diagnostic':d}


class LargeCoefficientAuditTests(unittest.TestCase):
    def test_both_cells_all_eight_counterbalances(self):
        for n in [75600,165375]:
            for process in range(8):self.assertEqual(len(audit.inspect_trial(trial(n,process),process)['phases']),4)

    def reject(self,change,n=75600):
        row=trial(n);change(row)
        with self.assertRaises((ValueError,KeyError)):audit.inspect_trial(row,0)

    def test_missing_swap(self):
        self.reject(lambda r:r['measure_diagnostic']['phases'][1]['members'][0].update(storage=copy.deepcopy(r['measure_diagnostic']['initial_storage'][0])))

    def test_object_moved(self):
        self.reject(lambda r:r['measure_diagnostic']['phases'][1]['members'][0]['storage'].update(plan_ptr=99))

    def test_borrowed_view_not_exchanged(self):
        def change(r):
            d=r['measure_diagnostic'];d['phases'][1]['members'][0]['storage']['regions'][4]['ptr']=d['initial_storage'][0]['regions'][4]['ptr']
        self.reject(change,75600)

    def test_invalid_view_offset(self):
        self.reject(lambda r:r['measure_diagnostic']['initial_storage'][0]['regions'][5].update(ptr=0x10000000+256),75600)

    def test_wrong_coefficient_capacity(self):
        self.reject(lambda r:r['measure_diagnostic']['initial_storage'][0]['regions'][1].update(capacity=193))

    def test_failed_final_restoration(self):
        self.reject(lambda r:r['measure_diagnostic']['restored_storage'][0].update(plan_ptr=99))

    def test_original_raw_statistics_corrupt(self):
        self.reject(lambda r:r['results'][0]['sample_trace']['whole_buffer_ns'].__setitem__(0,42.))

    def test_phase_raw_statistics_corrupt(self):
        self.reject(lambda r:r['measure_diagnostic']['phases'][0]['members'][0]['whole_buffer_ns'].__setitem__(0,42.))

    def test_missing_turn(self):
        self.reject(lambda r:r['measure_diagnostic']['phases'][0]['members'][0]['round_ends'].__setitem__(1,1))

    def test_wrong_call_count(self):
        self.reject(lambda r:r['measure_diagnostic']['phases'][0]['members'][0].update(calls=971))

    def test_wrong_large_call_count(self):
        self.reject(lambda r:r['measure_diagnostic'].update(calls=972),75600)

    def test_wrong_assignment(self):
        self.reject(lambda r:r['measure_diagnostic']['phases'][1].update(swapped=False))

    def test_sample_growth(self):
        self.reject(lambda r:r['measure_diagnostic'].update(sample_storage_grew=True))

    def test_clock_excursion(self):
        self.reject(lambda r:r['measure_diagnostic'].update(clock_ghz=[4.,5.]))

    def test_caller_overlap(self):
        self.reject(lambda r:r['measure_diagnostic']['buffers'][1].__setitem__(0,0x20000000))

    def test_selector_tracing_confounds(self):
        self.reject(lambda r:r['spec']['diagnostics'].update(measure_trace=True))

    def test_wrong_original_kernel(self):
        self.reject(lambda r:r['results'][0].update(describe='other'))

    def test_incomplete_phase_exposure(self):
        self.reject(lambda r:r['measure_diagnostic'].update(elapsed_s=3.))

    def test_alias_backing_owners(self):
        self.reject(lambda r:r['measure_diagnostic']['initial_storage'][1]['regions'][1].update(ptr=0x10000000))


    def test_fourstep_inner_owner_not_exchanged(self):
        def change(r):
            d=r['measure_diagnostic'];d['phases'][1]['members'][0]['storage']['regions'][6]['ptr']=d['initial_storage'][0]['regions'][6]['ptr']
        self.reject(change,165375)

    def test_fourstep_outer_owner_not_exchanged(self):
        def change(r):
            d=r['measure_diagnostic'];d['phases'][1]['members'][0]['storage']['regions'][4]['ptr']=d['initial_storage'][0]['regions'][4]['ptr']
        self.reject(change,165375)

    def test_fourstep_owner_overlap(self):
        def change(r):
            regions=r['measure_diagnostic']['initial_storage'][0]['regions'];regions[6]['ptr']=regions[7]['ptr']
        self.reject(change,165375)

    def test_fourstep_workspace_offset(self):
        self.reject(lambda r:r['measure_diagnostic']['workspace'].update(work2=1),165375)

    def test_stockham_inactive_scratch_misreported(self):
        self.reject(lambda r:r['measure_diagnostic']['workspace'].update(gated_scratch_used=True),75600)

    def test_fourstep_wrong_precision(self):
        self.reject(lambda r:r['spec'].update(precision='f32'),165375)

    def test_n16384_all_eight_counterbalances(self):
        for process in range(8):
            row=trial(16384,process)
            self.assertEqual(len(audit.inspect_trial(row,process)['phases']),4)
            self.assertEqual(row['measure_diagnostic']['calls'],4)

    def test_n16384_retained_actual_geometry(self):
        # Independent of signatures()/storage(): this metadata came directly
        # from the frozen diagnostic capture, including every owner assignment.
        fixture=json.loads((Path(__file__).parent/'fixtures/n16384-owner-geometry.json').read_text())
        original=fixture['initial_storage']
        self.assertEqual([o['regions'][0]['element_bytes'] for o in original],[192,192])
        self.assertEqual(audit.workspace(16384,fixture['buffers']),fixture['workspace'])
        self.assertEqual(audit.assigned(original,False,16384),fixture['restored_storage'])
        for phase in fixture['phases']:
            self.assertEqual(audit.assigned(original,phase['swapped'],16384),
                             [m['storage'] for m in phase['members']])
        for size in [191,200,272]:
            changed=copy.deepcopy(original);changed[0]['regions'][0]['element_bytes']=size
            with self.assertRaisesRegex(ValueError,'storage signature mismatch'):
                audit.assigned(changed,False,16384)
        changed=copy.deepcopy(original)
        # Ends at byte 200: fits the stale 272-byte bound, exceeds the real 192.
        changed[0]['regions'][1]['ptr']=changed[0]['plan_ptr']+88
        with self.assertRaisesRegex(ValueError,'embedded plan outside object'):
            audit.assigned(changed,False,16384)
        changed=copy.deepcopy(original);changed[0]['regions'][2]['capacity']=38
        with self.assertRaisesRegex(ValueError,'storage signature mismatch'):
            audit.assigned(changed,False,16384)

    def test_n16384_reject_wrong_calls_and_missing_round(self):
        self.reject(lambda r:r['measure_diagnostic'].update(calls=1),16384)
        self.reject(lambda r:r['results'][0].update(calls_per_batch=1),16384)
        self.reject(lambda r:r['measure_diagnostic']['phases'][2]['members'][1].update(calls=1),16384)
        self.reject(lambda r:r['measure_diagnostic']['phases'][2]['members'][1]['round_ends'].__setitem__(2,2),16384)

    def test_n16384_reject_bad_workspace_and_views(self):
        self.reject(lambda r:r['measure_diagnostic']['workspace'].update(gated_scratch_used=True),16384)
        self.reject(lambda r:r['measure_diagnostic']['workspace'].update(phase_b=[0x24000000,0x24000000]),16384)
        self.reject(lambda r:r['measure_diagnostic']['initial_storage'][0]['regions'][5].update(ptr=0x10000100),16384)
        self.reject(lambda r:r['measure_diagnostic']['phases'][1]['members'][0].update(storage=copy.deepcopy(r['measure_diagnostic']['initial_storage'][0])),16384)

    def test_n16384_reject_failed_bitwise_checks_and_early_mappings(self):
        self.reject(lambda r:r['measure_diagnostic'].update(backing_bytes_restored=False),16384)
        self.reject(lambda r:r['measure_diagnostic'].update(output_bitwise_restored=False),16384)
        self.reject(lambda r:r['measure_diagnostic']['phases'][0]['members'][1].update(output_bitwise_equal=False),16384)
        self.reject(lambda r:r['measure_diagnostic']['phases'][3]['members'][0].update(coefficients_equal=False),16384)
        self.reject(lambda r:r['measure_diagnostic']['memory_mappings'].update(captured_after_timing=False),16384)
        self.reject(lambda r:r['measure_diagnostic']['memory_mappings']['smaps'].update(text=''),16384)
        self.reject(lambda r:r['spec'].update(verify=False),16384)

    def test_n16384_full_coverage_is_exactly_eight_and_bracketed(self):
        def control(process):
            row=trial(16384,process)
            row.pop('measure_diagnostic')
            row['key']='control:f32:fwd:ip:n4096'
            row['spec'].update(suite='control',direction='forward',placement='inplace',n=4096,
                               caller_scratch=9224,control=True,verify=False,seed=1,libs=['fastfft'])
            row['spec']['diagnostics'].update(coefficient_crossover=False,sample_trace=False)
            row['results']=[row['results'][0]]
            row['results'][0].update(lib='fastfft',describe=audit.DESCRIPTIONS[4096])
            return row
        rows=[control(i) for i in range(8)]+[trial(16384,i) for i in range(8)]+[control(i) for i in range(8)]
        stamp=lambda sec:f'2026-10-06T00:{sec//60:02d}:{sec%60:02d}+00:00'
        logs=[{'event':'policy','utc':stamp(0),'quiet_seconds':60,'core':4},
              {'event':'environment','utc':stamp(1),'returncode':0}]
        logs += [{'event':'waiting','utc':stamp(i*5),'quiet':True} for i in range(1,13)]
        logs += [{'event':'started','utc':stamp(65)}, {'event':'running','utc':stamp(70),'quiet':True},
                 {'event':'finished','utc':stamp(80),'returncode':0}]
        with tempfile.TemporaryDirectory() as tmp:
            p=Path(tmp)
            (p/'meta.json').write_text(json.dumps({'cells':1,'child_failures':0,'aborted':None,'drift_flag':False,'max_drift':0.,'official':False}))
            (p/'env.json').write_text(json.dumps({'env_check':{'ok':True},'build_profile':'arena','rustflags':'-C llvm-args=-align-all-functions=6','target_cpu_native':False,
                'run':{'procs':8,'profile':'full','process_order':'rotating','cells':1,'suites':['pow2'],'libs':['fastfft','fastfft/measure'],'official':False}}))
            (p/'quiet.jsonl').write_text(''.join(json.dumps(r)+'\n' for r in logs))
            (p/'trials.jsonl').write_text(''.join(json.dumps(r)+'\n' for r in rows))
            self.assertTrue(audit.audit(p,p/'quiet.jsonl','n16384')['evidence_valid'])
            (p/'trials.jsonl').write_text(''.join(json.dumps(r)+'\n' for r in rows[:15]+rows[16:]))
            self.assertIn('fixed coverage mismatch',audit.audit(p,p/'quiet.jsonl','n16384')['problems'])

if __name__=='__main__':unittest.main()

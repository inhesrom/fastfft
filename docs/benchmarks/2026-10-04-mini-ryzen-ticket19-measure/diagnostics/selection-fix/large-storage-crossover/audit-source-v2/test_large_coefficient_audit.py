import copy
import importlib.util
from pathlib import Path
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
            elif kind=='PhaseBTwiddles':ptr=base+75840
            elif kind=='Twiddles':ptr=base+audit.PASS_OFFSETS[index]
            owner['regions'].append({'owner':plan,'kind':kind,'index':index,'ptr':ptr,'element_bytes':size,'len':length,'capacity':capacity})
        result.append(owner)
    return result


def trial(n=75600,process=0):
    original=storage(n);start=bool((process//2)%2);calls=1
    d={'capture':'large-storage-crossover','status':'complete','acceptance':False,'process_index':process,
       'calls':calls,'member_start':(process//4)%2,'assignment_start':start,'condition_start':int(start),
       'restored':True,'preflight_restored':True,'sample_capacity':32768,'sample_storage_grew':False,
       'units':'ns per whole-buffer public call','clock_ghz':[5.,5.],'elapsed_s':7.3,
       'initial_storage':original,'restored_storage':copy.deepcopy(original),
       'buffers':[[0x20000000,n],[0x24000000,n],[0x28000000,audit.SCRATCH[n]]],'phases':[]}
    d['workspace']=audit.workspace(n,d['buffers'])
    for i in range(4):
        condition=[0,1,1,0][i]^int(start);members=[]
        for member,role in enumerate(['estimate','measure']):
            values=[100.+member]*7
            members.append({'role':role,'calls':calls,'warmup_calibrated_calls':calls,'whole_buffer_ns':values,
                            'round_ends':list(range(1,8)),'stats':audit.stats(values),'storage':audit.assigned(original,bool(condition),n)[member]})
        d['phases'].append({'index':i,'condition':condition,'swapped':bool(condition),'members':members})
    order=['fastfft','fastfft/measure'] if process%2==0 else ['fastfft/measure','fastfft']
    values=[100.]*7
    return {'key':f'smooth:{audit.PRECISION[n]}:inv:oop:n{n}','cpu':4,'procs':1,'wall_s':2.,'clock_ghz':[5.,5.],
        'spec':{'suite':'smooth','precision':audit.PRECISION[n],'direction':'inverse','placement':'outofplace','n':n,'batch':1,
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

if __name__=='__main__':unittest.main()

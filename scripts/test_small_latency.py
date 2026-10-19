#!/usr/bin/env python3
import copy
import importlib.util
import itertools
import json
import sys
import tempfile
import unittest
from pathlib import Path

sys.dont_write_bytecode = True
spec = importlib.util.spec_from_file_location('analysis', Path(__file__).with_name('analyze-small-latency.py'))
a = importlib.util.module_from_spec(spec)
spec.loader.exec_module(a)


def candidate(ns):
    return {'public': {'decomposition': '4x4', 'cases': {f'{d}:{p}': {'best': ns, 'median': ns} for d,p in a.CASES}, 'geomean_ns': {'best': ns, 'median': ns}}}


def fixture():
    return {'generic:sse2:4': candidate(100), 'specialized:avx2:4': candidate(90), 'rustfft:auto:0': candidate(100)}


class GateTests(unittest.TestCase):
    def decide(self, data):
        return a.decide(data, 'avx512', 'generic:sse2:4')

    def test_promotion_and_tie(self):
        d=fixture()
        d['specialized:avx512-ymm:4']=candidate(90)
        self.assertEqual(self.decide(d)['selected'], 'specialized:avx2:4')
        d['specialized:avx2:8']=candidate(90)
        self.assertEqual(self.decide(d)['selected'], 'specialized:avx2:4')

    def test_both_statistics(self):
        d=fixture();d['specialized:avx2:4']['public']['geomean_ns']['best']=98
        self.assertEqual(self.decide(d)['selected'],'generic:sse2:4')

    def test_hidden_placement_regression(self):
        d=fixture();d['specialized:avx2:4']['public']['cases']['Forward:ip']['best']=104
        self.assertEqual(self.decide(d)['selected'],'generic:sse2:4')

    def test_floor_crossing(self):
        d=fixture();d['rustfft:auto:0']=candidate(95)
        d['specialized:avx2:4']['public']['cases']['Forward:op']['median']=101
        self.assertEqual(self.decide(d)['selected'],'generic:sse2:4')

    def test_no_qualifier(self):
        d=fixture();d['specialized:avx2:4']=candidate(98)
        self.assertEqual(self.decide(d)['selected'],'generic:sse2:4')

    def rows(self):
        return [f'timing,{pid},f32,16,generic,sse2,4,4x4,{d},{p},public,100,101\n'
                for pid in range(3) for d,p in sorted(a.CASES)]

    def read(self, rows):
        with tempfile.TemporaryDirectory() as tmp:
            p=Path(tmp)/'timing.csv';p.write_text(''.join(rows))
            return a.read_timings([p], 'f32',16)

    def test_complete(self):
        rows=self.rows()
        rows[0]='test tests::small_candidate_timings ... '+rows[0]
        self.assertEqual(len(self.read(rows)['generic:sse2:4']['public']['cases']),6)

    def test_missing_and_duplicate(self):
        rows=self.rows()
        for invalid in [rows[:-1], rows+[rows[0]], rows[3:], [r for r in rows if ',ip,' not in r]]:
            with self.assertRaises(ValueError):self.read(invalid)

    def test_nonfinite_and_nonpositive(self):
        for value in ['NaN','inf','0','-1']:
            rows=self.rows();rows[0]=rows[0].replace(',100,',f',{value},')
            with self.assertRaises(ValueError):self.read(rows)

    def test_process_statistics_separate(self):
        rows=self.rows()
        rows=[r.replace(',100,101',f',{[10,20,90][int(r.split(",")[1])]},{[100,200,900][int(r.split(",")[1])]}') for r in rows]
        v=self.read(rows)['generic:sse2:4']['public']['geomean_ns']
        self.assertAlmostEqual(v['best'],20);self.assertAlmostEqual(v['median'],200)

    def arena(self):
        cells={}
        for prec,n,d,p in itertools.product(['f32','f64'],[2**i for i in range(1,9)],['forward','inverse'],['inplace','outofplace']):
            k=f'{prec}-{n}-{d}-{p}'
            ratio=1.1 if prec=='f32' else 1.4
            cells[k]={'key':k,'spec':{'suite':'pow2','precision':prec,'n':n,'direction':d,'placement':p,'batch':1,'misalign':0},'results':[
                {'lib':'fastfft','time':{'p1':100,'median':100}}, {'lib':'rustfft','time':{'p1':100*ratio,'median':100*ratio}}]}
        return cells

    def test_precision_gates_never_pooled(self):
        r=a.audit(self.arena());self.assertFalse(r['passes'])
        self.assertFalse(r['precision']['f32']['passes']);self.assertTrue(r['precision']['f64']['passes'])
        self.assertEqual(r['cell_count'],64)

    def test_incomplete_arena(self):
        c=self.arena();c.pop(next(iter(c)))
        with self.assertRaises(ValueError):a.audit(c)

    def test_arena_both_stats_floor(self):
        c=self.arena()
        for cell in c.values():cell['results'][1]['time']={'p1':140,'median':140}
        next(iter(c.values()))['results'][1]['time']['median']=94
        self.assertFalse(a.audit(c)['passes'])

    def test_arena_p1_not_minimum(self):
        c=self.arena()
        for cell in c.values():cell['results'][1]['time']={'best':50,'p1':140,'median':140}
        self.assertTrue(a.audit(c)['precision']['f32']['passes'])

    def test_arena_requires_p1(self):
        with tempfile.TemporaryDirectory() as tmp:
            p=Path(tmp)/'results.jsonl'
            cell={'key':'k','spec':{'control':False,'verify':True},'procs':3,'results':[
                {'lib':'fastfft','status':'ok','verify':{'passed':True},'time':{'best':1,'median':1}}]}
            p.write_text(json.dumps(cell)+'\n')
            with self.assertRaises(ValueError):a.load_arena(p)

    def test_matched_row_order(self):
        c=self.arena();d=copy.deepcopy(c)
        next(iter(d.values()))['results'].reverse()
        with self.assertRaises(ValueError):a.compare(c,d)


if __name__=='__main__':unittest.main()

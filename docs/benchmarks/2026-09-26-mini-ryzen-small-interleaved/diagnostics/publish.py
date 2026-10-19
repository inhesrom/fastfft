#!/usr/bin/env python3
"""Archive the final state of the interleaved-leaf pass; the first cut stays
under diagnostics/first-cut. Never modifies older checkpoints."""
import gzip
import shutil
from pathlib import Path

src = Path('target/small-interleaved')
out = Path('docs/benchmarks/2026-09-26-mini-ryzen-small-interleaved')
diag = out/'diagnostics'

def copy(source, destination):
    destination.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(source, destination)

def compress(source, destination):
    destination.parent.mkdir(parents=True, exist_ok=True)
    with source.open('rb') as f, gzip.open(destination, 'wb') as g:
        shutil.copyfileobj(f, g)

def run(source, destination):
    for name in ['env.json', 'meta.json', 'report.md']:
        copy(source/name, destination/name)
    compress(source/'results.jsonl', destination/'results.jsonl.gz')
    if (source/'plots').exists():
        shutil.copytree(source/'plots', destination/'plots', dirs_exist_ok=True)

run(src/'final3', out)
copy(src/'acceptance3.json', out/'acceptance.json')
for name in ['source.patch', 'source.sha256', 'provenance.json']:
    copy(src/'final3-source'/name, out/name)
for name in ['quick3-before', 'quick3-after', 'repeat3-before-1', 'repeat3-after-1',
             'repeat3-before-2', 'repeat3-after-2', 'final2', 'accept-6',
             'lat-before', 'lat-after', 'lat-after4', 'n128-arena-4', 'n128-arena-5',
             'n256-arena-5', 'n256-arena-6', 'n8-arena-6', 'n8-arena-7',
             'n2-final2-source-executable-0', 'n2-arena-8',
             'b-baseline-fastfft-arena', 'b-final2-source-executable-0',
             'b-arena-9', 'b-arena-10', 'b-arena-11']:
    run(src/name, diag/name)
for name, target in [('quick3-compare.json', 'quick-compare.json'),
                     ('repeat3-compare-1.json', 'repeat-compare-1.json'),
                     ('repeat3-compare-2.json', 'repeat-compare-2.json'),
                     ('acceptance2.json', 'final2-acceptance.json'),
                     ('acceptance-6.json', 'accept-6-acceptance.json'),
                     ('pass3.sh', 'pipeline.sh'), ('run-repeats3.sh', 'run-repeats.sh'),
                     ('validate.sh', 'validate.sh')]:
    copy(src/name, diag/target)
for name in ['validate3.log', 'pass3.log', 'run-repeats3.log']:
    compress(src/name, diag/(name.replace('3', '')+'.gz'))

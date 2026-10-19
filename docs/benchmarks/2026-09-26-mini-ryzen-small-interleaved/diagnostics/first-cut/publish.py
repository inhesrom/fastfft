#!/usr/bin/env python3
"""Archive the interleaved-leaf pass; never modify older checkpoints."""
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

run(src/'final', out)
copy(src/'acceptance.json', out/'acceptance.json')
for name in ['source.patch', 'source.sha256', 'provenance.json']:
    copy(src/'final-source'/name, out/name)
for name in ['quick-before', 'quick-after', 'repeat-before-1', 'repeat-after-1',
             'repeat-before-2', 'repeat-after-2', 'focus-before', 'focus-after',
             'n2n4-before', 'n2n4-after', 'accept-1', 'accept-2']:
    run(src/name, diag/name)
for name in ['quick-compare.json', 'repeat-compare-1.json', 'repeat-compare-2.json',
             'run-audit.sh', 'run-repeats.sh', 'validate.sh']:
    copy(src/name, diag/name)
for name in ['validate.log', 'run-audit.log', 'run-repeats.log']:
    compress(src/name, diag/(name+'.gz'))

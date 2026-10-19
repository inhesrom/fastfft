#!/usr/bin/env python3
"""Archive this bounded execution, never modify the older small-engine evidence."""
import gzip
import hashlib
import json
import shutil
from pathlib import Path

src = Path('target/small-latency')
out = Path('docs/benchmarks/2026-09-26-mini-ryzen-small-latency')
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

run(Path('target/arena/small-latency-final'), out)
copy(src/'acceptance.json', out/'acceptance.json')
for name in ['source.patch', 'source.sha256', 'provenance.json']:
    copy(src/'final-source'/name, out/name)
for pattern in ['*.log', '*.csv']:
    for p in src.glob(pattern):
        compress(p, diag/(p.name+'.gz'))
for pattern in ['*.json', '*-environment.txt', '*-environment-check.txt', '*-symbols.txt', 'scope-verification.txt', 'repeat-filter.txt']:
    for p in src.glob(pattern):
        copy(p, diag/p.name)
for directory in ['decisions', 'experiments', 'final-assembly']:
    shutil.copytree(src/directory, diag/directory, dirs_exist_ok=True)
for directory in ['n8-source', 'n32-arena-source']:
    for name in ['source.patch', 'source.sha256', 'provenance.json']:
        copy(src/directory/name, diag/directory/name)
for p in (src/'baseline').glob('filtered-16-*.csv'):
    compress(p, diag/'baseline'/(p.name+'.gz'))
for pattern in ['*.asm', '*environment*.txt', 'env.json', 'analysis-16-f32.json']:
    for p in (src/'baseline').glob(pattern):
        copy(p, diag/'baseline'/p.name)
for directory in ['baseline-n16', 'baseline-n16-corrected', 'n32-arena-before', 'n32-arena-after',
                  'n8-arena-before', 'n8-arena-after', 'quick-before', 'quick-after',
                  'repeat-before-1', 'repeat-after-1', 'repeat-before-2', 'repeat-after-2',
                  'n32-final-before', 'n32-final-after']:
    run(src/directory, diag/directory)
executables = [src/'baseline/arena', src/'baseline/diagnostic', src/'baseline/filtered-diagnostic',
               src/'n16-diagnostic', src/'n32-diagnostic', src/'n32-refined-diagnostic',
               src/'n8-source/executable-0', src/'n32-arena-source/executable-0',
               src/'final-source/executable-0', src/'final-source/executable-1', Path('target/arena/fastfft-arena')]
manifest = {str(p):hashlib.sha256(p.read_bytes()).hexdigest() for p in executables}
assert manifest['target/arena/fastfft-arena']==manifest[str(src/'final-source/executable-0')]
(out/'executables.json').write_text(json.dumps(manifest, indent=2)+'\n')
assert gzip.decompress((out/'results.jsonl.gz').read_bytes())==Path('target/arena/small-latency-final/results.jsonl').read_bytes()
print('Published raw evidence; final executable and compressed 64-cell results match preserved originals.')

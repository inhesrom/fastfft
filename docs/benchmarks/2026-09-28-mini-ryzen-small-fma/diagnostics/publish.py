#!/usr/bin/env python3
"""Archive the small-fma checkpoint. Never modifies older checkpoints."""
import gzip
import shutil
import tarfile
from pathlib import Path

src = Path('target/small-fma')
out = Path('docs/benchmarks/2026-09-28-mini-ryzen-small-fma')
diag = out/'diagnostics'
scratch = Path('/tmp/claude-1000/-home-ianhersom-repo-fastfft/4e785fef-fff5-417d-bf68-910f77d23e44/scratchpad')


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
    copy(src/'source'/name, out/name)
for name in ['final-before', 'quick-before', 'quick-after', 'repeat-before-1', 'repeat-after-1',
             'repeat-before-2', 'repeat-after-2']:
    if (src/name).exists():
        run(src/name, diag/name)
for name in ['acceptance-before.json', 'quick-compare.json', 'repeat-compare-1.json',
             'repeat-compare-2.json', 'pipeline.sh', 'validate.sh', 'run-repeats.sh', 'publish.py']:
    if (src/name).exists():
        copy(src/name, diag/name)
for name in ['validate.log', 'pipeline.log', 'run-repeats.log']:
    if (src/name).exists():
        compress(src/name, diag/(name + '.gz'))
# Exploratory A/B runs, perf intervals, traces and the scripts behind
# diagnostics/fma-rotations.md.
zs = scratch/'zs'
with tarfile.open(diag/'fma-rotations-data.tar.gz', 'w:gz') as tar:
    for tag in ['z1', 'z2f32', 'z2f64', 'z3', 'z4', 'z5']:
        tar.add(f'target/ab/{tag}', arcname=f'ab/{tag}')
    for name in ['g1.csv', 'g2.csv', 'g3.csv', 'g4.csv', 'cell.sh', 'ana.py', 'tsc.py', 'pstat.sh',
                 'pcorr.py', 'ab.sh', 'abcmp.py', 'opmix.py', 'opclass.py']:
        tar.add(zs/name, arcname=f'scripts-and-perf/{name}')
    tar.add(scratch/'diag-hook.diff', arcname='scripts-and-perf/diag-hook.diff')
    for d in ['tr-ip-e8', 'n128-inplace', 'n128-outofplace']:
        for f in sorted((zs/d).iterdir()):
            if f.suffix in ('.txt', '.k', '.json') or (d == 'tr-ip-e8' and f.suffix == '.tsc'):
                tar.add(f, arcname=f'traces/{d}/{f.name}')
copy(scratch/'fma-rotations.md', diag/'fma-rotations.md')

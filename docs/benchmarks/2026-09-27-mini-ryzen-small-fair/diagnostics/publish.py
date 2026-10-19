#!/usr/bin/env python3
"""Archive the small-fair checkpoint. Never modifies older checkpoints."""
import gzip
import shutil
from pathlib import Path

src = Path('target/small-fair')
lab = Path('target/small-interleaved')
out = Path('docs/benchmarks/2026-09-27-mini-ryzen-small-fair')
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
    copy(src/'source'/name, out/name)
for name in ['final-before', 'quick-before', 'quick-after', 'repeat-before-1', 'repeat-after-1',
             'repeat-before-2', 'repeat-after-2']:
    if (src/name).exists():
        run(src/name, diag/name)
# Exploratory runs on the fixed arena (see the diagnostics pages).
for name in ['z-before-1', 'z-after-1', 'z-before-2', 'z-after-2', 'cur', 'p1',
             'al-cur', 'al-f3', 'aligned']:
    run(lab/name, diag/name)
for name in ['acceptance-before.json', 'quick-compare.json', 'repeat-compare-1.json',
             'repeat-compare-2.json', 'pipeline.sh', 'validate.sh', 'build-baseline.sh',
             'run-repeats.sh', 'publish.py']:
    if (src/name).exists():
        copy(src/name, diag/name)
for name in ['validate.log', 'build-baseline.log', 'pipeline.log', 'run-repeats.log']:
    if (src/name).exists():
        compress(src/name, diag/(name + '.gz'))

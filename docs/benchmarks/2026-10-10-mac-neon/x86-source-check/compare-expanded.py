#!/usr/bin/env python3
"""Compare baseline/current cfg-expanded x86 fastfft using existing dependency metadata.

No Cargo build or dependency rebuild. Run only when benchmark activity is idle.
This proves equivalence of active Rust source after documented normalization;
it does not replace native x86 codegen checks or Ryzen timing gates.
"""
from pathlib import Path
import argparse
import difflib
import hashlib
import json
import os
import re
import subprocess
import tarfile
import tempfile

parser = argparse.ArgumentParser(description=__doc__)
parser.add_argument('--repo', type=Path, default=Path('/Users/ianhersom/repo/fastfft'))
parser.add_argument('--baseline', type=Path, default=Path('/tmp/fastfft-arm-baseline-source.tar.gz'))
parser.add_argument('--out', type=Path)
parser.add_argument('--configuration', action='append', choices=['scalar', 'sse2', 'avx2', 'avx512', 'default', 'tuning'])
a = parser.parse_args()
repo = a.repo.resolve()
out = a.out.resolve() if a.out else Path(tempfile.mkdtemp(prefix='fastfft-x86-equivalence-'))
out.mkdir(parents=True, exist_ok=True)
baseline = out / 'baseline'
baseline.mkdir(exist_ok=True)
with tarfile.open(a.baseline, 'r:gz') as archive:
    members = [m for m in archive.getmembers() if m.name.startswith('crates/fastfft/src/')]
    archive.extractall(baseline, members=members, filter='data')

deps = repo / 'target/x86_64-unknown-linux-gnu/debug/deps'
fingerprints = deps.parent / '.fingerprint'
complex_options = []
for fp in fingerprints.glob('num-complex-*/lib-num_complex.json'):
    info = json.loads(fp.read_text())
    if info['features'] == '["std"]':
        complex_options.append((fp, info))
if not complex_options:
    raise SystemExit('No std-only num-complex metadata found; refusing to build dependencies.')
complex_fp, complex_info = max(complex_options, key=lambda pair: pair[0].stat().st_mtime_ns)
traits_fingerprint = next(d[3] for d in complex_info['deps'] if d[1] == 'num_traits')
traits_fp = None
for fp in fingerprints.glob('num-traits-*/lib-num_traits'):
    if int.from_bytes(bytes.fromhex(fp.read_text().strip()), 'little') == traits_fingerprint:
        traits_fp = fp
        break
if traits_fp is None:
    raise SystemExit('Matching num-traits metadata missing; refusing to build dependencies.')
externs = {}
for name, fp in [('num_complex', complex_fp), ('num_traits', traits_fp)]:
    artifact_hash = fp.parent.name.rsplit('-', 1)[1]
    metadata = deps / f'lib{name}-{artifact_hash}.rmeta'
    if not metadata.exists():
        raise SystemExit(f'Missing {metadata}')
    externs[name] = metadata

features = {
    'scalar': [],
    'sse2': ['sse2'],
    'avx2': ['avx2'],
    'avx512': ['avx512'],
    'default': ['default', 'sse2', 'avx2', 'avx512'],
    'tuning': ['default', 'sse2', 'avx2', 'avx512', 'tuning'],
}

def normalize(source):
    # Documentation is metadata, not executable Rust. Keep every string literal
    # outside a doc attribute, including panic messages and asm.
    source = re.sub(r'#!?\[doc\s*=\s*"(?:[^"\\]|\\.)*"\s*\]', '', source)
    source = re.sub(r'^\s*//[!/]([^/].*)?$', '', source, flags=re.MULTILINE)
    # Only fold the one added target-dependent constant whose x86 value is 5.
    declaration = r'const\s+TIERS\s*:\s*usize\s*=\s*if\s+false\s*\{\s*6\s*\}\s*else\s*\{\s*5\s*\}\s*;'
    if re.search(r'\bconst\s+TIERS\b', source):
        source, replaced = re.subn(declaration, '', source)
        if replaced != 1:
            raise RuntimeError('TIERS initializer differs from expected x86 5; inspect manually.')
        source = re.sub(r'\bTIERS\b', '5', source)
    # Expanded formatting is deterministic; trim empty lines introduced by docs.
    return '\n'.join(line.rstrip() for line in source.splitlines() if line.strip()) + '\n'

def manifest(root):
    return {str(path.relative_to(root)): hashlib.sha256(path.read_bytes()).hexdigest()
            for path in sorted((root / 'crates/fastfft/src').rglob('*.rs'))}

source_before = manifest(repo)
provenance = {
    'rustc': subprocess.check_output(['rustc', '--version', '--verbose'], cwd=repo, text=True),
    'target': 'x86_64-unknown-linux-gnu',
    'baseline_archive_sha256': hashlib.sha256(a.baseline.read_bytes()).hexdigest(),
    'baseline_source_sha256': manifest(baseline),
    'current_source_sha256': source_before,
    'externs': {name: {'path': str(path), 'sha256': hashlib.sha256(path.read_bytes()).hexdigest()} for name, path in externs.items()},
    'commands': [],
}
results = []
env = dict(os.environ, RUSTC_BOOTSTRAP='1')
for config in a.configuration or list(features):
    normalized = {}
    for label, root in [('baseline', baseline), ('current', repo)]:
        config_features = list(features[config])
        # The new default feature is enabled in the actual current build; all
        # NEON bodies must still cfg out on x86. Explicit tiers remain explicit.
        if label == 'current' and config in ['default', 'tuning']:
            config_features.append('neon')
        command = [
            'rustc', '--crate-name', 'fastfft', '--crate-type', 'rlib',
            '--edition=2024', '--target=x86_64-unknown-linux-gnu',
            '-C', 'debug-assertions=no', '-A', 'warnings',
            '-Zunpretty=expanded', '-L', f'dependency={deps}',
        ]
        for name, path in externs.items():
            command.extend(['--extern', f'{name}={path}'])
        for feature in config_features:
            command.extend(['--cfg', f'feature="{feature}"'])
        command.append(str(root / 'crates/fastfft/src/lib.rs'))
        provenance['commands'].append({'configuration': config, 'source': label, 'command': command})
        output = out / f'{config}.{label}.expanded.rs'
        error = out / f'{config}.{label}.stderr'
        with output.open('w') as stdout, error.open('w') as stderr:
            subprocess.run(command, env=env, cwd=repo, stdout=stdout, stderr=stderr, check=True)
        text = normalize(output.read_text())
        normalized[label] = text
        (out / f'{config}.{label}.normalized.rs').write_text(text)
    same = normalized['baseline'] == normalized['current']
    result = {'configuration': config, 'identical': same,
              'sha256': {key: hashlib.sha256(value.encode()).hexdigest() for key, value in normalized.items()}}
    results.append(result)
    if same:
        (out / f'{config}.diff').unlink(missing_ok=True)
    else:
        diff = difflib.unified_diff(normalized['baseline'].splitlines(True), normalized['current'].splitlines(True), fromfile='baseline', tofile='current')
        (out / f'{config}.diff').write_text(''.join(diff))
    print(f'{config}: {"IDENTICAL" if same else "DIFFERENT (inspect .diff)"}', flush=True)
if manifest(repo) != source_before:
    raise SystemExit('Current library source changed during comparison; rerun for consistent evidence.')
(out / 'provenance.json').write_text(json.dumps(provenance, indent=2) + '\n')
(out / 'results.json').write_text(json.dumps({'normalization': ['strip doc attributes and doc comments', 'fold x86 TIERS constant to 5', 'drop empty lines'], 'results': results}, indent=2) + '\n')
print(out)
raise SystemExit(0 if all(r['identical'] for r in results) else 1)

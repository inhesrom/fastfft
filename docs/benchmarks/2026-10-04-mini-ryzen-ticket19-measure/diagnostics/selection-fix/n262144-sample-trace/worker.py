"""Build before quiet, run one reviewed diagnostic, restore and retain evidence."""
from pathlib import Path
import datetime
import hashlib
import json
import os
import shutil
import subprocess
import sys
import time

b = Path(__file__).parent
assert not (b / 'worker.log').exists(), 'one diagnostic attempt only'
commands = json.loads((b / 'commands.json').read_text())
state = {'acceptance': False, 'automatic_retries': False,
         'started_utc': datetime.datetime.now(datetime.timezone.utc).isoformat(),
         'scope': 'One sample-traced diagnostic; cannot replace full710 acceptance.'}

def verify_sources():
    for manifest in ['source-sha256.json', 'audit-source-sha256.json']:
        for name, expected in json.loads((b / manifest).read_text()).items():
            assert hashlib.sha256(Path(name).read_bytes()).hexdigest() == expected, name

with (b / 'worker.log').open('x', buffering=1) as log:
    verify_sources()
    env = dict(os.environ, **commands['build_env'])
    with (b / 'build.log').open('x') as output:
        build = subprocess.run(commands['build'], env=env,
                               stdout=output, stderr=subprocess.STDOUT)
    state['build_exit'] = build.returncode
    if build.returncode == 0:
        verify_sources()
        shutil.copy2('target/arena/fastfft-arena', b / 'fastfft-arena')
        provenance = {'utc': datetime.datetime.now(datetime.timezone.utc).isoformat(),
                      'sha256': hashlib.sha256((b / 'fastfft-arena').read_bytes()).hexdigest(),
                      'features': 'default SIMD plus measure-diagnostics (fastfft/tuning)',
                      'selector_trace': False, 'sample_trace': True,
                      'acceptance': False,
                      'scope': 'Diagnostic feature build has different code context from default acceptance.'}
        (b / 'provenance.json').write_text(json.dumps(provenance, indent=2) + '\n')
        with (b / 'run.log').open('x') as output:
            run = subprocess.run(commands['run'], stdout=output, stderr=subprocess.STDOUT)
        state['driver_exit'] = run.returncode
        journal = b / 'run-affinity.json'
        if journal.exists():
            if not json.loads(journal.read_text()).get('restored'):
                recovery = subprocess.run([
                    sys.executable,
                    'docs/benchmarks/2026-10-04-mini-ryzen-ticket19-measure/reserve-core.py',
                    '--journal', str(journal), '--restore'], stdout=log, stderr=subprocess.STDOUT)
                state['recovery_exit'] = recovery.returncode
            proof = subprocess.run([sys.executable, str(b / 'prove-run-affinity.py')],
                                   stdout=log, stderr=subprocess.STDOUT)
            state['host_restoration_proof_exit'] = proof.returncode
        deadline = time.monotonic() + 300
        while not (b / 'audit-ready.json').exists() and time.monotonic() < deadline:
            time.sleep(1)
        if (b / 'audit-ready.json').exists() and (b / 'run-affinity-proof.json').exists():
            audit = subprocess.run([sys.executable, str(b / 'audit.py')],
                                   stdout=log, stderr=subprocess.STDOUT)
            state['diagnostic_audit_exit'] = audit.returncode
        verify_sources()
    state['finished_utc'] = datetime.datetime.now(datetime.timezone.utc).isoformat()
    (b / 'checkpoint.json').write_text(json.dumps(state, indent=2) + '\n')

parent = Path('docs/benchmarks/2026-10-04-mini-ryzen-ticket19-measure/diagnostics/selection-fix')
out = parent / b.name
out.mkdir(exist_ok=False)
files = {}
for source in sorted(b.rglob('*')):
    if not source.is_file() or '__pycache__' in source.parts or source.name == 'fastfft-arena':
        continue
    relative = source.relative_to(b)
    dest = out / relative
    dest.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(source, dest)
    digest = hashlib.sha256(source.read_bytes()).hexdigest()
    assert hashlib.sha256(dest.read_bytes()).hexdigest() == digest
    files[str(relative)] = {'sha256': digest, 'bytes': dest.stat().st_size}
manifest = {'acceptance': False, 'files': files, 'retained_files': len(files),
            'retained_bytes': sum(r['bytes'] for r in files.values()),
            'immutable_source_archive': '../vector-stack-scope',
            'source_archive_manifest_sha256': hashlib.sha256((parent / 'vector-stack-scope/archive-manifest.json').read_bytes()).hexdigest(),
            'scope': state['scope']}
(out / 'archive-manifest.json').write_text(json.dumps(manifest, indent=2) + '\n')
print(json.dumps(state), flush=True)

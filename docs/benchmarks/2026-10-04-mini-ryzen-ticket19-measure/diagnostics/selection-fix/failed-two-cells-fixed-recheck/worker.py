"""One user-requested two-cell rerun with the frozen default executable."""
from pathlib import Path
import datetime
import hashlib
import json
import shutil
import subprocess
import sys

b = Path(__file__).parent
assert not (b / 'worker.log').exists(), 'one fixed rerun only'
for manifest in ['source-sha256.json', 'audit-source-sha256.json']:
    for name, digest in json.loads((b / manifest).read_text()).items():
        assert hashlib.sha256(Path(name).read_bytes()).hexdigest() == digest, name
provenance = json.loads((b / 'provenance.json').read_text())
assert hashlib.sha256(Path(provenance['executable']).read_bytes()).hexdigest() == provenance['sha256']
state = {'utc': datetime.datetime.now(datetime.timezone.utc).isoformat(),
         'acceptance': False, 'automatic_retries': False,
         'scope': 'One fixed rerun of the two failed cells; earlier full capture remains failed.'}
with (b / 'worker.log').open('x', buffering=1) as log:
    with (b / 'run.log').open('x') as output:
        run = subprocess.run(json.loads((b / 'commands.json').read_text())['run'],
                             stdout=output, stderr=subprocess.STDOUT)
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
    if (b / 'run/results.jsonl').exists() and (b / 'run-affinity-proof.json').exists():
        audit = subprocess.run([sys.executable, str(b / 'inspect-run.py')],
                               stdout=log, stderr=subprocess.STDOUT)
        state['focused_audit_exit'] = audit.returncode
    mismatches = []
    for manifest in ['source-sha256.json', 'audit-source-sha256.json']:
        for name, digest in json.loads((b / manifest).read_text()).items():
            if hashlib.sha256(Path(name).read_bytes()).hexdigest() != digest:
                mismatches.append(name)
    if hashlib.sha256(Path(provenance['executable']).read_bytes()).hexdigest() != provenance['sha256']:
        mismatches.append(provenance['executable'])
    state['post_run_hash_mismatches'] = mismatches
    state['focused_passed'] = (run.returncode == 0
                               and state.get('host_restoration_proof_exit') == 0
                               and state.get('focused_audit_exit') == 0
                               and not mismatches)
    state['finished_utc'] = datetime.datetime.now(datetime.timezone.utc).isoformat()
    (b / 'checkpoint.json').write_text(json.dumps(state, indent=2) + '\n')
parent = Path('docs/benchmarks/2026-10-04-mini-ryzen-ticket19-measure/diagnostics/selection-fix')
out = parent / b.name
out.mkdir(exist_ok=False)
files = {}
for path in sorted(b.rglob('*')):
    if not path.is_file() or '__pycache__' in path.parts:
        continue
    relative = path.relative_to(b)
    dest = out / relative
    dest.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(path, dest)
    digest = hashlib.sha256(path.read_bytes()).hexdigest()
    assert hashlib.sha256(dest.read_bytes()).hexdigest() == digest
    files[str(relative)] = {'sha256': digest, 'bytes': dest.stat().st_size}
manifest = {'acceptance': False, 'files': files, 'retained_files': len(files),
            'retained_bytes': sum(r['bytes'] for r in files.values()),
            'immutable_source_archive': '../vector-stack-scope',
            'source_archive_manifest_sha256': hashlib.sha256((parent / 'vector-stack-scope/archive-manifest.json').read_bytes()).hexdigest(),
            'scope': state['scope']}
(out / 'archive-manifest.json').write_text(json.dumps(manifest, indent=2) + '\n')
print(json.dumps(state), flush=True)

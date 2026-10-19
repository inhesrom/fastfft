"""One fixed full capture; restore, audit and retain evidence automatically."""
from pathlib import Path
import datetime
import hashlib
import json
import shutil
import subprocess
import sys

b = Path(__file__).parent
assert not (b / 'supervisor.log').exists(), 'one fixed attempt only'
record = {
    'utc': datetime.datetime.now(datetime.timezone.utc).isoformat(),
    'automatic_benchmark_retries': False,
}
with (b / 'supervisor.log').open('x', buffering=1) as log:
    run = subprocess.run([sys.executable, str(b / 'launch.py')],
                         stdout=log, stderr=subprocess.STDOUT)
    record['driver_exit'] = run.returncode
    journal = b / 'full-affinity.json'
    if journal.exists():
        if not json.loads(journal.read_text()).get('restored'):
            recovery = subprocess.run([
                sys.executable,
                'docs/benchmarks/2026-10-04-mini-ryzen-ticket19-measure/reserve-core.py',
                '--journal', str(journal), '--restore',
            ], stdout=log, stderr=subprocess.STDOUT)
            record['recovery_exit'] = recovery.returncode
        proof = subprocess.run([sys.executable, str(b / 'prove-full-affinity.py')],
                               stdout=log, stderr=subprocess.STDOUT)
        record['independent_host_restoration_exit'] = proof.returncode
    if (b / 'full-affinity-proof.json').exists() and (b / 'full-quiet.jsonl').exists():
        audit = subprocess.run([sys.executable, str(b / 'inspect-full.py')],
                               stdout=log, stderr=subprocess.STDOUT)
        record['strict_audit_exit'] = audit.returncode
    mismatches = []
    for manifest in ['source-sha256.json', 'audit-source-sha256.json']:
        for name, expected in json.loads((b / manifest).read_text()).items():
            if hashlib.sha256(Path(name).read_bytes()).hexdigest() != expected:
                mismatches.append(name)
    provenance = json.loads((b / 'provenance.json').read_text())
    if hashlib.sha256(Path(provenance['executable']).read_bytes()).hexdigest() != provenance['sha256']:
        mismatches.append(provenance['executable'])
    record['post_run_source_and_executable_mismatches'] = mismatches
    checkpoint = b / 'full-checkpoint.json'
    record['accepted'] = (
        run.returncode == 0
        and record.get('independent_host_restoration_exit') == 0
        and record.get('strict_audit_exit') == 0
        and not mismatches
        and checkpoint.exists()
        and json.loads(checkpoint.read_text())['accepted']
    )
    record['finished_utc'] = datetime.datetime.now(datetime.timezone.utc).isoformat()
    (b / 'supervisor-checkpoint.json').write_text(json.dumps(record, indent=2) + '\n')

focus = Path('docs/benchmarks/2026-10-04-mini-ryzen-ticket19-measure/diagnostics/selection-fix/vector-stack-scope')
out = focus.parent / b.name
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
manifest = {
    'acceptance': record['accepted'],
    'files': files,
    'retained_files': len(files),
    'retained_bytes': sum(v['bytes'] for v in files.values()),
    'immutable_focus_source_and_code_archive': '../vector-stack-scope',
    'focus_archive_manifest_sha256': hashlib.sha256((focus / 'archive-manifest.json').read_bytes()).hexdigest(),
    'scope': 'Single fixed full capture after newly observed idle window. All prior failures retained separately. Raw trials, controls, monitoring, independent host restoration, audits and frozen provenance retained.',
}
(out / 'archive-manifest.json').write_text(json.dumps(manifest, indent=2) + '\n')
print(json.dumps(record), flush=True)
raise SystemExit(not record['accepted'])

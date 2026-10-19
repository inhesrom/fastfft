"""Retain the complete passing fixed focus; refuse overwrites."""
from pathlib import Path
import hashlib
import json
import shutil

source = Path(__file__).parent
destination = Path('docs/benchmarks/2026-10-04-mini-ryzen-ticket19-measure/diagnostics/selection-fix') / source.name
destination.mkdir(exist_ok=False)
files = {}
for p in sorted(source.rglob('*')):
    if not p.is_file() or p.name in ['fastfft-arena', 'fastfft-library-tests', 'symbols.txt'] or '__pycache__' in p.parts:
        continue
    relative = p.relative_to(source)
    q = destination / relative
    q.parent.mkdir(parents=True, exist_ok=True)
    shutil.copy2(p, q)
    digest = hashlib.sha256(p.read_bytes()).hexdigest()
    assert hashlib.sha256(q.read_bytes()).hexdigest() == digest
    files[str(relative)] = {'sha256': digest, 'bytes': q.stat().st_size}
manifest = {'files': files, 'retained_files': len(files),
            'retained_bytes': sum(r['bytes'] for r in files.values()),
            'excluded': 'Executables and full symbols omitted; executable hashes, complete source, generated-code reviews, all complete focus raw trials and controls, quiet records and independent affinity proofs retained. The complete focus passes; full710 is still a separate required gate and has not started at this archive checkpoint.'}
(destination / 'archive-manifest.json').write_text(json.dumps(manifest, indent=2) + '\n')
print(json.dumps({k: v for k, v in manifest.items() if k != 'files'}))

"""Retain the fixed diagnostic including all samples; refuse overwrites."""
from pathlib import Path
import hashlib
import json
import shutil

source = Path(__file__).parent
destination = Path('docs/benchmarks/2026-10-04-mini-ryzen-ticket19-measure/diagnostics/selection-fix') / source.name
destination.mkdir(exist_ok=False)
files = {}
for p in sorted(source.rglob('*')):
    if not p.is_file() or p.name in ['fastfft-arena', 'symbols.txt'] or '__pycache__' in p.parts:
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
            'excluded': 'Executable and full symbols omitted; executable SHA, complete source, generated-code reviews, all original/replay samples, quiet record and independent affinity proof retained.'}
(destination / 'archive-manifest.json').write_text(json.dumps(manifest, indent=2) + '\n')
print(json.dumps({k: v for k, v in manifest.items() if k != 'files'}))

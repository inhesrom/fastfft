#!/usr/bin/env python3
"""Preserve source (including untracked source), hashes, and executable copies.
Usage: snapshot-small-latency.py OUTPUT_DIR [EXECUTABLE ...]
Only writes OUTPUT_DIR; refuses to overwrite an existing snapshot.
"""
import hashlib
import json
import shutil
import subprocess
import sys
import tarfile
from datetime import datetime, timezone
from pathlib import Path

out = Path(sys.argv[1])
out.mkdir(parents=True, exist_ok=False)
scopes = ['crates', 'bench', 'xtask', 'scripts', '.cargo', 'Cargo.toml', 'Cargo.lock', 'rust-toolchain.toml', 'rustfmt.toml']
def git(*args):
    return subprocess.check_output(['git', *args])
tracked = git('ls-files', '-z', '--', *scopes).decode().split('\0')
new = git('ls-files', '--others', '--exclude-standard', '-z', '--', *scopes).decode().split('\0')
files = sorted(set(p for p in tracked+new if p and Path(p).is_file()))
patch = git('diff', '--binary', 'HEAD', '--', *scopes)
for p in new:
    if p:
        diff = subprocess.run(['git', 'diff', '--no-index', '--binary', '/dev/null', p], stdout=subprocess.PIPE, check=False)
        if diff.returncode not in [0, 1]:
            raise RuntimeError(f'diff failed: {p}')
        patch += diff.stdout
(out/'source.patch').write_bytes(patch)
(out/'source.sha256').write_text(''.join(f'{hashlib.sha256(Path(p).read_bytes()).hexdigest()}  {p}\n' for p in files))
with tarfile.open(out/'source.tar.gz', 'w:gz') as tar:
    for p in files:
        tar.add(p)
(out/'status.txt').write_bytes(git('status', '--short'))
hashes = []
for i, executable in enumerate(sys.argv[2:]):
    p = out/f'executable-{i}'
    shutil.copy2(executable, p)
    hashes.append({'original': executable, 'copy': p.name, 'sha256': hashlib.sha256(p.read_bytes()).hexdigest()})
(out/'provenance.json').write_text(json.dumps({'date': datetime.now(timezone.utc).isoformat(), 'head': git('rev-parse', 'HEAD').decode().strip(), 'executables': hashes}, indent=2)+'\n')

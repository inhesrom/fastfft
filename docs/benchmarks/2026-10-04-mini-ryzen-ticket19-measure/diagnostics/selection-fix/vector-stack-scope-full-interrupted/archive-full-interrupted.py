from pathlib import Path
import hashlib,json,shutil
b=Path(__file__).parent
d=Path('docs/benchmarks/2026-10-04-mini-ryzen-ticket19-measure/diagnostics/selection-fix')
focus=d/'vector-stack-scope'
assert (focus/'archive-manifest.json').exists()
assert (b/'full-miss-review.md').exists() and (b/'full-miss-review.json').exists()
out=d/'vector-stack-scope-full-interrupted'
out.mkdir(exist_ok=False)
items=list((b/'full').rglob('*'))+list(b.glob('full-*'))+[b/'full.log',b/'provenance.json',b/'source-sha256.json',b/'audit-source-sha256.json',b/'protocol-sha256.json',b/'commands.json',b/'toolchain.json',b/'launch.py',b/'inspect-full.py',b/'prove-full-affinity.py',Path(__file__)]
files={}
for p in sorted(set(items)):
    if not p.is_file():continue
    rel=p.relative_to(b);q=out/rel;q.parent.mkdir(parents=True,exist_ok=True)
    shutil.copy2(p,q)
    digest=hashlib.sha256(p.read_bytes()).hexdigest()
    assert hashlib.sha256(q.read_bytes()).hexdigest()==digest
    files[str(rel)]={'sha256':digest,'bytes':q.stat().st_size}
record={'acceptance':False,'files':files,'retained_files':len(files),'retained_bytes':sum(r['bytes'] for r in files.values()),'immutable_focus_source_and_code_archive':'../vector-stack-scope','focus_archive_manifest_sha256':hashlib.sha256((focus/'archive-manifest.json').read_bytes()).hexdigest(),'scope':'Interrupted full capture. All complete and partial raw trials, controls, quiet/reservation logs, independent affinity proof, strict audit, failure review and frozen provenance retained. Complete full710 remains required.'}
(out/'archive-manifest.json').write_text(json.dumps(record,indent=2)+'\n')
print(json.dumps({k:v for k,v in record.items() if k!='files'}))

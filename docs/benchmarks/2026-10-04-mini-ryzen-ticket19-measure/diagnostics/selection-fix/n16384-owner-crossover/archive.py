from pathlib import Path
import hashlib,json,shutil
b=Path(__file__).parent
d=Path('docs/benchmarks/2026-10-04-mini-ryzen-ticket19-measure/diagnostics/selection-fix/n16384-owner-crossover');d.mkdir(exist_ok=False)
assert json.loads((b/'checkpoint.json').read_text())['diagnostic_evidence_valid']
assert 'Ran 32 tests' in (b/'audit-correction-tests.log').read_text()
files={}
for p in sorted(b.rglob('*')):
    if not p.is_file() or p.name in ['fastfft-arena','symbols.txt'] or '__pycache__' in p.parts or 'audit-wait' in p.parts and 'audit-source' in p.parts:continue
    rel=p.relative_to(b);q=d/rel;q.parent.mkdir(parents=True,exist_ok=True);shutil.copy2(p,q)
    h=hashlib.sha256(p.read_bytes()).hexdigest();assert hashlib.sha256(q.read_bytes()).hexdigest()==h
    files[str(rel)]={'sha256':h,'bytes':q.stat().st_size}
record={'acceptance':False,'files':files,'retained_files':len(files),'retained_bytes':sum(v['bytes'] for v in files.values()),'scope':'Complete fixed owner crossover; all raw/control/sample/mapping records, source, initial rejected audit, exact corrected audit/fixture, test logs, generated caller proof, affinity/quiet records and next-step review retained. Executable omitted by hash. The earlier production miss remains failed; full710 remains required.'}
(d/'archive-manifest.json').write_text(json.dumps(record,indent=2)+'\n');print(json.dumps({k:v for k,v in record.items() if k!='files'}))

from pathlib import Path
import json,hashlib,shutil,subprocess,datetime
base=Path('target/ticket19/selection-fix/n16384-owner-crossover')
files=[Path(p) for p in subprocess.check_output(['rg','--files','crates/fastfft/src','bench/arena/src'],text=True).splitlines() if p.endswith('.rs')]
files += [Path(p) for p in ['Cargo.toml','Cargo.lock','crates/fastfft/Cargo.toml','bench/arena/Cargo.toml','bench/arena/build.rs','.cargo/config.toml','bench/arena/src/usage.txt'] if Path(p).is_file()]
assert not (base/'source-sha256.json').exists(), 'snapshot is immutable'
manifest={}
for p in sorted(files):
    q=base/'source'/p;q.parent.mkdir(parents=True,exist_ok=True);shutil.copy2(p,q)
    manifest[str(p)]=hashlib.sha256(p.read_bytes()).hexdigest()
(base/'source-sha256.json').write_text(json.dumps(manifest,indent=2)+'\n')
(base/'tracked.patch').write_bytes(subprocess.check_output(['git','diff']))
(base/'HEAD.txt').write_bytes(subprocess.check_output(['git','rev-parse','HEAD']))
(base/'build-env.json').write_text(json.dumps({'RUSTFLAGS':'-C llvm-args=-align-all-functions=6','test_profile':'release','arena_profile':'arena','features':'default SIMD plus measure-diagnostics/tuning; selector tracing off','jobs':1,'created_utc':datetime.datetime.now(datetime.timezone.utc).isoformat()},indent=2)+'\n')
checks=['scripts/check-measure.py','scripts/test_measure_audit.py','docs/benchmarks/2026-10-04-mini-ryzen-ticket19-measure/quiet-run.py','docs/benchmarks/2026-10-04-mini-ryzen-ticket19-measure/reserve-core.py','docs/benchmarks/2026-10-04-mini-ryzen-ticket19-measure/host_activity.py','docs/benchmarks/2026-10-04-mini-ryzen-ticket19-measure/inspect-storage.py','docs/benchmarks/2026-10-04-mini-ryzen-ticket19-measure/inspect-large-coefficients.py','docs/benchmarks/2026-10-04-mini-ryzen-ticket19-measure/test_large_coefficient_audit.py','scripts/bench-env.sh']
audit={}
for name in checks:
    p=Path(name);q=base/'audit-source'/p.name;q.parent.mkdir(exist_ok=True);shutil.copy2(p,q)
    audit[str(p)]=hashlib.sha256(p.read_bytes()).hexdigest()
(base/'audit-source-sha256.json').write_text(json.dumps(audit,indent=2)+'\n')
print('Frozen',len(manifest),'source files and',len(audit),'auditor/monitor files.')

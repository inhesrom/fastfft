import pathlib,json,hashlib,shutil,subprocess,datetime,re
b=pathlib.Path('target/ticket19/selection-fix/page-storage-stack')
log=(b/'build.log').read_text()
assert 'Finished' in log
match=re.search(r'Executable unittests src/lib.rs \(\S+ \(([^)]+)\)\)',log)
if not match:
    match=re.search(r'Executable unittests src/lib.rs \(([^)]+)\)',log)
assert match,log[-1500:]
src=pathlib.Path(match.group(1))
exe=b/'fastfft-library-tests'
shutil.copy2(src,exe)
hashes=json.loads((b/'source-sha256.json').read_text())
assert all(hashlib.sha256(pathlib.Path(p).read_bytes()).hexdigest()==h for p,h in hashes.items())
provenance={'utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'executable':str(exe),'sha256':hashlib.sha256(exe.read_bytes()).hexdigest(),'built_executable':str(src),'build_command':"RUSTFLAGS='-C llvm-args=-align-all-functions=6' cargo test -j1 --release -pfastfft --lib --no-run",'features':'default SIMD, no tuning','source_files_verified':len(hashes),'source_snapshot':str(b/'source-sha256.json')}
(b/'test-provenance.json').write_text(json.dumps(provenance,indent=2)+'\n')
print(json.dumps(provenance))

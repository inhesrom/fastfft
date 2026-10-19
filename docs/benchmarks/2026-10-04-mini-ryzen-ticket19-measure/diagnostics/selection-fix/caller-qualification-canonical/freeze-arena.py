import pathlib,json,hashlib,shutil,subprocess,datetime
b=pathlib.Path('target/ticket19/selection-fix/caller-qualification-canonical')
log=(b/'arena-build.log').read_text();assert 'Finished' in log
exe=b/'fastfft-arena';shutil.copy2('target/arena/fastfft-arena',exe)
source=json.loads((b/'source-sha256.json').read_text());assert all(hashlib.sha256(pathlib.Path(p).read_bytes()).hexdigest()==h for p,h in source.items())
p={'utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'executable':str(exe),'sha256':hashlib.sha256(exe.read_bytes()).hexdigest(),'build_command':"RUSTFLAGS='-C llvm-args=-align-all-functions=6' cargo build -j1 --profile arena -pfastfft-arena",'features':'default SIMD; no diagnostics/tuning','source_files':len(source),'source_hashes_match':True,'caller_route_coverage':'canonical-offset','acceptance':False}
(b/'provenance.json').write_text(json.dumps(p,indent=2)+'\n')
symbols=subprocess.check_output(['nm','-C',str(exe)],text=True);(b/'symbols.txt').write_text(symbols)
assert 'selection_ledger' not in symbols
chosen=[line for line in symbols.splitlines() if any(name in line for name in ['fastfft::measure::sample_helper','fastfft::measure::sample_routed','fastfft::measure::Buffers<T>::sample'])]
all_symbols=sorted(int(line.split()[0],16) for line in symbols.splitlines() if len(line.split())>=3 and line.split()[1].lower()=='t')
asm=[]
for line in chosen:
    address=int(line.split()[0],16);end=next(x for x in all_symbols if x>address)
    asm.append(subprocess.check_output(['objdump','-d','-C','--no-show-raw-insn','--start-address='+hex(address),'--stop-address='+hex(end),str(exe)],text=True))
(b/'sampler-disassembly.txt').write_text('\n'.join(asm))
print(json.dumps(p));print('\n'.join(chosen))

import pathlib,json,hashlib,shutil,subprocess,datetime
b=pathlib.Path('target/ticket19/selection-fix/large-storage-crossover')
assert 'Finished' in (b/'build.log').read_text()
manifest=json.loads((b/'source-sha256.json').read_text())
assert all(hashlib.sha256(pathlib.Path(p).read_bytes()).hexdigest()==h for p,h in manifest.items())
exe=b/'fastfft-arena';shutil.copy2('target/arena/fastfft-arena',exe)
provenance={'utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'executable':str(exe),'sha256':hashlib.sha256(exe.read_bytes()).hexdigest(),'source_files':len(manifest),'source_hashes_match':True,'build':json.loads((b/'build-plan.json').read_text()),'acceptance':False}
(b/'provenance.json').write_text(json.dumps(provenance,indent=2)+'\n')
symbols=subprocess.check_output(['nm','-C',str(exe)],text=True);(b/'symbols.txt').write_text(symbols)
assert 'selection_ledger' not in symbols
chosen=[line for line in symbols.splitlines() if 'fastfft_arena::coefficient_crossover::run_fixed' in line or 'swap_coefficient_storage' in line or ('FastRunner' in line and '::turn' in line)]
all_symbols=sorted(int(line.split()[0],16) for line in symbols.splitlines() if len(line.split())>=3 and line.split()[1].lower()=='t')
asm=[]
for line in chosen:
    address=int(line.split()[0],16);end=next(x for x in all_symbols if x>address)
    asm.append(subprocess.check_output(['objdump','-d','-C','--no-show-raw-insn','--start-address='+hex(address),'--stop-address='+hex(end),str(exe)],text=True))
(b/'crossover-disassembly.txt').write_text('\n'.join(asm))
print(json.dumps(provenance));print('\n'.join(chosen))

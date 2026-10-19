from pathlib import Path
import argparse,subprocess,json,hashlib
p=argparse.ArgumentParser();p.add_argument('executable',type=Path);p.add_argument('out',type=Path);a=p.parse_args();a.out.mkdir(parents=True,exist_ok=True)
s=subprocess.check_output(['nm','-n','-C',str(a.executable)],text=True)
entries=[]
for line in s.splitlines():
    v=line.split(maxsplit=2)
    if len(v)==3 and v[1].lower()=='t':entries.append((int(v[0],16),v[2]))
starts=sorted(set(x[0] for x in entries));result={}
for scalar in ['F64x8','F32x8v','F32x16']:
    name=f'<fastfft::isa::x86::{scalar} as fastfft::engine::fourstep::PanelVector>::execute'
    found=[addr for addr,n in entries if n==name];assert len(found)==1,(name,found)
    start=found[0];end=next(x for x in starts if x>start)
    asm=subprocess.check_output(['objdump','-d','-C','-Mintel',f'--start-address={start}',f'--stop-address={end}',str(a.executable)],text=True)
    path=a.out/(scalar+'.asm');path.write_text(asm)
    result[scalar]=dict(symbol=name,start=hex(start),end=hex(end),bytes=end-start,assembly=path.name)
(a.out/'located.json').write_text(json.dumps(dict(executable=str(a.executable),sha256=hashlib.sha256(a.executable.read_bytes()).hexdigest(),functions=result),indent=2)+'\n')
print(json.dumps(result,indent=2))

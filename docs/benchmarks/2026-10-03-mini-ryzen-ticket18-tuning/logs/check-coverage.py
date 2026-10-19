import json,re,sys
from pathlib import Path
spec=Path('bench/arena/src/spec.rs').read_text()
smooth=set()
for name in ('BENCHFFT_SMOOTH','SDR_SMOOTH'):
 body=spec.split(f'pub const {name}: &[usize] = &[',1)[1].split('];',1)[0]
 smooth.update(map(int,re.findall(r'\d+',body)))
expected={(p,n) for p in ('f32','f64') for n in smooth|{1<<b for b in range(1,25)}}
r=json.loads(Path(sys.argv[1]).read_text())
rows=[a for a in r['audit'] if a['cap']=='avx512']
assert {(a['precision'],a['n']) for a in rows}==expected
assert len(rows)==len(expected)==130
assert all(a['full_catalog'] for a in rows)
assert len(r['audit'])==650
print('PASS: 130 default precision/length pairs match the arena pow2/smooth suites, every catalog is complete, and all 650 capped choices are represented.')

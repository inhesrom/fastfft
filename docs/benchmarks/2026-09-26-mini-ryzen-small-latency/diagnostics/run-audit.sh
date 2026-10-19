#!/usr/bin/env bash
# Final executable already built by validate.sh; never compile in this script.
set -euxo pipefail
before=target/small-latency/baseline/arena
after=target/arena/fastfft-arena
scripts/bench-env.sh check --core 2
"$before" run --suite pow2 --profile full --filter prec=f32,n=8 \
  --libs fastfft,rustfft --procs 3 --core 2 --label small-latency-n8-before \
  --out target/small-latency/n8-arena-before
"$after" run --suite pow2 --profile full --filter prec=f32,n=8 \
  --libs fastfft,rustfft --procs 3 --core 2 --label small-latency-n8-after \
  --out target/small-latency/n8-arena-after
python3 scripts/analyze-small-latency.py compare \
  target/small-latency/n8-arena-before/results.jsonl \
  target/small-latency/n8-arena-after/results.jsonl > target/small-latency/n8-arena-compare.json
python3 - <<'PY'
import json,math,pathlib
root=pathlib.Path('target/small-latency')
changes=json.loads((root/'n8-arena-compare.json').read_text())
assert len(changes)==4
geomeans={s:math.exp(sum(math.log(1+c['change'][s]) for c in changes.values())/4)-1 for s in ['best','median']}
assert all(v<=-.03 for v in geomeans.values()),geomeans
assert not any(c['flag'] for c in changes.values()),changes
runs=[]
for stage in ['before','after']:
    cs=[json.loads(l) for l in (root/f'n8-arena-{stage}/results.jsonl').read_text().splitlines()]
    runs.append({c['key']:{r['lib']:r for r in c['results']} for c in cs if not c['spec']['control']})
for k,old in runs[0].items():
    new=runs[1][k]
    for s in ['best','median']:
        if old['rustfft']['time'][s]/old['fastfft']['time'][s]>=.95:
            assert new['rustfft']['time'][s]/new['fastfft']['time'][s]>=.95,(k,s,'floor crossing')
(root/'n8-arena-decision.json').write_text(json.dumps({'confirmed':True,'geomean_change':geomeans,'cells':changes},indent=2))
PY
# Exactly the unchanged 64-cell ticket-11 acceptance run.
"$after" run --suite pow2 --profile full --max-n 256 \
  --libs fastfft,rustfft --procs 3 --core 2 \
  --label small-latency --out target/arena/small-latency-final
python3 scripts/analyze-small-latency.py arena target/arena/small-latency-final/results.jsonl \
  > target/small-latency/acceptance.json
# Identical row order and flags; current-Small baseline, not the older binary.
"$before" run --suite pow2,smooth,rough,batch --profile quick \
  --libs fastfft,rustfft --procs 3 --core 2 --label small-latency-quick-before \
  --out target/small-latency/quick-before
"$after" run --suite pow2,smooth,rough,batch --profile quick \
  --libs fastfft,rustfft --procs 3 --core 2 --label small-latency-quick-after \
  --out target/small-latency/quick-after
python3 scripts/analyze-small-latency.py compare \
  target/small-latency/quick-before/results.jsonl target/small-latency/quick-after/results.jsonl \
  > target/small-latency/quick-compare.json

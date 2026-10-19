#!/usr/bin/env bash
# small-fma checkpoint: validation, snapshot, gate runs and the matched quick audit.
set -euxo pipefail
out=target/small-fma
if [ "${SKIP_VALIDATE:-0}" != 1 ]; then
  bash "$out/validate.sh" > "$out/validate.log" 2>&1
fi
test_bin=$(ls -t target/release/deps/fastfft-* | grep -v '\.d$' | head -1)
# The baseline is the previous checkpoint's tested arena (small-fair,
# sha256 4d10be9d...): the arena sources are unchanged since 530bb1c and it
# was built the same way (64-byte function alignment, arena profile).
python3 scripts/snapshot-small-latency.py "$out/source" target/aligned/arena/fastfft-arena \
  "$test_bin" target/small-fair/source/executable-0
after=$out/source/executable-0
before=$out/source/executable-2
scripts/bench-env.sh check --core 2
"$after" run --suite pow2 --profile full --max-n 256 \
  --libs fastfft,rustfft --procs 3 --core 2 \
  --label small-fma --out "$out/final"
python3 scripts/analyze-small-latency.py arena "$out/final/results.jsonl" > "$out/acceptance.json" || true
"$before" run --suite pow2 --profile full --max-n 256 \
  --libs fastfft,rustfft --procs 3 --core 2 \
  --label small-fma-before --out "$out/final-before"
python3 scripts/analyze-small-latency.py arena "$out/final-before/results.jsonl" > "$out/acceptance-before.json" || true
"$before" run --suite pow2,smooth,rough,batch --profile quick \
  --libs fastfft,rustfft --procs 3 --core 2 --label small-fma-quick-before \
  --out "$out/quick-before"
"$after" run --suite pow2,smooth,rough,batch --profile quick \
  --libs fastfft,rustfft --procs 3 --core 2 --label small-fma-quick-after \
  --out "$out/quick-after"
python3 scripts/analyze-small-latency.py compare \
  "$out/quick-before/results.jsonl" "$out/quick-after/results.jsonl" > "$out/quick-compare.json"

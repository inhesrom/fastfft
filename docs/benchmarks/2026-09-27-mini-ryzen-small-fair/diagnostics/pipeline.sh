#!/usr/bin/env bash
set -euxo pipefail
out=target/small-fair
if [ "${SKIP_VALIDATE:-0}" != 1 ]; then
  bash "$out/validate.sh" > "$out/validate.log" 2>&1
fi
bash "$out/build-baseline.sh" > "$out/build-baseline.log" 2>&1
test_bin=$(ls -t target/release/deps/fastfft-* | grep -v '\.d$' | head -1)
python3 scripts/snapshot-small-latency.py "$out/source" target/aligned/arena/fastfft-arena \
  "$test_bin" target/aligned-baseline/arena/fastfft-arena
after=$out/source/executable-0
before=$out/source/executable-2
scripts/bench-env.sh check --core 2
"$after" run --suite pow2 --profile full --max-n 256 \
  --libs fastfft,rustfft --procs 3 --core 2 \
  --label small-fair --out "$out/final"
python3 scripts/analyze-small-latency.py arena "$out/final/results.jsonl" > "$out/acceptance.json" || true
"$before" run --suite pow2 --profile full --max-n 256 \
  --libs fastfft,rustfft --procs 3 --core 2 \
  --label small-fair-before --out "$out/final-before"
python3 scripts/analyze-small-latency.py arena "$out/final-before/results.jsonl" > "$out/acceptance-before.json" || true
"$before" run --suite pow2,smooth,rough,batch --profile quick \
  --libs fastfft,rustfft --procs 3 --core 2 --label small-fair-quick-before \
  --out "$out/quick-before"
"$after" run --suite pow2,smooth,rough,batch --profile quick \
  --libs fastfft,rustfft --procs 3 --core 2 --label small-fair-quick-after \
  --out "$out/quick-after"
python3 scripts/analyze-small-latency.py compare \
  "$out/quick-before/results.jsonl" "$out/quick-after/results.jsonl" > "$out/quick-compare.json"

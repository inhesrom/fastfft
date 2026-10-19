#!/usr/bin/env bash
set -euxo pipefail
out=target/small-interleaved
bash "$out/validate.sh" > "$out/validate3.log" 2>&1
test_bin=$(ls -t target/release/deps/fastfft-* | grep -v '\.d$' | head -1)
python3 scripts/snapshot-small-latency.py "$out/final3-source" target/arena/fastfft-arena "$test_bin"
before=$out/baseline/fastfft-arena
after=$out/final3-source/executable-0
scripts/bench-env.sh check --core 2
"$after" run --suite pow2 --profile full --max-n 256 \
  --libs fastfft,rustfft --procs 3 --core 2 \
  --label small-interleaved --out "$out/final3"
python3 scripts/analyze-small-latency.py arena "$out/final3/results.jsonl" > "$out/acceptance3.json" || true
"$before" run --suite pow2,smooth,rough,batch --profile quick \
  --libs fastfft,rustfft --procs 3 --core 2 --label small-interleaved-quick-before \
  --out "$out/quick3-before"
"$after" run --suite pow2,smooth,rough,batch --profile quick \
  --libs fastfft,rustfft --procs 3 --core 2 --label small-interleaved-quick-after \
  --out "$out/quick3-after"
python3 scripts/analyze-small-latency.py compare \
  "$out/quick3-before/results.jsonl" "$out/quick3-after/results.jsonl" > "$out/quick3-compare.json"

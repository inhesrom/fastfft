#!/usr/bin/env bash
# Final executable already built by validate.sh; never compile in this script.
set -euxo pipefail
before=target/small-interleaved/baseline/fastfft-arena
after=target/small-interleaved/final-source/executable-0
out=target/small-interleaved
scripts/bench-env.sh check --core 2
# Exactly the unchanged 64-cell ticket-11 acceptance command.
"$after" run --suite pow2 --profile full --max-n 256 \
  --libs fastfft,rustfft --procs 3 --core 2 \
  --label small-interleaved --out "$out/final"
python3 scripts/analyze-small-latency.py arena "$out/final/results.jsonl" > "$out/acceptance.json" || true
# Identical row order and flags; previous checkpoint's final arena as baseline.
"$before" run --suite pow2,smooth,rough,batch --profile quick \
  --libs fastfft,rustfft --procs 3 --core 2 --label small-interleaved-quick-before \
  --out "$out/quick-before"
"$after" run --suite pow2,smooth,rough,batch --profile quick \
  --libs fastfft,rustfft --procs 3 --core 2 --label small-interleaved-quick-after \
  --out "$out/quick-after"
python3 scripts/analyze-small-latency.py compare \
  "$out/quick-before/results.jsonl" "$out/quick-after/results.jsonl" > "$out/quick-compare.json"

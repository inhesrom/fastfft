#!/usr/bin/env bash
# No compilation. Exact executable paths and library row order match the broad run.
set -euxo pipefail
before=target/small-interleaved/baseline/fastfft-arena
after=target/small-interleaved/final-source/executable-0
out=target/small-interleaved
filter='n=8|36|120|128|240|2018|1048576|16777216'
scripts/bench-env.sh check --core 2
for pair in 1 2; do
  "$before" run --suite pow2,smooth,rough,batch --profile quick --filter "$filter" \
    --libs fastfft,rustfft --procs 3 --core 2 --label "small-interleaved-repeat-before-$pair" \
    --out "$out/repeat-before-$pair"
  "$after" run --suite pow2,smooth,rough,batch --profile quick --filter "$filter" \
    --libs fastfft,rustfft --procs 3 --core 2 --label "small-interleaved-repeat-after-$pair" \
    --out "$out/repeat-after-$pair"
  python3 scripts/analyze-small-latency.py compare \
    "$out/repeat-before-$pair/results.jsonl" "$out/repeat-after-$pair/results.jsonl" \
    > "$out/repeat-compare-$pair.json"
done

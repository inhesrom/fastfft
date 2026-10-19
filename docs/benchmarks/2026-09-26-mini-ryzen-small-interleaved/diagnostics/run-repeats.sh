#!/usr/bin/env bash
# No compilation. Exact executable paths and library row order match the broad run.
set -euxo pipefail
before=target/small-interleaved/baseline/fastfft-arena
after=target/small-interleaved/final3-source/executable-0
out=target/small-interleaved
filter='n=8|240|1024|1920|2018|2053|2400|10368'
scripts/bench-env.sh check --core 2
for pair in 1 2; do
  "$before" run --suite pow2,smooth,rough,batch --profile quick --filter "$filter" \
    --libs fastfft,rustfft --procs 3 --core 2 --label "small-interleaved-repeat3-before-$pair" \
    --out "$out/repeat3-before-$pair"
  "$after" run --suite pow2,smooth,rough,batch --profile quick --filter "$filter" \
    --libs fastfft,rustfft --procs 3 --core 2 --label "small-interleaved-repeat3-after-$pair" \
    --out "$out/repeat3-after-$pair"
  python3 scripts/analyze-small-latency.py compare \
    "$out/repeat3-before-$pair/results.jsonl" "$out/repeat3-after-$pair/results.jsonl" \
    > "$out/repeat3-compare-$pair.json"
done

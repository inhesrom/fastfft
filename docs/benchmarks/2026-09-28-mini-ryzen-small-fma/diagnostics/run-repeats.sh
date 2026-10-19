#!/usr/bin/env bash
# No compilation. Exact executable paths and library row order match the broad run.
set -euxo pipefail
out=target/small-fma
before=$out/source/executable-2
after=$out/source/executable-0
# Every size the broad audit flagged (all with unchanged plans).
filter='n=15|32|108|240|504|1021|1024|2053|4096|10368|1000000|4194304|8388608'
scripts/bench-env.sh check --core 2
for pair in 1 2; do
  "$before" run --suite pow2,smooth,rough,batch --profile quick --filter "$filter" \
    --libs fastfft,rustfft --procs 3 --core 2 --label "small-fma-repeat-before-$pair" \
    --out "$out/repeat-before-$pair"
  "$after" run --suite pow2,smooth,rough,batch --profile quick --filter "$filter" \
    --libs fastfft,rustfft --procs 3 --core 2 --label "small-fma-repeat-after-$pair" \
    --out "$out/repeat-after-$pair"
  python3 scripts/analyze-small-latency.py compare \
    "$out/repeat-before-$pair/results.jsonl" "$out/repeat-after-$pair/results.jsonl" \
    > "$out/repeat-compare-$pair.json"
done

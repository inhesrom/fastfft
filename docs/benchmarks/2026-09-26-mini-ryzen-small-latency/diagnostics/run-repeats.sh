#!/usr/bin/env bash
# No compilation. Exact executable paths and library row order match the broad run.
set -euxo pipefail
before=target/small-latency/baseline/arena
after=target/arena/fastfft-arena
filter='n=61|96|120|256|384|504|1021|2018|2048|2053|3072|12288|8388608'
for pair in 1 2; do
  "$before" run --suite pow2,smooth,rough,batch --profile quick --filter "$filter" \
    --libs fastfft,rustfft --procs 3 --core 2 --label "small-latency-repeat-before-$pair" \
    --out "target/small-latency/repeat-before-$pair"
  "$after" run --suite pow2,smooth,rough,batch --profile quick --filter "$filter" \
    --libs fastfft,rustfft --procs 3 --core 2 --label "small-latency-repeat-after-$pair" \
    --out "target/small-latency/repeat-after-$pair"
  python3 scripts/analyze-small-latency.py compare \
    "target/small-latency/repeat-before-$pair/results.jsonl" \
    "target/small-latency/repeat-after-$pair/results.jsonl" \
    > "target/small-latency/repeat-compare-$pair.json"
done
# Reconfirm N32 on the frozen/pruned final source, with the original focused row order.
"$before" run --suite pow2 --profile full --filter n=32 \
  --libs fastfft,fastfft/avx2,rustfft --procs 3 --core 2 --label small-latency-n32-final-before \
  --out target/small-latency/n32-final-before
"$after" run --suite pow2 --profile full --filter n=32 \
  --libs fastfft,fastfft/avx2,rustfft --procs 3 --core 2 --label small-latency-n32-final-after \
  --out target/small-latency/n32-final-after

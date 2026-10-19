#!/usr/bin/env bash
set -eu
for trial in 2 3; do
  until bash scripts/bench-env.sh check --core 2 >> "target/ticket18/audit-validation-small-$trial-env.log" 2>&1; do sleep 10; done
  taskset -c 2 target/ticket18/validation-tune --plans-only --ms 10 --n 120,240,504,2400,3072,1000000 --raw "target/ticket18/audit-validation-small-$trial.jsonl" > "target/ticket18/audit-validation-small-$trial.log" 2>&1
  until bash scripts/bench-env.sh check --core 2 >> "target/ticket18/audit-validation-large-$trial-env.log" 2>&1; do sleep 10; done
  taskset -c 2 target/ticket18/validation-tune --plans-only --ms 5 --n 2097152,4194304,8388608,16777216 --max-n 16777216 --shortlist target/ticket18/validation-contenders.jsonl --raw "target/ticket18/audit-validation-large-$trial.jsonl" > "target/ticket18/audit-validation-large-$trial.log" 2>&1
  python3 scripts/analyze-tuning.py target/ticket18/audit-validation-small-*.jsonl target/ticket18/audit-validation-large-*.jsonl --report "target/ticket18/audit-validation-merged-$trial-summary.json"
done

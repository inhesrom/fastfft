#!/usr/bin/env bash
set -eu
for trial in 1 2 3; do
  until bash scripts/bench-env.sh check --core 2 >> "target/ticket18/audit-million-long-$trial-env.log" 2>&1; do sleep 10; done
  taskset -c 2 target/ticket18/validation-tune --plans-only --precision f32 --n 1000000 --ms 1000 --min-batches 200 --shortlist target/ticket18/million-long-contenders.jsonl --raw "target/ticket18/audit-million-long-$trial.jsonl" > "target/ticket18/audit-million-long-$trial.log" 2>&1
done
python3 scripts/analyze-tuning.py target/ticket18/audit-validation-small-[123].jsonl target/ticket18/audit-validation-large-[123].jsonl --refine target/ticket18/audit-million-long-[123].jsonl --report target/ticket18/audit-validation-refined-summary.json --check

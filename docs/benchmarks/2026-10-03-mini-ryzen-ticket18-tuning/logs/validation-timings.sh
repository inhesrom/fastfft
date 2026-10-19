#!/usr/bin/env bash
set -eu
until bash scripts/bench-env.sh check --core 2 >> target/ticket18/validation-timings-env.log 2>&1; do sleep 10; done
taskset -c 2 target/ticket18/validation-tune --planning-only --raw target/ticket18/planning-validation.jsonl > target/ticket18/planning-validation.log 2>&1
python3 - <<'INNER'
import subprocess
with open('target/ticket18/planning-validation-small.log','w') as log:
 subprocess.run(['taskset','-c','2','target/ticket18/validation-tune','--planning-only','--n',','.join(map(str,range(2,257))),'--raw','target/ticket18/planning-validation-small.jsonl'],stdout=log,stderr=subprocess.STDOUT,check=True)
INNER
until bash scripts/bench-env.sh check --core 2 >> target/ticket18/audit-validation-small-1-env.log 2>&1; do sleep 10; done
taskset -c 2 target/ticket18/validation-tune --plans-only --ms 5 --raw target/ticket18/audit-validation-small-1.jsonl > target/ticket18/audit-validation-small-1.log 2>&1
until bash scripts/bench-env.sh check --core 2 >> target/ticket18/audit-validation-large-1-env.log 2>&1; do sleep 10; done
taskset -c 2 target/ticket18/validation-tune --plans-only --ms 5 --min-batches 3 --n 2097152,4194304,8388608,16777216 --max-n 16777216 --raw target/ticket18/audit-validation-large-1.jsonl > target/ticket18/audit-validation-large-1.log 2>&1

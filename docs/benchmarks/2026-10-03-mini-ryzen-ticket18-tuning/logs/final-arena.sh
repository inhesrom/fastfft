#!/usr/bin/env bash
set -eu
until bash scripts/bench-env.sh check --core 2 >> target/ticket18/arena-validation-env.log 2>&1; do sleep 10; done
target/ticket18/validation-arena run --suite pow2,smooth,rough --profile quick --libs fastfft,rustfft --procs 3 --core 2 --max-n 16777216 --out target/ticket18/arena-validation --label ticket18-validation > target/ticket18/arena-validation.log 2>&1

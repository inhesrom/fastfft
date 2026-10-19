#!/usr/bin/env bash
# Ticket 12, stage 3: cache-gated/placed scratch, same-binary m8/m0 pairs.
# Build and validate first. Never compile while this script is running.
# Run from the repository root; completed runs are resumable. Pass --batch-only
# to inspect the regression-sensitive cases before committing to the full run.
set -euo pipefail
out=target/ticket12
variant=${GATED_VARIANT:-gated-v2}
bin=$out/arena-$variant
common=(--libs fastfft,rustfft --procs 3 --core 2)

idle() {
  local quiet=0
  while ((quiet < 2)); do
    if ! pgrep -x 'fastfft-arena|rustc|cargo|ugrep|rg|cc|ld|clang|make' > /dev/null \
      && awk '{exit !($1 < 1.0)}' /proc/loadavg \
      && scripts/bench-env.sh check --core 2 > /dev/null 2>&1; then
      quiet=$((quiet + 1))
    else
      quiet=0
    fi
    sleep 10
  done
}

done_ok() {
  [ -f "$1/meta.json" ] && python3 -c \
    'import json,sys; m=json.load(open(sys.argv[1])); sys.exit(bool(m.get("aborted") or m.get("child_failures")))' \
    "$1/meta.json"
}

run() {
  local name=$1 binary=$2
  shift 2
  local dir=$out/$name
  for attempt in 1 2 3; do
    if done_ok "$dir"; then
      echo "== $name done"
      return 0
    fi
    [ ! -d "$dir" ] || mv "$dir" "$dir.abort$(date +%s)"
    idle
    echo "== $name attempt $attempt $(date -u +%FT%TZ)"
    "$binary" run "$@" "${common[@]}" --label "t12-$name" --out "$dir" || true
  done
  done_ok "$dir" || { echo "== $name FAILED after retries" >&2; return 1; }
}

[ -x "$bin" ] || { echo "missing $bin" >&2; exit 1; }
sha256sum --check "$out/arena-$variant.sha256"
# Diagnose the batch regression first, including leaf256's reverted change.
run "$variant-batch-m8" "$bin" --suite batch --profile full --filter 'n=256|512|1024' --misalign 8
run "$variant-batch-m0" "$bin" --suite batch --profile full --filter 'n=256|512|1024'
# The known-good baseline, remeasured now to distinguish allocation/run noise.
run base-recheck-batch-m8 "$out/arena" --suite batch --profile full --filter 'n=256|512|1024' --misalign 8
run base-recheck-batch-m0 "$out/arena" --suite batch --profile full --filter 'n=256|512|1024'
if [[ ${1:-} == --batch-only ]]; then
  echo PIPELINE-GATED-BATCH-DONE
  exit 0
fi
# gated-v2's initial aligned batch run had one 3.5% clock dip. Preserve it
# and merge this clean retime rather than silently accept/drop the cell.
run "$variant-retime-batch-m0" "$bin" --suite batch --profile full --filter 'prec=f32,n=512,place=oop'
# In-cache gains, aligned neutrality and both sides of the L3 cutoff.
focus='n=512|1024|4096|32768|131072|262144|524288|1048576'
run "$variant-focus-m8" "$bin" --suite pow2 --profile full --filter "$focus" --misalign 8
run "$variant-focus-m0" "$bin" --suite pow2 --profile full --filter "$focus"
# Bluestein stays aligned even when the Stockham inner plan is over budget.
run "$variant-rough-m0" "$bin" --suite rough --profile quick --filter 'n=257|4099|131071'
run "$variant-rough-m8" "$bin" --suite rough --profile quick --filter 'n=257|4099|131071' --misalign 8
# Immutable calls are not in the pow2 suite. Exercise both timing data sets.
run "$variant-immutable-m0" "$bin" --suite datacheck --profile full
run "$variant-immutable-m8" "$bin" --suite datacheck --profile full --misalign 8
echo PIPELINE-GATED-DONE

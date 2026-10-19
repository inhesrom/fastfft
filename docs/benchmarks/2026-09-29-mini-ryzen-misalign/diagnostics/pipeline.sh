#!/usr/bin/env bash
# Ticket 12: aligned (m0) vs 8-byte-misaligned (m8) user buffers, same binary.
# Binary: function-aligned arena build of 45669e2 (see the diagnostics README).
#
# Resumable: a run whose meta.json shows no abort is skipped. Every run first
# waits for an idle machine (bench-env check passes, load < 1, no compilers
# or searches running, twice 60 s apart). An aborted or interrupted run is
# kept as <name>.abort<epoch> for salvage and retried.
#
# The first full-m0 attempt (pipeline of 7d89fb3) aborted at cell 150 when
# another session loaded the machine; its cells 1-125 are clean, so this
# version measures only the missing m0 cells (f64 N >= 4096) as full-m0-rest.
set -uo pipefail
cd /home/ianhersom/repo/fastfft
out=target/ticket12
a=$out/arena
common=(--libs fastfft,rustfft --procs 3 --core 2)

idle() {
  local quiet=0
  while ((quiet < 2)); do
    if scripts/bench-env.sh check --core 2 > /dev/null 2>&1 \
      && ! pgrep -x 'rustc|cargo|ugrep|rg|cc|ld|clang|make' > /dev/null \
      && awk '{exit !($1 < 1.0)}' /proc/loadavg; then
      quiet=$((quiet + 1))
    else
      quiet=0
    fi
    sleep 60
  done
}

done_ok() {
  [ -f "$1/meta.json" ] && python3 -c \
    'import json,sys; sys.exit(1 if json.load(open(sys.argv[1])).get("aborted") else 0)' \
    "$1/meta.json"
}

run() { # name, arena args...
  local name=$1
  shift
  local dir=$out/$name
  for attempt in 1 2 3 4 5 6; do
    if done_ok "$dir"; then
      echo "== $name done"
      return 0
    fi
    [ -d "$dir" ] && mv "$dir" "$dir.abort$(date +%s)"
    idle
    echo "== $name attempt $attempt $(date -u +%FT%TZ)"
    "$a" run "$@" "${common[@]}" --label "t12-$name" --out "$dir"
  done
  done_ok "$dir" || echo "== $name FAILED after retries"
}

# pow2 N=2..2^20, all directions and placements.
run full-m0-rest --suite pow2 --profile full --max-n 1048576 --filter prec=f64,minn=4096
run full-m8 --suite pow2 --profile full --max-n 1048576 --misalign 8
# pow2 N=2^21..2^24, forward in place.
run large-m8 --suite pow2 --profile quick --filter minn=2097152 --misalign 8
run large-m0 --suite pow2 --profile quick --filter minn=2097152
# batch N=8..1024 (2^20 values per call), in and out of place.
run batch-m0 --suite batch --profile full
run batch-m8 --suite batch --profile full --misalign 8
echo PIPELINE-DONE

#!/usr/bin/env bash
# Ticket 12, stage 2: re-time the cells that caught clock dips (baseline
# binary, both alignments), then measure the mitigation prototype
# (arena-proto) against the baseline runs of pipeline.sh.
#
# Same rules as pipeline.sh: resumable, idle-gated, aborted runs kept as
# <name>.abort<epoch> and retried.
set -uo pipefail
cd /home/ianhersom/repo/fastfft
out=target/ticket12
base=$out/arena
proto=$out/arena-proto
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

run() { # name, binary, arena args...
  local name=$1 bin=$2
  shift 2
  local dir=$out/$name
  for attempt in 1 2 3 4 5 6; do
    if done_ok "$dir"; then
      echo "== $name done"
      return 0
    fi
    [ -d "$dir" ] && mv "$dir" "$dir.abort$(date +%s)"
    idle
    echo "== $name attempt $attempt $(date -u +%FT%TZ)"
    "$bin" run "$@" "${common[@]}" --label "t12-$name" --out "$dir"
  done
  done_ok "$dir" || echo "== $name FAILED after retries"
}

full=(--suite pow2 --profile full --max-n 1048576)
f64n='n=64|128|256|512|2048|4096|8192|16384|131072'

# Re-time: every direction and placement of the (precision, N) pairs with a
# dropped cell, on the baseline binary.
run retime-m0-f32 "$base" "${full[@]}" --filter prec=f32,n=16
run retime-m8-f32 "$base" "${full[@]}" --filter prec=f32,n=16 --misalign 8
run retime-m8-f64 "$base" "${full[@]}" --filter "prec=f64,$f64n" --misalign 8
run retime-m0-f64 "$base" "${full[@]}" --filter "prec=f64,$f64n"
run retime-large-m0 "$base" --suite pow2 --profile quick --filter prec=f32,n=8388608
run retime-large-m8 "$base" --suite pow2 --profile quick --filter prec=f32,n=8388608 --misalign 8

# Prototype: misaligned first (the benefit), then aligned (neutrality).
[ -x "$proto" ] || { echo "== no $proto; stopping before the prototype runs"; exit 0; }
run proto-full-m8 "$proto" "${full[@]}" --misalign 8
run proto-full-m0 "$proto" "${full[@]}"
run proto-large-m8 "$proto" --suite pow2 --profile quick --filter minn=2097152 --misalign 8
run proto-large-m0 "$proto" --suite pow2 --profile quick --filter minn=2097152
run proto-batch-m8 "$proto" --suite batch --profile full --misalign 8
run proto-batch-m0 "$proto" --suite batch --profile full
# Bluestein's work buffer: rough sizes, both binaries, both alignments.
run rough-m0 "$base" --suite rough --profile quick
run proto-rough-m0 "$proto" --suite rough --profile quick
run proto-rough-m8 "$proto" --suite rough --profile quick --misalign 8
run rough-m8 "$base" --suite rough --profile quick --misalign 8
echo PIPELINE-PROTO-DONE

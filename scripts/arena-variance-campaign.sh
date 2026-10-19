#!/usr/bin/env bash
# Back-to-back repeat of four-library-comparison runbook steps 3, 4 and 6.
# Host must already be in benchmark mode (bench-env.sh setup --core 2) and
# the arena binary prebuilt with the same RUSTFLAGS. Restore is done by the
# operator afterwards (needs sudo).
# Usage: scripts/arena-variance-campaign.sh K [START]   (BASE=dir to override output)
set -uo pipefail
cd "$(dirname "$0")/.."
K=${1:-5}; START=${2:-1}
BASE=${BASE:-target/arena/variance/$(date -u +%F)-$(hostname)}
mkdir -p "$BASE"
export RUSTFLAGS="-C llvm-args=-align-all-functions=6"
for i in $(seq "$START" "$K"); do
  LABEL=variance-$i
  RUN=$BASE/runs/$LABEL EVIDENCE=$BASE/evidence/$LABEL OUT=$BASE/reports/$LABEL
  if [ -e "$RUN" ]; then echo "== $RUN exists; refusing to overwrite"; exit 2; fi
  mkdir -p "$EVIDENCE"
  echo "== [$i/$K] $(date -u +%T) idle check"
  if ! python3 scripts/capture-idle-evidence.py "$EVIDENCE" --core 2; then
    echo "== [$i/$K] host never became quiet; stopping campaign"; exit 1
  fi
  echo "== [$i/$K] $(date -u +%T) arena run"
  if ! cargo xtask arena run --suite pow2 --profile full \
      --libs fastfft,rustfft,fftw,phastft/interleaved \
      --max-n 1048576 --filter place=ip --core 2 \
      --label "$LABEL" --out "$PWD/$RUN" 2>&1 | tee "$EVIDENCE/run.log"; then
    echo "== [$i/$K] arena run failed; stopping campaign"; exit 1
  fi
  python3 scripts/plot-library-comparison.py "$RUN" --out "$OUT" --evidence-dir "$EVIDENCE" \
    > "$EVIDENCE/plot.log" 2>&1 || echo "== [$i/$K] report generation refused (see $EVIDENCE/plot.log)"
done
echo "== campaign done $(date -u +%T)"
python3 scripts/arena-variance.py "$BASE"/runs/variance-* --json "$BASE/variance.json" | tee "$BASE/variance.md"

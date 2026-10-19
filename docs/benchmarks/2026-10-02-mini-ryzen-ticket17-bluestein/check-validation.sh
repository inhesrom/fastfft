#!/usr/bin/env bash
set -euo pipefail
cargo test -p fastfft --release -j 1 --no-run --message-format=json > target/ticket17/test-artifacts.jsonl 2> target/ticket17/checks/test-artifacts.log
python3 - <<'PYTHON'
import json
from pathlib import Path
executables=[]
for line in Path('target/ticket17/test-artifacts.jsonl').read_text().splitlines():
    row=json.loads(line)
    if row.get('reason')=='compiler-artifact' and row.get('executable') and row['target']['kind'][0] in ('lib','test'):
        executables.append(row['executable'])
assert len(executables)==5, executables
Path('target/ticket17/test-executables.txt').write_text('\n'.join(executables)+'\n')
PYTHON
for tier in scalar sse2 avx2 avx512-ymm avx512; do
  while IFS= read -r executable; do
    FASTFFT_ISA_CAP="$tier" FASTFFT_REQUIRE_ISA="$tier" FASTFFT_TEST_QUICK=1 "$executable" --test-threads=2
  done < target/ticket17/test-executables.txt > "target/ticket17/checks/tier-$tier.log" 2>&1
done
cargo clippy --workspace --all-targets -j 1 -- -D warnings > target/ticket17/checks/clippy.log 2>&1
cargo fmt --all --check > target/ticket17/checks/fmt.log 2>&1
cargo xtask codegen --check > target/ticket17/checks/codegen.log 2>&1
cargo check -p fastfft --no-default-features > target/ticket17/checks/scalar-build.log 2>&1
cargo check -p fastfft --no-default-features --features avx512 > target/ticket17/checks/avx512-build.log 2>&1
git diff --check > target/ticket17/checks/diff.log 2>&1

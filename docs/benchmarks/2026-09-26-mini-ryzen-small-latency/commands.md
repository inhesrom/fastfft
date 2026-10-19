# Commands and evidence map

Run commands from the repository root. Do not compile or run another benchmark
concurrently. CPU 2, three separate processes and the default target CPU were
used throughout. No dependencies were added or installed. The existing FFTW
build was linked into the arena consistently with the preserved baseline.

## Preservation and initial reproduction

The baseline source patch/hashes/status were captured before implementation;
original executables and a full source archive remain in
`target/small-latency/baseline/`. See `baseline-*.sha256` and
`baseline-source.patch` here, plus the original published small-engine checkpoint.
The compiled filtered diagnostic was saved separately; it did not replace the
original executable. The initial `place=op` run selected zero cells and is
retained in `diagnostics/baseline-n16/`; it is not performance evidence.

The corrected reproduction was:

```sh
scripts/bench-env.sh check --core 2
target/small-latency/baseline/arena run --suite pow2 --profile full \
  --filter prec=f32,n=16,place=oop --libs fastfft,rustfft \
  --procs 3 --core 2 --label small-latency-baseline-n16 \
  --out target/small-latency/baseline-n16-corrected
```

## Candidate timings and decisions

The stages ran in order: N16 initial, N32 initial, N32 one packing refinement,
N8 initial. Each stage's correctness check and build preceded timing; rejected
leaf and ISA source and relevant disassembly are archived in
`diagnostics/experiments/`. All `n16-*.csv.gz`, `n32-*.csv.gz`,
`n32-refined-*.csv.gz` and `n8-*.csv.gz` retain the original diagnostic output.
The corresponding preserved local executables, with hashes in
[executables.json](executables.json), are:

| Stage | Executable | Records |
|---|---|---|
| filtered baseline | `target/small-latency/baseline/filtered-diagnostic` | `diagnostics/baseline/filtered-16-{1,2,3}.csv.gz` |
| N16 initial | `target/small-latency/n16-diagnostic` | `diagnostics/n16-{1,2,3}.csv.gz` |
| N32 initial | `target/small-latency/n32-diagnostic` | `diagnostics/n32-{1,2,3}.csv.gz` |
| N32 refined | `target/small-latency/n32-refined-diagnostic` | `diagnostics/n32-refined-{1,2,3}.csv.gz` |
| N8 initial | `target/small-latency/n8-source/executable-0` | `diagnostics/n8-{1,2,3}.csv.gz` |

The replay form for one saved executable is below. Use a **new output path**;
do not overwrite archived measurements. The N filter was 16, 32, 32 and 8
respectively, with both precisions, both directions and all placements.

```sh
for process in 1 2 3; do
  FASTFFT_TIMING_N=16 taskset -c 2 target/small-latency/n16-diagnostic \
    tests::small_candidate_timings --ignored --nocapture > "new-n16-$process.csv" 2>&1
done
```

Final-source test-only symbol inspection used `FASTFFT_TIMING_SYMBOLS=1`,
`FASTFFT_TIMING_N=8,16,32`, and `FASTFFT_TIMING_SURFACE=none` (no timing).
`nm -C` / `objdump -Cd --start-address=... --stop-address=...` then inspected
the preserved ELF entries, not guessed addresses in a different executable.
`diagnostics/final-assembly/index.json` identifies files, instructions and
stack/call references. The full inspection is summarized in [validation.md](validation.md).

Example read-only decision reproduction, using the published compressed CSVs:

```sh
D=docs/benchmarks/2026-09-26-mini-ryzen-small-latency/diagnostics
python3 scripts/analyze-small-latency.py candidate "$D"/n16-{1,2,3}.csv.gz \
  --precision f32 --n 16 --cap avx512 --incumbent generic:sse2:4
python3 scripts/analyze-small-latency.py candidate "$D"/n32-refined-{1,2,3}.csv.gz \
  --precision f32 --n 32 --cap avx2 --incumbent generic:avx2:8
python3 scripts/analyze-small-latency.py candidate "$D"/n32-refined-{1,2,3}.csv.gz \
  --precision f64 --n 32 --cap avx512 --incumbent generic:avx512:8
python3 scripts/analyze-small-latency.py candidate "$D"/n8-{1,2,3}.csv.gz \
  --precision f32 --n 8 --cap avx512 --incumbent generic:avx2:1
```

All forty per-stage/precision/cap decision JSONs retain their explicit incumbent,
selected candidate, every veto reason, per-case statistics, and all available
public/concrete/kernel surfaces. The initial N32 focused pair used
`--suite pow2 --profile full --filter n=32 --libs fastfft,fastfft/avx2,rustfft
--procs 3 --core 2`, with the preserved baseline and
`target/small-latency/n32-arena-source/executable-0`. Its source/hash snapshot
is under `diagnostics/n32-arena-source/`.

## Final source, validation and performance

[validate.sh](diagnostics/validate.sh) records the complete final validation and
single final arena build. After success:

```sh
python3 scripts/snapshot-small-latency.py target/small-latency/final-source \
  target/arena/fastfft-arena target/release/deps/fastfft-efd9d1ef8dc3e29f
scripts/bench-env.sh check --core 2
bash docs/benchmarks/2026-09-26-mini-ryzen-small-latency/diagnostics/run-audit.sh
bash docs/benchmarks/2026-09-26-mini-ryzen-small-latency/diagnostics/run-repeats.sh
```

The checked-in scripts show exact row order, profile, filters, output paths and
labels. They never compile. `run-audit.sh` confirms N8 on the final source,
runs the unchanged complete 64-cell audit, then the matched 180-cell quick pair.
`run-repeats.sh` performs the two matched 28-cell pairs and the final-source N32
recheck. Reusing these scripts verbatim would reuse their output paths; choose
fresh destinations for any future experiment. Existing results must remain.

```sh
python3 scripts/analyze-small-latency.py arena \
  docs/benchmarks/2026-09-26-mini-ryzen-small-latency/results.jsonl.gz
python3 scripts/analyze-small-latency.py compare \
  "$D"/quick-before/results.jsonl.gz "$D"/quick-after/results.jsonl.gz
```

A candidate's focused geomean change is
`exp(mean(log(after_fastfft_time / before_fastfft_time))) - 1`, separately for
best and median over its four arena cases. A broad flag is a >3% slowdown on
either statistic. A repeat confirmation requires the same statistic to exceed
3% in both matched repeat pairs; drift qualifications are retained separately,
not silently removed from that arithmetic.

After all performance runs, source hashes and the arena executable copy were
verified unchanged. [publish.py](diagnostics/publish.py) compressed the raw
results/logs and copied metadata/source/assembly into this checkpoint. It
asserts byte-identical decompression of the final 64-cell results and equality
of the final arena hash with its frozen copy. It does not alter earlier
checkpoints, dispatch choices, test results, drift flags or ticket status.

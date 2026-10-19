# Diagnostic provenance and reproduction

The headline result is the final full-profile run in the parent directory.
This directory preserves intermediate measurements and the larger-size
investigation; none replaces the default Estimate acceptance cells.

Candidate CSV files record best and median nanoseconds per transform. Lines
starting with `candidate,` identify precision, length, engine, ISA, lane count,
direction and placement. Other lines retain the preceding Estimate choices.

- `candidates-1.csv`: initial Small kernels.
- `candidates-2.csv`: fixed-schedule Stockham added.
- `candidates-3.csv` through `candidates-5.csv`: rectangular transpose and direct
  FMA variants; input to `select-initial.py`.
- `candidates-6.csv` through `candidates-8.csv`: single-transform entry shortcut;
  input to `select-final.py`, using `initial-dispatch.rs` as the previous choice.

The selection scripts are archived working scripts. They run from the repository
root, read `target/arena/small-candidates-{number}.csv`, and **write**
`crates/fastfft/src/small_dispatch.rs`. The final script also reads
`target/arena/small-initial-dispatch.rs`. Restore those paths from these files to
reproduce a table, then format it with `cargo fmt`. They aggregate the median of
three process medians per direction/placement, then their geometric mean. A
previous choice within 3% is retained. `analyze.py` is a simpler exploratory
aggregate and was not the final selection rule.

The ignored `small_candidate_timings` release test produces the CSV. Each sample
process was pinned with `taskset -c 2`, after compiling the test binary. The
per-placement data matters: an aggregate can conceal a slow in-place direction.
Candidate runs preceded the final scratch bounds fix; that fix leaves Small
arithmetic unchanged. `before-scratch-audit/` contains the earlier full acceptance
run and broad quick comparison, with the source patch and hashes for that build.

`run-final.sh` and `run-row-check.sh` preserve the commands for final acceptance
and matched diagnostics. They expect a baseline binary named
`target/arena/fastfft-arena-ticket10`, built from commit `40d6503`, and the final
binary at `target/arena/fastfft-arena`. The baseline and final hashes are published
in their respective benchmark directories. The `small-repeat-*` and
`small-row-*` directories contain raw JSONL, environment and metadata for each
run. Drift flags are retained without modification.

`audit.py`, run from the repository root, audits `target/arena/small-final` and
`small-before`; `--regression` compares `small-repeat-before/after-{1,2}` and the
historical broad runs. It writes the parent's audit JSON files. `validate-*.sh`
preserve the initial and later validation commands; the final scratch-safety
checks are described in `../validation.md` and included in its compressed log.

`assembly-summary.csv` counts calls and stack-address references in the final
arena's 364 Small single/batch target-feature entry points. None contains a
call; 152 contain stack-address references. Such references include loop/pointer
bookkeeping and are not a precise spill count. `f32x8v-one.asm.gz` retains all
16 AVX-512 YMM f32 single-transform entry bodies from `objdump -Cd` on the final
hashed executable. Rust's displayed symbol names omit const-generic values,
so addresses distinguish those bodies. Some padded candidates still spill;
performance and zero caller scratch do not imply zero compiler stack traffic.

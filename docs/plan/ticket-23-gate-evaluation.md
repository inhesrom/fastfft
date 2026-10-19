# Ticket 23: Evaluate release gates G1–G9 on Zen 4

## Goal and current state

Evaluate the release gates in `ROADMAP.md` on the Zen 4 Ryzen 7 7840HS.
This ticket measures and reports the current implementation; it does not
require every gate to pass or authorize FFT engine changes.

Handoff prepared on 2026-10-09:

- Branch: `ticket-23-gate-evaluation`.
- Worktree: `/home/ianhersom/repo/fastfft/target/ticket23-worktree`.
- Base: `c997637`, the merge of PR 13 into `origin/master`.
- The branch was created and checked out. No builds, benchmark runs,
  reporting changes, or ticket status changes have started.
- The original worktree remains on `ticket-19-measure-validation`, with
  unrelated benchmark edits and Python cache directories untouched. Do not
  copy, reset, stage, or clean those changes.
- The maintainer selected the aligned gate build for the entire evaluation:
  `RUSTFLAGS="-C llvm-args=-align-all-functions=6"`.
- The maintainer explicitly wants raw logs and generated evidence outside
  source control. Commit only compact results, necessary tooling, and docs.

Work from the ticket 23 worktree. Read `.scratch/fastfft-v1/map.md`,
`.scratch/fastfft-v1/issues/23-gate-evaluation.md`, `ROADMAP.md`, and
`docs/benchmarking.md` before continuing. Set ticket 23 to `Status: claimed`
when implementation resumes. Preserve any changes made after this handoff.

## Protocol and boundaries

Use Rust 1.95.0, the existing `arena` profile, default target CPU, runtime
ISA detection, default Estimate planning, boost on, CPU 2, verification on,
and `--procs 3`. Do not enable native CPU flags, forced frame pointers,
Measure diagnostics, or `--allow-dirty-env`. No sysctl changes are needed.

Include all eight default rows: `fastfft`, `fastfft/avx2`, `rustfft`,
`phastft/split`, `phastft/interleaved`, `tfhe-fft`, `oxifft`, and `fftw`.
FFTW is a reference, not a release gate. Use documented adapter support
limits and the forward-only rule for inverse-normalizing G4 competitors.
Distinguish unsupported cells from crashes, timeouts, and failed accuracy.

Run each suite separately, with the full timing profile, so a failed suite
does not destroy the other evidence. Expected non-control cell counts are:

| Suite | Cells |
|---|---:|
| pow2 | 192 |
| smooth | 328 |
| rough | 136 |
| batch | 32 |
| realworld | 6 |
| datacheck | 16 |
| sweep | 8,190 |
| Total | 8,900 |

The first five suites establish performance gates. Datacheck validates
zero versus random timing within 2%. Sweep provides exhaustive small-length
coverage; its results do not replace the specified G1–G6 suites. Keeping
`--profile full` for all seven follows the ticket's full-run requirement.
The exhaustive sweep makes this a potentially multi-day run. Complete the
gate suites first, then datacheck and sweep. Do not silently shorten the
protocol to obtain faster results.

Builds, tests, analysis, and compression must finish or stop before measured
runs. Never run a compiler alongside benchmarks, even on another core.
Three processes rotate construction order but do not balance all positions
across eight rows; record that existing protocol limitation.

## Execution

Keep evidence in this worktree's ignored `target/ticket23-evidence/`.
Use a new attempt directory for every run; the arena truncates files in an
existing output directory and has no resume option. Retain failed attempts.

1. Prepare any necessary audit tooling and validate it before measuring.
   Record source revision and dirty diff, tool versions, build flags,
   commands, CPU/power state, and FFTW provenance. Ensure the benchmark
   source is fixed throughout all suite runs. Keep documentation-only dirty
   state explicit rather than disguising it as a clean revision.
2. Reuse the existing static FFTW installation through
   `FASTFFT_FFTW_DIR=/home/ianhersom/repo/fastfft/target/fftw/install`.
   Both `libfftw3.a` and `libfftw3f.a` existed at handoff. If unavailable,
   build FFTW with the existing xtask before measurements.
3. Build and check everything, including G9, before the idle check.
   Suggested setup from the ticket worktree:

   ```sh
   export FASTFFT_FFTW_DIR=/home/ianhersom/repo/fastfft/target/fftw/install
   export RUSTFLAGS="-C llvm-args=-align-all-functions=6"
   export CARGO_BUILD_JOBS=1
   cargo build --locked --profile arena -p fastfft-arena --features fftw
   ```

   Copy `target/arena/fastfft-arena` into the evidence directory, record its
   SHA-256, and use that frozen executable directly for all suite runs.
   Do not use `cargo xtask arena run` during measurements: it builds first.
4. Measure G9 using `cargo xtask build-time` with empty `RUSTFLAGS`, the
   normal release profile, and identical job limits for both libraries.
   Fetch workspace dependencies first. Set `TMPDIR` to a dedicated existing
   evidence subdirectory: the xtask recreates its `fastfft-build-time`
   child directory and needs room for two clean target directories. Save
   stdout, stderr, and the two reported durations and ratio. G9 passes at
   ratio ≤ 2.0; the xtask exits successfully even when that threshold fails.
   Pin the command with `taskset -c 2` so both builds inherit the same
   affinity. Do not run it concurrently with arena measurements.
5. Run `scripts/bench-env.sh check --core 2` after builds finish. Require
   `bench-env: OK` and boost enabled. If necessary, use the documented
   environment setup and record/restore any changes. Do not kill unrelated
   processes. Wait for an idle machine rather than bypassing the check.
6. Start each suite sequentially through a detached, supervised process
   (`setsid`/`nohup`), retaining PID, log, command, and final exit status.
   Set the executable, suite, and new output directory explicitly:

   ```sh
   "$arena_exe" run --suite "$suite" --profile full \
     --libs fastfft,fastfft/avx2,rustfft,phastft/split,phastft/interleaved,tfhe-fft,oxifft,fftw \
     --core 2 --procs 3 --max-n 16777216 --timeout 600 \
     --control-every 25 --out "$run_dir"
   ```

   `arena_exe` is the absolute path to the frozen executable; `suite` is one
   table entry; `run_dir` is a fresh absolute path beneath the evidence
   directory. Recheck idle state between suites, after the preceding
   process has exited. Confirm actual CPU affinity, build metadata, and
   three recorded trials per cell, including controls.
7. Reject official passing claims from aborted runs, missing trials,
   environment failures, or clock drift ≥ 3%. Preserve the entire attempt.
   Diagnose the environment before repeating a whole affected suite into
   another directory. Do not splice favorable cells, pick attempts based on
   speedups, or rerun merely because a performance gate fails. If valid
   evidence cannot be obtained, report the affected gates as incomplete.

## Execution progress

Implementation resumed on 2026-10-09 and the evaluation/publication
completed on 2026-10-11. Ticket 23 is resolved. The seven-suite campaign
ran from 2026-10-09 18:33:33 UTC to 2026-10-11 07:46:52 UTC, retaining
all 8,900 ordinary cells, 367 controls and 27,801 raw trials. First-six
suite evidence is admissible; the complete sweep is rejected at 8.2630%
clock drift. No immediate repeat or cell splicing was performed.

The [compact report](../benchmarks/2026-10-11-mini-ryzen-ticket23-gates/README.md),
JSON gate summary and reproducibility manifest record **G3 PASS;
G1/G2/G4/G5/G6/G9 FAIL; G7 INCOMPLETE; G8 OPEN**. Datacheck has 13
observed >2% metric differences and one missing supported pair. Evaluation
completion does not establish release qualification or change thresholds.

Preflight passed aligned arena build/formatting, 5 arena tests, 107 fastfft
release tests (7 ignored), and 46 Python tests. A narrow post-run audit
hardening and regression test pass 29 audit tests. All 152 frozen inputs
matched before post-run changes. G9 retains normal-release, empty-RUSTFLAGS,
CPU-2 one-job build times 44.4 s / 3.4 s and printed ratio 13.10×.
Raw stdout is `$EVIDENCE/preflight/g9.stdout`; command exit zero does not
mean a gate pass. Original and final tooling/source versions and the verified
local-only raw archive/checksums remain in evidence and the manifest.

The following supervisor instructions record the completed invocation.
The ignored `target/ticket23-evidence/ACTIVE` file contains the absolute
path of the current evidence directory. The supervisor accepts
`--describe-inputs` with the executable, source, and evidence arguments to
produce a preflight JSON template with `ready: false`. After all builds,
tests, source snapshots, and this plan are final, save the checked manifest
as `$EVIDENCE/preflight/ready.json` with `ready: true`. The manifest freezes
the executable, Rust/build inputs, scripts, and fixed protocol documents.
Ticket/map status edits are recorded separately; generated FFTW wisdom is
retained under the supervised campaign's evidence directory.

Recorded detached launch, after preflight completion, from this worktree:

```sh
EVIDENCE="$(cat target/ticket23-evidence/ACTIVE)"
export FASTFFT_FFTW_DIR=/home/ianhersom/repo/fastfft/target/fftw/install
export RUSTFLAGS="-C llvm-args=-align-all-functions=6"
export CARGO_BUILD_JOBS=1
nohup setsid python3 -B scripts/run-ticket23-gates.py \
  --evidence-root "$EVIDENCE" \
  --arena-exe "$EVIDENCE/bin/fastfft-arena" \
  --source-repo "$PWD" \
  --preflight "$EVIDENCE/preflight/ready.json" \
  --campaign-dir "$EVIDENCE/supervised" \
  >"$EVIDENCE/supervisor.log" 2>&1 </dev/null &
```

Read `$EVIDENCE/supervised/status.json` for the supervisor PID, campaign
state, and completed suite attempts. Each suite's new attempt directory
retains command, PID/process group, logs, process/affinity snapshots, and
final exit status. Environment checks are appended to
`supervised/environment-checks.jsonl`; failed checks wait without bypassing
them or killing other processes. Failed suites are retained and later
suites continue, with no automatic reruns. Existing campaign directories
are refused. The supervisor clears ISA/test/Measure overrides and records
the effective benchmark environment.

Touch `$EVIDENCE/supervised/STOP` to finish the active suite and stop before
the next one, or to stop an idle wait. SIGTERM sent to the supervisor has
the same graceful behavior. Do not kill the measured child to request a
normal stop. The arena currently generates its built-in report inside
each `run`; no Rust change is made here. Independent audit, publication,
and any additional reporting wait until the whole campaign has finished.
Independent postprocessing and compact publication are now complete.
Focused follow-ups 41–46 and the open maintainer decision in ticket 24
carry the measured failures and explicit gaps; G8 tickets 37–39 stay open.

## Audit and gate evaluation

The current arena report is useful but insufficient as the sole release
decision. Add a small reproducible audit script if needed, using standard
library Python and the saved JSONL/metadata. Keep it scoped to this
evaluation rather than redesigning the arena. Tests must cover missing
cells/trials, failed rows, both metrics, and accuracy coverage.

Known issues to address in the audit:

- `bench/arena/src/report.rs` can report G4 with an absent competitor,
  G5 without smooth results, and G6 without one required suite. Validate
  the expected cells and supported rows before accepting any pass.
- `spawn_merged` in `bench/arena/src/driver.rs` can hide a failed child when
  another child succeeds. Check `trials.jsonl` counts and individual trial
  verification/status, not just merged results or `child_failures`.
- Arena G7 checks only the `dd` method. Audit all applicable verification
  results, strict fast-path/Bluestein bounds, and the relative RustFFT
  bound. Report above-2^20 reference/roundtrip coverage and scenario/batch
  coverage separately. Do not claim complete G7 coverage for unchecked
  methods; mark gaps explicitly instead of interpreting absence as success.
- Arena planning samples are warmed minima of five fresh builds. They do
  not establish universal cold-planning G8 coverage.

Apply the unchanged ROADMAP thresholds to both best and median ratios:

| Gate | Required result |
|---|---|
| G1 | Pow2 geomean ≥ 1.5× RustFFT; every cell ≥ 0.95× |
| G2 | Smooth geomean ≥ 1.3×; every cell ≥ 0.95× |
| G3 | Rough geomean ≥ 0.75×; every cell ≥ 0.5× |
| G4 | Each Rust competitor: geomean ≥ 1.1× and ≥ 0.97× on ≥ 90% of supported cells |
| G5 | Forced AVX2: pow2 geomean ≥ 1.2× and smooth ≥ 1.1× RustFFT |
| G6 | Each realworld scenario ≥ 1.3×; batch geomean ≥ 1.5× |
| G7 | Every applicable verified cell satisfies strict accuracy and ≤ 1.5× RustFFT error + 1ε |
| G8 | Remains open pending ticket 39's every-length fresh-planning evidence |
| G9 | Clean normal-release fastfft build ≤ 2× RustFFT |

Report p1 small-N results separately from best/median release ratios.
Include worst cells, supported/verified counts, rejected attempts, drift,
and any exclusions. Do not reuse ticket 19's exceptions or change thresholds.
The known clock-probe calibration caveat remains ticket 32; record it.

## Verification, publication, and completion

- For tooling changes, run formatting checks, focused audit tests, arena
  tests, and Clippy for the changed Rust tooling. Run the existing codegen
  check if Rust code changes. Complete all checks before official timing.
- Generate arena reports after measurements. Independently verify coverage,
  ratio calculations, accuracy classifications, and G9's printed ratio.
- Publish a compact report, machine-readable gate summary, and manifest
  under `docs/benchmarks/<date>-mini-ryzen-ticket23-gates/`. Include exact
  commands, revision, flags, executable hash, raw evidence location/checksum,
  limitations, and a clear G1–G9 table. Retain the audit script if added.
- Keep raw JSONL, binaries, logs, plots, source snapshots, and archives under
  ignored `target/`. Do not use `arena publish` blindly: it copies compressed
  raw results and plots into Git. A local evidence archive is not a remotely
  downloadable artifact; describe its availability honestly.
- Add the gate table and report link to ticket 23's `## Answer`; update the
  wayfinder map with findings and concrete follow-up work. Resolve ticket 23
  once the requested evaluation and publication are complete, even if
  performance gates fail. G8's implementation/coverage ticket stays open.
- Review the final diff for unrelated edits and generated files. Do not
  commit, push, or open a PR unless the maintainer requests it for this
  ticket. No FFT public API, engine, tuning-table, or gate-threshold changes
  belong in this evaluation.

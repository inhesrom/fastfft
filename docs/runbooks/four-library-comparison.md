# Runbook: publishing the four-library comparison

This runbook produces the public comparison between fastfft and other FFT
libraries: the HTML report with bar charts, its Markdown summary, and the
README hero figure. The current published result is
[`docs/benchmarks/2026-10-16-mini-ryzen-four-library-comparison/`](../benchmarks/2026-10-16-mini-ryzen-four-library-comparison/index.html).

> **Status:** followed end to end once, for the 2026-10-16 report. Steps
> 0–8 worked as written. Step 3 first failed because the self-hosted CI
> runner on mini-ryzen was compiling tests; pause CI before step 3.

The arena protocol itself is described in
[`docs/benchmarking.md`](../benchmarking.md).

## Summary

1. **Fairness check:** make sure competitors are current and the claims will
   hold up (see [Before a published run](#before-a-published-run)).
2. **Run:** steps 0–5. Set up the session, prepare the host, build, capture
   quiet-host evidence, run the arena (~6 min), restore the host.
3. **Generate:** step 6 builds the report and validates its own output.
4. **Review claims (required):** step 7. Every sentence must match the evidence.
5. **Publish:** step 8 updates the README hero, step 9 commits.

## What the report shows, and what it doesn't

**It shows:** median execution latency of fastfft, RustFFT, FFTW and PhastFT
(interleaved API). The setup is one pinned CPU core, in-place complex FFTs,
one transform per call, power-of-two N from 2 to 1,048,576, f32 and f64,
forward and inverse. Headline numbers are speedups relative to RustFFT
(RustFFT median ÷ library median; above 1× is faster). Each one is a
geometric mean with equal weight for every length that all four libraries
completed. Every timed result first passes verification against a
double-double reference.

**It does not show:**
- non-power-of-two sizes; batched, out-of-place or real-input transforms;
- planning cost; FFTW runs with `FFTW_MEASURE` and saved wisdom, with
  planning excluded for every library;
- PhastFT's split-array API. The interleaved timings include PhastFT's
  allocation, conversion and 1/N inverse normalization;
- other CPUs, or variation between runs (one run on one machine);
- `tfhe-fft` and `oxifft`, which the arena supports but this report leaves out.

Never let any published text (README, summary, commit message, release
notes) claim more than this. "Faster than X" must always come with these
conditions attached.

## Before a published run

Readers will look for reasons the comparison is unfair. Rule them out
before spending a run.

1. **Competitor versions are current.** Compare the pinned versions with the
   latest releases:

   ```bash
   grep -A1 -E '^name = "(rustfft|phastft)"$' Cargo.lock   # pinned
   cargo search rustfft --limit 1                            # latest on crates.io
   cargo search phastft --limit 1
   ```

   (Inside this workspace, `cargo info` reports the locked version, not
   the latest one.)

   If a newer release exists, update `bench/arena/Cargo.toml` and
   `Cargo.lock` and confirm the arena still builds and verifies (a quick
   `--profile quick` run). Commit that as its own change. A PhastFT update
   can change its API or normalization, so recheck its adapter. FFTW is
   pinned in `xtask` (`FFTW_VERSION`); check <https://www.fftw.org/> for a
   newer release.
2. **The benchmarked source is committed.** The run records the git commit
   and the dirty flag. A published result must point to a revision that
   anyone can check out.
3. **Nothing in the fastfft code under test is tuned for this run alone,**
   such as special-casing these exact sizes. The comparison is meant to show
   the library as users get it.
4. **Decide whether the README headline changes.** If not, the run is
   internal: do steps 0–7 and skip step 8.

## Prerequisites (once per host)

- Linux x86_64, run on the host itself (not in a container). Rust toolchain,
  Python ≥ 3.11, ImageMagick (`magick` or `convert`, plus `identify`).
- The current plot script only accepts **CPU 2 with SMT sibling CPU 10**
  (mini-ryzen). See [Appendix C](#appendix-c-other-hosts).
- FFTW reference build: `cargo xtask fftw-build` (~5 min). FFTW wisdom is
  saved per host in `bench/arena/wisdom/` and reused.
- Sudo for `scripts/bench-env.sh setup` and `restore`.
- AC power and no other heavy work: stop builds, tests, other agents' cargo
  jobs, and video playback.

## Procedure

Run from the repository root. Each step starts by loading the session file
from step 0, so every step also works in a fresh shell, as with separate
agent tool calls or background tasks.

### 0. Create the session file

```bash
LABEL=four-library-comparison
ID=$(date -u +%F)-$(hostname)-$LABEL
if [ -e "docs/benchmarks/$ID" ]; then
  echo "docs/benchmarks/$ID exists; choose another LABEL"
else
  mkdir -p target/arena
  printf 'LABEL=%s\nRUN=%s\nEVIDENCE=%s\nOUT=%s\n' "$LABEL" \
    "target/arena/runs/$ID" "target/arena/evidence/$ID" "docs/benchmarks/$ID" \
    > target/arena/current-run.env
  cat target/arena/current-run.env
fi
```

For a second run on the same day, use a different label, such as
`four-library-comparison-2`.

### 1. Prepare the host

```bash
scripts/bench-env.sh setup --core 2
scripts/bench-env.sh check --core 2      # must print "bench-env: OK"
cargo xtask fftw-build                   # skip if already built
```

From here until step 5, **the host stays in benchmark mode. Always run
step 5, even if a step fails.**

### 2. Build outside the timing window

```bash
RUSTFLAGS="-C llvm-args=-align-all-functions=6" \
  cargo build --profile arena -p fastfft-arena --features fftw
```

Step 4 uses the same `RUSTFLAGS`, so `cargo xtask arena` finds the binary
already built and doesn't compile during the idle check or timing.

### 3. Capture quiet-host evidence

```bash
source target/arena/current-run.env
python3 scripts/capture-idle-evidence.py "$EVIDENCE" --core 2
```

This writes `host-processes.txt`, then takes 10-second samples until three
in a row are quiet: overall CPU, CPU 2 and CPU 10 each ≤2%, and no single
process above 20%. It then runs `bench-env.sh check` and writes
`bench-env-check.txt` and `idle-check.json`. It exits 1 if the host never
becomes quiet (by default after 60 samples, about 10 minutes) or if the
check fails. The console names any busy processes; stop them and rerun this
step.

(The plot script accepts samples up to 5%. This script deliberately
requires ≤2%, so evidence that passes here always passes there.)

### 4. Run the benchmark immediately

Start as soon as step 3 exits 0. It takes about 6 minutes:

```bash
source target/arena/current-run.env && set -o pipefail
RUSTFLAGS="-C llvm-args=-align-all-functions=6" \
  cargo xtask arena run --suite pow2 --profile full \
  --libs fastfft,rustfft,fftw,phastft/interleaved \
  --max-n 1048576 --filter place=ip --core 2 \
  --label "$LABEL" --out "$PWD/$RUN" 2>&1 | tee "$EVIDENCE/run.log"
```

`--out` is required. Without it, the arena names the directory
`<UTC timestamp>-<host>-<label>` and later steps won't find it.

Run nothing else on the host meanwhile. Agents should start this as a
background task and wait for its completion notification rather than
polling. On success the last summary line reads `max control drift … %, 0
child failures`.

### 5. Restore the host (always)

```bash
scripts/bench-env.sh restore
```

Run this whether step 4 succeeded, failed or was interrupted. It needs sudo,
so it's kept out of the background command.

### 6. Generate the report

```bash
source target/arena/current-run.env
python3 scripts/plot-library-comparison.py "$RUN" --out "$OUT" --evidence-dir "$EVIDENCE"
```

On success the script prints `Generated five SVG/PNG charts, summary.md and
index.html in …`, after its own checks pass. If it refuses, see
[Troubleshooting](#troubleshooting). **Do not loosen the script's checks to
get a report out.** Fix the run instead.

Outputs in `$OUT`:

| File | Contents |
|---|---|
| `index.html` | Interactive page: overview, per-group picker, latency tables, method |
| `summary.md` | The same content as Markdown (linked from the README) |
| `overview.{svg,png}` | Four-panel geometric-mean speedup bars vs RustFFT |
| `{f32,f64}-{forward,inverse}.{svg,png}` | Per-length speedup bars at 8 selected N |
| `chart-data.json` | Every median, speedup and geomean behind the charts |
| `validation.json` | Self-checks: arithmetic, bar geometry, PNG sizes, links |
| `env.json`, `meta.json`, `report.md`, `plots/`, `results.jsonl.gz` | Copied arena outputs |
| `idle-check.json`, `bench-env-check.txt`, `host-processes.txt`, `run.log` | Quiet-host evidence |

To view the report, open `$OUT/index.html`, or run
`python3 -m http.server -d "$OUT"`. Images load relative to the page.

### 7. Review the claims (required)

The report is a public claim, so read `$OUT/summary.md` in full, then check
`index.html` in a browser. Every item below must be true. If one is false,
fix the plot script (preferred) or the generated files, and regenerate.

**Fixed wording in the plot script.** These sentences are hard-coded and may
not hold for a new run:

- [ ] *"The reporting script and evidence were added locally; benchmark
  source and Cargo.lock were unchanged."* This appears next to the captured
  dirty flag. If `env.json` shows `"dirty": true`, find out why. Real source
  changes mean the run doesn't match its recorded commit: commit them and
  rerun.
- [ ] *"Builds, tests and chart generation were paused during timing."*
- [ ] The benchmark command block (fixed `RUSTFLAGS` and arguments) matches
  what you ran.
- [ ] The PhastFT API, allocation and normalization notes still describe the
  PhastFT version in `env.json`.

**Numbers and wording:**

- [ ] The headline sentence on the HTML page ("geometric-mean median speedup
  is X–Y× relative to RustFFT") matches the `fastfft` geomeans in
  `chart-data.json`.
- [ ] "Availability and limits" lists every unavailable measurement. If any
  exist, the overview geomeans cover fewer than 20 lengths: say so wherever
  those numbers are quoted.
- [ ] Look at the per-length charts, not just the overview, and note any
  lengths where another library beats fastfft (FFTW often wins at some N).
  Published text must not imply fastfft wins everywhere.
- [ ] Nothing claims more than
  [What the report shows](#what-the-report-shows-and-what-it-doesnt).

If an older published report exists, also check the new result against it
([Appendix B](#appendix-b-checking-a-new-result-against-the-previous-one)).
A large unexplained change, in either direction, needs an explanation
before you publish.

### 8. Update the README hero

Skip this step only if the run isn't meant to replace the headline.

```bash
source target/arena/current-run.env
python3 scripts/plot-library-comparison.py "$OUT" --out docs/assets --readme-hero
```

This rewrites `docs/assets/readme-benchmark.{svg,png}` from the archived
results, checks the bar geometry, and runs no benchmarks.

Then edit the top of `README.md` by hand, taking every number from
`$OUT/chart-data.json` and `$OUT/env.json`:

- [ ] the bold sentence: "**X–Y× RustFFT's execution speed** … on <CPU>";
- [ ] the image alt text, which repeats the speedup range and length count;
- [ ] the italic caption: date, CPU, N range;
- [ ] the paragraph claiming that all 320 measurements passed verification
  and the run passed its quiet-machine checks. Keep it only if both are
  still true;
- [ ] the PhastFT paragraph, if its API or measurement changed;
- [ ] the "[Full results and comparison details]" link → `$OUT/summary.md`.

View the README rendered (for example on GitHub, or with a Markdown
previewer) to confirm the figure and links resolve.

### 9. Commit

Commit `$OUT/` and, if you did step 8, `docs/assets/readme-benchmark.*` and
`README.md`. The commit message should say what was published and name the
benchmarked source revision. Don't commit `target/`.

## Appendix A: what the plot script enforces

`load_run` and `validate_evidence` in `scripts/plot-library-comparison.py`
reject a run unless all of these hold:

- arena `--profile full`, suite `pow2`, in-place, batch 1, no misalignment,
  verification on, zero-filled timing data, one process per cell;
- libraries exactly `fastfft,rustfft,fftw,phastft/interleaved`, FFTW linked;
- N = 2¹ … 2²⁰ × f32/f64 × forward/inverse = 80 cells, plus 5 controls;
- every cell pinned to CPU 2;
- `meta.json`: `official=true`, not aborted, 0 child failures, no drift
  flag, max drift ≤3%;
- `idle-check.json`: `passed=true`, PID 1 is `systemd`, last 3 samples each
  ≥10 s, quiet, no competing processes, and `cpu`/`cpu2`/`cpu10` ≤5%;
- `bench-env-check.txt` contains `bench-env: OK`.

## Appendix B: checking a new result against the previous one

This is a sanity check before publishing, not trend tracking. Compare only
runs from the same host. First diff the two `env.json` files: `rustc`,
`rustflags`, `target_cpu_native`, `libraries`, `fftw.version`,
governor/EPP/boost and SMT. Any difference is an explanation in itself, so
note it.

**Speedups vs RustFFT** (the published bar values):

```bash
source target/arena/current-run.env
python3 - docs/benchmarks/<previous-dir> "$OUT" <<'EOF'
import json, sys
a, b = (json.load(open(f"{d}/chart-data.json")) for d in sys.argv[1:3])
print(f"{'group':<14}{'library':<22}{'old':>8}{'new':>8}{'change':>9}")
for pa, pb in zip(a["panels"], b["panels"]):
    for lib in a["libraries"]:
        x, y = pa["geomean_speedups"][lib], pb["geomean_speedups"][lib]
        if x and y:
            print(f"{pa['precision']+' '+pa['direction']:<14}{lib:<22}{x:>7.3f}×{y:>7.3f}×{100*(y/x-1):>+8.1f}%")
EOF
```

**Absolute latency per library and cell:** `cargo xtask arena compare A B`
reports ratio = time(A) ÷ time(B) (>1 means B is faster) and lists cells
that changed by more than 3%. It reads uncompressed `results.jsonl`:

```bash
source target/arena/current-run.env
for d in docs/benchmarks/<previous-dir> "$OUT"; do
  t=target/arena/compare/$(basename "$d"); mkdir -p "$t"
  gunzip -c "$d/results.jsonl.gz" > "$t/results.jsonl"
done
cargo xtask arena compare target/arena/compare/<previous-dir> target/arena/compare/$(basename "$OUT")
```

If the `rustfft` and `fftw` rows moved noticeably even though their versions
didn't change, the host or toolchain differs between the sessions. Find out
why before publishing.

**Noise:** [five back-to-back runs](../benchmarks/2026-10-17-mini-ryzen-run-to-run-variance/README.md)
on mini-ryzen (2026-10-17) measured the spread between identical runs:

- **Headline speedups:** fastfft geomeans have 1.2–3.1% CV (sd 0.016–0.040).
  A change under about ±4% in one panel is consistent with noise.
- **Per-cell fastfft latency:** 0.5% median CV, 1.5% p90. Changes under about
  2% are noise; above about 9% are very likely real.
- **RustFFT** sometimes lands in a slow mode for a whole process; best-of-3
  doesn't always filter it out, and single cells move by up to 90%. When it
  does, every library's speedup moves together. Confirm a speedup change
  with fastfft's absolute latency (its geomean latency CV is 0.16–0.35%).
- **The 3% threshold** of `arena compare` flags 5% of fastfft cells and
  16–29% of comparator cells between identical runs.

A one-length jump with no change at neighbouring lengths often comes from
code placement. Check fastfft's `describe` field in `results.jsonl.gz` to see
whether its plan changed. To measure the spread again, run
`scripts/arena-variance-campaign.sh K` after steps 0–2, then
`scripts/arena-variance.py`.

## Appendix C: other hosts

The plot script hard-codes CPU 2 and the sibling key `cpu10`, and its
wording says "CPU 2 / CPU 10". To publish from another host (results from
several CPU vendors make a stronger claim), first:

1. make the core and sibling parameters of the plot script, read from
   `env.json` (`pinned_cpu`, `pinned_cpu_sibling`), replacing the literals
   in `load_run`, `validate_evidence`, `report` and `html_report`;
2. pass the same `--core` to `bench-env.sh`, `capture-idle-evidence.py` and
   the arena.

`capture-idle-evidence.py` already reads the siblings from sysfs. Publish
each host as its own report; never mix hosts within one. macOS can't
produce the idle evidence (it has no `/proc`). For local Mac runs, see
`docs/benchmarking.md` § Local macOS comparisons.

## Dry run without benchmarking

To check the tooling on a new machine, regenerate the archived report into
a scratch directory. The output should match the archive:

```bash
D=docs/benchmarks/2026-10-02-mini-ryzen-four-library-comparison
python3 scripts/plot-library-comparison.py $D --out /tmp/flc-regen
diff <(python3 -m json.tool $D/chart-data.json) <(python3 -m json.tool /tmp/flc-regen/chart-data.json)
```

## Troubleshooting

| Error | Cause / fix |
|---|---|
| `Run is unofficial, incomplete, failed or drift flagged` | `bench-env.sh check` failed at arena start, a child failed, or drift exceeded 3%. Read `run.log` and `meta.json`, then redo steps 1, 3–6. |
| `FFTW must be linked` | Run `cargo xtask fftw-build`, then redo step 2. |
| `Expected 80 cells and 5 controls` | Wrong `--suite`, `--max-n` or `--filter`, or the run was interrupted. |
| `Unexpected measurement protocol` | Wrong core, `--procs`, profile or filter. |
| `Missing or duplicate library results` | `--libs` differs from the four required libraries. |
| `Passing host-visible idle evidence is required` | `idle-check.json` failed, or it was captured inside a container. |
| `Required quiet 30-second window was not established` | A sample wasn't quiet. Stop the busy processes and redo step 3. |
| Step 3 never quiet, busy `rustc` / test binaries under `/var/lib/fastfft-runner` | The self-hosted GitHub Actions runner is running a CI job. Wait for it to finish or stop the runner service, then redo step 3. |
| `ImageMagick … required`, or PNGs without text | Install ImageMagick; on hosts without configured fonts, pass `--font <ttf>`. |

# Benchmarking fastfft

All performance claims about fastfft come from the **arena**
(`bench/arena`, binary `fastfft-arena`), a harness that runs fastfft and the
other Rust FFT libraries (plus a self-built FFTW as a reference) under one
protocol. This document describes the protocol, the suites, the outputs and
how to run it. The design rationale and the mistakes it avoids are in
[`research/rust-fft-landscape.md`](research/rust-fft-landscape.md) §3.

Hosted CI never produces performance numbers: hosted runners are noisy, their
CPUs vary between runs, and Valgrind (callgrind, iai-callgrind) cannot execute
AVX-512 code. Official numbers come from a pinned core on a quiet machine.

## Quick start

```sh
scripts/bench-env.sh setup            # governor/EPP to performance (needs sudo)
scripts/bench-env.sh check            # must print "bench-env: OK" for an official run
cargo xtask fftw-build                # once: FFTW 3.3.11 reference build (~5 min)
cargo xtask arena run --suite pow2 --profile quick
cargo xtask arena run --suite pow2,smooth,rough,batch,realworld --profile full --label baseline
cargo xtask arena report  target/arena/runs/<run>
cargo xtask arena compare target/arena/runs/<a> target/arena/runs/<b>
cargo xtask arena publish target/arena/runs/<run> --label zen4-baseline
scripts/bench-env.sh restore
```

`cargo xtask arena` builds `fastfft-arena` with `--profile arena` (release +
`lto = "fat"`, `codegen-units = 1`, `debug = "line-tables-only"`) for the
**default target CPU**, links FFTW if it has been built, and forwards the
arguments. A run with `RUSTFLAGS="-C target-cpu=native"` is recorded in
`env.json` (`target_cpu_native: true`) and must never be mixed with default
builds.

### Local macOS comparisons

The arena also builds on macOS. On Apple Silicon, `cargo xtask fftw-build`
enables NEON instead of x86 SIMD flags. The default fastfft build selects
its NEON tier on AArch64; `FASTFFT_ISA_CAP=scalar` selects the fallback.
RustFFT can also use NEON. Child processes request
user-initiated QoS, but macOS chooses their CPUs: `env.json` and cell results
record no pinned core. Linux keeps its existing CPU affinity, environment
checks and FFTW SIMD configuration.

Use `--allow-dirty-env` for a local macOS run; it is explicitly unofficial
because the Linux affinity and performance-policy checks are unavailable.
Retain clock-proxy drift and scheduler limits when interpreting these local
measurements. See the [NEON evidence](benchmarks/2026-10-10-mac-neon/README.md)
for exact captures and the native x86 validation handoff.

Small-N gate runs (ticket 11 onward) build the arena with
`RUSTFLAGS="-C llvm-args=-align-all-functions=6"`, so every function in both
libraries starts on a 64-byte line. At N ≤ 8 a call costs 6–8 cycles, and
without the flag either library can gain or lose a whole cycle whenever
unrelated code moves a function across a fetch line (about ±15% in an N=2
ratio). `env.json` records the flag.

For quick before/after checks while developing, the criterion benches in
`crates/fastfft/benches/` are faster to iterate with
(`cargo bench -p fastfft -- --save-baseline before`, then compare with
`critcmp`). They are not used for any published claim.

## Libraries and how each is driven

Each library is driven through its documented fastest API, with planning
outside the timed region and all buffers preallocated.

| Row | How it is driven |
|---|---|
| `fastfft` | `FftPlanner` (default `Estimate` planner, detected ISA); `process_with_scratch`, `process_outofplace_with_scratch`, `process_immutable_with_scratch` with preallocated scratch. Headline row |
| `fastfft/avx2` (default), `fastfft/avx512`, `fastfft/avx512-ymm`, `fastfft/sse2`, `fastfft/scalar` (on request) | Same, with `PlannerOptions::isa_cap` forcing the tier |
| `fastfft/measure` (on request) | `PlanMode::Measure { time_limit: 1 s }` |
| `rustfft` 6.4.x | `FftPlanner` (automatic SIMD: AVX+FMA / SSE4.1); the three `*_with_scratch` methods with preallocated scratch |
| `phastft/split` 0.4.x | `PlannerDit{32,64}` reused; separate re/im arrays (its fast path); in-place only; `parallel` feature off. Its inverse normalizes by 1/N (flagged; the check rescales) |
| `phastft/interleaved` | Its `complex-nums` interleaved API (which deinterleaves into temporary `Vec`s on every call) |
| `tfhe-fft` 0.10.x | `ordered::Plan` with `Method::Measure(50 ms)`; f64, powers of two ≤ 1024 (its ordered plans panic above 2^10), in place |
| `oxifft` 0.4.x | `Plan::dft_1d(n, dir, Flags::MEASURE)`; `execute_inplace` / `execute`; default features minus `threading`. Its opt-in `avx512` feature is not enabled: its changelog says those paths have never been executed |
| `fftw` 3.3.11 (feature `fftw`) | Built by `cargo xtask fftw-build`: sha256-pinned tarball, static, double + single (`--enable-float`), `--enable-sse2 --enable-avx --enable-avx2 --enable-avx512 --enable-fma`, `CFLAGS=-O3`. `FFTW_MEASURE` planning with wisdom saved per host in `bench/arena/wisdom/`; `fftw_plan_many_dft` for batch cells; `FFTW_PRESERVE_INPUT` for immutable cells. FFTW is GPL: it lives only inside the unpublished arena |

oxifft is 0.4.2 rather than the 0.3.x named in the original plan: 0.4.2
fixed wrong results on pre-AVX2 x86 CPUs, and the arena always compares
against each library's current release.

## Retained Stockham controls and diagnostics

Ticket 31's optimization was rejected and reverted. These tools retain useful
controls; they do not satisfy its acceptance criteria or establish a speedup.
The [evidence summary](benchmarks/2026-10-12-mini-ryzen-ticket31-stockham-parity/README.md)
links the immutable investigation, rejected candidate and raw archive receipt.

Ordinary arena builds accept explicit prototype rows without a diagnostic
feature. All prototype rows require **x86_64 with AVX-512**, including the
`avx2` recipe, and support forward in-place transforms only. The lab uses
AVX-512-capable wrappers even for its AVX2 codelet route.

| Row | Timed scratch view |
|---|---|
| `lab/dit-<ymm|zmm|avx2>-radices-<R>x<R>...` | Private `s1` |
| Same row with `-shared` | Shared caller scratch base |
| Same row with `-shared-offset1024` | Caller scratch base + exactly 1024 bytes |

Radices are the ordered Phase-A plan, each in {2, 4, 8, 16}; their product must
be N/L. `ymm` and `avx2` use L=8 for f32 / L=4 for f64; `zmm` uses L=16 / L=8.
Phase B requires full blocks (N divisible by L²). Invalid geometry, unsupported
codelets and overflow are rejected; no alternate plan or shape is substituted.
For example, f32 N4096 can use `lab/dit-ymm-radices-8x8x8`, with either suffix.
Both private allocations remain retained in every row, including shared rows;
`execution_storage` records the timed view and the retained owners outside timing.
The offset is a fixed control, not an adaptive scratch-selection policy.

Parent workspace sizing includes shifted-only row populations. Children reserve
from advertised requirements and the fixed suffix without constructing temporary
plans before retained planning. `run-cell`'s optional `caller_scratch` counts
**complex elements**, not bytes; shared prototypes need N plus the offset in
complex elements. Older specifications size this workspace before retained
planning, and an insufficient advertised amount is grown there. Correctness
checks and address collection remain outside timing.

Build developer commands separately:

```sh
CARGO_BUILD_JOBS=1 cargo build -p fastfft-arena --features stockham-diagnostics
./target/debug/fastfft-arena stockham-matrix
./target/debug/fastfft-arena stockham-passes --core 2 --prec f32 --n 4096 --process 0 --profile quick
./target/debug/fastfft-arena stockham-placement --core 2 --prec f32 --n 4096 --process 0 --profile quick
./target/debug/fastfft-arena stockham-crossover --core 2 --prec f32 --n 4096 --process 0 --profile quick
```

`stockham-matrix` is an x86_64 inventory without timing. The three measurement
commands require **Linux x86_64**, CPU affinity and `/proc/self/maps`; they fail
with a platform error before touching those facilities elsewhere. Ordinary
arena builds remain available on ARM and macOS. Placement/crossover additionally
require an AVX-512 host and an eligible exact prototype counterpart. `--process`
0 through 7 chooses a balanced construction/execution/traversal order;
`--full-rows` includes ordinary competitors. Pass diagnostics need an exact
Stockham plan; scalar plans are supported. Unsupported engines and opaque
wrappers (including small public batch wrappers) return `UnsupportedPlan`, even
when inventory reports an underlying Stockham kernel; no plan is substituted.
Each command checks correctness before timing and emits diagnostic JSON with
retained geometry, samples, clock probes and executable mappings.

The library's separate `tuning` feature exposes borrowed `StockhamDiagnostic`
routes for Public, Engine, exact Phase-A passes, prefixes and Phase B. All use
the restored production scratch base and one retained concrete FFT. If a wrapper
opts into the downcast hook, its inner FFT supplies both scratch requirements
and Public execution. Scalar diagnostics work on ARM; NEON diagnostics explicitly
return `UnavailableShape`. This does not change production NEON support.

Keep observations separate from ordinary acceptance runs. Virtual addresses do
not prove physical cache coloring; isolated pass times are not additive. No
unavoidable API exception was established, and equal assembly does not settle
caller, stack or allocation-layout effects. The ticket 32 clock-calibration caveat
and the historical profiling-header warning still apply. Diagnostic feature
builds and small routing smoke tests cannot establish production performance.

### Process ownership supervision

[`benchmark_process_monitor.py`](../scripts/benchmark_process_monitor.py) is a
standalone **Linux** `/proc` observer. Before scanning, callers register frozen
executable basenames with `TOOLS.add(name)`. Prefer ASCII names of at most 15
bytes, or also register their truncated Linux `comm` names so unavailable command
lines can still be matched conservatively. Launch the supervised command using
`subprocess.Popen(..., start_new_session=True)` and pass its live PID to
`scan(leader)`: an owned observation must have both process group and session
matching that PID, with stable PID/start-time identity across reads. After the
leader exits, pass `None` to detect surviving children. The return value is
`(external_or_indeterminate, all_observed)`; callers decide when to abort and
remain responsible for timeouts, signals and reaping. Indeterminate identities
are conservative failures, not evidence of ownership. Seven race tests cover
newborn and surviving children, an external matching executable, wrong sessions,
missing command lines, reused identities and vanished identities. The registry
and compiler/Cargo-test matching do not detect every possible source of host load.

## Measurement protocol (per cell)

A *cell* is one precision × direction × placement × N × batch count ×
alignment (× scenario).

1. The driver (`fastfft-arena run`) starts **one child process per cell**
   (`fastfft-arena run-cell --spec <json>`), pinned with `sched_setaffinity`
   to one core (default CPU 2). The core's SMT siblings are recorded and
   `bench-env.sh check` requires them idle. Each child has a 600 s timeout.
2. **Planning:** every library is planned; planning time is recorded (the
   minimum of five fresh plans for the cheap planners, fastfft `Estimate` and
   rustfft). The fastfft and RustFFT runners sharing a cell's buffers also
   share aligned caller scratch, grown during planning to the largest reported
   requirement. This prevents per-row workspace placement from depending on
   temporary planner allocations. The parent driver sizes this workspace
   using Estimate/RustFFT, and the fresh child reserves it before measured
   planning begins; an actual plan can grow it if its selected engine needs
   more. Each saved cell specification includes `caller_scratch` in complex
   elements. Legacy direct `run-cell` specifications without that field size
   scratch lazily. Realworld scenarios likewise share caller
   buffers between libraries and retain the forward runners created during
   planning; overlap-save additionally constructs each inverse runner.
   The retained runners are constructed once before verification/timing;
   the four additional cheap-planner samples run after all execution timings,
   while the retained runners remain alive. This prevents throwaway plans
   from changing another row's initial allocation context. The statistic
   remains the minimum of five builds, but those later samples use a warmed
   context and are not cold-planning or G8 evidence. Secondary sample errors
   are reported without discarding completed execution statistics.
3. **Correctness:** every library transforms seeded random input and is
   compared with the testkit reference: the double-double mixed-radix FFT for
   N ≤ 2^20, and rustfft in f64 plus a forward-then-inverse roundtrip above
   that. Batch cells check the first, second and last transform. Immutable
   cells also check that the input is untouched. Libraries that fail
   (error > 200·(log2 N + 1) ε, or NaN) are reported and excluded from
   timing.
4. **Timing data:** zero-filled buffers, as in benchFFT. The real-world
   scenarios use a seeded I/Q stream (Gaussian noise plus tones) in pipelines
   where values stay bounded.
5. **Warm-up:** each library runs for at least the profile's warm-up time
   (200 ms in `full`), which covers boost ramp-up and Intel's AVX-512 license
   warm-up. The warm-up also calibrates *k*, the number of calls per timed
   batch, so that one batch lasts at least 50 µs.
6. **Rounds:** 7 rounds; the library order rotates each round. In each turn a
   library runs batches of *k* calls for at least 100 ms and the per-call time
   of every batch is recorded. Each runner type has its own copy of the timing
   loop (`Runner::turn` and `Runner::calibrate` are provided trait methods), so
   no two libraries share an indirect call site. A shared site lets Zen 4's
   branch predictor favour the first library listed, by about 0.6 ns per call
   ([evidence](benchmarks/2026-09-27-mini-ryzen-small-fair/diagnostics/order-bias.md)).
7. **Statistics per library:** *best* (minimum batch mean: the headline
   number), *p1* (1st-percentile batch mean, which a single outlier batch
   cannot set; the small-N gate uses it in place of best), *median*, 10th and
   90th percentiles. Times are per transform (per-call time ÷ batch count).
   With `--procs K` each cell runs in K child processes, and each library keeps
   the process with its lowest p1. Library construction order rotates across
   processes to vary allocator context fairly. Choose K as a multiple of the
   number of libraries for equal exposure to every position (for example,
   four processes for two rows). `env.json` records `process_order: rotating`;
   older runs used a fixed construction order. Every child result is retained
   in `trials.jsonl`, including its actual library order and verification.
8. **Drift control:** a dependent-register addition probe measures relative
   throughput before and after each cell. Its historical `clock_ghz` field
   records billions of dependent adds per second on x86-64/AArch64, not an
   independently calibrated frequency. Before the first cell, every 25 cells,
   and at the end,
   the driver re-runs a control cell (f32 forward in-place N = 4096 with
   fastfft and rustfft when available). A probe change of more than 3%
   against the first control
   flags the run; more than 10% aborts it.

| Profile | Warm-up | Rounds | Turn | Cells |
|---|---|---|---|---|
| `full` | 200 ms | 7 | ≥ 100 ms | all directions and placements |
| `quick` | 50 ms | 3 | ≥ 25 ms | forward in-place only |
| `sweep` | 20 ms | 3 | ≥ 10 ms | used by the `sweep` suite |

## Suites

| Suite | Cells |
|---|---|
| `pow2` | N = 2^1 … 2^24; f32, f64; forward, inverse; in-place, out-of-place |
| `smooth` | benchFFT set {6, 9, 12, 15, 18, 24, 36, 80, 108, 210, 504, 1000, 1960, 4725, 10368, 27000, 75600, 165375} and an SDR/audio set {48, 96, 120, 160, 240, 320, 384, 480, 640, 720, 768, 960, 1200, 1536, 1920, 2400, 3072, 4800, 6144, 12288, 48000, 96000, 1000000}; same 8 variants |
| `rough` | primes {17, 31, 61, 127, 257, 509, 1021, 2053, 4099, 8191, 16381, 65537, 131071} and {2018, 3063, 9797, 65524} (large prime factors); same 8 variants |
| `sweep` | every N from 2 to 4096; f32, f64; forward in-place (coverage plots) |
| `batch` | N ∈ {8, 16, 32, 64, 128, 256, 512, 1024} with 2^20/N transforms per buffer; forward; in-place, out-of-place |
| `realworld` | (a) spectrogram over a 256 MiB interleaved f32 I/Q stream: per non-overlapping window copy, Hann window, FFT in place, write \|X\|² as a row; N ∈ {1024, 4096, 16384, 65536}. (b) overlap-save FIR filter (1025 taps), N = 4096, over 64 MiB. (c) the f64 version of (a) at N = 4096. Metric: million samples per second |
| `datacheck` | zero-filled vs random input, f32/f64 forward, immutable placement (input never changes), N ∈ {64, 4096, 65536, 2^20}: times must agree within 2% |

The windowing, filtering and magnitude code in the scenarios is shared by
every library. Split-layout libraries (phastft/split) deinterleave while
windowing, which is how a user of that API would feed it interleaved I/Q.
Libraries that normalize the inverse get a correspondingly scaled filter.

## Metrics and outputs

Per cell and library: best and median time (ns per transform); benchFFT
"mflops" = 5·N·log2 N / best time in µs; planning time; relative L2 and max
error in units of ε; speedup = rustfft time ÷ library time.

Per suite and precision: geometric-mean speedup (on best and on median
times), win/tie/loss counts with a ±3% tie band, the worst cell, and the
release-gate table (G1–G8) whenever fastfft rows are present.

A run writes `target/arena/runs/<UTC>-<host>[-label]/`:

- `results.jsonl`: one JSON object per cell (plus control cells);
- `trials.jsonl`: every individual child process before best-of-K merging;
- `env.json`: CPU model/family/stepping/microcode/flags/caches, governor,
  energy-performance preference, boost, SMT, kernel, virtualization, AC
  power, pinned core and siblings, `rustc -vV`, build profile and RUSTFLAGS,
  library versions from `Cargo.lock`, FFTW version and configure line, git
  commit and dirty flag, the environment check result;
- `meta.json`: drift, abort reason, child failures, elapsed time;
- `report.md` and `plots/*.svg` (mflops, speedup and accuracy vs N).

`arena compare A B` prints per-cell ratios and per-suite geomeans for spotting
regressions. Its 3% change threshold is below the measured run-to-run noise
for many cells: between identical pow2 runs it flags 5% of fastfft cells and
16–29% of comparator cells
([run-to-run variance](benchmarks/2026-10-17-mini-ryzen-run-to-run-variance/README.md)).
`scripts/arena-variance.py RUN...` summarizes the spread across repeated runs.
`arena publish <run> --label L` copies the report, plots,
`env.json`, `meta.json` and both gzipped JSONL files to
`docs/benchmarks/<date>-<host>-<label>/`.

The four-library comparison (the HTML report with bar charts behind the
README figure) has its own end-to-end procedure in
[`runbooks/four-library-comparison.md`](runbooks/four-library-comparison.md).

## Accuracy

fastfft's accuracy targets (relative L2 error against the double-double
reference):

- fast paths (all prime factors ≤ 13): ≤ 2ε·log2 N + 2ε;
- Bluestein: ≤ 8ε·log2 M + 8ε, where M is the inner convolution length;
- and never more than 1.5× rustfft's error + ε on the same input.

## Environment control (Zen 4 laptop)

`scripts/bench-env.sh setup [--no-boost] [--core N]` requires AC power, sets
the `performance` governor and energy-performance preference on every CPU,
runs `powerprofilesctl set performance` if available, optionally disables
boost, and saves the previous state. `check` verifies governor, EPP, AC
power, a 1-minute load average ≤ 2 and that the benchmark core and its SMT
siblings are idle (≤ 5% busy over one second). `restore` undoes `setup`.

The arena itself repeats the governor/EPP/AC/load checks and refuses to run
unless they pass or `--allow-dirty-env` is given, in which case the run is
marked unofficial in `env.json` and the report.

Tuning comparisons run with boost off (`--no-boost`) to reduce variance.
Gate runs and published runs use boost on plus the drift check.

## Profiling tools

`cargo xtask perf-cell` builds the existing `arena` profile before profiling
one full-profile cell (batch 1, aligned, seed 1, no accuracy verification).
The child pins itself to CPU 2 by default. The command checks `cell.json` for
the selected CPU and a successful library result; a successful perf exit alone
does not establish either condition. Keep compilation and other CPU work out
of the measurement window. Finish all builds, then run the existing check:

```sh
cargo build --profile arena -p fastfft-arena --features fftw
cargo build -p xtask
scripts/bench-env.sh check --core 2
cargo xtask perf-cell --lib fastfft --n 4096 --prec f32 \
  --mode stat --out target/profiling/stockham-f32-4096-stat
cargo xtask perf-cell --lib fastfft --n 4096 --prec f32 \
  --mode record --out target/profiling/stockham-f32-4096
cargo xtask perf-cell --lib rustfft --n 4096 --prec f32 \
  --mode record --out target/profiling/rustfft-f32-4096
```

`stat` remains the default. Its default events are cycles, instructions,
L1 data-cache loads/misses, and AMD's
`l2_cache_req_stat.ic_dc_miss_in_l2`. The last event is machine specific;
inspect `perf list`, then select supported events with `--events` on other
CPUs. A reported `<not supported>` or `<not counted>` is a failed capture.
Counter values cover the whole child process, including planning, warm-up,
clock probes and harness work. They are **not per-transform counters**;
dividing by the arena's timed call count does not remove that extra work.

`record` requires `--out DIR`. It samples `cycles:u` at 999 Hz with
`--call-graph dwarf,16384` (16 KiB user stack dumps), following the
[Linux perf-record documentation](https://github.com/torvalds/linux/blob/master/tools/perf/Documentation/perf-record.txt).
Override with `--events instructions:u` or `--freq 1999` when needed. Higher
frequencies and stack dumps increase overhead and can lose samples. DWARF
unwinding uses the arena's existing line tables and unwind information;
do not rebuild with forced frame pointers or native-CPU flags for a matched
comparison. `--lib`, `--n`, `--prec`, `--dir`, `--place`, and `--core` retain
their existing meanings. `--freq` only applies to recording.

Every capture rejects an existing output directory. Without `--out`, stat
creates a unique directory under `target/profiling/` and prints its path.
Evidence includes the exact executable and SHA-256, raw `perf.data` for
recording, cell JSON, stderr, commands with argument arrays and exit status,
tool versions, perf build features, CPU/permissions/flags, revision, dirty
diff and a source archive (including untracked build inputs). Permission
denial, unsupported events, failed cells, affinity failure and empty samples
return failure and preserve partial evidence. Check `status.json`,
`commands.jsonl` and `perf.stderr` first. Ticket 22 recorded working counters
with `perf_event_paranoid=1` on 2026-10-08. The 2026-10-13 clock summary claims
4 without a retained sysctl readout; it does not establish a permissions
blocker. Check and retain the current value and any counter error for each
capture. No sysctl change is part of this workflow.

Recording writes `report-self.stdout` (exclusive cost),
`report-callers.stdout` (inclusive caller attribution), `stacks.stdout`,
`samples.stdout`, and `sample-count.json`. `stacks-no-inline.stdout` separates
dynamic callers from source-level inline frames. Nonempty report stderr is
also collected in `report-warnings.json` and flagged on the console; a
successful exit does not guarantee complete caller chains. Inclusive
percentages overlap; do not add them. Inspect readable FFT-to-runner-to-harness stacks and check
sample count, lost samples, unknown symbols and truncated chains before
choosing a candidate. Commands for interactive review are printed and saved:

```sh
perf report -i target/profiling/stockham-f32-4096/perf.data
perf annotate -i target/profiling/stockham-f32-4096/perf.data
perf annotate --stdio --symbol 'EXACT HOT SYMBOL' \
  -i target/profiling/stockham-f32-4096/perf.data
objdump -d -C -Mintel target/profiling/stockham-f32-4096/fastfft-arena
```

Keep the captured executable at its recorded path while using perf. For
archival or moving captures, retain the binary and build ID and supply a
matching symbol tree/cache; never annotate a later rebuild with old samples.
The [ticket 22 evidence](profiling/2026-10-08-ticket22/README.md) includes a
portable replay recipe. Sampling identifies candidates; matched unprofiled
arena benchmarks establish improvements. Neither the profiled arena timing
nor a single instruction's sample percentage proves an optimization works.

Install assembly exploration tools into the repository, following
[cargo-show-asm's upstream instructions](https://github.com/pacak/cargo-show-asm):

```sh
cargo install cargo-show-asm --locked --root target/profiling-tools
export PATH="$PWD/target/profiling-tools/bin:$PATH"
cargo asm --version
cargo asm -p fastfft --lib --profile arena --target-dir target/profiling-asm \
  --no-color Stockham
```

Use the function list to select a symbol and index. This exploration build is
separate from the captured arena executable; fat LTO and caller context can
change its assembly. Check the executable with objdump and perf annotate
before drawing conclusions. Installed version for ticket 22 is 0.2.63.
`llvm-mca -mcpu=znver4` is optional for static throughput estimates and is
currently absent on this host. Its model cannot replace hardware measurement.
Valgrind instruction counting cannot run AVX-512 code; use it only on the
AVX2/SSE2/scalar tiers if needed. See the [assembly checklist](architecture.md).

## Planner tuning

`cargo xtask tune --core 2 --raw target/tune.jsonl --out target/tune.rs`
builds the developer-only `tuning` feature in the arena profile, then pins the
measurement process. Run it on an idle machine. The default sizes are powers
of two through 2^20 and the complete smooth suite. `--max-n 16777216` extends
the power-of-two suite through 2^24; `--n 256,1024` selects a diagnostic subset.
`--precision f32|f64` narrows precision; `--ms 5` sets the sample budget per
candidate and placement. Whole-transform timings take at least 20 batches,
so large scalar candidates can exceed that budget. `--min-batches` changes
that floor for expensive large-size exploration; the argument and actual
batch counts are retained in the raw output. Recheck close contenders with
the default count. Compilation must finish before another timing run.

For expensive large-size repeats, the analyzer can write `--shortlist-out
target/contenders.jsonl`. It keeps candidates within 15% of the best on the
selected objective for every observed cap, plus each Estimate choice;
`--shortlist-ratio` adjusts that exploration margin. Pass this file to the
tuner with `--shortlist target/contenders.jsonl` and the normal batch count.
The tuner also retains every current Estimate choice and records the full
and selected catalog sizes. Keep the initial full-catalog measurements and
merge them with the repeats: a shortlist alone cannot establish the best
candidate, and `--check` rejects audits lacking a complete catalog.

The tuner measures production Stockham first, twiddled and transpose passes
by radix/precision/tier. Whole-transform candidates include the measured Small
and smooth incumbents, rectangular/packed leaves, fixed Stockham schedules,
FourStep panels, both AVX-512 widths, AVX2 radix-4/radix-8 schedules and alternate
pass orders. All three placements are checked against RustFFT before timing;
the normal accuracy tests independently enforce the double-double thresholds.
The candidate timings use forward transforms through their public FFT methods.
They measure individual candidate engines before the planner's batch wrapper.

`--passes-only` and `--plans-only` split the measurements. Repeat the standalone
executable in three independent processes; the xtask pins each run after its
build completes. The example's `--out` emits single-process seed tables. The
analyzer also derives per-width cache corrections from whole Stockham timings;
use its merged output for the production table:

```sh
python3 scripts/analyze-tuning.py target/passes.jsonl target/plans-1.jsonl target/plans-2.jsonl target/plans-3.jsonl \
  --out crates/fastfft/src/plan/tables/zen4.rs --report target/tuning-summary.json
cargo fmt --all
```

For fewer than 100 batches the reported p1 is the minimum. If a close large
case needs a better-resolved percentile, predeclare a longer sampling run and
remeasure every contender, retaining the screening data. Analyzer `--refine
long-1.jsonl long-2.jsonl long-3.jsonl` replaces screening timings for every
remeasured candidate/placement as a group, then selects the lowest-p1 process
among those refinement files. Use this only for a documented sampling change;
do not select individual readings or mix different Estimate choices. The
original full catalog is still required. Unmeasured candidates retain their
screening samples.

For each candidate/placement the process with the lowest p1 supplies both p1
and median. By default a recipe minimizes the in-place slowdown on both
metrics. This is the objective chosen for the ticket 18 Estimate table;
Measure additionally protects the other placements and representative
batches when selecting a replacement. `--objective all` instead
minimizes the worst slowdown across all three placements. The output always
retains all-placement regressions; some lengths have no single candidate
within 3% in every placement. Untabulated lengths retain the established
small/smooth/large dispatch choices where applicable. Other Stockham choices
use a dynamic program over measured pass costs; unmeasured CPUs use
arithmetic/memory costs for that search. The new Zen 4 tables apply to the
calibrated family 25, model 116 CPU;
other CPU families require their own measurements. Every lookup also respects
runtime ISA caps and compiled features.

Isolated passes have small working sets. Their sum is scaled by the measured
whole-Stockham/pass-sum ratio for the same precision and vector width, with
linear interpolation between power-of-two footprints. This keeps estimates
for untabulated Bluestein inner lengths comparable to measured recipe times,
particularly where narrower vectors cross a cache boundary earlier.
The correction starts at an L2/4 transform footprint and only increases
costs: discounts from power-of-two specializations do not transfer to an
untabulated odd-radix decomposition.

After rebuilding with the tables, run the tuner again and analyze its fresh
JSONL with `--check`. This audits the actual Estimate choice, rather than
reporting the training winner as validation. The check exits nonzero if any
audited default choice exceeds 3% on the selected objective and either timing
metric. Pass `--objective all` to audit the stricter placement target. An arena
run remains necessary to check the production build, inverse transforms,
batch wrapping, drift and release gates.

`cargo xtask tune --planning-only --check-g8 --raw target/planning.jsonl`
checks cold planning on the pow2/smooth/rough suite lengths through 2^20, both
precisions and directions. Every repetition creates a fresh planner; plan
and planner destruction occur after the timed interval. These diagnostic rows
exclude `describe_plan` and caller scratch allocation for both libraries. The
arena's historical `plan_ns` includes adapter setup; retain both results when
assessing G8. The diagnostic exits nonzero if any checked length exceeds 2×.
Suite sampling alone does not establish G8 for every integer length ≤ 2^20.

## Qualification supervision and build-time evidence

The qualification supervisor requires 60 consecutive seconds without a
compiler/benchmark competitor, with boost enabled and per-CPU background
utilization at most 5%. It then records process identities, CPU counters,
boost and observed child affinity once per second throughout each suite.
Only the benchmark core is exempt from the utilization check while running.
Any failed or unavailable observation invalidates the entire attempt and
stops its owned process group. Unrelated processes are never signaled.
All observations and invalid attempts remain retained; no automatic retry
is performed. This monitoring supplements the unchanged <3% arena drift gate.

The independent auditor rejects a supervisor-invalidated attempt even if
its arena records otherwise look complete. Historical evidence retains its
original supervision limitations.

`cargo xtask build-time --out NEW.json --check` retains unrounded durations,
compiler/build commands and clean target directories, and exits nonzero on
a G9 failure. Both builds use normal release, empty Rust flags, one job,
incremental disabled, and prefetched dependencies; invoke under `taskset -c 2`
on an otherwise quiet machine. The JSON path must be new. Without `--check`,
the command retains its historical report-only exit semantics. The independent
auditor accepts either the new JSON or historical rounded stdout.

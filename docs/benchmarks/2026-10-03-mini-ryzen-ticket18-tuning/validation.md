# Ticket 18 validation

The `validation-*` source and executable snapshots contain the 650-recipe,
220-footprint table and the final three training refinements. The table
reproduces byte-for-byte from the archived inputs. The merged independent
candidate audit passes, and the final arena regression run is complete.
Ticket 18 is resolved under the maintainer-approved G8 scope split.

| Check | Result |
| --- | --- |
| Release suite | 78 passed, six intentionally ignored |
| Scalar, SSE2, AVX2, AVX-512 YMM, AVX-512 caps | 78 passed per cap, six intentionally ignored |
| Large reference/roundtrip checks through 2^24 | Both precision tests passed; both directions covered |
| Workspace Clippy, all targets/features | Passed with warnings denied |
| Scalar-only and AVX-512-only feature Clippy | Passed with warnings denied |
| Formatting and code-generation drift | Passed |
| Standalone coefficient reference check | 577,972 comparisons; maximum component error 1.1102230246251565e-16 |
| Reproduce table from retained data | Byte-for-byte match |
| Independent candidate audit | 130/130 within 3%; worst 1.027153× at f64 N=504; complete catalog coverage |
| Final arena regression run | 164 verified cells, zero failures, 1.23% drift; G2/G3/G7 pass; G1/G8 remain open |

Checks used Rust 1.95 on x86_64. The MSRV toolchain (1.89) and non-x86
targets were not installed, so those configurations were not run.

## Reproduce the table

From the repository root:

```sh
python3 -B docs/benchmarks/2026-10-03-mini-ryzen-ticket18-tuning/rebuild-tables.py \
  --large docs/benchmarks/2026-10-03-mini-ryzen-ticket18-tuning/large-calibration-1.jsonl.gz \
          docs/benchmarks/2026-10-03-mini-ryzen-ticket18-tuning/large-calibration-2.jsonl.gz \
          docs/benchmarks/2026-10-03-mini-ryzen-ticket18-tuning/large-calibration-3.jsonl.gz \
  --overrides docs/benchmarks/2026-10-03-mini-ryzen-ticket18-tuning/final-refinements.json \
  --out /tmp/zen4-reproduced.rs
cmp crates/fastfft/src/plan/tables/zen4.rs /tmp/zen4-reproduced.rs
```

`recipe-refinements.json` records four earlier training changes. The final
refinement record changes f32 N=160 to the 512-bit rectangular leaf, f64
N=768 to 256-bit Stockham, and f32 N=1,000,000 back to the better measured
Stockham order. All eight large default choices remain identical to their
incumbents. Training inputs do not count as independent validation of
changed choices.

## Planning and scope

The fresh-planner suite diagnostic has 46 failures in 312 cases; the worst
is f64 N=31 inverse, 2484 ns versus 70 ns (35.49×). The N=2..256 expansion
has 657 failures in 1020 cases; the worst is f64 N=23 forward, 2384 ns
versus 60 ns (39.73×). These are not arena adapter timings and do not prove
G8 over every integer length. Both transforms' construction and destruction
boundaries are described in [method.md](method.md).

The maintainer explicitly moved remaining G8 engine work and complete
coverage to tickets 37–39. G8 is not passed, and its release threshold has
not changed. Earlier drift-flagged arena attempts remain diagnostic evidence.
Raw final-source timings are archived beside this file; command and
correctness logs are under `logs/`.

## Coefficient-preparation comparison

These fresh-planner samples compare the cache-penalty revision with the final
validation revision. They isolate construction from adapter setup; they are
not the differently compiled historical ticket 17 arena baseline.

| f64 forward length | Before preparation change | Final | Final / RustFFT |
| --- | ---: | ---: | ---: |
| 31 | 3.647 µs | 2.475 µs | 35.36× |
| 4,096 | 67.849 µs | 35.487 µs | 1.003× |
| 65,537 | 4.062 ms | 1.622 ms | 0.777× |
| 1,048,576 | 1.476 ms | 1.441 ms | 0.165× |

Raw inputs are `planning-cache-penalty.jsonl.gz` and
`planning-validation.jsonl.gz`. The first row illustrates why cheaper
coefficient preparation alone does not complete G8 for small primes.

## Independent candidate acceptance

The frozen production build passes all 130 default choices on the in-place
objective, using both p1 and median. This is 24 powers of two through 2^24
plus 41 smooth lengths, both precisions. All 650 capped choices are represented
and every default pair has a complete catalog. The maximum default slowdown
is 1.027153× at f64 N=504. All eight upper-power choices have ratio 1.0.
Forced-cap timing rows remain diagnostic; the 3% acceptance result refers to
the machine's default planner. All five caps separately passed correctness.

The original three-process screen leaves one failure: f32 N=1,000,000 at
1.065039×. No screened candidate meets both metric limits (best minimax
1.037382×). The predeclared longer sampling described in [method.md](method.md)
remeasures 25 configurations, including every capped Estimate, in three
processes with at least 200 batches per placement. It keeps the same
production code and recipe. The individual default objective ratios are
1.004879×, 1.020958×, and 1.071728×. Process variation remains visible; the
specified paired-statistic, best-of-three aggregate is 1.004879×. The refined
samples replace every remeasured candidate's screening timings, including
slower results. All original process summaries remain archived.

Reproduce the acceptance check from the repository root (Bash):

```sh
report=docs/benchmarks/2026-10-03-mini-ryzen-ticket18-tuning
python3 scripts/analyze-tuning.py \
  "$report"/audit-validation-small-{1,2,3}.jsonl.gz \
  "$report"/audit-validation-large-{1,2,3}.jsonl.gz \
  --refine "$report"/audit-million-long-{1,2,3}.jsonl.gz \
  --report /tmp/ticket18-audit.json --check
python3 "$report"/logs/check-coverage.py /tmp/ticket18-audit.json
```

`audit-validation-merged-3-summary.json.gz` preserves the short-screen result;
`audit-validation-refined-summary.json.gz` is the accepted aggregate. The
`refinement-analysis-*` snapshot changes only the analyzer relative to the
frozen production build. Its fixture checks group replacement, paired
statistics, untouched cases and catalog coverage; the table still reproduces
byte-for-byte with the updated analyzer.

## Final arena regression

[The final quick report](arena-validation/report.md) uses `validation-arena`,
empty `RUSTFLAGS`, core 2, boost on, and three processes per cell. It completes
all 164 forward in-place pow2/smooth/rough cells through 2^24 with no abort,
no child failures, no verification failures, and 1.23% drift (unflagged).
The worst fastfft verification error is 2.81 ε. G7's report criterion checks
156 cells in its defined size range; the separate large reference/roundtrip
tests cover both directions through 2^24.

| Quick check | Best / median geomean vs RustFFT | Minimum | Result |
| --- | ---: | ---: | --- |
| G1 pow2 | 1.389× / 1.390× | 0.932× at f64 N=2 | Fails |
| G2 smooth | 1.371× / 1.365× | 0.976× at f64 N=210 | Passes |
| G3 rough | 1.174× / 1.169× | 0.550× at f64 N=17 | Passes |

Arena G8 still fails: its adapter-inclusive worst ratio is 46.71× at f64
N=31. This differs from the fresh-planning diagnostic above. No release
threshold changed. This quick check does not replace ticket 23's full
profile, all-library, placement, batch and scenario evaluation; G1 remains
open and G8 completion belongs to tickets 37–39. The historical ticket 17
binary's different alignment flags prevent a controlled before/after claim.

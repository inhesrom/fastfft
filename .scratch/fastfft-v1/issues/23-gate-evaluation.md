# Evaluate release gates G1–G9 on Zen 4

Type: task
Status: resolved
Blocked by: 11, 13, 14, 15, 17, 18
Roadmap: FFT-061 (part)

## Question

Which of G1–G9 pass on the Zen 4 7840HS?

## Work

- A full arena run: all suites, `--procs 3`, fastfft plus all other libraries, boost on, idle machine. The report computes G1–G8.
- `cargo xtask build-time` gives G9.
- G8 remains open until [ticket 39](39-complete-planning-g8.md) supplies
  every-length fresh-planning evidence; sampled arena cells alone do not
  establish the gate. Tickets 37–39 are the maintainer-approved follow-up
  to ticket 18's residual planning failures.

## Done when

The gate table is in the answer and the run is published under `docs/benchmarks/`.

## Execution completed — 2026-10-11

The seven-suite campaign ran from 2026-10-09 18:33:33 UTC to
2026-10-11 07:46:52 UTC, then independent audit and compact publication
completed. Raw evidence remains local under
`/home/ianhersom/repo/fastfft/target/ticket23-worktree/target/ticket23-evidence/campaign-20261009T180520Z`;
`target/ticket23-evidence/ACTIVE` points to it. Initial dirty docs, measured
sources and all attempts are retained. All 152 frozen inputs matched before
post-run publication/audit edits. The frozen executable SHA-256 is
`21d8ce442e2b269c3e3a7b03b5e2ba50811ef64b3b4c2e172fe8bfa6c329d3f1`.

Preflight passed formatting, 5 arena tests, 107 fastfft release tests
(7 ignored), and 46 Python tests; the narrow post-run audit hardening passes
29 audit tests. Exact commands, final tooling snapshots and the verified
local raw archive/checksums are recorded in the publication manifest.

## Answer

[The compact release-gate report](../../../docs/benchmarks/2026-10-11-mini-ryzen-ticket23-gates/README.md),
[gate summary](../../../docs/benchmarks/2026-10-11-mini-ryzen-ticket23-gates/gate-summary.json)
and [reproducibility manifest](../../../docs/benchmarks/2026-10-11-mini-ryzen-ticket23-gates/manifest.json)
complete this evaluation under unchanged ROADMAP thresholds:

| Gate | Result | Evidence (best / median where applicable) |
|---|---|---|
| G1 | FAIL | Pow2 geomean 1.3551× / 1.3482×; minimum 0.5911× / 0.5914×. |
| G2 | FAIL | Smooth geomean 1.3244× / 1.3216×; minimum 0.5220× / 0.5282×. |
| G3 | PASS | Rough geomean 1.1786× / 1.1719×; minimum 0.5375× / 0.5327×. |
| G4 | FAIL | TFHE floor 15/20 (75%); PHASTFT rows pass; oxifft 616/656 incomplete. |
| G5 | FAIL | AVX2 pow2 1.1425× / 1.1377×; smooth 1.1229× / 1.1222× passes its component. |
| G6 | FAIL | Batch 1.2844× / 1.2861×; all six scenarios <1.3×. |
| G7 | INCOMPLETE | 4,032 admissible raw DD checks, zero strict violations; method/batch/scenario/sweep gaps remain. |
| G8 | OPEN | Universal fresh-planning evidence remains ticket 39. |
| G9 | FAIL | Clean release 44.4 s / 3.4 s, printed ratio 13.10× >2.0×. |

All 8,900 ordinary cells, 367 controls and 27,801 raw trials are retained.
The first six suites are admissible; the complete 8,190-cell sweep is
rejected for 8.2630% clock drift, with no immediate repeat or salvaged-cell
claim. G7 remains incomplete despite zero observed strict DD violations.
Datacheck has 39/40 supported pairs and 13 >2% metric violations; default
fastfft's eight pairs have none, while forced AVX2 contributes seven.
This explicit caveat accompanies the suite-specific G1–G6 verdicts.
Oxifft's failed rows remain failures or coverage gaps, not unsupported
exclusions. Ticket 19 exceptions were not reused.

The evaluation is resolved because its measured results, exclusions and
remaining gaps are published; release qualification has not been achieved.
Focused follow-ups are [41](41-small-out-of-place-release-floors.md),
[42](42-pow2-release-throughput.md), [43](43-batch-and-pipeline-g6.md),
[44](44-clean-release-build-time.md), [45](45-complete-g7-evidence.md), and
[46](46-datacheck-robustness.md). Existing tickets 32–35, 37–39 and 40
retain their distinct work. [Ticket 24](24-revisit-gates.md) stays open
for the maintainer's threshold review. No engine or threshold was changed.

## Ticket 18 checkpoint

The final [quick tuning report](../../../docs/benchmarks/2026-10-03-mini-ryzen-ticket18-tuning/arena-validation/report.md)
has 164 verified forward in-place cells, no failures and 1.23% drift.
G2/G3/G7 pass; G1 fails at 1.389× best / 1.390× median, with a 0.932×
f64 N=2 floor, and arena G8 fails at 46.71×. Its empty-RUSTFLAGS build is
not directly comparable to the historical aligned small-N gate builds.
Retain the documented full-profile and small-N protocols for release
assessment; ticket 18's candidate audit is not a full release-gate pass.

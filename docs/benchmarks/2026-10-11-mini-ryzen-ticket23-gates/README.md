# Ticket 23: Zen 4 release-gate evaluation

Evaluation completed on 2026-10-11. **G3 passes; G1, G2, G4, G5, G6 and
G9 fail; G7 is incomplete and G8 remains open.** This completes ticket 23's
measurement and reporting work, not release qualification. Thresholds and
FFT implementation are unchanged.

The seven sequential suites ran on `mini-ryzen` (Ryzen 7 7840HS, Zen 4)
from 2026-10-09 18:33:33 UTC to 2026-10-11 07:46:52 UTC. Every suite
exited zero and retained its complete cell/trial population. The entire
sweep attempt is rejected for 8.2630% clock drift; the other six suites
are admissible. Datacheck has observed >2% differences and one missing
supported comparison, so this is not an all-campaign validation pass.

[Gate summary](gate-summary.json) contains exact ratios, worst cells,
coverage and method counts. [Manifest](manifest.json) records commands,
source/tool/FFTW provenance and local evidence checksums.

## Release gates

Ratios below are comparator time / fastfft time, **best / median**. Both
metrics must satisfy each unchanged ROADMAP requirement. Each library's
lowest-p1 trial supplies its best and median together; no favorable cells
or metrics were spliced between attempts.

| Gate | Result | Requirement and observed result |
|---|---|---|
| G1 | **FAIL** | Pow2 geomean ≥1.5× and every cell ≥0.95×. Observed **1.3551× / 1.3482×**, minimum **0.5911× / 0.5914×**, 192/192 pairs. |
| G2 | **FAIL** | Smooth geomean ≥1.3× and every cell ≥0.95×. Observed **1.3244× / 1.3216×**, minimum **0.5220× / 0.5282×**, 328/328 pairs. |
| G3 | **PASS** | Rough geomean ≥0.75× and every cell ≥0.5×. Observed **1.1786× / 1.1719×**, minimum **0.5375× / 0.5327×**, 136/136 pairs. |
| G4 | **FAIL** | Each Rust competitor: geomean ≥1.1× and ≥90% of supported cells ≥0.97× on both metrics. TFHE reaches only **15/20 (75%)**; oxifft coverage is incomplete. |
| G5 | **FAIL** | Forced AVX2 pow2 ≥1.2×: **1.1425× / 1.1377×**. Smooth ≥1.1×: **1.1229× / 1.1222×**, passes that component. |
| G6 | **FAIL** | Batch geomean ≥1.5×: **1.2844× / 1.2861×**. Every realworld case ≥1.3×: all six miss; minimum **1.0422× / 1.0526×**. |
| G7 | **INCOMPLETE** | No observed strict DD violation, but proxy, scenario, sampled-batch and rejected-sweep coverage cannot establish the full strict/reference requirement. |
| G8 | **OPEN** | Universal fresh planning ≤2× RustFFT remains [ticket 39](../../../.scratch/fastfft-v1/issues/39-complete-planning-g8.md), with engine work in tickets 37–38. Warmed arena planning minima do not prove it. |
| G9 | **FAIL** | Clean normal-release build ≤2× RustFFT. Fastfft **44.4 s**, RustFFT **3.4 s**, printed ratio **13.10×**. |

G1 has six best and four median cells below 0.95×; both minima occur at
f64 forward out-of-place N=8. G2 has 16 cells below 0.95× on each metric;
its minimum is f32 forward out-of-place N=12. Weak small out-of-place
cells coexist with larger smooth misses, including f32 N=1,000,000.
G3's weakest cell is f64 inverse in-place N=17.

G4 uses pow2 + smooth + rough with documented adapter support and the
forward-only rule for inverse-normalizing PHASTFT rows. FFTW is a reference,
not a release-gate competitor.

| G4 comparator | Valid / expected pairs | Geomean best / median | Cells meeting both floors | Result |
|---|---:|---:|---:|---|
| phastft/split | 48/48 | 2.3452× / 2.3334× | 48/48 | PASS |
| phastft/interleaved | 48/48 | 3.8474× / 3.9957× | 48/48 | PASS |
| tfhe-fft | 20/20 | 1.1821× / 1.1691× | 15/20 | FAIL |
| oxifft | 616/656 | 8.9981× / 8.9625×, available pairs only | 616/616 available | INCOMPLETE |

The 608 exclusions per PHASTFT row and 636 TFHE exclusions are documented
support/direction limits, not failures. Oxifft's 40 missing pow2 comparisons
are failures: 32 f64 planner-panic cells at N≥2^17 and eight f32 failed
verification cells at N=2^23 and 2^24. They are retained, not reclassified
as unsupported. TFHE is weakest at f64 inverse in-place N=1024
(0.8927× / 0.8930×); f64 N=512 also misses.

G6's weakest batch is f64 forward in-place N=8×131072
(0.6261× / 0.6451×). F64 N=32×32768 is 1.0763× / 0.9296× and links
to existing ticket 35. The six scenario ratios are:

| Scenario | Precision / N | Best / median |
|---|---|---:|
| Spectrogram | f32 / 1024 | 1.0422× / 1.0526× |
| Spectrogram | f32 / 4096 | 1.1512× / 1.1558× |
| Spectrogram | f32 / 16384 | 1.1656× / 1.1641× |
| Spectrogram | f32 / 65536 | 1.1673× / 1.1572× |
| Spectrogram | f64 / 4096 | 1.1779× / 1.1699× |
| Overlap-save | f32 / 4096 | 1.1913× / 1.1869× |

## Coverage and admissibility

| Suite | Ordinary cells | Controls | Raw trials | Maximum clock drift | Admissible |
|---|---:|---:|---:|---:|---|
| pow2 | 192 | 9 | 603 | 2.8083% | Yes |
| smooth | 328 | 15 | 1,029 | 2.1847% | Yes |
| rough | 136 | 7 | 429 | 0.9673% | Yes |
| batch | 32 | 3 | 105 | 1.1062% | Yes |
| realworld | 6 | 2 | 24 | 0.8077% | Yes |
| datacheck | 16 | 2 | 54 | 1.0785% | Yes; its 2% criterion does not pass |
| sweep | 8,190 | 329 | 25,557 | **8.2630%** | **Rejected as a whole** |
| Total retained | **8,900** | **367** | **27,801** | | |

There are 9,267 merged records and three raw trials for every ordinary
cell and control. The first six admissible suites account for 710 ordinary
cells, 38 controls and 2,244 raw trials. Adapter failures do not imply lost
trial records: oxifft contributes 126 failed raw rows across pow2 and
datacheck. All fastfft/default and forced-AVX2 rows return successful
verification records, while strict G7 coverage remains incomplete.

The sweep has 53 merged records at ≥3% drift, including two controls,
and 71 raw records at ≥3%. Its worst cell is f64 N=798; its worst control
is 4.2679%. No clean cells were salvaged for an official sweep claim.
Astra's evidence review rejected the whole attempt and recommended no
immediate repeat: first diagnose the clock/environment under ticket 32,
then address the retained coverage gap. Accuracy observations from this
sweep remain diagnostic; its 49,140 raw DD row checks have no strict
violations. No suite was repeated to improve a gate result.

Datacheck has **39/40 supported zero/random pairs**, plus 24 legitimate
adapter-excluded pairs. There are **13 observed metric violations** of
`abs(random/zero - 1) ≤ 0.02`: forced AVX2 seven, RustFFT four, oxifft one,
FFTW one. Forced-AVX2 f32 immutable N=4096 is worst at 1.113733× best /
1.117982× median random-over-zero (**11.37% / 11.80%**). Default fastfft
has all eight supported pairs and zero violations; its maximum deviation
is 1.7041%. The incomplete pair is oxifft f64 immutable N=2^20: planner
panics in both data conditions produce six failed raw rows. Overall
datacheck is **INCOMPLETE with observed failures**, never a clean pass.
G1–G6 retain their specified suite-specific verdicts with this explicit
protocol caveat; no data-dependent engine cause is inferred.

## Accuracy and small-N diagnostics

Across the admissible suites, both fastfft rows together have **4,032 raw
DD row checks** (2,016 per row) and **zero strict violations**. Bounds use
the actual fast path `2 log2(N)+2`, or Bluestein `8 log2(M)+8` with the
actual outer convolution M, plus ≤1.5× the same-trial RustFFT DD error +1ε.
Merged relative errors are diagnostic; they cannot replace same-trial proof.

Above 2^20, 192 raw row checks use RustFFT-f64+roundtrip (96 per fastfft
row); these proxy comparisons and finite roundtrips do not independently
prove the strict/reference-relative G7 bound. Six realworld scenarios
provide 36 raw scenario-reference row checks, which validate pipelines,
not universal complex-FFT DD behavior. Batch contributes 192 raw DD row
checks but only first/second/last transforms: 576 sampled raw chunk
observations, representing 192 distinct row/chunk conditions. The other
2,088,768 row/chunk positions remain unsampled. The machine summary labels
raw-plus-merged gap counters so repeated observations are not mistaken for
unique coverage. G7 remains incomplete; G8 remains separate.

P1 small-N diagnostics use pow2 N=2…256 and do not replace best/median
release ratios:

| Selection | Pairs | P1 geomean | Minimum P1 ratio |
|---|---:|---:|---:|
| Both precisions, directions and placements | 64 | 1.1789× | 0.5911× |
| f32, all directions/placements | 32 | 1.1574× | 0.7258× |
| f64, all directions/placements | 32 | 1.2009× | 0.5911× |
| f32 forward in place | 8 | 1.1751× | 1.0572× |
| f64 forward in place | 8 | 1.1986× | 0.9995× |

## Reproduction and provenance

Source revision: `c99763735dd344257fd86963aa87fca9f2f6022e`, branch
`ticket-23-gate-evaluation`. Rust/build inputs match that revision. Dirty
ticket/map documentation and the untracked plan/audit/supervisor/tests were
explicitly retained in source snapshots and diffs. All 152 frozen files,
including the executable and measured inputs, still matched preflight on
2026-10-11 at 20:28:59 UTC, before post-run edits.

Rust/Cargo 1.95.0, LLVM 22.1.2, Python 3.14.4; arena profile, default target
CPU, runtime ISA detection, Estimate planning, boost on, core 2,
verification enabled, all eight rows and three trials. The supervisor
cleared ISA/test/Measure overrides and recorded effective environment.
Eleven idle checks yielded seven successful suite gates and four waits;
no check was bypassed. One retained run-cell snapshot per suite confirms
actual affinity `2`. These snapshots and between-suite checks do not claim
continuous OS-noise monitoring. Three rotating processes do not balance
eight construction positions. The clock probe remains an uncalibrated
throughput proxy tracked by ticket 32.

```sh
export FASTFFT_FFTW_DIR=/home/ianhersom/repo/fastfft/target/fftw/install
export RUSTFLAGS="-C llvm-args=-align-all-functions=6"
export CARGO_BUILD_JOBS=1
cargo build --locked --profile arena -p fastfft-arena --features fftw
```

The frozen executable is `$EVIDENCE/bin/fastfft-arena`, SHA-256
`21d8ce442e2b269c3e3a7b03b5e2ba50811ef64b3b4c2e172fe8bfa6c329d3f1`.
Each suite used a fresh retained attempt, sequentially in
`pow2 smooth rough batch realworld datacheck sweep` order:

```sh
"$EVIDENCE/bin/fastfft-arena" run --suite "$suite" --profile full \
  --libs fastfft,fastfft/avx2,rustfft,phastft/split,phastft/interleaved,tfhe-fft,oxifft,fftw \
  --core 2 --procs 3 --max-n 16777216 --timeout 600 \
  --control-every 25 --out "$fresh_attempt/arena"
```

G9 completed before arena timing, after dependency fetch, with normal
release and equal one-job clean targets:

```sh
RUSTFLAGS='' CARGO_BUILD_JOBS=1 TMPDIR="$EVIDENCE/g9-tmp" \
  taskset -c 2 cargo xtask build-time
```

`preflight/g9.stdout` retains the 13.10× ratio; the command exits zero even
on gate failure. Dividing rounded durations gives 13.058824×, not the original unrounded
ratio. The durations' rounding intervals admit the printed ratio interval
13.095…13.105×. No precision beyond the retained printout is invented.

FFTW 3.3.11 uses existing static f64/f32 libraries from the installation
above, built with `-O3 -fPIC -std=gnu17`, SSE2/AVX/AVX2/AVX-512/FMA;
the single build also uses `--enable-float`. Library/source/configuration
hashes are in the manifest. Dependency versions are RustFFT 6.4.1,
PHASTFT 0.4.1, TFHE-FFT 0.10.1 and oxifft 0.4.2.

Preflight passed formatting, five arena tests, 107 fastfft release tests
(seven ignored), and 46 Python tests (18 supervisor, 28 audit). After timing,
a narrow G7 audit hardening makes rejected-suite strict diagnostics unable
to override admissible-suite G7 classifications; 29 audit tests pass,
including the new regression. The original and final audit tooling are
retained separately. No Rust changed; changed-Rust Clippy/codegen checks
were not applicable. Arena built-in reports run after each suite by existing
driver behavior; independent analysis and compression started after all
measurements stopped. A separate raw-evidence crosscheck agrees on coverage,
ratios, row failures, methods and classifications.

Exact absolute suite commands and the final seven-`--run` audit argv are
recorded in `manifest.json`. To reproduce the independent audit, pass each
suite's explicit retained `arena/` directory, saved G9 stdout, and **new**
output paths to [the auditor](../../../scripts/audit-ticket23-gates.py).
Its zero exit status means the audit completed, not that gates passed.

## Local evidence and follow-up

Evidence root:
`/home/ianhersom/repo/fastfft/target/ticket23-worktree/target/ticket23-evidence/campaign-20261009T180520Z`.
The verified **local-only** raw archive is
`target/ticket23-evidence/archives/campaign-20261009T180520Z-raw.tar.gz`
(58,977,673 bytes), SHA-256
`56fe7fc12a88fb6d29ed1bc65a5029666898edf23b2cd5dceeed8ec2d8568e69`.
It contains all 283 raw/source/provenance evidence files, including the
rejected sweep, and excludes mutable `postprocess/` work. Four tar hardlink
entries were verified by their actual contents. The raw checksum manifest
covers 266,864,975 uncompressed bytes and has SHA-256
`09092b3522657fce55f40dbd8ad56c289fee2f19fe5d8926abaae9d9a5627ac0`.
Final audit/tool snapshots are retained separately under `postprocess/`
and hashed in the publication manifest. These paths are local artifacts,
not remotely downloadable links. Raw JSONL, binaries, logs, plots and
archives stay outside source control.

Focused work is recorded in tickets
[41](../../../.scratch/fastfft-v1/issues/41-small-out-of-place-release-floors.md)
(small out-of-place floors),
[42](../../../.scratch/fastfft-v1/issues/42-pow2-release-throughput.md)
(default/AVX2 pow2 and TFHE gaps),
[43](../../../.scratch/fastfft-v1/issues/43-batch-and-pipeline-g6.md)
(batch/pipelines),
[44](../../../.scratch/fastfft-v1/issues/44-clean-release-build-time.md)
(clean-build cost),
[45](../../../.scratch/fastfft-v1/issues/45-complete-g7-evidence.md)
(strict accuracy/sweep coverage), and
[46](../../../.scratch/fastfft-v1/issues/46-datacheck-robustness.md)
(zero/random robustness). Existing tickets 32–35, 37–39 and 40 retain
their distinct work. [Ticket 24](../../../.scratch/fastfft-v1/issues/24-revisit-gates.md)
remains open for the maintainer's threshold decision; no thresholds were
changed or exceptions carried over from ticket 19.

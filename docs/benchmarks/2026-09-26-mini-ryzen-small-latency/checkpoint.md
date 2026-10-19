# Ticket 11: bounded Small-kernel latency pass

**Bounded pass complete; acceptance failed. Ticket 11 remains claimed/unresolved.**
The retained local improvements are **not a clean promotion**: two broad-run
regressions recur in both matched repeat pairs, and some follow-up runs carry
drift flags. No commit or push was made.

## Baseline and protocol

The baseline is the dirty-tree Small implementation, not Stockham-only commit
`40d65034fed313a56e34b9c27e1aa088746067c6`. Its prior full acceptance checkpoint
is [small-engine](../2026-09-26-mini-ryzen-small-engine/checkpoint.md): f32
0.896× / 0.887×, f64 1.031× / 1.026× (best / median). That evidence is untouched.

Before editing, tracked changes and untracked source files were captured in
`baseline-source.patch` and `baseline-source.sha256`. The complete source archive,
arena executable and original compiled diagnostic are preserved under
`target/small-latency/baseline/`; executable hashes are in
`baseline-executables.sha256`. All measurements use the default target CPU,
CPU 2 and three separate processes, following `scripts/bench-env.sh check`.
There is no concurrent compilation or other benchmark during timing.

The control probe remains the existing **uncalibrated throughput proxy**.
Readings and drift flags are preserved without rescaling. This pass makes no
claim of calibrated frequency validation; ticket 32 remains separate. The
allocation/row-order sensitivity described by ticket 31 also remains separate.

## Diagnostic interface

The ignored `tests::small_candidate_timings` test accepts comma-separated
`FASTFFT_TIMING_N`, `FASTFFT_TIMING_PRECISION`, `FASTFFT_TIMING_CANDIDATE`
(`kernel:isa:lanes` or just kernel), and `FASTFFT_TIMING_SURFACE` filters.
No filter preserves the original size/precision/candidate coverage and adds
RustFFT public comparisons. Surfaces are `public`, `concrete`, and `kernel`;
RustFFT is measured only through its public interface. Test-only engine helpers
prepare pointers, scratch alignment and tables outside timing and call the real
production entry. No raw-pointer public interface or production diagnostic
feature was introduced.

CSV fields: `timing,pid,precision,n,kernel,isa,lanes,decomposition,direction,placement,surface,best_ns,median_ns`.
Every candidate is verified against the independent double-double reference
before timing. Timing inputs are zero, IP calls retain their dependency chain,
and Small out-of-place inputs are unchanged. There are no buffer resets inside
timing; input and output compiler barriers prevent elimination. Surface
differences are diagnostic, not proof of perfectly additive overhead.

`scripts/analyze-small-latency.py` is a read-only analysis tool. It requires
complete six-case matrices across three processes, validates duplicate and
invalid times, and separately aggregates process-best and process-median times.
It applies the ≥3% dual-statistic improvement rule, the individual-case 3%
regression veto and preservation of previously passing 0.95× RustFFT comparisons.
It never writes `small_dispatch.rs`. Its `arena` command applies the unchanged
64-cell gate separately per precision (≥0.95× each, geomean ≥1.2× for both stats).

## Bounded sequence

1. **N=16:** fixed split 4×4 SIMD schedule, constant twiddles, XMM f32 / YMM f64,
   AVX2+FMA and AVX-512 entries. Correctness passed. Neither precision/ISA
   specialization passed promotion: public in-place regressions exceed 3%.
   Incumbents retained; no scheduling refinement used. Rejected arithmetic and
   entry source, disassembly, executable and timings are archived in the working
   evidence tree. No N=16 specialized production leaf is retained.
2. **N=32:** initial 4×8 split schedule failed. One packing refinement per
   precision transposed wide registers before extracting halves; the initial
   assembly showed excess shuffles, and the AVX2 f32 leaf had 14 paired SIMD
   spill stores/reloads (not merely 28 unexplained stack references). The refined
   f32 AVX2 candidate passed the public gate (8.3% best / 4.1% median geomean
   improvement). Neither AVX-512 specialization earned a retained choice.
   For f64 at the full ISA cap, the existing 256-bit Stockham fallback qualified
   instead (11.6% / 10.7%). Matched focused full arena runs confirmed these two
   changes: f32 AVX2 8.9% / 7.6%, f64 default 5.6% / 7.4%; all four cases per
   precision improved. Maximum drift was 0.92% before / 1.12% after; neither
   run was flagged. Only the f32 AVX2 specialized N32 leaf remains in production.
3. **N=8:** the initial 2×4 schedule qualified for f32: 12.0% best / 16.0%
   median public geomean improvement, with no per-case or floor veto. It applies
   the odd-row constant twiddles before the rectangular transpose and uses
   exact-width stores. AVX2 ranked ahead of AVX-512, so the latter was pruned.
   Both f64 candidates failed; the direct generic incumbent remains. No N8
   refinement was used. Final-source focused arena confirmation improved all
   four cases: **17.2% best / 15.0% median** geomean, with no floor crossing.
   Both runs were unflagged. The specialization is selected for AVX2 and higher
   caps; lower caps retain the generic incumbent.

The first baseline focused command used `place=op` instead of the arena's `oop`,
so it selected zero cells. This empty run is retained and not used as evidence.
The corrected full f32 N=16 out-of-place run selected both directions, verified
all four library rows and reproduced the deficit: best geomean 0.566×, median
0.551×; worst 0.549×. Its maximum recorded drift was 0.96% (unflagged).

Baseline selected SSE f32 N=16 single-transform entries were inspected in the
compiled filtered diagnostic (`0x270410`, `0x2708e0`). Both read exactly 128 bytes
before storing exactly 128 bytes. Neither contains stack references or helper
calls. Twiddle loads, split arithmetic dependencies and transpose/interleave
shuffles remain; **stack references elsewhere are not treated as a spill count**.

## Final 64-cell acceptance: FAIL

The final-source command was exactly:

```sh
target/arena/fastfft-arena run --suite pow2 --profile full --max-n 256 \
  --libs fastfft,rustfft --procs 3 --core 2 \
  --label small-latency --out target/arena/small-latency-final
```

All 64 cells (32 per precision, N=2…256, both directions and IP/OP) are present,
with both required libraries verified, zero child failures and no abort.
Maximum recorded drift was 1.61%, unflagged. These are RustFFT/fastfft ratios;
**each precision and statistic must independently reach 1.2× geomean and
0.95× in every cell**. The generic arena report's 1.5× G1 headline is not this
acceptance test, and best and median are never pooled.

| Precision | Statistic | Geomean | Worst | Cells below 0.95× | Pass |
|---|---|---:|---:|---:|---|
| f32 | best | 0.926815× | 0.562542× | 11 / 32 | no |
| f32 | median | 0.911880× | 0.548965× | 12 / 32 | no |
| f64 | best | 1.036898× | 0.857263× | 7 / 32 | no |
| f64 | median | 1.030286× | 0.865049× | 8 / 32 | no |

The complete per-cell ratios and remaining failures are in
[acceptance.json](acceptance.json), backed by unchanged compressed
[raw results](results.jsonl.gz), [environment](env.json), [metadata](meta.json)
and the standard [report](report.md). f32 N16 out-of-place remains the largest
individual deficit. N32 f32 at the full cap still uses its incumbent, not the
AVX2-only-cap specialization. The f64 N32 fallback improves local latency but
does not eliminate all RustFFT floor failures. No broader tuning was attempted
to manufacture a passing geomean.

## Regression qualifications

[The regression audit](regressions.md) contains all eleven initial >3% flags,
both matched repeat pairs, the f64 N2048/N1021 sentinels, descriptions and drift
qualifications. All 180 broad cells and 28 cells in each repeat verified.

- Rough **f32 N2018** recurs at +33–41% latency on both statistics.
- Rough **f32 N61** recurs at +4–5% on both statistics.
- The other nine initial flags do not exceed 3% on the same statistic in both
  repeat pairs. This is not proof that those paths cannot regress.
- N2048 f64 stays within 3% in both pairs. N1021 f64 is +2.6% / +2.9% in the
  first pair and +5.7% / +5.8% in the second; the existing qualification remains.
- Repeat-before-1 carries a **50.52% drift flag**. The frozen-source N32
  recheck's after run carries **27.21%**. Neither flag was waived or rescaled.

The final N32 recheck agrees numerically with the earlier unflagged focused
pair: f32 AVX2 improves 8.4% / 8.0%, and f64 default 5.9% / 7.5%, with no slower
target case or floor crossing. Its drift flag makes it qualified corroboration,
not a clean replacement for the primary evidence or the final 64-cell audit.
Unchanged plan descriptions/arithmetic do **not** exonerate the larger-size
regressions. No faster duplicate row was substituted, and no alignment
mitigation or control-policy change was introduced. Tickets 31 and 32 remain
separate follow-up work.

## Validation, source and reproduction

[Validation and assembly](validation.md) documents the successful final
format/Clippy/codegen checks, analysis fixtures, scalar/individual feature builds,
all five ISA-cap public suites and exhaustive M3 checks, specialized buffer and
accuracy tests, unchanged incumbent-table fingerprint, and actual spill counts.
Only f32 AVX2 N8 and N32 specialized arithmetic remains; rejected/unselected
N16, f64 and AVX-512 arithmetic is archived outside production.

The final arena SHA-256 is
`5db079a743eaf3e8a528f5e3440ae43c044088f0b2a7763bb7faceac223ebdba`.
[provenance.json](provenance.json), [executables.json](executables.json),
[source.patch](source.patch) and [source.sha256](source.sha256) identify the
exact tested source and binaries. The patch includes the preserved preexisting
dirty work relative to HEAD; it is not a claim that this pass authored all of
that work. Source archives and executable copies remain under
`target/small-latency/{baseline,final-source}/`.

Commands are in [commands.md](commands.md), [run-audit.sh](diagnostics/run-audit.sh),
[run-repeats.sh](diagnostics/run-repeats.sh), and
[validate.sh](diagnostics/validate.sh). Diagnostic CSVs, decision JSONs, rejected
leaf source/assembly, environment checks, logs and every matched run are in
`diagnostics/`. [publish.py](diagnostics/publish.py) packages that evidence without
changing older checkpoints. Source and executable hashes were rechecked after
all performance runs. The original benchmark evidence and ticket status are
untouched.

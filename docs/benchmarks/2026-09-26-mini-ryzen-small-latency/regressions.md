# Matched regression audit: qualified, not a clean promotion

The preserved **current-Small** arena and frozen final arena each ran the same
180-cell quick pow2/smooth/rough/batch suite, with `--libs fastfft,rustfft`, three
processes and CPU 2. Eleven cells were >3% slower on best or median. Two further
matched pairs covered all eleven flags and the existing f64 N2048/N1021
sentinels: 28 cells per run, including both precisions and matching batch cases
at the selected lengths. Specs and library row order match within every pair.
All rows verified; all runs had zero child failures and no abort.

Positive percentages below mean **fastfft became slower**. Each entry is
best / median; no statistic is pooled with the other.

| Cell (forward, in-place) | Initial 180-cell pair | Repeat pair 1 | Repeat pair 2 | Same >3% statistic in all three pairs |
|---|---:|---:|---:|---|
| batch f64 N256 B4096 | +2.77 / +5.97% | -7.26 / -17.72% | -3.78 / -4.50% | no |
| pow2 f32 N8388608 | +5.99 / +5.97% | -0.79 / -0.23% | +5.56 / +4.01% | no |
| rough f32 N2018 | +40.03 / +40.67% | +40.75 / +41.26% | +33.40 / +33.05% | **best and median** |
| rough f32 N61 | +4.95 / +4.75% | +5.05 / +4.34% | +4.40 / +4.71% | **best and median** |
| rough f64 N2053 | +7.68 / +7.63% | +0.80 / +1.30% | -0.55 / -0.54% | no |
| smooth f64 N120 | +8.27 / +6.00% | -1.10 / -0.09% | -0.70 / +0.33% | no |
| smooth f64 N12288 | +4.25 / +4.46% | +0.90 / +0.92% | +0.92 / +1.10% | no |
| smooth f64 N3072 | +3.76 / +3.96% | +3.86 / +4.08% | -2.15 / -2.16% | no |
| smooth f64 N384 | +9.08 / +9.85% | +0.86 / -0.19% | -5.67 / -6.08% | no |
| smooth f64 N504 | +2.02 / +3.19% | +2.30 / +1.28% | -0.77 / +0.08% | no |
| smooth f64 N96 | +0.88 / +4.90% | +0.01 / +0.03% | -1.11 / +0.11% | no |

Raw comparisons and descriptions are in
[regression-audit.json](diagnostics/regression-audit.json),
[quick-compare.json](diagnostics/quick-compare.json) and
[repeat-compare-1.json](diagnostics/repeat-compare-1.json) /
[repeat-compare-2.json](diagnostics/repeat-compare-2.json).
The latter files include all 28 cells, not just the initial flags.

## Recurring regressions

The two recurring cases have identical before/after descriptions:

- N2018: `bluestein n=2018 m=4096 inner=[stockham avx512-ymm split L=8 radices=8x8x8 scratch=4104]`.
- N61: `bluestein n=61 m=128 inner=[stockham avx512-ymm split L=8 radices=8x2 fixed n=128 scratch=136]`.

Neither executes a retained new N8/N32 specialized leaf. Generic Stockham,
codelets and Bluestein arithmetic were not changed by this pass. That is **not
an exoneration**: binary layout, planning/allocation context and measurement
context have not been isolated. N2018's earlier historical row-order-sensitive
flag had disappeared in the previous checkpoint's matched check; it recurs
here with the matched two-row list against the current-Small baseline.
It cannot be dismissed using the older result or a faster duplicate row.

The repeated observations disqualify this change from a **clean promotion**.
Pair 1's before run also has a drift qualification, retained below. Pair 2 is
unflagged and still shows both regressions. No alignment mitigation, extra
arithmetic tuning, row replacement or measurement-policy relaxation was made;
root-cause work remains separate under ticket 31.

## Existing sentinels

| f64 forward/IP sentinel | Initial pair best / median | Repeat 1 | Repeat 2 |
|---|---:|---:|---:|
| pow2 N2048 | -1.39 / -1.64% | -1.23 / -1.44% | +0.68 / +0.72% |
| rough N1021 | -3.37 / -3.24% | +2.58 / +2.92% | +5.69 / +5.80% |

Both still describe the same AVX-512 L8 8×4×8 Stockham plan (N1021 uses it as
its Bluestein inner N2048). N2048 is within 3% in both repeats. N1021 exceeds
3% in the second pair only; retain the existing qualification, not a claim
that ticket 31 is fixed. This was the only additional >3% repeat flag outside
the eleven initially flagged cells.

## Environment qualifications — all original flags retained

| Run | Cells | Maximum drift | Flag |
|---|---:|---:|---|
| quick-before | 180 | 1.00% | no |
| quick-after | 180 | 1.98% | no |
| repeat-before-1 | 28 | **50.52%** | **yes** |
| repeat-after-1 | 28 | 1.28% | no |
| repeat-before-2 | 28 | 1.20% | no |
| repeat-after-2 | 28 | 1.60% | no |
| n32-final-before | 8 | 0.89% | no |
| n32-final-after | 8 | **27.21%** | **yes** |

Repeat-before-1 contains a low startup probe of **9.993102** at pow2 f64 N256,
versus a run maximum of **20.196655**. The final N32 after run contains
**14.644628** at f64 inverse/out-of-place, versus **20.122860** maximum.
These are the original `clock_ghz` field values, but the probe is an
**uncalibrated throughput proxy, not validated GHz**. Its readings, flags and
`official` metadata are preserved exactly. No rescaling or waiver is applied;
`official: true` is not a claim of calibrated frequency validation. Ticket 32
remains separate.

The final N32 recheck numerically confirms the earlier focused changes, but
its after-run flag prevents describing it as clean confirmation. Its raw rows
remain in `diagnostics/n32-final-{before,after}/`, alongside the earlier
unflagged focused pair. Every other matched run likewise retains compressed
raw rows, environment, metadata, report and plots. Commands are in
[run-repeats.sh](diagnostics/run-repeats.sh). No extra repeats were selected to
replace an inconvenient run. Ticket 11 also independently fails the complete
64-cell acceptance gate.

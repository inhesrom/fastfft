# Larger-size regression investigation

The quick pow2/smooth/rough/batch comparison covered 180 cells with three
processes pinned to CPU 2. All rows verified and no child failed. This broad
run preceded the final scratch bounds fix; its source, executable hash and raw
results are retained in [before-scratch-audit](diagnostics/before-scratch-audit/).
It is diagnostic, not acceptance evidence: the original drift flag is **8.92%**.
Periodic controls were near 20.0–20.1 in the existing probe units; two isolated
startup readings were low (f64 pow2 N=262144 at 19.3292 and rough N=257 at
18.4019). The probe is not calibrated GHz; no flags or readings were changed.

Against ticket 10's published quick run, 14 cells outside N≤256 were more than
3% slower on best or median. That historical run used eight library rows and
this run used two, so its timing context differs. Two matched repetitions used
the retained ticket-10 executable and the final executable, both with
`--libs fastfft,rustfft --procs 3 --core 2`, on 30 cells covering every flag and
both startup outliers. Every plan description matched, and every row verified.
All four runs had zero child failures. Before-1 retained a 3.24% drift flag;
the other three runs were unflagged (1.03–1.05%). Raw results, metadata and
environments are in the `diagnostics/small-repeat-*` directories.

[The per-cell audit](regression-audit.json) retains both statistics for every
matched cell. Twelve of the fourteen historical flags did not repeat above 3%
on the same statistic in both pairs. In particular, the apparent 50% slowdown
at rough f32 N=2018 disappeared with a matched row list. The remaining cases
were pow2 f64 N=2048 and rough f64 N=1021. Both use the same unchanged Stockham
kernel: AVX-512, eight lanes, ordered radices 8×4×8; N=1021 uses it as its
Bluestein inner length of 2048.

## Focused row-order check

A further clean check repeated these two cells with four row lists. All eight
runs were unflagged (maximum drift 1.11%), with no child failures; all supported
rows verified. The table reports the default fastfft row's time change:
positive means slower after this implementation. The eight-row list is exactly
ticket 10's list, preserved in `diagnostics/run-row-check.sh`.

| Row list | f64 N=2048 best / median change | f64 N=1021 best / median change |
|---|---:|---:|
| fastfft, rustfft | +9.3% / +9.1% | +11.5% / +11.7% |
| rustfft, fastfft | -1.0% / -0.8% | -13.2% / -13.6% |
| fastfft, fastfft/avx512, rustfft | +24.8% / +24.2% | +13.9% / +13.8% |
| Ticket 10 eight-row list | +14.7% / +14.0% | -0.4% / -0.9% |

The default deficits recur with the original row order, but reverse sign with
rustfft first. In the final duplicated-row run at N=2048, default fastfft took
3.199 / 3.232 µs best / median while `fastfft/avx512` took 2.257 / 2.277 µs.
Both describe the exact same plan and run the same arithmetic. The eight-row
run also retains an N=2048 default-row deficit while its duplicate AVX-512 row
improves slightly. None of these transforms execute the new Small or fixed
Stockham kernels. Generic Stockham arithmetic, Bluestein execution and the
benchmark buffers/timing code are unchanged in the source patch.

This demonstrates sensitivity to allocation/timing context. It does **not**
establish whether allocation placement, code layout or timing order is the
root cause, or exonerate the default-row regressions. Planner/cache allocations
changed in this implementation and remain a plausible contributor. No row was
substituted in the headline results. Allocation instrumentation and per-pass
analysis remain the work of [ticket 31](../../../.scratch/fastfft-v1/issues/31-stockham-prototype-parity.md);
no alignment mitigation or measurement-policy change was introduced here.
Ticket 11 remains unresolved independently because its full small-N gate fails.

The source hashes in this directory identify all final matched runs; the
baseline hashes are in the [pre-edit baseline](../2026-09-26-mini-ryzen-small-before/).
The commands are retained in [run-final.sh](diagnostics/run-final.sh) and
[run-row-check.sh](diagnostics/run-row-check.sh), with raw data under
`diagnostics/small-repeat-*` and `diagnostics/small-row-*`.

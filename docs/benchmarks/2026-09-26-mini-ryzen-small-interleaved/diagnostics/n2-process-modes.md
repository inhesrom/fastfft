# N=2 out-of-place: per-process timing modes

> **Root cause found:** the arena's shared timing call site favours the first
> listed library; see
> [order-bias.md](../../2026-09-27-mini-ryzen-small-fair/diagnostics/order-bias.md).
> The reading at the end of this page predates the hardware counters.

Standalone `run-cell` processes of `pow2:f64:fwd:oop:n2` (spec copied from the
`accept-6` run, `--core 2`, arena build `arena-6`), one process at a time on an
otherwise idle machine. Each line is one process: best / p10 / median ns.

## 20 processes, default spec

In 17 processes fastfft stays in the fast mode (median 2.20-2.22) and rustfft
in its slow mode (median 2.99-3.19). In the other 3, **both flip at once**:
fastfft's median rises to 2.79 while rustfft drops to 2.41-2.42.

```
fast best 2.18 p10 2.20 med 2.79 | rust best 2.39 p10 2.39 med 2.41
fast best 2.18 p10 2.19 med 2.21 | rust best 2.99 p10 2.99 med 2.99
fast best 2.18 p10 2.20 med 2.20 | rust best 2.99 p10 2.99 med 2.99
fast best 2.18 p10 2.20 med 2.21 | rust best 2.98 p10 2.99 med 2.99
fast best 2.18 p10 2.21 med 2.79 | rust best 2.39 p10 2.41 med 2.42
fast best 2.18 p10 2.20 med 2.22 | rust best 2.99 p10 2.99 med 2.99
fast best 2.18 p10 2.21 med 2.79 | rust best 2.39 p10 2.41 med 2.42
fast best 2.18 p10 2.21 med 2.22 | rust best 2.98 p10 2.99 med 2.99
fast best 2.18 p10 2.21 med 2.21 | rust best 2.98 p10 3.19 med 3.19
fast best 2.18 p10 2.21 med 2.22 | rust best 2.99 p10 2.99 med 2.99
fast best 2.18 p10 2.21 med 2.22 | rust best 2.99 p10 2.99 med 2.99
fast best 2.18 p10 2.22 med 2.22 | rust best 2.98 p10 2.99 med 2.99
fast best 2.18 p10 2.21 med 2.22 | rust best 2.98 p10 2.99 med 2.99
fast best 2.18 p10 2.21 med 2.22 | rust best 2.99 p10 2.99 med 2.99
fast best 2.18 p10 2.22 med 2.22 | rust best 2.98 p10 2.99 med 2.99
fast best 2.18 p10 2.21 med 2.22 | rust best 2.99 p10 2.99 med 2.99
fast best 2.18 p10 2.21 med 2.22 | rust best 2.98 p10 2.99 med 3.19
fast best 2.18 p10 2.21 med 2.22 | rust best 2.99 p10 2.99 med 2.99
fast best 2.18 p10 2.21 med 2.22 | rust best 2.99 p10 2.99 med 3.00
fast best 2.18 p10 2.21 med 2.22 | rust best 3.00 p10 3.19 med 3.19
```

## Buffer misalignment

The same cell with `misalign` 16, 32 and 48 bytes, 20 processes each. The flip
rate barely moves and the two libraries still flip together:

| misalign | fastfft slow median | rustfft fast |
|---:|---:|---:|
| 16 | 2 / 20 | 2 / 20 |
| 32 | 1 / 20 | 1 / 20 |
| 48 | 2 / 20 | 2 / 20 |

## Address randomization disabled

`setarch $(uname -m) -R` gives every process identical virtual addresses. One of
ten processes still flips (fastfft median 2.79, rustfft 2.43), so the state is
not chosen by address placement.

## Reading

In the good state, fastfft's best (2.18 ns) is the arena's per-call floor; it
is identical for N=2 and N=4 in both precisions. The mode is a bistable
per-process state, apparently favouring one library's call chain over the
other's, and is independent of our kernel: the previous checkpoint failed the
same statistic with the old scalar kernel. The driver keeps each library's
process with the lowest best time, with ties resolved to the first process, so
a flipped process that is first can supply the median of a cell. Root-causing
needs hardware counters (`perf_event_paranoid` is 4 on this machine).

# Ticket 15: batch M4 checkpoint passes

The Ryzen 7 7840HS batch suite passes the combined 1.3× M4 checkpoint:
**1.3242× best / 1.3147× median** versus RustFFT. All **32 cells** verify;
maximum control drift is **1.67%**. The full-profile run covers f32/f64,
forward direction, both in-place and out-of-place, N=8…1024 and 2^20 total
complex elements per batch.

| Precision | Cells | Best geomean | Median geomean | Minimum ratio |
|---|---:|---:|---:|---:|
| f32 | 16 | 1.2639× | 1.2740× | 1.0558× |
| f64 | 16 | 1.3875× | 1.3568× | 0.9222× |
| Combined | 32 | 1.3242× | 1.3147× | 0.9222× |

The checkpoint is the combined geomean; f32 alone remains below 1.3×.
The minimum is the f64 N=32 in-place median, already tracked by ticket 35.
The **1.5× G6 release target remains unmet**, and real-world scenarios are
not measured here. G8 planning time also still fails: worst 20.14× RustFFT
at f64 N=16, versus 19.03× in the saved baseline. Tickets 18/23 retain
planning-cost and release-gate work.

## Improvement over the baseline

The [matching-build baseline](../2026-10-02-mini-ryzen-ticket15-before/checkpoint.md)
measures 1.0828× best / 1.0605× median over the same 32 cells. Fastfft's
own times improve by a geometric mean of **1.2489× best / 1.3150× median**.

| Out-of-place transform | Previous fastfft | Final fastfft | Final RustFFT |
|---|---:|---:|---:|
| f32 N=8 | 2.014 ns | 1.586 ns | 1.984 ns |
| f64 N=8 | 8.192 ns | 4.904 ns | 7.966 ns |
| f64 N=128 | 323.214 ns | 111.240 ns | 173.749 ns |
| f32 N=256 | 193.853 ns | 106.265 ns | 113.545 ns |
| f64 N=256 | 662.493 ns | 312.948 ns | 593.161 ns |
| f32 N=1024 | 896.286 ns | 674.694 ns | 941.988 ns |
| f64 N=1024 | 2418.119 ns | 1886.529 ns | 2694.973 ns |

These are best times per transform, with planning outside the timed loop.
The [generated report](report.md) contains every cell.

## Measured engine choice and validation

A hybrid engine wins on this CPU. Size-8 groups transpose four transforms
into SIMD lanes and back. Larger in-place batches retain the original
kernels. Large aligned separate-output batches use fenced streaming stores:
existing Small leaves through N=256, then four-result stack tiles around
Stockham at N=512/1024. f64 N=128/256 also read ahead two transforms.
Broader across-transform prototypes were correct but slower than the
existing leaves, so they remain [diagnostics](diagnostics/README.md).

Public APIs and advertised scratch lengths stay unchanged. Tests cover both
precisions, both directions, all ISA caps, every placement, batch counts
{1,3,5,8}, offset buffers, guards, immutable input, exact and oversized
scratch, and rejection of insufficient scratch before mutation. Full
release/tier checks, restricted-feature builds, Clippy, formatting and
code generation checks pass; the final kernel changes pass targeted
contract checks. The [validation record](validation.md) records commands
and a matched single-transform overhead check (+0.99% best / +0.82% median).

## Measurement history and reproduction

Early candidate builds omitted the documented function-alignment flag.
They are archived as diagnostics and excluded from the final comparison.
The first matching-build run measured 1.3199× / 1.2995× with 0.86% drift,
missing the median checkpoint by 0.04%. One unchanged full repeat is the
passing result above; the near miss is retained. No timings are combined
across runs. The modest margin and timing spread remain visible in the
raw data and both complete matched-build reports.

Both baseline and final measurements use an idle machine, default target
CPU, 64-byte function alignment, core 2, three processes, and boost enabled.
Compilation and tests complete before timing.

```sh
RUSTFLAGS='-C llvm-args=-align-all-functions=6' \
  cargo build --profile arena -p fastfft-arena --features fftw -j 2
scripts/bench-env.sh check --core 2
target/arena/fastfft-arena run --suite batch --profile full \
  --libs fastfft,rustfft --core 2 --procs 3 \
  --out target/arena/runs/ticket15-batch
python3 docs/benchmarks/2026-10-02-mini-ryzen-ticket15-batch/check-m4.py \
  target/arena/runs/ticket15-batch
```

The checker also validates the archived results without arguments. It
requires exact coverage, verification, the established build settings,
full profile, core 2, three processes, an official unflagged run and both
combined geomeans ≥1.3×. It rejects the first matched run and accepts the
unchanged repeat. Source/executable hashes, the patch from `a4d8aae`, raw
results, environment, plots and validation logs accompany this report.

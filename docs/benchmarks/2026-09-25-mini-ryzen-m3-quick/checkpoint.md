# Ticket 10: M3 checkpoint on Zen 4

**Verdict: correctness passes; the 1.3× performance checkpoint does not.**
The default Estimate planner reaches 1.085× rustfft for f32 and 1.081× for
f64 on the nine powers of two from 64 through 16384. Median-time ratios are
1.080× and 1.068× respectively. The threshold is unchanged.

This completes ticket 10's measurement, investigation, publication, and
follow-up work. It does not complete the M3 milestone or the release gates.

## M3 results

| Precision | Default: best | Default: median | AVX2 cap: best | AVX2 cap: median | 256-bit AVX-512 cap: best | 256-bit AVX-512 cap: median | Prototype `dit-ymm-r8`: best | Prototype: median |
|---|---:|---:|---:|---:|---:|---:|---:|---:|
| f32 | 1.085× | 1.080× | 0.853× | 0.854× | 1.109× | 1.105× | 1.122× | 1.115× |
| f64 | 1.081× | 1.068× | 0.982× | 0.974× | 1.177× | 1.169× | 1.186× | 1.177× |

These are forward, in-place quick-profile measurements, with best of three
processes on CPU 2. Each column uses all nine sizes. ISA-labelled library
rows cap the available ISA; they do not force a vector width. For example,
`fastfft/avx512` still selects 256-bit vectors for f32. The default f64 row
uses 512-bit vectors, so the 256-bit prototype is not an equal-shape
comparison for that row. Ordered radices can also differ; the raw rows
record `describe_plan` for each case.

M2's 1.29× prototype result used the sparse set 256, 1024, 4096, 16384,
65536. M3 includes every power of two in 64…16384, including the weak small
sizes, so those geomeans are not interchangeable.

The strict accuracy checks cover all 1,202 lengths whose prime factors are
at most 13, from 1 through 32768, in both precisions and directions under
all five ISA caps. A separate internal check covers every eligible length
on every supported vector shape in all three placements. This includes
AVX2 on the AVX-512 host. See [validation.md](validation.md).

## Whole-suite geomeans against rustfft

Each entry is **best (median)**. The main report contains every ISA row,
cell counts, worst cases, accuracy measurements, and plots. Prototype rows
are compared only where supported; their whole-suite geomeans must not be
compared directly with a library row covering additional sizes.

| Suite | Precision | Cells | fastfft | fastfft/avx2 |
|---|---|---:|---:|---:|
| Power of two, 2¹…2²⁴ | f32 | 24 | 0.754× (0.748×) | 0.663× (0.663×) |
| Power of two, 2¹…2²⁴ | f64 | 24 | 0.777× (0.770×) | 0.729× (0.726×) |
| Smooth | f32 | 41 | 0.819× (0.815×) | 0.692× (0.686×) |
| Smooth | f64 | 41 | 1.005× (0.997×) | 0.853× (0.852×) |
| Rough | f32 | 17 | 0.792× (0.787×) | 0.661× (0.656×) |
| Rough | f64 | 17 | 0.726× (0.722×) | 0.620× (0.616×) |
| Batch | f32 | 8 | 0.493× (0.486×) | 0.424× (0.420×) |
| Batch | f64 | 8 | 0.688× (0.721×) | 0.632× (0.666×) |

The quick-profile gate table in [report.md](report.md) is diagnostic.
Inverse/out-of-place performance, real-world scenarios, competing Rust
libraries beyond rustfft, and the release build-time gate are outside this
run. It does not certify G1–G9.

## Engine changes and remaining variation

- Separate the final pass's full SIMD blocks from its partial tail so full
  blocks compile to fixed-size loads and stores.
- Give each SIMD radix pass and final-pass variant its own target-feature
  function, keeping their register allocation independent.
- Select the twiddle-free first pass at compile time. Its `USER` contract
  now explicitly requires `ns == 1`.
- Expand correctness validation, including the previously omitted AVX2
  vector shapes on AVX-512 hosts.

The main run exposes an allocation/order sensitivity at N=4096 f32. All
three library rows below use exactly the same AVX-512-ymm, L=8, 8×8×8 plan:

| Row | Best (µs) | Median (µs) |
|---|---:|---:|
| fastfft | 2.819 | 2.861 |
| fastfft/avx512 | 2.362 | 2.401 |
| fastfft/avx512-ymm | 2.404 | 2.432 |
| lab/dit-ymm-r8 | 2.443 | 2.476 |

The kernel can match the prototype, but the default row does not do so
reliably. Its timing remains the headline result. Ticket 31 records the
reproducer and asks for allocation-placement/row-order experiments and
per-pass measurements. Aligned or compact vector twiddle tables and a
shared opaque input/output index did not consistently improve the measured
candidate; those experiments were removed.

The matched three-row diagnostic (same N=4096 f32 case, quick profile, CPU 2, three processes, and row list) recorded:

| Row | Before best (µs) | After best (µs) | Before median (µs) | After median (µs) |
|---|---:|---:|---:|---:|
| fastfft | 3.446 | 2.627 | 3.488 | 2.664 |
| rustfft | 3.243 | 3.302 | 3.277 | 3.345 |
| lab/dit-ymm-r8 | 2.623 | 2.788 | 2.676 | 2.842 |

The library’s best time fell by 23.8% in this diagnostic. The prototype also varies with process/allocation placement, so this single-cell comparison does not establish parity across every placement. The main eight-row run above remains the checkpoint evidence. The original results and environment/metadata are preserved under [diagnostics/](diagnostics/).

## AVX2 radix 4 versus 8

The comparison uses the prototype’s **maximum** radix 4 or 8; plans may also contain smaller radices. Speedup below is radix-8 time divided by radix-4 time, so values above 1 favor radix 4.

| Precision | Range | Common cells | Radix 4 vs 8: best | Median |
|---|---|---:|---:|---:|
| f32 | All supported powers of two | 19 | 0.970× | 0.965× |
| f32 | M3: 64…16384 | 9 | 1.029× | 1.023× |
| f64 | All supported powers of two | 21 | 0.950× | 0.945× |
| f64 | M3: 64…16384 | 9 | 1.038× | 1.035× |

**Decision: retain the current maximum radix of 8 on AVX2.** Radix 4 is slower over the complete supported range in both precisions. Its M3-range advantage is modest and size-dependent: approximately 2.9% (2.3% median) for f32 and 3.8% (3.5% median) for f64. For example, radix 4 wins f32 N=512 and f64 N=256/1024/16384, while radix 8 wins consistently at the largest sizes.

Ticket 18 will choose per-size radices from measurements of the production kernels. Prototype schedules differ from the library’s dynamic-programming schedules, and the production AVX2 row sometimes beats both prototype rows. These data do not justify applying the prototype’s maximum-radix-4 policy to every library plan.

See the [full radix report](../2026-09-25-mini-ryzen-m3-avx2-radices/report.md) for every cell, both prototype rows, `fastfft/avx2`, and the 512-bit prototype.

## Measurement validity and source

The main run contains all 180 expected cells: 48 power-of-two, 82 smooth,
34 rough, and 16 batch. Every cell has three process samples. All 1,312
timed rows pass verification; the other 128 rows are expected unsupported
prototype combinations. There are zero child failures and no abort.
Recorded maximum control drift is 2.15%, with no drift flag. The environment
check passed with governor/EPP `performance`, boost enabled, CPU 2 pinned,
and no native-CPU compiler flags.

The radix run contains all 48 power-of-two cells, each with three processes: 260 verified timed rows and 28 expected unsupported prototype rows. It has zero child failures, no abort, and no drift flag; maximum recorded drift is 1.96%.

The arena's clock probe is an **uncalibrated throughput proxy**, despite the
raw field name `clock_ghz`. Inspection of the compiled loop shows that four
intended dependent additions become one `addq $4` instruction; the formula
still counts four. Ticket 32 tracks calibration and drift validation. The
reported drift above uses the existing protocol unchanged. FFT times and
speedup ratios use `Instant` independently and are not rescaled.

Above 2²⁰, library rows are checked against rustfft f64 plus a roundtrip.
Prototype rows support forward transforms only, so their raw verification
records explicitly note that the inverse roundtrip was skipped. M3's
in-cache data uses the independent double-double reference.

The measured build is base commit
`a77142dd9e24bd3d4e32157c996361d04fd390f8` plus [source.patch](source.patch).
The environment records the dirty worktree. [source.sha256](source.sha256)
identifies the executable and modified implementation/test files; the
patch preserves the exact measured source independently of later commits.
The same executable is used for both published runs.

A subsequent test-only [validation.patch](validation.patch) makes the
placement helper reject non-finite errors before taking their maximum.
The complete internal suite, including the exhaustive M3 check, passed
again with that guard. Apply this patch after `source.patch` to reconstruct
the final tests; the measured engine and executable are unchanged.

## Reproduce

```sh
cargo build --profile arena -p fastfft-arena --features fftw
scripts/bench-env.sh check

target/arena/fastfft-arena run --suite pow2,smooth,rough,batch \
  --profile quick --procs 3 --core 2 --timeout 1800 \
  --libs fastfft,fastfft/avx2,fastfft/avx512,fastfft/avx512-ymm,fastfft/sse2,fastfft/scalar,rustfft,lab/dit-ymm-r8 \
  --out target/arena/ticket10-m3-quick

target/arena/fastfft-arena run --suite pow2 \
  --profile quick --procs 3 --core 2 --timeout 1800 \
  --libs fastfft,fastfft/avx2,rustfft,lab/dit-avx2-r4,lab/dit-avx2-r8,lab/dit-zmm-r8 \
  --out target/arena/ticket10-avx2-radices
```

Run benchmarks on an idle machine after builds and tests finish.
`cargo bench -p fastfft` completed all 12 Criterion benchmarks; those
numbers are developer checks and are not used for the claims above.

## Follow-up work

The local tracker links the next steps:

- [Ticket 11](../../../.scratch/fastfft-v1/issues/11-small-n-engine.md): Small engine; small sizes remain expensive.
- [Ticket 13](../../../.scratch/fastfft-v1/issues/13-odd-smooth-sizes-simd.md): SIMD for odd and weakly-even smooth sizes.
- [Ticket 14](../../../.scratch/fastfft-v1/issues/14-fourstep-large-n.md): FourStep engine for large sizes.
- [Ticket 15](../../../.scratch/fastfft-v1/issues/15-batch-engine.md): batch engine.
- [Ticket 17](../../../.scratch/fastfft-v1/issues/17-bluestein-speed.md): Bluestein performance.
- [Ticket 18](../../../.scratch/fastfft-v1/issues/18-tune-cost-tables.md): measured costs, per-size widths/radices, and Estimate planning
  time. The main quick run's worst planning-time ratio is 60.99× rustfft.
- [Ticket 31](../../../.scratch/fastfft-v1/issues/31-stockham-prototype-parity.md): make equal-plan performance reliable across allocation
  placements and row order.
- [Ticket 32](../../../.scratch/fastfft-v1/issues/32-clock-probe-calibration.md): calibrate the clock probe and validate its drift behavior.

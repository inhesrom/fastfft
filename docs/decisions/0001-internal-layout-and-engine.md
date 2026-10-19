# ADR-0001: Internal data layout, vector width and radix for the fastfft engine

- Status: **accepted with revisions** (2026-09-24). In the review
  ([ticket 09](../../.scratch/fastfft-v1/issues/09-accept-m2-go-no-go.md)) the maintainer passed
  the go/no-go and accepted §4 with the revisions recorded in §8. The final M2 measurement is in
  §3.2 and §5; the iteration history is in §7.
- Date: 2026-09-23 (proposed), 2026-09-24 (accepted)
- Machine: AMD Ryzen 7 7840HS (Zen 4, family 25 model 116), ~5.0 GHz single-core boost,
  governor `performance`, rustc 1.95.0, default target CPU + `#[target_feature]` entry points.
- Code: `experiments/kernel-lab` (throwaway), generator `crates/fastfft-codegen`.

## 1. Question

M2 (FFT-020/021) had to decide, by measurement:

1. the internal layout: separate re/im registers ("split") or interleaved complex registers;
2. the Zen 4 vector width: 512-bit, or 256-bit with AVX-512VL's 32 registers ("avx512-ymm");
3. radix preferences for the vertical Stockham passes;
4. go/no-go: the best variant must reach ≥ 1.25× rustfft geomean (f32, forward, in place,
   AVX-512, N = 256 … 65536).

## 2. Zen 4 micro-architecture measurements (inline asm, 12 independent chains)

| Instruction | zmm (512-bit) per cycle | ymm (256-bit) per cycle |
|---|---|---|
| `vaddps` | 1.0 | 2.0 |
| `vfmadd231ps`, `vmulps`, `vfmaddsub` | 1.0 | 2.0 |
| add + FMA mixed | 1.62 | – |
| in-lane shuffles (`vpermilps`, `vunpcklpd`, `vmovsldup`) | 1.4 | 2.4–2.7 |
| `vshufps`, `vunpcklps` | 1.2 | 2.4 |
| cross-lane (`vpermt2ps`, `vpermps`, `vshuff32x4` / `vperm2f128`) | 1.0 | 2.0 |
| store (sequential, L1) | 0.5 (2 cycles each) | 1.0 |
| load, `vbroadcastss` | 1.0 | – |

Consequences:

- **Per element, 512-bit and 256-bit have identical FP, shuffle and store throughput on
  Zen 4.** AVX-512's value here is 32 registers, masks and 2-source permutes, not width.
- FFT butterflies are add-heavy; adds and FMAs run on separate pipe pairs. Moving adds onto
  the FMA pipes (FMA-fused twiddle butterflies, `a*1 + b` for the rest) is worth up to
  ~1.5× on the arithmetic.
- A 512-bit store costs 2 cycles: a radix-8 split pass is store-bound at ≥ 0.25 cycles/element.

## 3. Variants measured

All variants compute the power-of-two FFT as N = M·L: **Phase A** runs a length-M Stockham FFT
along the vector index (each of the L lanes is an independent decimated sub-sequence; every
twiddle is a broadcast scalar; no shuffles), **Phase B** loads L consecutive vectors,
transposes L×L in registers, applies per-lane twiddles, runs a DFT-L across registers and stores
contiguous vectors in natural order. All variants verify against the double-double reference
(errors 0.7–1.2 ε for N = 64 … 65536).

### 3.1 First cut: DIF Stockham, hand-written codelets (`kernel-lab`, 24 variants)

Ratio vs rustfft (in-process quick timing, f32 forward in place; higher is better):

| N | inter-avx512 | split-avx512 | inter-avx512ymm | split-avx512ymm | inter-avx2 | split-avx2 |
|---|---|---|---|---|---|---|
| 64 | 0.50 | n/a | 0.52 | 0.47 | 0.53 | 0.47 |
| 256 | 0.78 | 0.96 | 0.71 | 0.63 | 0.91 | 0.65 |
| 1024 | 0.89 | 0.93 | 0.65 | 0.73 | 0.87 | 0.75 |
| 4096 | 0.62 | 0.81 | 0.69 | 0.60 | 0.89 | 0.63 |
| 16384 | 0.65 | 0.89 | 0.68 | 0.66 | 0.97 | 0.72 |
| 65536 | 0.72 | 0.87 | 0.45 | 0.69 | 0.57 | 0.80 |

Per-pass profile (N = 1024, in L1): radix-8 split pass without twiddles 0.38 cycles/element
(add-bound, as predicted); with twiddles and stride-1 inner loop 0.62; first pass (deinterleave)
0.76–0.94; Phase B 1.9 (split, L = 16: 32 registers of data → spills) vs 1.0 (interleaved, L = 8).
Radix-16 split spills (352 spill stores in the kernel). Padding scratch buffers against 4 KB
set conflicts did not help overall.

### 3.2 Prototype of the M3 design: DIT Stockham + generated codelets (`kernel-lab::dit`)

Split layout, codelets from `fastfft-codegen` (DIT input twiddles fused into FMAs, add/FMA pipe
balancing), contiguous inner loops with per-butterfly broadcast twiddles, Phase B uses the
twiddled codelet with per-lane vector twiddles.

**Final measurement:** the official arena run `m2-final`, published in
[`docs/benchmarks/2026-09-23-mini-ryzen-m2-final/`](../benchmarks/2026-09-23-mini-ryzen-m2-final/report.md).

- Setup: full profile, forward in place, best of 3 processes per cell, pinned to core 2.
  Core-clock drift was 1.5%. Commit 82f82bc, with the lab scratch 64-byte aligned (§7).
- Every row passed verification against the double-double reference. The worst relative L2
  error of any row other than rustfft is 1.26 ε; rustfft's worst is 1.83 ε.
- Each cell is the speedup vs rustfft: the best-time ratio, with the median-time ratio in
  parentheses. The rustfft column is rustfft's best time. The last row is the geomean over
  N = 256 … 65536.

Rows:

- `dit-*`: this prototype after the §7 iterations. `ymm` = 256-bit with 32 registers,
  `zmm` = 512-bit, `avx2` = 16 registers.
- `inter-*`: the naive interleaved DIF variants of §3.1.
- `fastfft`: the library with its Estimate planner. `fastfft/avx2`: the library capped at AVX2.
- `fftw`: FFTW 3.3.11 (our AVX-512 build, `FFTW_MEASURE`), for calibration.

| N (f32) | rustfft | dit-ymm-r8 | dit-zmm-r8 | dit-avx2-r4 | inter-avx512-r8 | inter-avx2-r8 | fastfft | fastfft/avx2 | fftw |
|---|---|---|---|---|---|---|---|---|---|
| 64 | 20.9 ns | 0.68 (0.70) | – | 0.53 (0.53) | 0.68 (0.70) | 0.69 (0.70) | 0.38 (0.38) | 0.34 (0.34) | 0.56 (0.57) |
| 256 | 104.0 ns | 0.97 (0.95) | 0.85 (0.81) | 0.72 (0.71) | 0.72 (0.71) | 0.82 (0.80) | 0.63 (0.61) | 0.55 (0.53) | 0.83 (0.71) |
| 1024 | 615.8 ns | 1.27 (1.27) | 1.14 (1.14) | 1.00 (0.99) | 0.93 (0.94) | 1.00 (0.99) | 0.89 (0.88) | 0.75 (0.75) | 1.31 (1.15) |
| 4096 | 3.43 µs | 1.41 (1.41) | 1.10 (1.11) | 0.96 (0.96) | 0.86 (0.84) | 1.05 (1.04) | 1.08 (1.08) | 0.85 (0.85) | 1.22 (1.20) |
| 16384 | 16.29 µs | 1.46 (1.47) | 1.11 (1.13) | 1.02 (1.02) | 0.76 (0.77) | 1.09 (1.09) | 1.17 (1.18) | 0.93 (0.94) | 0.96 (0.95) |
| 65536 | 83.35 µs | 1.38 (1.37) | 1.16 (1.17) | 1.05 (1.04) | 0.98 (0.97) | 1.04 (1.02) | 1.19 (1.19) | 0.96 (0.95) | 0.86 (0.85) |
| **geomean 256–65536** | | **1.29 (1.28)** | **1.07 (1.06)** | **0.94 (0.94)** | **0.84 (0.84)** | **0.99 (0.98)** | **0.97 (0.96)** | **0.79 (0.79)** | **1.02 (0.95)** |

| N (f64) | rustfft | dit-ymm-r8 | dit-zmm-r8 | dit-avx2-r4 | inter-avx512-r8 | inter-avx2-r8 | fastfft | fastfft/avx2 | fftw |
|---|---|---|---|---|---|---|---|---|---|
| 64 | 39.4 ns | 0.78 (0.76) | 0.85 (0.78) | 0.73 (0.70) | 0.85 (0.81) | 0.69 (0.68) | 0.46 (0.45) | 0.52 (0.51) | 0.84 (0.82) |
| 256 | 206.2 ns | 1.13 (1.11) | 1.05 (1.00) | 0.93 (0.91) | 0.77 (0.76) | 0.85 (0.83) | 0.70 (0.68) | 0.77 (0.76) | 1.06 (0.97) |
| 1024 | 1.22 µs | 1.25 (1.24) | 1.23 (1.23) | 1.07 (1.06) | 0.81 (0.80) | 0.92 (0.91) | 0.90 (0.90) | 0.96 (0.94) | 1.21 (1.17) |
| 4096 | 6.80 µs | 1.39 (1.39) | 1.46 (1.48) | 1.16 (1.16) | 0.95 (0.96) | 0.97 (0.97) | 1.08 (1.08) | 1.02 (1.02) | 1.11 (1.11) |
| 16384 | 33.74 µs | 1.56 (1.57) | 1.60 (1.63) | 1.29 (1.30) | 1.00 (1.00) | 0.96 (0.96) | 1.20 (1.21) | 1.10 (1.11) | 1.11 (1.11) |
| 65536 | 172.41 µs | 1.30 (1.29) | 1.45 (1.46) | 1.11 (1.11) | 1.01 (1.01) | 1.09 (1.09) | 1.20 (1.22) | 1.20 (1.20) | 1.08 (1.07) |
| **geomean 256–65536** | | **1.32 (1.31)** | **1.35 (1.34)** | **1.10 (1.10)** | **0.90 (0.90)** | **0.96 (0.95)** | **0.99 (1.00)** | **1.00 (1.00)** | **1.11 (1.08)** |

Notes:

- `dit-zmm-r8` does not support f32 N = 64.
- The first measurement of this prototype, before the §7 iterations and with in-process quick
  timing, was 1.05× for `ymm-r8`. Taking the best of `zmm-r8`, `ymm-r4` and `ymm-r8` at each N
  gave 1.07×.
- In an earlier quick-profile run, FFTW fell to 0.59× rustfft at 2^20 f32.

## 4. Decisions (per the ADR rules in ROADMAP M2)

Proposed for the review; the maintainer accepted them with the revisions in §8, which the items
below reflect.

1. **Layout: split on every tier for now. The layout rule is not met on AVX2, and the AVX2
   layout is deferred (§8).**
   - Why split: with generated codelets it needs fewer FP ops and no shuffles in Phase A.
     Interleaved only won Phase B, and only with hand-written codelets.
   - The rule: use one layout alone if it wins by ≥ 5% geomean on both AVX-512 and AVX2.
     Otherwise build both and let the planner choose.
   - Applied to the final run (§3.2): each value is split's geomean speedup divided by
     interleaved's, N = 256 … 65536, best times (median times in parentheses):

     | split ÷ interleaved | f32 | f64 |
     |---|---|---|
     | AVX-512: `dit-ymm-r8` ÷ `inter-avx512-r8` | 1.52 (1.52) | 1.46 (1.46) |
     | AVX-512, both 512-bit: `dit-zmm-r8` ÷ `inter-avx512-r8` | 1.26 (1.27) | 1.49 (1.49) |
     | AVX2: `dit-avx2-r4` ÷ `inter-avx2-r8` | **0.95 (0.95)** | 1.16 (1.16) |

   - AVX-512: split wins by far more than 5%. Interleaved runs at 66–68% of `dit-ymm-r8`'s
     speed.
   - AVX2: interleaved is 5% ahead for f32, and split is 16% ahead for f64. Pooled over both
     precisions, split leads by only 4.8%.
   - Outcome: for f32, no layout wins by ≥ 5% on both tiers. For f64, split does. The rule
     does not separate precisions, and pooled over both, split's AVX2 lead (4.8%) is under 5%.
     As written, the rule therefore gives **both layouts, with the planner choosing**. Split
     dominates on AVX-512, so the second layout matters only on AVX2.
   - Caveat: the interleaved rows are the naive first-cut DIF variants (§3.1: hand-written
     codelets, DIF Stockham). The split rows are the DIT prototype with generated codelets.
     So the comparison mixes layout with codelet quality. An interleaved DIT engine with
     generated codelets would probably do better than these rows.
   - Review outcome (§8): build split only for now. Whether to add an interleaved AVX2 engine
     is decided with G5 data from ticket 23 (Zen 4, AVX2 forced) and ticket 27 (AVX2-only
     machine).
2. **Zen 4 vector width: 256-bit with 32 registers (`Avx512Ymm`) by default for f32, 512-bit by
   default for f64.**
   - f32: 256-bit beats 512-bit by more than the 3% the rule requires: 1.29× vs 1.07× geomean
     in the final run, and 12–32% faster at every N from 256 to 65536. L = 8 keeps Phase B's
     DFT-8 and transposes in registers.
   - f64: 512-bit leads by 2% (1.35× vs 1.32×). 256-bit is faster only at N = 256 and 1024,
     so the rule keeps 512-bit for f64.
   - The planner chooses the width per size (the cost tables, ticket 18). Today it always uses
     512-bit for f64.
   - This is a Zen 4 result: every Zen 4 part runs 512-bit instructions on 256-bit units (§2,
     §8). CPUs with 512-bit datapaths get their own tables (tickets 27, 28).
3. **Radix:** at most 8 for power-of-two split passes on SIMD tiers (radix-16 needs 32 data
   registers and spills), chosen per tier by the cost model. The proposed radix 4 on AVX2-only
   tiers (16 registers) is open until measured (ticket 10 or 18; §8). DIT passes with
   contiguous inner loops; DIF-style twiddle-free first pass is the DIT first pass.
4. **Engine structure:** keep the two-phase design (vertical Stockham + one across-lane pass),
   add a four-step (Bailey) engine for large N, where rustfft and FFTW both slow down. The
   proposed switch point, 2^15, is provisional: tickets 14 and 16 set it by measurement from
   detected cache sizes.

## 5. Go/no-go: passed — the prototype reaches the threshold (1.29× ≥ 1.25×)

Final run (§3.2): geomean speedup vs rustfft over N = 256 … 65536, forward, in place, on the
AVX-512 machine. Each value is the best-time ratio, with the median-time ratio in parentheses:

| row | f32 | f64 |
|---|---|---|
| `lab/dit-ymm-r8` | **1.29× (1.28×)** | 1.32× (1.31×) |
| `lab/dit-zmm-r8` | 1.07× (1.06×) | 1.35× (1.34×) |
| `lab/dit-avx2-r4` | 0.94× (0.94×) | 1.10× (1.10×) |
| `lab/inter-avx512-r8` | 0.84× (0.84×) | 0.90× (0.90×) |
| `lab/inter-avx2-r8` | 0.99× (0.98×) | 0.96× (0.95×) |
| `fastfft` | 0.97× (0.96×) | 0.99× (1.00×) |
| `fastfft/avx2` | 0.79× (0.79×) | 1.00× (1.00×) |
| `fftw` | 1.02× (0.95×) | 1.11× (1.08×) |

The criterion applies to the best variant for f32. **`lab/dit-ymm-r8` measures 1.29× (median
1.28×), against a threshold of 1.25×.** The first measurement of this prototype was 1.07×
(§3.2).

The maintainer passed the go/no-go in the review (ticket 09, §8). The points put to that
review:

- **The margin is 3%.**
  - The prototype's own times are stable to ±1.5% across processes (§7).
  - rustfft's times vary with address placement (§7). In this run's control cells, rustfft at
    N = 4096 f32 measured 3.43 µs at the start and 3.76 µs at the end, while the core clock
    moved only 1.5%. The table's N = 4096 cell has rustfft at 3.43 µs, its fast placement.
- **The library does not reach the prototype.** `fastfft` measures 0.97× (f32) and 0.99× (f64).
  - Per N, it runs at 55–86% of `dit-ymm-r8`'s speed for f32, and 54–83% of `dit-zmm-r8`'s for
    f64.
  - It runs at 76% even with the same vector shape, L and radices (N = 4096 f32: 256-bit,
    L = 8, 8·8·8): 3.18 µs vs 2.43 µs.
  - `fastfft/avx2` (0.79× f32) also trails `dit-avx2-r4` (0.94×). Its plans use radix 8 on
    AVX2 (the planner caps powers of two at 8 on every SIMD tier), where §4.3 proposes 4.
  - Closing this gap is the job of ticket 10 (library vs prototype at equal plans).
- **The layout rule is not met on AVX2** (§4.1).

Remaining known headroom (estimates from the measured per-pass costs):

- Phase B (across-lane pass) is still ~2× its throughput bound: the generic transposes use
  4 shuffles per output at k = 1; a hand-scheduled 8×8 transpose uses 3.
- The small-N end (N ≤ 256) is dominated by Phase B and loop overhead; a register-resident
  Small engine (whole transform in registers) targets it.
- Large N: the multi-pass Stockham streams the whole array per pass; a four-step with
  L1/L2-sized panels needs 2 passes over memory. rustfft is ~13.8 cycles/element at 2^20 f32
  (2.89 ms) where a 2-pass design is bandwidth-bound at roughly a third of that.

## 6. Consequences

M3 builds the library on the split layout on every tier (the AVX2 layout is revisited with G5
data, §8) with generated codelets, DIT Stockham Phase A, a transposing Phase B, and
256-bit/32-register vectors as the Zen 4 default for f32 (512-bit for f64, with a per-size
choice). The library must first match the prototype: ticket 10's M3 checkpoint requires ≥ 1.3×
rustfft on in-cache powers of two. The gates in ROADMAP.md are revisited before M6 with the
measured data.

## 7. M2 iteration log (after the first review)

Changes to the DIT prototype, each measured in the arena (3 processes per cell, best kept):

1. AVX-512VL two-source permutes (`vpermt2ps`) for deinterleave/interleave and the transpose's
   odd stage on the 256-bit/32-register shape: one shuffle per output instead of two.
2. One scratch buffer: the last DIT pass reads and writes the same indices, so it runs in
   place to fix the pass-count parity (working set 3N → 2N).
3. General-purpose register pressure: each pass has 2R streams (8 in + 8 out for radix 8);
   LLVM strength-reduced them into 16+ induction variables and spilled them with ~20 integer
   **stores** per butterfly, on Zen 4's single store port. Addresses are now base + invariant
   offset with the index through `black_box` (1 spill store per butterfly).

Results, f32 forward in place, speedup vs rustfft (dit-ymm-r8):

| run | 256 | 1024 | 4096 | 16384 | 65536 | geomean |
|---|---|---|---|---|---|---|
| first measurement (in-process quick) | 0.85 | 1.19 | 1.20 | 0.95 | 1.11 | 1.05 |
| full v1 (after 1+2) | 0.93 | 1.15 | 1.36 | 1.46 | 1.26 | 1.22 |
| quick (after 1+2+3) | 0.96 | 1.25 | 1.42 | 1.43 | 1.39 | **1.28** |
| full v2 (after 1+2+3) | 0.98 | 1.28 | 1.19 | 1.20 | 1.18 | 1.16 (artifact, below) |
| **final** (1+2+3, lab scratch 64-byte aligned; §3.2) | 0.97 | 1.27 | 1.41 | 1.46 | 1.38 | **1.29** |

f64 geomean: dit-zmm-r8 1.28× and dit-ymm-r8 1.26× in full v2; 1.35× and 1.32× in the final run.

The full-v2 drop at N ≥ 4096 is an artifact of the lab's arena adapter: its scratch `Vec`s are
only 16-byte aligned, so with 8 libraries per process the heap layout changed and 256-bit
accesses split cache lines (~20%). Isolated runs of the same binary give 2.40–2.47 µs at
N = 4096 (≈ 1.42×), stable to ±1.5% across processes. The library aligns its scratch to
64 bytes; user buffers are handled unaligned.

**Done** (ticket 07, commit 82f82bc):

- The lab adapter's scratch is now 64-byte aligned.
- The official table was rerun with the `fastfft` rows included. This is the *final* row;
  the full tables are in §3.2 and the go/no-go in §5.
- The rerun confirms the artifact: `dit-ymm-r8` measures 2.43 µs at N = 4096 f32 in the full
  run, matching the isolated runs.

Other findings: rustfft's single-process timings vary with address placement (N = 4096 f32:
3.4–4.9 µs across processes; FFTW ±2%), so the arena now runs `--procs K` processes per cell
keeping each library's best, and measures drift on the core clock (every cell reports it)
instead of on the control cell's library times.

## 8. Review outcome (ticket 09, 2026-09-24)

The maintainer reviewed the final table (§3.2, §5) and the proposals (§4) in
[ticket 09](../../.scratch/fastfft-v1/issues/09-accept-m2-go-no-go.md). Each question was put
separately with its data and the agent's recommendation; the answers are the maintainer's.
No measured number in §2–§7 changed.

1. **Go/no-go: go.** `lab/dit-ymm-r8` measures 1.29× (median 1.28×) against the 1.25×
   threshold, a 3% margin. M3+ performance work proceeds. The library (`fastfft`, 0.97×) still
   has to catch up with the prototype: ticket 10's M3 checkpoint requires ≥ 1.3× rustfft on
   in-cache powers of two (N = 64 … 16384).
2. **Layout: split on every tier for now.** As written, the rule gives both layouts on AVX2
   (§4.1). The library builds split only; whether to add an interleaved AVX2 engine is decided
   with G5 data from ticket 23 (Zen 4, AVX2 forced) and ticket 27 (AVX2-only machine). The
   interleaved rows are the naive DIF variants. G5 asks ≥ 1.2× on the pow2 suite; for f32 at
   N = 256 … 65536 the AVX2 variants reach 0.94× (split) and 0.99× (interleaved).
3. **Vector width on Zen 4: 256-bit with 32 registers by default for f32; 512-bit by default
   for f64,** and the planner may choose 256-bit per size where it measures faster (f64: +7% at
   N = 256, +2% at N = 1024). The per-size choice belongs to the cost tables (ticket 18).
4. **Radix: at most 8 for power-of-two passes on SIMD tiers,** chosen per tier by the cost
   model. Radix 4 vs 8 on AVX2 is settled by measurement (ticket 10 or 18): the final run has
   no clean `dit-avx2-r8` row, and the library uses radix 8 there. Odd and composite radices
   (up to 15, needing up to 30 split data registers) were not measured in M2 and go to the cost
   tables (ticket 18).
5. **Engine structure: DIT Stockham plus the transposing final pass for in-cache sizes, and a
   four-step engine for large N.** The 2^15 switch point is provisional; tickets 14 and 16 set
   it by measurement from detected cache sizes.

**Raised in the review: this machine's AVX-512.** The 7840HS (Phoenix) is a laptop part, but it
has the same Zen 4 core as desktop Ryzen 7000 and EPYC 9004, with the full set of Zen 4 AVX-512
extensions. No Zen 4 part has a 512-bit datapath: 512-bit instructions run on 256-bit units
over two cycles, which §2 measures directly (512-bit adds and FMAs at 1 per cycle, 256-bit at
2). The laptop-specific differences are clocks, power limits and a 16 MB L3; L1D (32 KB) and L2
(1 MB) per core match the desktop and server parts. Consequences:

- The width result (256-bit wins f32 by 21%) holds for Zen 4, and probably for Zen 5 mobile
  (Strix Point), which keeps 256-bit datapaths. It probably does not hold on CPUs with 512-bit
  datapaths: Zen 5 desktop and server (Ryzen 9000, EPYC 9005), and Intel Xeon such as Sapphire
  Rapids (two 512-bit FMA units, twice Zen 4's store bandwidth per cycle). Their defaults come
  from their own tables (tickets 27, 28), keyed on the datapath width rather than the CPU
  family alone.
- Register counts are fixed by the ISA (32 registers with AVX-512, 16 with AVX2), so the
  radix-16 spill finding holds on every CPU. Store bandwidth differs per CPU, which is why radix
  and width come from measured per-CPU costs rather than fixed rules.
- Split's advantage (fewer FP ops, no shuffles in Phase A) does not depend on the datapath
  width; ticket 27 checks it on 512-bit hardware.

Sources: Chips and Cheese,
[AMD's Zen 4 Part 1](https://chipsandcheese.com/p/amds-zen-4-part-1-frontend-and-execution-engine)
and [Sapphire Rapids](https://chipsandcheese.com/p/a-peek-at-sapphire-rapids); AMD via
[TechPowerUp](https://www.techpowerup.com/324873/amd-strix-point-soc-zen-5-and-zen-5c-cpu-cores-have-256-bit-fpu-datapaths)
(Strix Point datapaths); A. Yee,
[Zen5's AVX512 Teardown](https://www.numberworld.org/blogs/2024_8_7_zen5_avx512_teardown/);
[arXiv 2409.08108](https://arxiv.org/abs/2409.08108) (load and store widths of Genoa and
Sapphire Rapids).

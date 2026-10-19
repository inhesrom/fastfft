# Diagnose the pow2 release throughput gaps

Type: task
Status: claimed
Blocked by: 23
Roadmap: FFT-061 / G1, G4, G5

## Context

The [ticket 23 evaluation](../../../docs/benchmarks/2026-10-11-mini-ryzen-ticket23-gates/README.md) gives default pow2 geomeans of
1.3551× best / 1.3482× median versus RustFFT (G1 requires 1.5×), and
forced-AVX2 pow2 geomeans of 1.1425× / 1.1377× (G5 requires 1.2×).
Forced-AVX2 smooth already meets its 1.1× geomean requirement.

G4 also fails against TFHE: only 15/20 supported cells meet the 0.97× floor
on both metrics, below the required 90%, despite geomeans of
1.1821× / 1.1691×. The weakest cell is f64 inverse in-place N=1024 at
0.8927× / 0.8930×; forward/inverse N=512 also miss. These observations
establish targets, not a common root cause. Ticket 41 owns small
out-of-place floor regressions; ticket 34 retains its f64 zmm schedule work.

## Work

- Decompose the official pow2 aggregate by precision, placement, size, and
  actual default/AVX2 plan. Preserve the full required cell population.
- Profile the measured TFHE N=512/1024 losses and the largest contributors
  to the default/AVX2 shortfalls; establish whether their causes overlap.
- Evaluate remedies with matched aligned idle builds and unchanged verification.
  Reaudit all G1/G4/G5 parts after any change, including the smooth AVX2 pass.

## Done when

Document causes and independently audited residuals. G1 requires both
geomeans ≥1.5× plus every cell ≥0.95×; G5 pow2 requires both geomeans
≥1.2×; G4 requires each competitor's geomean ≥1.1× and ≥90% of its
supported cells ≥0.97× on both metrics. Threshold changes belong to the
maintainer's ticket 24 decision.

## Plan (2026-10-14)

The maintainer prioritizes execution speed for standard power-of-two sizes
**N=256…16384** and claimed this ticket ahead of the qualification order
(tickets 32/46/44 remain open). The focus is a sub-goal: the Done-when
criteria above are unchanged, G1's floor also depends on the N=8
out-of-place cells owned by ticket 41, and step 4 re-audits the full suite.

Both tiers are in scope. G1 is the default path, which on Zen 4 is
AVX-512 (avx512-ymm for f32, mostly 512-bit avx512 for f64; ADR-0001 §8).
G5 forces `FASTFFT_ISA_CAP=avx2` (arena library `fastfft/avx2`) as the
AVX2-only CPU proxy.

Prior signal (ticket 18 `arena-after`, quick profile, forward in place only,
older revision; rustfft/fastfft best / median):

| N | f32 | f64 | f32 plan |
|---|---|---|---|
| 256 | 1.380 / 1.371 | 1.500 / 1.499 | small n=256 64x4 |
| 512 | 1.154 / 1.147 | 1.233 / 1.215 | stockham 8x8 |
| 1024 | 1.249 / 1.247 | 1.251 / 1.235 | stockham 8x8x2 |
| 2048 | 1.271 / 1.262 | 1.219 / 1.240 | stockham 8x4x8 |
| 4096 | 1.342 / 1.347 | 1.297 / 1.311 | stockham 8x8x8 |
| 8192 | 1.329 / 1.302 | 1.458 / 1.467 | stockham 8x8x4x4 |
| 16384 | 1.438 / 1.450 | 1.513 / 1.482 | stockham 8x4x8x8 |

The trough is N=512–2048, at the small→Stockham handoff, matching the
TFHE N=512/1024 misses. Step 1 replaces this with current evidence.

1. **Baseline** on current master: pow2 N=256…16384, f32/f64, fwd/inv,
   ip/oop, libs `fastfft,fastfft/avx2,rustfft,tfhe-fft`, full profile,
   `--procs 3`, core 2, idle-gated (112 fastfft cells plus TFHE pairs).
   Record ratios and `describe` plans per cell.
2. **Diagnose** the weakest cells against RustFFT with `cargo xtask
   perf-cell` / Stockham diagnostics (ticket 22 tooling). Hypotheses:
   - small-engine ceiling at 256: extend register-resident leaves to
     512/1024, or fuse the first Stockham pass like a small leaf;
   - radix-2 tail pass (1024 = 8x8x2): compare 4x4x8x8, 16x8x8, etc.;
   - in-place scratch ping-pong/copy-back cost by pass-count parity;
   - single store port (zmm store = 2 cycles) on f64 512-bit passes;
     compare avx512-ymm at 512–2048;
   - fixed per-call overhead relative to N=512 work;
   - AVX2: maximum radix and split vs interleaved layout (see
     "AVX2 diagnosis input" below: cost tables point to register
     pressure and permutes first).
3. **Remedies**, one at a time by expected gain, each with matched idle
   A/B, release tests on all five ISA tiers, and `cargo xtask codegen
   --check`. Keep ticket 44's direction-dispatch candidate separate.
4. **Re-audit** the full pow2 suite (2…2^24) for G1/G4/G5, plus the
   AVX2 smooth component, so no gain hides a regression elsewhere.

## Progress

### Step 1 baseline (2026-10-14) — official, clean

`66d463c`, arena `acbd3a22…` (`--profile arena`, no fftw), full profile,
`--procs 3`, core 2, 56 cells, 510 s, max drift 0.65%, 0 child failures,
all verified, `official: true`. Uncommitted at run time: ticket-44 guard
scripts/docs only. Raw run: ignored `target/t42/runs/t42-baseline/`.

Geomean rustfft/fastfft (best / median), N=256…16384:

| | f32 | f64 | all |
|---|---|---|---|
| default (AVX-512) | 1.236 / 1.228 | 1.293 / 1.289 | 1.264 / 1.258 |
| forced AVX2 | 0.972 / 0.967 | 1.045 / 1.042 | 1.008 / 1.004 |

Median geomean by N (default / AVX2): 256 1.409 / 0.999; 512 1.106 / 0.937;
1024 1.158 / 0.961; 2048 1.237 / 0.967; 4096 1.282 / 1.037;
8192 1.281 / 1.048; 16384 1.364 / 1.087.

Findings:

1. **Placement asymmetry (largest lead).** fastfft in-place/out-of-place
   median time, forward (RustFFT stays 1.00–1.04 throughout):

   | N | 2048 | 4096 | 8192 | 16384 |
   |---|---|---|---|---|
   | f32 default | 1.03 | **1.20** | 0.95 | **0.88** |
   | f64 default | 1.08 | **1.27** | **0.88** | 0.90 |

   Same plan serves both placements; the penalty flips with pass count
   (4096 = 3 passes 8x8x8 penalizes in place; 4-pass 8192/16384 penalize
   out of place). Suspect Stockham ping-pong parity forcing an extra full
   copy. Matching the faster placement would lift f64 4096 ip
   1.16→~1.47×, f32 4096 ip 1.18→~1.35×, f32 16384 oop 1.22→~1.37×,
   f64 8192 oop 1.21→~1.39×.
2. **Small→Stockham cliff:** 256 at 1.41× (small engine) vs 512 at 1.11×
   and 1024 at 1.16× (Stockham 8x8 / 8x8x2).
3. **TFHE** (f64 in place only): fastfft loses at 1024 (tfhe/fastfft
   0.880 fwd, 0.917 inv) and 512 inverse (0.939).
4. **AVX2 is at parity with RustFFT**, f32 below it (0.86–1.03×).
   f64 N=256 under the AVX2 cap uses Stockham 8x8 (0.88×), not the small
   engine that f32 AVX2 uses at 256.

Next: diagnose finding 1 (Stockham parity/copy path) first, then 2.

### Step 2a: per-placement candidate audit (2026-10-14)

`target/arena/examples/tune` `e478c075…`, `--plans-only --objective all`,
N=512…16384, three sequential pinned processes on core 2, idle check and
`bench-env` OK. Lowest-p1 process per candidate/placement. Raw data is in
ignored `target/t42/tune/plans-{1,2,3}.jsonl`.

The code (`engine/stockham.rs`) makes no extra copy. Parity is fixed by
running the **last pass in place** (`cur→cur`): in-place mode does so when
the pass count is even, out-of-place mode when it is odd.

The best existing candidate for each placement, compared with the current
single Estimate plan (median gain), recovers only part of the gap:

| cap | cell | current | best for that placement | gain |
|---|---|---|---|---|
| default | f32 4096 ip | 8x8x8 | 4x4x2x4x4 | 1.059 |
| default | f64 4096 ip | 8x8x8 | 4x4x8x4 | 1.071 |
| default | f32 16384 oop | 8x4x8x8 | 8x8x4x8 | 1.050 |
| avx2 | f32 8192 oop | 4x8x8x4 | 4x4x4x4x4 | 1.069 |
| avx2 | f64 2048 oop | 4x2x4x4x4 | 8x8x8 | 1.058 |

All other default-cap cells gain ≤1.8%. f64 4096 in place stays 11% behind
out of place (5043 vs 4546 ns) even with the best schedule. **Pass-count
parity alone does not explain the gap.** A per-placement plan is worth
about 5–7% on a handful of cells.

Revised hypothesis: **buffer placement / 4K aliasing.** Ping-pong passes
between two page-congruent buffers alias load and store addresses mod 4096,
while an in-place last pass reads and writes the same lines. Supporting
evidence: the misaligned path already places scratch away from the caller
buffers' page offsets (`stockham/scratch.rs::placement_offset`, ticket 12),
and ticket 12 measured that misaligned path *faster* than aligned calls at
f32 4096 and f64 2048 (ticket 36). Aligned calls never apply this offset.
Aligned out-of-place calls use no scratch, so they ping-pong between caller
buffers whose page offsets the library does not control.

Next (step 2b): A/B in the same binary at N=2048…16384, both placements
and precisions, varying the scratch page offset relative to the caller
buffer (and the caller in/out offsets for out of place) to confirm or
reject aliasing before designing a remedy. This overlaps ticket 36's scope.

### Step 2b: placement sensitivity, confirmed (2026-10-14)

Standalone public-API benchmark `target/t42/aliasbench` (fat LTO, zero
data, forward). One page-aligned region per length; slots spaced by whole
pages, so `offset mod 4096` is exact. In place: buffer at page offset 0,
scratch at offset d. Out of place: input at 0, output at d, scratch at
1536. Offsets d ∈ {0, 64, 256, 512, 1024, 2048, 3072}, interleaved
round-robin, 30 rounds × 200 samples, 3 pinned processes, idle check and
`bench-env` OK. Raw data: ignored `target/t42/alias/`.

Median time / best offset for that row (RustFFT stays within 1.0% at
every offset):

| cell | d=0 | 64 | 256 | 512 | 1024 | 2048 | 3072 |
|---|---|---|---|---|---|---|---|
| f32 4096 ip | 1.142 | **1.460** | 1.286 | 1.182 | 1.021 | 1.000 | 1.005 |
| f64 4096 ip | 1.140 | **1.380** | 1.250 | 1.204 | 1.047 | 1.000 | 1.003 |
| f64 2048 ip | 1.016 | 1.098 | 1.050 | 1.006 | 1.002 | 1.005 | 1.000 |
| f32 16384 ip | 1.033 | 1.180 | 1.030 | 1.020 | 1.024 | 1.041 | 1.000 |
| f32 16384 oop | 1.158 | **1.207** | 1.059 | 1.004 | 1.006 | 1.022 | 1.000 |
| f64 8192 oop | 1.150 | **1.209** | 1.044 | 1.001 | 1.001 | 1.026 | 1.000 |
| f64 16384 oop | 1.115 | 1.152 | 1.040 | 1.000 | 1.000 | 1.000 | 1.001 |

At good offsets the in-place/out-of-place gap disappears: f64 4096 in place
4574 ns vs out of place 4511 ns. Against RustFFT at the best offset, f32 4096
in place reaches 1.356× (arena 1.18×) and f64 4096 in place 1.439×
(arena 1.16×). The arena's buffers happen to land on bad relative offsets.

Cause: fastfft's ping-pong passes are sensitive to the relative page offset
of their source and destination buffers (4K aliasing); RustFFT is not. When
a plan has ≥3 passes within the cache budget, aligned calls already
receive one page of scratch slack per buffer (`scratch_only_len`), but only
misaligned calls apply `placement_offset`.

Step 2c (running): same-binary A/B behind a temporary, uncommitted runtime
switch. v0 = current; v1 = scratch-only choreography with placement offsets
for aligned calls too (ticket 36's idea; covers out of place); v2 = legacy
choreography with the in-place scratch moved by `placement_offset`. Every
variant × placement × offset matches RustFFT output (f32 < 1e-5, f64 < 1e-13
relative to the maximum).

### Step 2c: variant A/B (2026-10-14)

Same binary, temporary runtime switch, offsets as in 2b, 3 pinned processes,
idle check OK. Raw data: ignored `target/t42/alias2/`. Geomean over the seven
offsets of rustfft/fastfft (median), with the worst offset in parentheses:

| cell | v0 current | v1 scratch-only | v2 placed in-place scratch |
|---|---|---|---|
| f32 4096 ip | 1.182 (0.905) | 1.307 (1.301) | **1.359 (1.350)** |
| f64 4096 ip | 1.252 (1.039) | 1.386 (1.380) | **1.424 (1.419)** |
| f64 2048 ip | 1.203 (1.091) | **1.322 (1.311)** | 1.240 (1.232) |
| f32 16384 ip | 1.364 (1.204) | **1.396 (1.387)** | 1.364 (1.356) |
| f32 8192 oop | 1.248 (1.209) | **1.312 (1.306)** | = v0 |
| f32 16384 oop | 1.337 (1.172) | **1.414 (1.375)** | = v0 |
| f64 8192 oop | 1.308 (1.155) | **1.399 (1.371)** | = v0 |
| f32 4096 oop | **1.358 (1.351)** | 1.359 (1.308) | = v0 |
| f64 4096 oop | **1.466 (1.449)** | 1.419 (1.376) | = v0 |

Out of place, only the even-pass plans (8192/16384) are offset-sensitive;
the odd-pass 2048/4096 plans stay flat under v0, and v1 costs them 1–2%.

Selected rule (v3): in place, place the legacy scratch half a page from
the caller base (v2). Out of place, take the scratch-only route only for
even pass counts whose input/output bases lie within 512 bytes modulo
4 KiB. Both apply only when the cache gate reserved page slack (p ≥ 3,
within budget), so the public scratch lengths are unchanged. Projected from
this data: geomean over all offsets 1.314× → 1.352×; f32/f64 4096 in place
+15%/+14%; worst-offset floors rise everywhere except the odd-pass
out-of-place cells (flat to −1%; unchanged by v3). v1 is 3–7% better than
v2 in place at f64 2048/8192 and f32 16384; that is a possible follow-up.

Implementation (uncommitted): `StockhamPlan::scratch_only_route` and
`legacy_scratch_offset` in `engine/stockham.rs`, `page_distance` in
`stockham/scratch.rs`, and the retained diagnostic schedule mirrors both.
A policy unit test covers the routing and offset rules.

### Step 3a: arena before/after (2026-10-15) — official, clean

Validation (memory-capped, `CARGO_BUILD_JOBS=1`, separate target dir):
fmt, codegen check, full release suite, five-tier quick matrix, tuning
Stockham tests (the ticket-31 collision-view diagnostic now reports and
replays the placed scratch via `Schedule::placed`) and Clippy for the
library (with/without tuning) and the arena (with stockham-diagnostics)
all pass.

Arena `8f74532b…`, same 56 cells and protocol as step 1: 510 s, drift
0.58%, 0 child failures, all verified, identical plans, `official: true`.
Raw run: ignored `target/t42/runs/t42-after/`.

| geomean rustfft/fastfft | before | after |
|---|---|---|
| default best | 1.2643 | **1.2990** |
| default median | 1.2584 | **1.2941** |
| default f32 / f64 median | 1.228 / 1.289 | 1.259 / 1.330 |
| forced AVX2 best / median | 1.008 / 1.004 | 1.018 / 1.013 |

Default median by N: 4096 1.282→1.406, 8192 1.281→1.351,
16384 1.364→1.436; 256–2048 unchanged within noise. Largest cells
(median): f64 4096 in place 1.16→1.44 (both directions); f32 4096 in
place 1.13–1.18→1.35; f32 16384 out of place 1.22–1.23→1.37–1.41;
f64 8192 out of place 1.21→1.40. RustFFT medians moved ≤ 2.5% except one
cell (−4.6%).

Open: some forced-AVX2 in-place cells fell (f32 8192 forward 1.027→
0.921, f32 4096 forward 0.965→0.921) while their inverse twins, which run
the same schedule, moved −1%. Step 3b checks this with an old/new A/B.
TFHE N=512/1024 still wins (0.88–0.94); finding 2 remains.

### Step 3b: old/new public-API A/B (2026-10-15)

`target/t42/alias-{old,new}`: the 2b benchmark built against HEAD
`66d463c` (extracted with `git archive`) and against the working tree.
N=512…16384, default and `FASTFFT_ISA_CAP=avx2`, seven offsets, old/new
alternating in 3 rounds. Raw data: ignored `target/t42/ab/`.

- The AVX2 arena drop does **not** reproduce: AVX2 f32 8192 in place is
  faster at every offset (new/old 0.85–0.99); its worst offset versus
  RustFFT rises 0.861→1.010. The arena difference was placement noise.
- Default geomean new/old time over all cells and offsets: 0.982; AVX2
  0.995. Worst-offset floors versus RustFFT rise, e.g. f32 4096 ip
  1.031→1.348, f64 4096 ip 1.069→1.437, f32 16384 oop 1.187→1.386,
  f64 8192 oop 1.166→1.342, AVX2 f64 8192 oop 0.984→1.156.
- A uniform **fixed cost** appeared on small in-place transforms: AVX2 f32
  512 +4.2% and default f32 1024 +1.7% at *every* offset, including 2048,
  where old and new use identical addresses. That is about 10 ns per call,
  consistent with the general three-point `placement_offset` search. The
  old code was flat across offsets for these ≤ 8 KiB buffers, so moving the
  scratch gained nothing there.

Revision: in place, use `half_page_offset` (a few instructions; tested
equal to `placement_offset(base, a, a, None)` exhaustively over two pages),
and place the scratch only for transforms of at least 16 KiB (the smallest
measured gain: f32 2048 / f64 1024 at offset 64). Step 3c re-runs the
validation, the A/B (`target/t42/ab2/`) and the arena (`t42-after2`).

### Step 3c: revised change (2026-10-15)

Validation: fmt; tuning Stockham tests 37/37 and default Stockham tests
23/23, including the exhaustive `half_page_offset` equality and the 16 KiB
threshold test; Clippy with and without tuning and for the arena with
stockham-diagnostics. The production change since the full five-tier run is
limited to the in-place offset formula and threshold.

A/B (`target/t42/ab2/`): new/old time geomean over all cells and offsets
0.983 (default) and 0.976 (AVX2). The small-transform fixed cost is gone
(f32 512/1024 in place 1.000/1.004). Remaining cells above 1.0 are ≤ 1.6%
geomean, inside the RustFFT controls' 2–4% run-to-run spread.

Arena `2aabace7…`, `t42-after2`: same 56 cells, 510 s, drift 0.84%, 0
child failures, all verified, plans identical, `official: true`.

| geomean rustfft/fastfft | before | after |
|---|---|---|
| default best / median | 1.2643 / 1.2584 | **1.3005 / 1.2958** |
| default f32 / f64 median | 1.228 / 1.289 | 1.261 / 1.332 |
| AVX2 best / median | 1.0079 / 1.0037 | 1.0206 / 1.0174 |

Default (AVX2) median by N: 4096 1.282→1.413 (1.037→1.067);
8192 1.281→1.351 (1.048→1.097); 16384 1.364→1.439 (1.087→1.102);
256–2048 unchanged within ±0.3%. Largest gains: f64 4096 in place
1.16→1.44–1.47, f32 4096 in place 1.13–1.18→1.34–1.37, f64 8192 out of
place 1.21→1.41, f32 16384 out of place 1.22–1.23→1.38–1.40. The largest
drops (f64 256 inverse out of place −3.6%, f32 512 forward in place −2%)
are in untouched small/two-pass plans, i.e. placement noise.

TFHE still leads at f64 N=512/1024 (0.87–0.94): finding 2 remains.

Next (step 4): full pow2 suite (2…2^24), old vs new arena, default and
AVX2, because the gated Stockham sizes above 16384 change too.

### Step 4: full pow2 re-audit, old vs new (2026-10-15)

Old arena `a7ffb92c…` (HEAD `66d463c`, extracted tree) and new `2aabace7…`,
back to back, full profile, libs fastfft, fastfft/avx2, rustfft, tfhe-fft,
`--procs 3`, core 2, through 2^24, idle check OK. Both runs: 192 cells,
~2336 s, drift 0.71% / 0.72%, 0 child failures, all verified, identical
plans, `official: true`. Raw: ignored `target/t42/runs/t42-pow2-{old,new}/`.

| gate component | old | new | requirement |
|---|---|---|---|
| G1 default geomean best / median | 1.3478 / 1.3332 | **1.3784 / 1.3734** | ≥ 1.5 |
| G1 cells < 0.95 (best / median) | 7 / 8 | 5 / 5 | 0 |
| G1 minimum | 0.594 / 0.591 | 0.591 / 0.591 (f64 N=8 oop, ticket 41) | ≥ 0.95 |
| G5 AVX2 pow2 best / median | 1.1320 / 1.1222 | **1.1465 / 1.1409** | ≥ 1.2 |
| G4 TFHE geomean best / median | 1.1770 / 1.1721 | 1.1806 / 1.1763 | ≥ 1.1 |
| G4 TFHE cells ≥ 0.97 on both | 16/20 | 16/20 | ≥ 90% |

These are matched re-measurements, not ticket 23's original baseline. The
published ticket-23 medians were 1.3482 (default) and 1.1377 (AVX2); the new
medians are +1.9% and +0.3% against those, rather than +3.0% and +1.7%
against this old/new pair. The small AVX2 aggregate gain is within the
observed baseline spread; localized placement gains have stronger A/B support.

"Clean" in steps 3–4 refers to the measured environment, not the Git working
tree. The after binaries were built with uncommitted changes, subsequently
committed as `e4b9ed8`. No retained measured-tree hash proves their identity
with that commit; the run ID and a later commit SHA are not a source receipt.

Default median by N (old → new): 4096 1.311→1.419; 8192 1.282→1.345;
16384 1.365→1.445; **32768 1.381→1.579**; 65536 1.315→1.363;
131072 1.304→1.384. From 262144 up (outside the cache gate, or FourStep)
and at ≤ 2048, fastfft time is unchanged within ±0.7% except tiny-N noise
(N=2 moves with RustFFT's own +11.6%).

No per-cell regression was reproduced in the recorded Zen 4 follow-ups;
raw per-cell evidence remains local-only at the paths above. This is not an
architecture-independent claim (see the macOS follow-up below). The worst
default cell is +2.7%
(f64 2^20 FourStep, untouched). AVX2 f32 4096 forward in place read +10.4%
in this pair, but its absolute times across all five arena runs are
old 3566/3517 ns and new 3566/3510/3882 ns: one outlier, not a shift, as
the old/new public-API A/B also showed (faster at every offset). The same
one-off pattern appeared once at AVX2 f32 8192.

Status: the placement fix is validated and ready to commit. G1/G5 remain
below threshold; G1's floor is ticket 41's N=8 out-of-place cells. In the
maintainer's 256…16384 focus, the remaining gap is finding 2: N=512–1024
(default 1.10–1.16×, AVX2 0.93–0.96×, TFHE ahead at f64 512/1024).

### macOS review follow-up (2026-10-15)

[Apple M6 diagnostic and reproducible capture](../../../docs/benchmarks/2026-10-15-mac-stockham-review/README.md):
NEON uses the same Stockham execution path. A three-way public-API comparison
(base `66d463c`, reviewed PR `e4b9ed8`, fixed tree) found that rerouting small
aligned out-of-place transforms costs up to 12% on M6. The fix retains the
x86 policy but makes AArch64's even-pass reroute apply only from 128 KiB,
independent of caller page distance. Misaligned calls and in-place placement
are unchanged; other AArch64 cores are unmeasured.

Four symmetric rounds retain all 5,376 process rows, 224 placement medians,
compiler/binary/source hashes and identical plans. The fixed f64 N=2048
out-of-place time is 0.9969–0.9995 of the pre-PR base at all seven offsets
(PR at offset 0: 1.1187). Large-size wins remain: f32 N=16384 out of place,
offset 0, 0.7360; f64 N=8192, 0.7552. Random-input public API checks against
RustFFT cover both directions, the 128 KiB boundary and page distances
0/512/2048 with canaries.

These are unofficial, zero-data macOS diagnostics, not Linux qualification.
The RustFFT/FFTW arena attempt was rejected after a 37.22% probe-drift abort;
its metadata and partial results are retained. No complete competitor
performance result or release-gate pass is inferred. Oxifft follow-up changes
were excluded at the maintainer's request.

### AVX2 diagnosis input (2026-10-17) — existing data, remedies unmeasured

Context: ADR-0001 §4.1 found the layout rule unmet on AVX2 and §8 deferred
an interleaved AVX2 engine "to G5 data". Ticket 23 supplies it: G5 pow2
fails (1.1425× / 1.1377×). Under the AVX2 cap, Stockham and FourStep run
the split layout; only the Small engine's leaves (N ≤ 256, also reused by
Batch) are interleaved.

**Where the AVX2 gap is.** The production cost table
(`plan/tables/zen4.rs`, commit `18f8f17`, ns per complex element, f32 / f64)
compares `Avx2` with `Avx512Ymm` per pass on the same core with the same
256-bit width, L and codelets. The differences are 16 vs 32 registers and
the AVX-512VL two-source permutes (plus EVEX encodings such as embedded
broadcasts, a minor confounder):

| pass | Avx2 f32 | Ymm f32 | Δ | Avx2 f64 | Ymm f64 | Δ |
|---|---|---|---|---|---|---|
| r4 twiddled | 0.1076 | 0.1083 | −1% | 0.2157 | 0.2185 | −1% |
| r8 twiddled | 0.1613 | 0.1333 | **+21%** | 0.2959 | 0.2453 | **+21%** |
| r8 first (deinterleave) | 0.1543 | 0.1199 | **+29%** | 0.2845 | 0.2381 | **+19%** |
| r16 twiddled | 0.6125 | 0.2555 | +140% | 0.6565 | 0.4979 | +32% |
| Phase B (f32 L=8, f64 L=4) | 0.2903 | 0.2054 | **+41%** | 0.3484 | 0.2718 | **+28%** |

Reading:

- Radix 4 costs the same on both tiers, but radix 8 and Phase B do not.
  Twiddled passes involve no layout permutes, so the +21% at radix 8 points to
  register pressure (a split radix 8 alone needs 16 data registers). The
  first-pass and Phase B gaps add AVX2's permutes: no `vpermt2ps`, so
  deinterleaving takes 2 shuffles per output. f32 Phase B transposes 8 re
  and 8 im vectors and loads up to 14 twiddle vectors, all within 16
  registers.
- Per log2 N of work, AVX2 radix 8 equals radix 4 (f32 0.0538 vs
  0.0538 ns/element/bit; f64 0.0986 vs 0.1079), while on Ymm radix 8 is 18%
  cheaper (0.0444). AVX2 loses radix 8's advantage, consistent with ticket
  10's mixed radix 4 vs 8 result (measured on lab prototypes). Changing the
  radix cannot fix it.
- Ceiling: if AVX2 passes cost what Ymm passes cost, f32 N=4096
  (L=8: 8·8·8 + Phase B) would drop from 0.767 to 0.592 ns/element (1.30×),
  and f64 N=4096 (L=4: 8·8·4·4 + Phase B) from 1.360 to 1.192 (1.14×).
  These are isolated in-L1 costs: an upper bound for removing register
  pressure and the permute penalty, not a prediction.

**Steer: diagnose register pressure first; layout second.** The data points
to register pressure and permutes, not to the split layout as such. An
interleaved engine is one way to cut the live set, but not the cheapest.
Suggested order, each as a matched idle A/B with release tests on all five
tiers:

1. **Spill audit (spike).** Count stack spills/reloads in the AVX2 `F32x8` /
   `F64x4` radix-8 pass and `finish` (Phase B) entry points (`cargo asm` or
   `objdump`, stores/loads relative to `rsp`), next to the `F32x8v`
   equivalents, and run `perf-cell` on AVX2 f32 N=512…4096. This confirms or
   rejects the pressure hypothesis.
2. **Phase B live set, AVX2 only.** Today `phase_b_blocks` loads all L
   `wr`/`wi` twiddle vectors before the codelet. Candidates: load twiddles
   just in time inside the codelet, transpose and twiddle re/im in halves,
   or restructure DFT-8 across lanes as staged 4+2 parts that fit 16
   registers. Phase B is the largest single gap (+41% f32).
3. **Radix-8 codelet schedule for 16 registers.** `fastfft-codegen` has no
   register-pressure model: `compact` emits DFS post-order and LLVM schedules
   from there. Try an AVX2-specific emission order that keeps the live set
   ≤ 14 (Sethi–Ullman style, or FFTW genfft's cache-oblivious ordering), or an
   AVX2 radix-8 built as two register-resident radix-4 stages. Success means
   AVX2 r8 twiddled moves from 0.161 toward 0.133 ns/element.
4. **Interleaved AVX2 Stockham (large; only if 1–3 fall short).** Radix 8
   then needs 8 data registers and Phase B becomes a 4×4 complex transpose,
   but complex multiplies need `movsldup/movshdup + fmaddsub` shuffles. Use
   generated codelets and DIT so the comparison is fair. The ADR rows mixed
   layout with codelet quality (naive DIF interleaved vs generated DIT split).
   Expect per-precision results: ADR measured interleaved +5% for f32 but
   split +16% for f64. The Small engine's `Row` leaves are reusable.

**Caveat: Zen 4 with an AVX2 cap is not an AVX2 CPU.** Zen 4 runs two ymm
shuffles per cycle. Intel AVX2 parts before Ice Lake (Haswell–Skylake) have a
single shuffle port, which penalizes interleaved complex multiplies and favors
split. Zen 2/3 have different permute costs. Do not change the AVX2 default
layout on Zen 4-capped data alone; any layout switch needs a ticket 27
AVX2-only machine. Options 2–3 keep the split layout and carry less of this
risk. New kernels enter the planner through cost-table entries per tier, so
the choice can stay per CPU family (ticket 28).

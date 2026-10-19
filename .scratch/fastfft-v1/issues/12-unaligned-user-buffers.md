# Handle unaligned user buffers

Type: task
Status: resolved
Blocked by: 10

## Question

What does 8-byte alignment of the user's buffer cost, and what mitigation ships? The cost comes from split 32/64-byte loads and stores in the first pass and in Phase B.

## Context

- In the lab, 16-byte-aligned buffers cost about 20–30% at N = 4096.
- The arena's `--misalign 8` exercises this case; the library aligns only its own scratch.
- Options:
  - accept the cost;
  - stage misaligned input/output through aligned scratch (one extra copy);
  - reorder passes so the user buffer is touched only by streaming accesses.

## Done when

- Measured with `--misalign 8`.
- The decision is recorded and, if chosen, the mitigation is implemented.
- The README gives alignment advice.

## Progress

Completed on branch `ticket-12-unaligned-buffers`, 2026-09-30 (claimed 2026-09-29). The chronological findings below preserve the experiments, including rejected variants. The final decision is in `## Answer` and [the gated result](../../../docs/benchmarks/2026-09-29-mini-ryzen-misalign/diagnostics/gated-result.md). Scripts and finished runs are in [the misalign diagnostics](../../../docs/benchmarks/2026-09-29-mini-ryzen-misalign/diagnostics/README.md).

### Findings so far

**1. The Question's premise is incomplete: Stockham also puts intermediate passes through the caller's buffers.** `execute` in `crates/fastfft/src/engine/stockham.rs` ping-pongs Phase A between the caller's buffer and the scratch. With `p` Phase A passes, these are the accesses to caller memory beyond the unavoidable first-pass reads and Phase B writes:

| Mode | Buffers | Extra caller-memory pass sides |
|---|---|---|
| In place | user U, scratch S (N) | `2⌊(p−1)/2⌋`: none for p ≤ 2; pass 2 writes U and pass 3 reads it for p = 3, 4; four for p = 5, 6 |
| Out of place | input I, output O, no scratch | every pass reads and writes I or O |
| Immutable | input I, output O, scratch S (N) | `2⌊p/2⌋`: the passes bounce between O and S |

The default plans on this machine give p = 2 at N = 512, p = 3 at 1024–4096, p = 4 at 8192–32768, p = 5 at 65536–262144 and p = 6 at 2^19–2^20 (f32 avx512-ymm L=8; f64 uses avx512 L=8). The length-specialized `engine/fixed.rs` has the same choreography with p ≤ 2. It serves N = 32–256 only when the planner picks Stockham there (lower tiers, Measure); the default plans here use the small engine for N ≤ 256.

Consequence for the options: keeping intermediate passes off caller memory needs a second aligned N-buffer. In-place scratch would grow from N to 2N for p ≥ 3, and out-of-place would need N of scratch instead of none. That holds for "stage through aligned scratch" and for "reorder passes" alike. Phase B's writes and the first pass's reads touch caller memory in every option.

The small-N engine (`engine/small.rs`, the default for N ≤ 256) loads every input and stores every output exactly once, directly on caller memory, with one exception (finding 3).

**2. From N = 512 up, misalignment costs fastfft 13–53% (band geomeans), about two to four times what it costs rustfft.** pow2 N = 2…2^20, full profile, all 160 cell pairs clean after re-timing (`analyze.py --m0 full-m0,full-m0-rest,retime-m0-f32,retime-m0-f64 --m8 full-m8,retime-m8-f32,retime-m8-f64`). Geomeans of p1; the median geomeans differ by at most 0.05. "vs rustfft" is rustfft time / fastfft time, aligned → misaligned:

| Precision | N | Placement | fastfft m8/m0 | rustfft m8/m0 | fastfft vs rustfft |
|---|---|---|---:|---:|---|
| f32 | 2–256 | both | 1.034 | 1.011 | 1.249 → 1.222 |
| f32 | 512–16K | in place | 1.153 | 1.064 | 1.252 → 1.155 |
| f32 | 512–16K | out of place | 1.293 | 1.111 | 1.200 → 1.031 |
| f32 | 32K–128K | in place | 1.388 | 1.106 | 1.322 → 1.053 |
| f32 | 32K–128K | out of place | 1.532 | 1.125 | 1.290 → 0.948 |
| f32 | 256K–1M | in place | 1.318 | 1.086 | 1.166 → 0.960 |
| f32 | 256K–1M | out of place | 1.438 | 1.120 | 1.081 → 0.841 |
| f64 | 2–256 | both | 1.063 | 1.028 | 1.278 → 1.236 |
| f64 | 512–16K | in place | 1.136 | 1.075 | 1.254 → 1.187 |
| f64 | 512–16K | out of place | 1.293 | 1.130 | 1.223 → 1.069 |
| f64 | 32K–128K | in place | 1.271 | 1.103 | 1.355 → 1.176 |
| f64 | 32K–128K | out of place | 1.432 | 1.139 | 1.334 → 1.061 |
| f64 | 256K–1M | in place | 1.130 | 1.074 | 0.965 → 0.917 |
| f64 | 256K–1M | out of place | 1.168 | 1.105 | 0.876 → 0.829 |

The in-place cost tracks the number of Phase A pass sides on caller memory (finding 1). Forward f32 in place: p = 2 (N = 512, only the first pass and Phase B) costs 5%; p = 3 costs 12–18%; p = 4 costs 19–25%; p = 5 (64K–256K, L2-resident) costs 45–49%; p = 6 costs 40% at 2^19 and 13% at 2^20, where DRAM dominates. Out of place, every pass is on caller memory: 13% at N = 512, 35–36% at 4096, 58–72% at 16K–32K. So the intermediate passes, not the unavoidable first pass and Phase B, carry most of the cost. At N = 512 in place the unavoidable part is about 5%.

At N = 2^21…2^24 (forward in place, DRAM-bound; `large-*` with `retime-large-*`, all 8 pairs) misalignment costs fastfft −4% to +2.5% and rustfft +2–6%: memory bandwidth hides the split accesses.

Batch calls (`batch-m0` vs `batch-m8`, 2^20 values per call, N = 8…1024, forward) cost fastfft +8.5% for f32 and +5.0% for f64 (geomean of 16 cells each), rustfft +5.0% and +5.1%. The worst are the same leaves as in finding 3: f64 N=64 in place +28% (zmm rows), f32 N=256 +13–14%, f32 N=128 out of place +13%. The f64 out-of-place batches stream 16 MiB per buffer from DRAM and vary by ±7% either way.

**3. Small N: 512-bit leaves and one out-of-place intermediate.** Most small cells cost 0–6%. The outliers:
- 512-bit rows split a line on every access at m8. In place they are latency-bound, and a misaligned store cannot forward to the next call's load: f32 N=128 in place (zmm rows) +18%, f64 N=64 in place +33–34%. Out of place the same leaves cost ≤ 1% (f32 N=128) and 0% (f64 N=64). The f64 zmm leaves at N=128 cost +9–12% in place and +17–18% out of place, and at N=256 +7% and +12%.
- f32 N=256 out of place +18% (in place +1–2%); f64 N=256 out of place +12%. `leaf256` in `crates/fastfft/src/isa/x86/interleaved.rs` uses the caller's output as its intermediate out of place, and an aligned stack window in place. Using the stack window whenever the output is misaligned is a local fix.

**4. Bluestein's inner FFTs inherit the caller's scratch alignment.** `BluesteinPlan::process` runs both inner FFTs on `scratch[..m]` without aligning it, so rough sizes pay split accesses whenever the caller's scratch is misaligned. A plain `Vec` scratch from malloc is typically only 16-byte aligned, and the arena's fastfft scratch is such a `Vec`. This is independent of `--misalign`. The prototype aligns the work buffer; stage 2 measures it on the rough suite.

**5. The prototype cuts the in-cache cost to 0–7%, and changes nothing for aligned calls; its extra buffer hurts once the working set outgrows the cache.** Measured within the prototype binary (`analyze.py --m0 proto-full-m0 --m8 proto-full-m8`), p1 geomeans of misaligned over aligned, with the baseline binary's own m8/m0 in parentheses. One cell (f64 inv oop 2^20) awaits re-timing.

| Precision | N | In place | Out of place |
|---|---|---:|---:|
| f32 | 512–16K | 1.063 (1.153) | 1.068 (1.293) |
| f32 | 32K–128K | 1.016 (1.388) | 1.049 (1.532) |
| f32 | 256K–1M | 1.181 (1.318) | 1.238 (1.438) |
| f64 | 512–16K | 1.041 (1.136) | 1.049 (1.293) |
| f64 | 32K–128K | 1.000 (1.271) | 1.026 (1.432) |
| f64 | 256K–1M | 1.225 (1.130) | 1.367 (1.168) |

- **Aligned calls are unchanged** (`--m0 <baseline m0 runs> --m8 proto-full-m0`): geomean 1.001 for f32 and 0.995 for f64 against the baseline binary; rustfft agrees to 0.1% across the two runs. The only large cell is f64 in-place N=4096, 17% *faster*. Its code path is unchanged, and only the scratch allocation grew. That is the allocation-placement sensitivity of [ticket 31](31-stockham-prototype-parity.md): cross-binary ratios can carry ±15% placement noise in single cells, so the same-binary table above is the fair one.
- **fastfft now leads rustfft by more on misaligned buffers than on aligned ones** from N = 512 to 128K, because rustfft keeps paying 6–15%. vs rustfft at m8 with the prototype: f32 1.244 (512–16K) and 1.399 (32K–128K); f64 1.326 and 1.500. Aligned: 1.223, 1.304, 1.245, 1.346.
- **In place, the scratch-only choreography runs faster than the current one at some sizes**, even with its misaligned first pass and Phase B: f32 N=4096 0.96, 64K–256K 0.96–0.995; f64 N=2048 0.93–0.94, 64K–128K 0.95–0.97 (same binary). So it may help aligned calls too; the aligned path has not been tried with it.
- **It loses where the extra buffer overflows a cache level** that the current choreography fits: f32 N=2^20 in place 1.29–1.32 (baseline 1.11–1.13; 24 vs 16 MiB against the 16 MiB L3), f64 N=2^19 in place 1.44 (1.06–1.08), and f64 N=2^18 out of place, with four buffers, 1.55–1.58 (1.44). A shipped version needs a working-set limit; ticket 16 detects cache sizes.
- **DRAM-bound sizes are fine** (`proto-large-*`, 2^21–2^24 forward in place): aligned is unchanged against the baseline binary (1.001 f32, 0.996 f64), and misaligned runs *faster* than aligned in the same binary (0.939 f32, 0.982 f64). The loss above is confined to the L3 boundary (2^19–2^20).
- **Batches gain nothing, and out-of-place N=512 loses** (`proto-batch-*`, same binary, misaligned over aligned): f32 1.088 and f64 1.084 overall (baseline 1.085 and 1.050). In place N=1024 improves (f32 1.062 vs 1.129, f64 1.022 vs 1.079), but out of place N=512 gets worse: f32 1.337 vs 1.136, f64 1.241 vs 1.071. The suspect is 4K aliasing. A batch advances the caller's chunks by whole 4 KiB pages at N=512 f32 while the scratch stays put, so an unlucky scratch offset repeats in every chunk. The small engine avoids this with `window()`. A shipped version should place the scratch buffers away from the caller's buffers modulo 4 KiB, as `leaf128` does.
- **The `leaf256` stack window does not help:** f32 N=256 out of place stays at +18–19%, and f64 N=256 out of place goes to +22% forward and +5% inverse (baseline +12%). In batches it is worse still: f64 N=256 out of place 1.287 against the baseline 0.957. The out-of-place cost there is not the intermediate. Drop this part.

**6. Aligning Bluestein's work buffer makes rough sizes up to 1.5× faster, whatever the caller's buffer alignment.** Rough suite, quick profile (forward in place), prototype over baseline on aligned caller buffers (`analyze.py --m0 rough-m0 --m8 proto-rough-m0`), p1 geomeans:

| Precision | N 17–127 | N 257–16381 | N 65524–131071 |
|---|---:|---:|---:|
| f32 | 0.965 | 0.830 | 0.677 |
| f64 | 1.007 | 0.926 | 0.830 |

The largest gain is f32 N=131071: 1.24 ms → 0.81 ms (0.653). f32 fastfft vs rustfft moves from 0.943 to 1.142 at 257–16381 and from 0.602 to 0.917 at 65524–131071. Some f64 cells are unchanged (N = 3063, 4099, 8191, 131071), presumably where the arena's scratch `Vec` happened to be 64-byte aligned already. That luck also reaches `process()`, whose thread-local scratch is a `Vec<u64>`. The caller's buffer alignment does not matter for rough sizes: m8/m0 is 1.00–1.01 in both binaries, because Bluestein touches caller memory only in its scalar chirp loops. This fix is independent of the Stockham decision and costs `align_slack` scratch elements.

### Mitigation prototype (committed and measured on pow2 up to 2^20)

The prototype is behavior-complete but not a decision. It changes the scratch lengths the API reports:

- **Stockham** (`engine/stockham.rs`): when either caller buffer is not a multiple of the vector size, only the first pass reads caller memory and only Phase B writes it. Passes 2…p ping-pong in scratch, and the last pass runs in place. `scratch_len` is N for p ≤ 2 and `padded_n + N` (≈ 2N) for p ≥ 3, in every mode; out of place goes from 0 to N or 2N. The aligned path is unchanged.
- **Bluestein** (`engine/bluestein.rs`): the work buffer is 64-byte aligned inside the scratch, which grows by `align_slack`.
- **`leaf256`** (`isa/x86/interleaved.rs`): out of place with an output that is not 64-byte aligned, the intermediate is the stack window, not the output.
- **Tests:** `stockham_offsets_f32/f64` cover every shape, 1–5 passes, three modes, and caller and scratch offsets of 0–8 complex values, with guards around the exact scratch length. The interleaved-leaf contract test now runs on a 64-byte-aligned base as well as the odd-real one.

Validation passed on all five tier caps (`diagnostics/validate-proto.sh`, log in `validate-proto.log.gz`). The prototype arena (`target/ticket12/arena-proto`, built like the baseline into `target/aligned-proto`) has sha256 `516d4c096f796857fe276dcc14d9faa3433f85b3794e0f17188b0f6a794999e0`.

### Measurement plan and status

`diagnostics/pipeline.sh` runs `fastfft` and `rustfft` with `--procs 3` on CPU 2 on one binary (see the diagnostics README). Each run waits for an idle machine; the script is resumable.

| Run | Cells | Status |
|---|---|---|
| `full-m0` | pow2 N = 2…2^20, full profile (fwd/inv × ip/oop), aligned | aborted at cell 150 by another session's build; cells 1–125 kept, 5 of them to re-time |
| `full-m0-rest` | the missing m0 cells: f64 N = 4096…2^20 | done 05:12 UTC; 3 of 36 cells to re-time (one-process clock dips as the other session wound down) |
| `full-m8` | pow2 N = 2…2^20, full profile, `--misalign 8` | done 05:32 UTC, not aborted; 20 of 160 cells to re-time (other-session bursts, mostly f64 N = 64–2048) |
| `large-m8` | pow2 N = 2^21…2^24, quick profile (fwd ip), `--misalign 8` | done 05:39 UTC; f32 N = 2^23 to re-time (one-process dip) |
| `large-m0` | the same, aligned | done 05:44 UTC, clean |
| `batch-m0`, `batch-m8` | batch suite (N = 8…1024, 2^20 values per call, forward), full profile (ip/oop) | done 05:55 UTC, clean |

Stage 2, `diagnostics/pipeline-proto.sh` (started after the prototype validated; same idle gate, resumable):

| Run | Binary | Cells | Status |
|---|---|---|---|
| `retime-*` | baseline | every dir/placement of the (precision, N) pairs with a dropped cell: f32 N=16, f64 N=64…131072 (9 sizes), f32 N=2^23 quick | done 06:25 UTC; every dropped cell now has a clean pair |
| `proto-full-m8` | prototype | pow2 N = 2…2^20, full profile, `--misalign 8` | done 06:43 UTC; f64 inv oop 2^20 to re-time |
| `proto-full-m0` | prototype | the same, aligned | done 07:03 UTC, clean |
| `proto-large-m8`, `proto-large-m0` | prototype | pow2 N = 2^21…2^24, quick | done 07:13 UTC, clean |
| `proto-batch-m8`, `proto-batch-m0` | prototype | batch suite, full profile | done 07:23 UTC, clean |
| `rough-m0`, `proto-rough-m0`, `proto-rough-m8`, `rough-m8` | both | rough suite, quick (Bluestein) | done 07:36 UTC, clean |

Compare with `analyze.py`: the prototype's benefit is `--m0 <baseline m0 runs> --m8 proto-*-m8`, and its neutrality is `--m0 <baseline m0 runs> --m8 proto-*-m0` (then the "m8/m0" column reads proto/baseline).

### Maintainer decision (historical options)

Measurement is complete (stages 1 and 2). **The maintainer selected A, gated scratch, on resuming this branch.** Implementation and focused remeasurement are next; the original options are retained below for context:

- **A. Gated scratch path (recommended).** Ship the Stockham misaligned path only where its extra buffer keeps the working set inside the cache: not at the L3 boundary (f32 2^19–2^20 in place, f64 2^18–2^19). Place the scratch buffers against 4K aliasing with the caller's chunks, the batch out-of-place N=512 regression. The reported scratch grows only for gated plans: about 2N in place for p ≥ 3, and N or 2N out of place. One more build and measurement round.
- **B. Accept and document.** No Stockham change; the README advises 64-byte-aligned buffers. Misaligned calls keep costing 13–53% at N = 512–1M.
- **C. Opt-in scratch.** Keep today's reported scratch lengths. The misaligned path runs only when the caller passes the larger scratch; `process()` sizes its thread-local scratch by the buffer's alignment.

In every option: ship the Bluestein work-buffer alignment (finding 6), drop the `leaf256` change, and give the README alignment advice (ticket 25 writes the README). Separately, ticket a trial of the scratch-only choreography for *aligned* in-place calls (finding 5: 0.93–0.97 at some sizes in the same binary).

### Approved gated path — implementation log

The maintainer selected **A (gated scratch)** and approved regression coverage
at the public Fft scratch/process boundary and the internal cache/placement
boundaries. The final candidate is implemented, correctness-validated and
performance-accepted against the focused comparisons below:

- `StockhamPlan` computes one per-mode gate at planning. Execution and reported
  scratch use that same gate. Working set includes caller buffers, scratch,
  placement/alignment slack and all twiddle tables; budget is 75% of the detected
  last-level data/unified cache. No scalar mitigation. After the first stage-3
  batch run below, **all p < 3 plans retain legacy execution and scratch**;
  three-or-more-pass plans use the cache gate.
- CPUID uses AMD's extended deterministic cache leaf or Intel's basic leaf,
  falling back to 1 MiB when topology is unavailable. The standalone detector
  tests report this host's 16 MiB L3. Broader engine thresholds remain ticket 16.
- Each active scratch buffer reserves one additional 4 KiB placement region.
  Its aligned base is placed in the largest gap between caller bases (and the
  first scratch base for the second region) modulo 4 KiB. **This did not fix
  the p = 2 batch regression:** full buffers ≥ 4 KiB inevitably have overlapping
  page-offset ranges. Placement is retained for the multi-buffer path, but it
  is not claimed to eliminate all 4K aliasing.
- Bluestein's alignment is retained; the ineffective misaligned-output
  `leaf256` staging is removed. Alignment/scratch advice is in the new
  `crates/fastfft/README.md` (ticket 25 still owns broader documentation).
- [Ticket 36](36-aligned-stockham-scratch-choreography.md) tracks the separate
  aligned in-place experiment; aligned Stockham execution is unchanged here.
- Red/green evidence: `cache_gate_preserves_legacy_scratch_when_over_budget`
  first failed (2048 vs expected 1024), then passed. Standalone CPUID and
  scratch-placement tests also failed before their implementations and passed
  afterwards. The first library run passed 27 active tests. Independent review
  then caught two gaps: scalar-offset scratch could bypass existing alignment,
  and the new batch cases had whole-page strides. Both are fixed: a shared
  scalar-unit alignment helper serves generic/fixed Stockham and Bluestein,
  and batch cases now include `[3,3,3]` and a narrow shape. See
  `diagnostics/gated-review.md`. Full validation **passed**: fmt, Clippy,
  codegen, workspace release tests, all five ISA caps, no-default-features
  scalar tests, and rustdoc with warnings denied. Log:
  `target/ticket12/validate-gated-reviewed.log`. The final v2 validation and
  performance results follow below.
- New reproducible scripts: `diagnostics/validate-gated.sh` and
  `diagnostics/pipeline-gated.sh`. They preserve a source patch including new
  files and hashes alongside `target/ticket12/arena-gated`; stage 3 focuses on
  batches, both sides of the cache cutoff, Bluestein and immutable calls. The
  validated binary's sha256 is
  `778f132ecb372f8503250ab1c745742f77102996a7c72b98fcafb29743f47917`.
  This first gated binary's four batch runs completed cleanly on 2026-09-30
  (`gated-batch-m{0,8}`, `base-recheck-batch-m{0,8}`). At N=512 out of place,
  gated m8/m0 was 1.301 f32 / 1.236 f64, and gated/base at m8 was 1.139 / 1.152:
  page-offset placement alone is insufficient. N=1024 in-place improved by
  5.3% / 2.7% against baseline at m8. Data and build evidence are archived in
  the diagnostics directory, including `gated-build/`.

  **Next candidate: `gated-v2`**, excludes p < 3 from the mitigation. The new
  two-pass scratch test first failed (1024 vs expected 0 out of place), then
  passed with the narrowed gate. Full validation passed again (29 active
  library tests, integration/property tests, workspace, all five caps,
  scalar-only, fmt/Clippy/codegen/docs). Log: `target/ticket12/validate-gated-v2.log`.
  Binary sha256:
  `367d23d841667f5fa6e56f3da4a331d6eade8f51f24a2c2ebd04d2899ff360ec`.
  Scripts default to this version; `GATED_VARIANT=gated` selects the old one.
  The v2 batch recheck is complete: misaligned N=512 out of place is now only
  1.3% / 1.8% slower than the fresh baseline (rustfft moved +2.1% / +1.4%),
  rather than the first gated build's +14–15%. N=1024 in-place improves by
  5.6% / 2.9%. One aligned f32 N=512 out-of-place cell had a 3.5% clock dip;
  the full pipeline will re-time it in a separate run and merge it.

  The full pipeline completed on 2026-09-30. All 64 focused pow2 pairs, 12
  batch pairs (after that retime), 6 rough pairs and 16 immutable pairs have
  clean measurements; all numerical/input-preservation checks passed.
  `gated-v2-build/` archives final source/provenance and validation logs.
  See [the final report](../../../docs/benchmarks/2026-09-29-mini-ryzen-misalign/diagnostics/gated-result.md).
  Never rebuild during a run.

### Rules for whoever resumes

- Benchmark only on an idle machine; no compiling during a run. Check `pgrep -x fastfft-arena` first.
- Other agent sessions share this machine (another repo's `cargo test` and `ugrep` aborted `full-m0`). The pipeline waits for quiet, but a burst mid-run still shows up as clock dips. `analyze.py` drops those cells; re-time them.
- Pin light shell work away from the benchmark core and its SMT sibling: `taskset -c 0,1,3-9,11-15 <cmd>`.
- `fastfft-arena run --help` starts a full default run; read `bench/arena/src/main.rs` for flags.

## Answer

**Implement the maintainer's gated-scratch choice, with a measured short-plan
exception.** SIMD Stockham plans with at least three Phase A passes may use
scratch-only intermediate passes on misaligned caller buffers. The per-mode
working set, including caller buffers, scratch, slack and twiddle tables, must
fit within 75% of detected last-level data cache (1 MiB fallback). Sizing and
execution use the same plan-time gate. Aligned execution stays unchanged.

Eligible plans report roughly 2N complex scratch values plus 8 KiB of placement
space and alignment padding. Other plans retain their original scratch sizes.
The first candidate's two-pass out-of-place batch regression survived page-base
placement, so p < 3 plans keep their original execution; the implementation
makes no claim to eliminate all 4K aliasing.

Keep Bluestein's aligned work buffer, fix scalar-offset scratch alignment in the
shared helper, and drop the ineffective `leaf256` misaligned-output staging.
`crates/fastfft/README.md` and crate docs give 64-byte alignment advice and explain
scratch requirements. [Ticket 36](36-aligned-stockham-scratch-choreography.md)
tracks the separate aligned in-place choreography experiment.

**Evidence:** the final `gated-v2` binary improves misaligned execution time by
27.1% f32 / 21.9% f64 on the eligible measured size sets (20 / 16 full-profile
cells; about 1.37× / 1.28× throughput). All eligible cells improve. Across all
64 focused cells, aligned time is 1.003× / 0.988× baseline. Excluded cache-boundary
and short-plan cells are at most 1.2% slower than the misaligned baseline, avoiding
the unrestricted prototype's cache regressions. N=512 misaligned out-of-place
batches return to within 2% of the fresh baseline. Bluestein f32 N=131071 retains
its 1.53× gain. Residual alignment penalties remain in individual cells and
outside the gate; these are not all-size or cross-CPU release-gate claims.

**Validation:** workspace release tests, all five ISA caps, scalar-only build,
fmt, warning-denied Clippy/rustdoc, and generated-code consistency all pass.
Tests cover cache/placement boundaries, exact scratch with guards, scalar-offset
alignment, both gate outcomes, changing-offset batches and immutable input.
All final arena verification checks pass; the one clock-dipped batch cell was
re-timed and its original evidence retained. Full data, limitations, commands
and source/binary hashes are in
[the final report](../../../docs/benchmarks/2026-09-29-mini-ryzen-misalign/diagnostics/gated-result.md).

# Close the remaining Stockham gap to the prototype at equal plans

Type: task
Status: open
Blocked by: 10
Roadmap: FFT-035, FFT-037

## Current investigation checkpoint

The [retained outcome](../../../docs/benchmarks/2026-10-12-mini-ryzen-ticket31-stockham-parity/README.md)
records a rejected candidate: 16/16 candidate parity cells pass, but eight AVX2
regression flags block adoption. The production optimization was reverted.
Ticket 31 remains open. The frozen original baseline passed 13/16 eligible
cells; no replacement performance result is accepted. No post-rollback or
current-master performance campaign has been run.
The `ticket-31-keep` branch retains useful tooling and platform integration,
not performance acceptance. Its pull request records extraction-specific
correctness, MSRV and cross-compilation checks; native ARM/macOS runtime
validation remains pending. These are not parity evidence.

The investigation and checkpoint are complete; the ticket's acceptance criteria
are not. Do not close this ticket merely because the investigation finished or
because the tooling is eventually merged.

## Completed work — reuse before repeating

All results below belong to the frozen investigation at
[`08e485a4a388652566e4c384906b0420e1b0a75c`](https://github.com/inhesrom/fastfft-history/tree/08e485a4a388652566e4c384906b0420e1b0a75c)
on `military-bear`, starting from `de309938a1b2b4dcd2bf190970a0e3b3768bcf9f`.
They are historical results, not validation of `ticket-31-keep` against the newer
master. The [retained outcome](../../../docs/benchmarks/2026-10-12-mini-ryzen-ticket31-stockham-parity/README.md)
links the full reports, manifests, source/ELF provenance and local raw archive.

1. **Reproduced and bounded the gap.** Four N4096 triage runs no longer showed
   the historical gap under matched current plans. A 108-entry inventory records
   actual ISA, ordered radices, eligibility and advertised scratch. The full
   18-command baseline covers both precisions and nine sizes N256…65536.
   Both N256 defaults use the small engine and are explicit exclusions; 13/16
   eligible Stockham cells pass both best and median within 5% of the private
   prototype. The remaining failures are f32 N32768 (ratios 1.064271/1.067735),
   f64 N32768 (1.081356/1.082680), and f32 N65536
   (1.050177/1.049946; best fails).
2. **Separated execution routes and passes.** Twenty-four retained exact-plan
   processes, 96 double-double accuracy checks and 3.868 million samples compare
   public, engine, first-pass, twiddled-pass and Phase B routes. Public/engine
   ratios near 1.0 at N32768 do not support an unavoidable API-cost exception.
   Phase B and later radix-8 work dominate; isolated pass times cannot be added
   to explain whole-transform time.
3. **Controlled placement without rebuilding plans.** Sixty-four retained
   caller-placement processes use input/scratch offsets A=0/0, B=0/1024,
   C=1024/0 and D=1024/2048, with restoration, sham and balanced-order controls.
   Twenty-four private-scratch crossover processes retain both owners and swap
   views without reallocating. Sixteen N65536 extension processes preserve the
   larger-size evidence. Equal page offsets show a repeatable execution penalty;
   construction-dependent private placement also matters. This establishes a
   virtual-address relationship, not physical cache coloring.
4. **Profiled exclusive execution.** Eight ordinary exclusive profiles have no
   lost samples. Twiddled radix-8 accounts for roughly 48–51% of production
   cycles, Phase B 27–30%, and the first pass 13–18%. The profiling header warning
   and ticket 32 clock-calibration caveat remain. Counters were available for
   this investigation; the older `perf_event_paranoid=4` limitation below is
   historical.
5. **Implemented and rejected a bounded candidate.** It shifted existing
   aligned in-place scratch by 1024 bytes only for equal input/scratch page
   offsets at power-of-two N4096…65536, within already advertised slack. It did
   not change scratch sizes or adopt ticket 36's scratch-only policy. V1 passed
   16/16 parity cells but regressed AVX2 rows. V2 restricted the capability to
   the two measured AVX-512 L8 implementations. All 76 inspected AVX2 functions
   and six selected AVX-512 leaves matched normalized original assembly;
   matching assembly does not establish equal call, stack or allocation layout.
6. **Corrected monitoring and harness confounders.** A deterministic newborn
   process race exposed the old ownership monitor's two-snapshot flaw. The
   replacement checks stable PID/start-time/process-group/session identities
   and treats uncertain ownership conservatively. The invalid v2 group remains
   excluded; bounded recovery reaudited 21 valid prefix commands and ran ten
   fresh regression commands. A remaining N2048 AVX2 flag blocked adoption.
   V3 removed allocating child workspace presizing and corrected shifted-only
   parent sizing, while leaving v2 production source unchanged.
7. **Ran a complete fresh final campaign.** All 31 v3 commands ran with the
   unchanged full-row protocol, verification, three processes, CPU 2, boost
   enabled and drift below 3%, with no inherited prefix. Candidate parity was
   16/16. Production best/median gains on the original failures were
   8.80/9.15% (f32 N32768), 5.36/5.94% (f64 N32768) and
   7.80/7.48% (f32 N65536). Holding original private-reference times fixed also
   passed 16/16, but does not replace same-process acceptance.
8. **Validated correctness and restored production.** Candidate validation
   includes 151 optimized library tests, 1,201 nonidentity exhaustive M3 cases,
   five tier-cap conformance runs (17 tests each), and selected accuracy cases
   through 2^22 without QUICK. Post-rollback checks passed 124 library tests
   (three other tests ignored), 17 arena tests, 16 Python tests, formatting,
   Clippy, scalar-only tuning compilation and an ordinary arena build. The
   production selection/capability was removed; tuning routes use the restored
   scratch base. Frozen source, binaries and a checked reapplication patch
   preserve the rejected candidate. These checks precede the new extraction.

## Why acceptance remains blocked

The final candidate has **eight AVX2 production regression flags above 5%**,
covering power-of-two, smooth, rough and overlap-save populations. Seven are
slower in all three ordinal pairs on best, p1 and median. The largest is the
full-row f32 N8192 forward/in-place cell: **+11.31% best / +11.01% median**.
Reference movement, target-cell gains and identical normalized assembly do not
waive those absolute regressions. Astra recommended rejection and rollback.
The v2 N2048 flag becoming smaller in v3 does not prove allocator causality.

The retained optimization therefore cannot be merged as an accepted solution.
The default baseline still has three unresolved parity failures, there is no
measured unavoidable API exception, and the cause of the broader regressions
is not established. The original acceptance criteria below remain unchanged.

## Continue from here

- Review the separate `ticket-31-keep` tooling extraction: ordinary comparison
  controls, retained tuning diagnostics, allocation-free sizing, an independent
  Linux ownership monitor and concise evidence. Platform integration and local
  validation are complete; native ARM/macOS runtime validation remains pending.
  This work can become mergeable without claiming to solve ticket 31.
- If performance work resumes, start with the unexecuted bounded question in
  the frozen outcome: does recurring AVX2 f32 N8192 slowness follow retained
  coefficient/descriptor ownership? Keep identical plans, fixed buffers,
  caller wrappers, batches and full-row surroundings; swap ownership and
  restore, include a sham, and balance eight diagnostic processes. Record bits
  and pointer geometry and verify restoration outside timing. Failure to
  reproduce is inconclusive and cannot waive the recorded flags.
- Reuse the inventory, exact recipes, retained routes, controls and frozen
  baseline. Repeat a campaign only for a declared changed hypothesis or a
  materially changed machine/build, with new provenance. Do not repeat the
  historical N4096 search, ticket 10's discarded twiddle/index variants, a
  padding search or selective favorable retries without new evidence.
- Keep every failed/invalid run and its reason. Do not relax 5%, substitute a
  faster duplicate for the default row, use a geometric mean to hide flags,
  or turn this checkpoint into a claimed post-rollback speedup.

## Question

Why does the general-purpose library still trail the DIT prototype on some
cells with the same vector width and ordered radices after ticket 10's
full-block/tail separation and per-kernel target-feature entry points?

## Evidence

[Ticket 10](10-measure-library-m3-checkpoint.md) records the final published
measurements and the before/after comparison. The tight reproducer is f32,
forward in place, N=4096: both default `fastfft` and `lab/dit-ymm-r8` select
eight lanes and radices 8×8×8.

```sh
target/arena/fastfft-arena run --suite pow2 --profile quick --procs 3 \
  --core 2 --filter 'prec=f32,n=4096' \
  --libs fastfft,rustfft,lab/dit-ymm-r8 --label stockham-parity
```

The initial two-row diagnostic measured the library at 3.46 µs and the
prototype at 2.42 µs. Separating the full Phase B blocks from the tail
removed much of that gap. Separate radix kernels also reduced small-N
overhead. A residual gap remained in subsequent diagnostics; ticket 10
does not claim complete equal-plan parity.

The main quick run provides a more specific clue. All three library rows
below describe the same `avx512-ymm`, L=8, 8×8×8 plan at N=4096 f32:

| Row | Best (µs) | Median (µs) |
|---|---:|---:|
| fastfft | 2.819 | 2.861 |
| fastfft/avx512 | 2.362 | 2.401 |
| fastfft/avx512-ymm | 2.404 | 2.432 |
| lab/dit-ymm-r8 | 2.443 | 2.476 |

The capped rows demonstrate that this library kernel can match the
prototype. Investigate allocation placement and timing order first. Keep
the default row as the headline result; do not replace it with the fastest
duplicate row.

## Work

- Cross allocation placement with row order to distinguish their effects.
  Then add per-pass measurement or sampling that separates the first pass,
  twiddled passes, final transpose, and public-API overhead. Hardware perf
  counters were unavailable when this work item was written
  (`perf_event_paranoid=4`); the completed investigation later captured the
  exclusive profiles recorded above.
- Compare identical ordered radices and vector shapes. The default f64
  plan is 512-bit; compare it with `lab/dit-zmm-r8`, not the 256-bit row.
- Check sensitivity to allocation placement with all benchmark rows
  present. The gap can change with the row list despite 64-byte scratch
  alignment. Preserve both best and median results across processes.
- Inspect assembly for spills and address generation in the isolated
  kernels. Ticket 10 tried aligned vector twiddles, compact twiddle tables,
  and a shared opaque input/output index; none consistently improved on
  the retained implementation, so those experiments were removed.
- Keep tiny-transform architecture in ticket 11 and general plan/radix
  selection in ticket 18; this ticket measures the Stockham implementation
  at equal plans.

## Done when

- The remaining cost is explained with per-pass evidence.
- On common Stockham plans for N=256…65536, library execution is within 5%
  of the corresponding prototype on both best and median times, or a
  separately measured, unavoidable API cost accounts for the difference.
- The improvement is published with a reproducible before/after comparison
  and all-tier, both-direction, all-placement correctness validation.

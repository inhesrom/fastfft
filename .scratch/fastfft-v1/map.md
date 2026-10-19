# fastfft v1 — wayfinder map

## Destination

`fastfft` v0.1.0 ready for the maintainer to `cargo publish`: a pure-Rust, single-threaded 1-D complex FFT (f32/f64, RustFFT-compatible API) whose release gates (G1–G9 in ROADMAP.md, possibly revised by the maintainer) pass on the Zen 4 7840HS, validated on cloud CPUs, with docs and published benchmark reports.

## Notes

- **Active qualification:** follow the [qualification tracker](qualification.md).
  The maintainer approved the staged G1–G9 implementation on 2026-10-13,
  keeping all thresholds and allowing measured stable-Rust/MSRV upgrades
  and verified comparator fixes. Ticket 21 remains separate.

- **Ticket 31 tooling extraction:** `ticket-31-keep` retains useful benchmark
  and diagnostic tools from the rejected investigation. Platform integration,
  interface review, local tests and cross compilation are complete; native
  ARM/macOS runtime validation remains pending. Validation details are recorded
  in the extraction pull request. The
  [performance ticket](issues/31-stockham-prototype-parity.md) remains open;
  no optimization is adopted. Full evidence stays at checkpoint `08e485a`.

- **Resume here.** Read this map first, then take the first frontier ticket (open, with every `Blocked by:` ticket resolved; lowest number wins). Set `Status: claimed` before working. When done, add an `## Answer`, set `Status: resolved`, and add a line under Decisions so far.
- **Source of intent:** the original plan, verbatim, in `docs/plan/original-plan.md`.
- **Latest release evaluation:** [ticket 23](issues/23-gate-evaluation.md)
  is resolved with a [compact report](../../docs/benchmarks/2026-10-11-mini-ryzen-ticket23-gates/README.md)
  and JSON summary/manifest. G3 passes; G1/G2/G4/G5/G6/G9 fail;
  G7 is incomplete and G8 remains open. All 8,900 ordinary cells and
  27,801 raw trials are retained locally under
  `/home/ianhersom/repo/fastfft/target/ticket23-worktree/target/ticket23-evidence/campaign-20261009T180520Z`.
  The whole sweep is rejected at 8.2630% drift; datacheck has 13 metric
  violations and one missing supported pair. No immediate sweep repeat,
  engine change, threshold change, or release qualification is claimed.
  [Ticket 24](issues/24-revisit-gates.md) retains all thresholds by maintainer decision;
  focused diagnostic follow-ups 41–46 cover placement/pow2 throughput,
  batch/pipelines, build cost, strict accuracy coverage and datacheck.
  Preserve existing clock ticket 32, small/batch tickets 33–35/40 and
  universal planning tickets 37–39.
- **Earlier completed tooling:** [ticket 22](issues/22-profiling-tooling.md),
  repeatable counter/sampling captures and the assembly checklist. Separate
  f32 forward in-place N=4096 profiles contain 967 fastfft and 962 RustFFT
  samples, with symbols and instruction annotation verified. Dynamic caller
  stacks remain unreliable on this perf/libdw build; findings and replay
  instructions are in `docs/profiling/2026-10-08-ticket22/`. Raw evidence is
  retained locally under ignored `target/profiling/ticket22-evidence/`.
  [Ticket 20](issues/20-fuzz-target.md) completed
  bounded fuzz testing. All 4,224 deterministic reference cases pass;
  AddressSanitizer completes 3,121 inputs in 601 seconds with no findings.
  Exact sources, corpus and logs are retained in `docs/fuzz/2026-10-08-ticket20/`.
  [Ticket 19](issues/19-measure-mode-validation.md) was accepted by the
  maintainer on 2026-10-08 with its remaining f32 batch N32×32768 timing
  issue deferred to [ticket 40](issues/40-batch-f32-n32-measure-order.md).
  Its full710 capture remains acceptance with documented exceptions, not
  a clean strict performance pass. G8 remains separate in tickets 37–39.
- **Known deviations from that plan** (intentional unless ticketed):
  - oxifft 0.4.2 instead of 0.3.x.
  - Drift is judged on the core clock, with `--procs K` best-of-K processes ([Decide how the arena measures drift and placement noise](issues/05-arena-drift-and-placement-noise.md)).
    Ticket 10 found the existing `clock_ghz` probe is an uncalibrated throughput proxy; [ticket 32](issues/32-clock-probe-calibration.md) validates its calibration and drift behavior. Historical results retain their readings and caveats.
  - The generator emits text and formats it with rustfmt, not quote/prettyplease.
  - Radix 14 is generated too.
  - `unsafe` also appears in `fft.rs` (dispatch) and `scratch.rs`.
  - Partial Phase B blocks use a stack buffer, not masked stores.
  - The M2 layout rule, as written, gives both layouts on AVX2. The maintainer chose split on every tier for now ([Accept the M2 go/no-go and ADR-0001](issues/09-accept-m2-go-no-go.md), ADR-0001 §8).
- **Plan items not yet built:**
  - Remaining G8 work, separated from ticket 18 by the maintainer: [small leaves](issues/37-small-prime-planning.md), [mixed rough lengths](issues/38-mixed-rough-planning.md), and [complete cold-planning coverage](issues/39-complete-planning-g8.md).
  - ISA tokens: [Add ISA tokens to the SIMD layer](issues/30-isa-tokens.md).
  - An AddressSanitizer CI job: [Get CI green on GitHub](issues/21-ci-green-on-github.md).
  - Reliable Stockham/prototype parity across allocation placement and row order: [ticket 31](issues/31-stockham-prototype-parity.md).
- **Domain:** Rust SIMD FFT library plus its benchmark arena. The original plan lives in `ROADMAP.md` (milestones M0–M9, gates G1–G9, `FFT-xxx` ids). Architecture decisions are in `docs/decisions/0001-internal-layout-and-engine.md` (ADR-0001, §7 has the latest data). The measurement protocol is in `docs/benchmarking.md`; background research is in `docs/research/rust-fft-landscape.md`.
- **Execution is carried in the map.** This effort overrides "plan, don't do": most tickets are `task` tickets that build and measure. HITL tickets are reserved for maintainer decisions (go/no-go, gate thresholds, API review, pushing to GitHub, cloud spend, publishing).
- **Standing rules:**
  - Benchmark only on an **idle** machine. Compiling, even niced on other cores, drops the benchmark core's boost by 20–30%.
  - Official numbers come from the arena with `--procs 3`, pinned to core 2. Build it with `cargo build --profile arena -p fastfft-arena --features fftw`, or use `cargo xtask arena ...`.
  - FFTW comes from `cargo xtask fftw-build`.
  - `cargo xtask codegen --check` must pass. Never hand-edit `crates/fastfft/src/codelets/generated/`.
  - Tests: `cargo test -p fastfft --release`, plus the tier matrix via `FASTFFT_ISA_CAP` (add `FASTFFT_TEST_QUICK=1` for speed).
  - Keep `unsafe` confined to `isa/`, `engine/`, `fft.rs` and `scratch.rs`, each block with a SAFETY comment.
- **Hard-won facts** (don't rediscover):
  - On Zen 4, 512-bit and 256-bit have the same per-element throughput. A zmm store costs 2 cycles, and there is one store port.
  - Radix-16 split spills (needs 32 data registers).
  - Pass loops must not keep 2R stream pointers as induction variables: LLVM spills them with a store each (fix: `black_box` index plus invariant offsets).
  - 16-byte-aligned buffers split 256-bit accesses (~20%).
  - rustfft single-process timings vary up to 40% with address placement.
  - Ticket 22 recorded `perf_event_paranoid=1` on 2026-10-08 with working
    counters. The 2026-10-13 clock summary claims 4 without a retained sysctl
    readout; do not treat that assertion as a verified permissions blocker.
    Read `/proc/sys/kernel/perf_event_paranoid` for each capture. Perf
    7.0.14/libdw still produces invalid
    dynamic caller chains for the current arena ELF. Use exclusive samples
    and annotation; do not trust complete caller attribution (ticket 22).
  - Pi background tasks (`bg_run`) die when the Pi session reloads. Start multi-hour benchmarks detached (`setsid nohup`), and gate them on an idle machine: no compilers, no other agent running tools, low CPU, clean tree.
  - Release test builds can exhaust the 13 GB host: each `fastfft` test crate's rustc peaks at 2–5 GB, and parallel jobs trigger the global OOM killer, which also kills `paseo.service` and the agent session (2026-10-14). Build tests with `CARGO_BUILD_JOBS=1` inside a memory-capped scope: `systemd-run --user --unit=NAME -p MemoryMax=9G -p MemorySwapMax=0 --setenv=PATH="$PATH" --setenv=HOME="$HOME" --working-directory=$PWD bash -c '...'`.
  - `target/release` contains rustc 1.97.1 dependency artifacts that the pinned 1.95.0 rejects (E0514). Use a separate `CARGO_TARGET_DIR` for validation rather than cleaning the shared target.
  - Even on an idle machine, a core-clock reading at the start of a process can dip more than 3%, about once per few hundred cells. The arena then flags the whole run. Re-time the flagged cells to check whether the data was affected.
  - oxifft 0.4.2 crashes in its planner for f64 powers of two ≥ 2^17. Its f32 error passes the arena tolerance only up to 2^22 (2,420 ε there).
- **Skills worth consulting:** `commit-with-intent` for commits, `diagnosing-bugs` for performance regressions, `tdd` for engine work.

## Decisions so far

- [Measure the run-to-run spread of the four-library comparison](issues/47-run-to-run-spread.md) —
  five back-to-back pow2 runs: fastfft headline geomeans vary with 1.2–3.1% CV,
  mostly from RustFFT's per-process slow mode; fastfft's own geomean latency CV
  is 0.16–0.35% and per-cell median CV 0.50%. `arena compare`'s 3% threshold
  flags 5% of fastfft and 16–29% of comparator cells between identical runs.
  The published f32 inverse 1.330× headline is +2.6σ high (five-run mean 1.284×);
  it is recorded, not republished. Cross-session spread and a noise-aware
  compare threshold remain unspecified.

- [Retain release thresholds](issues/24-revisit-gates.md) — keep G1–G9 and
  complete required evidence; allow measured stable compiler/MSRV upgrades
  and verified comparator fixes. No release gate is waived.

- [Evaluate release gates G1–G9 on Zen 4](issues/23-gate-evaluation.md) —
  complete aligned full-profile seven-suite evaluation and compact publication.
  G3 passes (1.1786× best / 1.1719× median); G1/G2/G4/G5/G6/G9 fail,
  G7 is incomplete and G8 stays open. Retain all 8,900 cells, 367 controls
  and 27,801 trials; reject the entire 8.2630%-drift sweep without splicing
  or an immediate repeat. Datacheck has 13 metric misses with 39/40 pairs.
  Zero admissible strict DD violations do not close accuracy-method,
  scenario, sampled-batch or sweep gaps. Local-only archive and exact
  provenance accompany the report; tickets 41–46 define diagnosis before
  fixes, while ticket 24 remains the maintainer's threshold decision.

- [Set up profiling tooling and the asm checklist](issues/22-profiling-tooling.md) — retain stat/record evidence, exact executables and source, validate affinity/cell/sample failures, and expose report warnings. Idle-gated f32 N=4096 captures identify Stockham passes/finish and RustFFT butterfly/transpose hot spots; clock probes contribute about 5%. Symbols and annotation work, but dynamic caller chains remain a documented perf/libdw blocker. Test twiddle-vector reuse only through matched unprofiled benchmarks; no FFT engine changed.

- [Add a fuzz target](issues/20-fuzz-target.md) — independent double-double oracle, public API and panic contracts, SIMD batch boundaries, both precisions/directions, bounded Measure and ISA caps. All 4,224 deterministic cases pass; the 601-second AddressSanitizer campaign completes 3,121 inputs with no findings. Retain exact tested sources, corpus and logs; performance exceptions remain separate.

- [Validate Measure mode and describe_plan](issues/19-measure-mode-validation.md) — accepted with an explicit maintainer exception on 2026-10-08. Original selection failures and descriptions are fixed; all evidence remains retained. [Ticket 40](issues/40-batch-f32-n32-measure-order.md) owns the reproducible f32 batch/order loss. The latest full capture is not a clean strict acceptance pass; release gates and G8 work remain separate.

- [Set up the workspace, CI workflow and planning docs](issues/01-workspace-ci-and-docs.md) — workspace, toolchain 1.95.0 (MSRV 1.89), lints, CI workflow (not yet run), cargo-deny, ROADMAP, research + benchmarking docs
- [Build the test reference kit](issues/02-testkit-reference-transforms.md) — double-double reference DFT/FFT and metrics in `fastfft-testkit`, validated to 1e-28
- [Build the benchmark arena and FFTW reference](issues/03-arena-and-fftw-reference.md) — arena with per-cell pinned children, verification, reports; 6 library adapters; FFTW 3.3.11 AVX-512 build
- [Write the codelet generator](issues/04-codelet-generator.md) — DAG codelet generator with FMA fusion and add/FMA pipe balancing; radices 2–16, 32 committed
- [Decide how the arena measures drift and placement noise](issues/05-arena-drift-and-placement-noise.md) — no thermal drift; rustfft varies with address placement, so drift is judged on the core clock and official runs use `--procs 3` (best of 3 processes)
- [Build the library core](issues/06-library-core.md) — library core: split-layout DIT Stockham over 5 tiers, Bluestein, planner, tests pass on every tier (worst 2.9 ε)
- [Finalize the official M2 measurement](issues/07-finalize-m2-measurement.md) — official `m2-final` run published. `lab/dit-ymm-r8` measures 1.29× rustfft for f32 (1.32× f64) against the 1.25× threshold; the decision is in ticket 09. The layout rule is not met on AVX2 (interleaved +5% for f32). The library is at 0.97× for f32, behind the prototype
- [Run and publish the Zen 4 baseline](issues/08-zen4-baseline.md) — `zen4-baseline` published (`docs/benchmarks/2026-09-25-mini-ryzen-zen4-baseline/`). rustfft is faster than every other Rust library on every suite, and FFTW beats it only on smooth f64 (1.16×). The maintainer accepted three caveats: a drift flag from two single clock readings, oxifft 0.4.2 defects on 40 cells, and a placement-noise caveat on the datacheck
- [Accept the M2 go/no-go and ADR-0001](issues/09-accept-m2-go-no-go.md) — go (1.29× ≥ 1.25×). ADR-0001 is accepted with revisions (§8):
  - split on every tier for now; the AVX2 layout is revisited with G5 data from tickets 23 and 27;
  - on Zen 4, 256-bit is the f32 default and 512-bit the f64 default, with the planner choosing per size;
  - at most radix 8 per tier; radix 4 vs 8 on AVX2 is still to be measured;
  - Stockham plus a four-step engine for large N, with a provisional switch point.
- [Measure the library in the arena and check the M3 checkpoint](issues/10-measure-library-m3-checkpoint.md) — published `m3-quick` and `m3-avx2-radices`; improved Stockham kernels and validated every 13-smooth length through 32768 on all tiers. Correctness passes; M3 performance remains below 1.3× (default f32 1.085×, f64 1.081×). Keep maximum radix 8 on AVX2; ticket 18 chooses per-size radices. Tickets 31 and 32 track residual timing variation and clock-probe calibration.
- [Build the register-resident small-N engine](issues/11-small-n-engine.md) — interleaved leaves for N=2–256 pass the small-N gate: 1.250× f32 / 1.277× f64 p1 geomean vs rustfft (median 1.245× / 1.259×), no cell below 0.95× (`small-fma`). The maintainer approved three measurement changes first (`small-fair`): per-library timing loops, p1 instead of the minimum, 64-byte function alignment. Tickets 33–35 follow up on in-place latency, the f64 zmm schedule spread and batch f64 N=32
- [Handle unaligned user buffers](issues/12-unaligned-user-buffers.md) — maintainer chose gated scratch. SIMD Stockham with p ≥ 3 keeps misaligned intermediate passes in two aligned scratch regions only when the per-mode working set fits 75% of detected last-level cache. p < 3 retains legacy execution after the two-pass batch regression survived page-base placement. On eligible measured cells, misaligned time falls 27% f32 / 22% f64; aligned and excluded cache-boundary calls remain effectively unchanged. Keep Bluestein alignment, fix scalar-offset scratch alignment, drop `leaf256` staging, document alignment/scratch advice. All tier/workspace tests pass; final `gated-v2` evidence is archived. Ticket 36 tracks an aligned in-place experiment.
- [Give odd and weakly-even smooth sizes a SIMD path](issues/13-odd-smooth-sizes-simd.md) — generalized FourStep panels, bounded masked AVX-512 tails, rectangular/packed small leaves and measured smooth dispatch pass G2: 1.335× best / 1.332× median, all 82 cells verified, minimum 0.985×, 0.89% drift. Workspace and five-tier tests, restricted-feature builds, Clippy, fmt and codegen checks pass. The `ticket13-tail-kernels` report retains exact sources, validation and rejected experiments. Reuse the panels in ticket 14 and fold the focused choices into ticket 18's cost model.
- [Build the four-step engine for large N](issues/14-fourstep-large-n.md) — grouped power-of-two panels, blocked intermediate, factored twiddles, padding and fenced streaming stores pass the combined M4 target over 2^15–2^24: 1.5785× best / 1.5773× median, 80 verified cells, minimum 1.1564×, 1.32% drift. Measured AVX-512 defaults start at an 8 MiB transform; lower sizes and ISA caps retain Stockham. Accuracy through 2^22 and explicit reference/roundtrip checks to 2^24 pass, along with workspace/tier/build checks and a focused smooth regression run. Fix the arena's empty-tail calibration fallback; archive the interrupted and drift-flagged runs plus the clean repeat in `ticket14-fourstep`. Full G1 and G8 remain release work; thresholds and the cost model feed tickets 16/18/27.

- [Build the batch engine](issues/15-batch-engine.md) — a hybrid of size-8 SIMD across four transforms, existing Small leaves with streamed output, and four-result Stockham tiles passes the combined M4 batch checkpoint: 1.3242× best / 1.3147× median, 32 verified cells, 1.67% drift. Public scratch requirements are unchanged; all modes, directions, precisions, caps and remainder counts pass contract checks. General across-transform vectorization lost to the existing leaves and remains diagnostic. The first matching-build run missed the median by 0.04%; one unchanged repeat passes, with both retained in `ticket15-batch`. G6 1.5×, G8 planning costs and f64 N=32's median remain tickets 18/23/35; portable thresholds feed ticket 16.
- [Detect cache sizes and set engine thresholds](issues/16-cache-detection-thresholds.md) — extend the existing CPUID boundary with independent L1D/L2 fallbacks. Explore FourStep at L2/4, select it for AVX-512 powers of two at 8*L2, and group panels from L1 occupancy with a `min(2*L2, LLC/8)` budget. Zen 4 retains ticket 14's 8 MiB crossover and 2 MiB groups. Twelve verified before/after cells keep identical plans and all timings within ±3% (1.0013× best / 1.0004× median; drift below 1%); six smooth cells verify with 1.30% drift. Full release/tier/build checks pass. `ticket16-cache` retains the policy, raw results, comparison and validation. CPU-family tuning remains tickets 18/27/28.
- [Speed up Bluestein](issues/17-bluestein-speed.md) — SIMD products with packed factors and fused conjugation/padding, a shared workspace for all placements, and cost-based convolution lengths pass quick G3: 1.1575× best / 1.1512× median, minimum 0.5458× / 0.5461×, 34 verified cells and 1.14% drift. Even-kernel symmetry permits M=2N-2; N=17/257/65537 use power-of-two inners. Every cell improves over ticket 16 (combined 1.2474× / 1.2482×). All 75 release tests, five-cap matrix and build checks pass. `ticket17-bluestein` retains the proof, results and rejected SIMD-inlining experiment. G8 worsens to 310.59× at f64 N=31 and feeds ticket 18; full-profile gates and Measure's speed guarantee remain later work.

- [Tune the cost tables and Estimate model](issues/18-tune-cost-tables.md) — production-pass tuning and CPU-guarded recipes pass the 3% in-place candidate target for all 130 default cases through 2^24 (worst 1.027153×). Direct lookup, lazy descriptions and reusable coefficient preparation reduce planning overhead. All 78 release tests, five caps, upper-bound accuracy and build checks pass. The clean quick arena has 164 verified cells and 1.23% drift; G2/G3/G7 pass, G1/G8 remain open. Fresh-planning residuals are 46/312 suite cases and 657/1020 expanded small cases. The maintainer split remaining G8 engines and universal coverage into tickets 37–39. `ticket18-tuning` retains independent audits, the predeclared million-point percentile refinement, table reproduction and all earlier flagged runs.

## Not yet specified

- Release follow-ups are now specified as diagnostic tickets 41–46 after
  [ticket 23](issues/23-gate-evaluation.md). Engine remedies and the scope of
  the next candidate qualification still depend on those diagnoses and the
  maintainer's open [threshold review](issues/24-revisit-gates.md).
- Whether an interleaved-layout engine is worth building for AVX2-only CPUs.
  - The layout rule is not met on AVX2: interleaved leads by 5% for f32, and split leads by 16% for f64 (ADR-0001 §4.1).
  - The maintainer's review in [Accept the M2 go/no-go and ADR-0001](issues/09-accept-m2-go-no-go.md) chose split on every tier for now.
  - [Ticket 23](issues/23-gate-evaluation.md) now supplies the forced-AVX2
    G5 failure (pow2 1.1425× best / 1.1377× median). The layout decision
    remains unresolved pending the AVX2-only machine in
    [cloud validation](issues/27-cloud-validation.md) and maintainer review.
  - [Ticket 42's AVX2 diagnosis input](issues/42-pow2-release-throughput.md#avx2-diagnosis-input-2026-10-17--existing-data-remedies-unmeasured)
    reads the Zen 4 cost table: AVX2 matches Avx512Ymm at radix 4 but is
    +21% at radix 8 and +28–41% in Phase B. That points to register pressure
    and permutes before layout, so split-layout remedies come first and an
    interleaved engine only if they fall short (unmeasured).
- Real-world scenario performance is measured: all six spectrogram/overlap-save
  cells miss G6's 1.3× target. [Ticket 43](issues/43-batch-and-pipeline-g6.md)
  now owns pipeline/batch diagnosis; remedies and any acceptance-scope
  decision remain pending, with thresholds reserved for ticket 24.

## Out of scope

- The v1 non-goals listed as FUT-01…FUT-19 in `ROADMAP.md`:
  - NEON, WASM SIMD, SVE and RVV tiers;
  - Rader and Good–Thomas at engine level;
  - multithreading, real-input FFT, integer I/Q input, saved plans (wisdom);
  - more comparison libraries, nightly perf CI;
  - `no_std`, AVX10/APX tuning, 2-D/N-D FFTs, split/strided APIs;
  - a rustfft interop adapter, f16/bf16.

  They are tracked there, not here, and return only as a new effort.

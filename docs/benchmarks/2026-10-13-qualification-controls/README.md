# Qualification controls and comparator repairs

Diagnostic evidence on `mini-ryzen` (Ryzen 7 7840HS), 2026-10-13.
No release gate is claimed passed by this report. Thresholds are unchanged.

## Clock control

The exact arena probe from revision `e7902b0` was included in a standalone
Rust 1.95.0 executable, built with `-C opt-level=3 -C lto=fat
-C codegen-units=1`. Disassembly confirmed four dependent register additions,
followed by the loop decrement and branch. Each observation selects the fastest
of the existing three 10-million-iteration probes; observations are separated
by 100 ms. The process was pinned to core 2 with boost enabled.

The probe is explicitly documented as a relative throughput control. Its
historical `clock_ghz` field is retained for schema compatibility; its unit on
this host is billion dependent additions/second. Independent frequency
calibration was not performed. The historical `clock-summary.json` note claims
`perf_event_paranoid=4`, but no raw sysctl readout or counter permission error
is retained here to substantiate it. Ticket 22 recorded working counters with
value 1 on 2026-10-08. The current setting cannot be inferred from these
conflicting notes; a fresh readout and counter attempt are needed before
calling permissions a blocker. Historical JSON is preserved unchanged.

| Phase | Samples | Minimum | Median | Maximum | Range / median |
|---|---:|---:|---:|---:|---:|
| Startup | 10 | 5.020823 | 5.029681 | 5.030933 | 0.2010% |
| Idle | 200 | 5.010728 | 5.029415 | 5.031491 | 0.4128% |
| Controlled load | 200 | 4.821237 | 4.881205 | 4.932029 | 2.2698% |
| Recovery | 200 | 5.016873 | 5.029266 | 5.031287 | 0.2866% |

Controlled load consisted of six owned busy-loop processes on CPUs 0, 1, 3,
4, 5, and 6. The median fell 2.947% from idle, just below the unchanged 3%
drift threshold; the worst loaded observation was 4.139% below the idle
median. Thus drift alone does not detect every competing-load observation.
The independent CPU monitor rejected all 24 loaded sampling intervals after
its initial counter snapshot. Startup, idle, and recovery execution monitors
recorded no violations (2, 25, and 25 observations respectively).

The sustained-idle preflight required 60 consecutive clean seconds before
startup and again after stopping the controlled load. A preflight burst
reset the initial timer; it is retained. Explicit boost-toggle validation is
still pending: boost sysfs requires privileges, and noninteractive sudo is
unavailable in this session. Ticket 32 remains open.

## Host activity and retained attempts

An initial 90-second process trace identified bursts from a Pi coding-agent
session in `/home/ianhersom/repo/raven-flow`, with smaller activity from
Paseo/Codex. The host also ran continuous Obsidian vault sync. With the user's
authorization, Pi and sync were suspended only during the diagnostic windows
using SIGSTOP and resumed using SIGCONT. Their PID/start-time identities were
checked before resumption. Paseo, Codex, SSH, and the report server stayed up.
Both suspended processes resumed after every attempt.

Retained raw attempts under ignored `target/qualification/clock/`:

- `capture`: stopped after repeated preflight activity; no measured phase.
- `capture-paused`: passed idle and startup, then stopped on an accidental
  collision between the preflight and phase log filenames. No qualification
  evidence was salvaged.
- `capture-paused-2`: complete diagnostic with separate phase log names.

[Clock summary](clock-summary.json) records exact statistics, compiler identity,
source/executable hashes, monitor counts, and raw-artifact SHA-256 hashes.
These are diagnostic measurements, not a full-suite admissibility claim.

## Comparator correctness

The [vendored oxifft patch](../../../vendor/oxifft/FASTFFT-PATCH.md) repairs
the reproducible f64 table-overrun panic, f32 Stockham long-recurrence accuracy
failure, and f64 DIF recurrence failure exposed after repairing the panic.
All 204 DFT solver tests pass, including three regressions that failed before
their respective fixes. The intermediate adapter recheck is retained as an
incomplete diagnostic, including the DIF failures.

The [affected adapter recheck](oxifft-recheck.json) now passes all 46 distinct
cases: the 40 historically missing pow2 comparisons, four f64 boundary cases,
and the f64 N=2^20 immutable zero/random pair. It used the frozen `4332e48`
arena executable. All f64 powers of two from 2^16 through 2^24 and f32 2^23
and 2^24 passed both directions and both mutable placements. This recheck
overlapped builds and is correctness evidence only. Of the 46 cases, 22 use
double-double references and 24 retain the existing RustFFT/roundtrip proxy;
it does not complete strict G7 or establish zero/random timing agreement.

An evidence audit caught a typo in the diagnostic script: `timing_data` was
silently ignored instead of setting `data`, so its original two datacheck
requests both timed zero input. Both records remain retained and explicitly
invalid as a zero/random pair. A separate corrected pair verifies the actual
returned `data` field and passes both cases. New `run-cell` requests now reject
unknown fields and report the error before execution, with regression tests
for misspellings, random/default data, and duplicate fields. Historical result
deserialization remains compatible. The isolated source regression reproduced
the old failure; all three final parser tests pass, with and without diagnostic
features. Arena Clippy checks the integration; the initial full test build was
stopped before completion due to competing compiler memory demand.

## Clean build comparison (2026-10-14)

Revision `4332e48`, with a clean working tree, was measured sequentially on
core 2 after separate 60-second idle checks. Each build used a new target
directory, normal release settings, one job, empty `RUSTFLAGS`, disabled
incremental compilation, prefetched dependencies, and offline/locked builds.
Both libraries used the same selected Rust/Cargo toolchain. Continuous
monitoring found no interference during either pair. One preflight burst
reset the second compiler's idle timer and remains in the raw log.

| Compiler | fastfft | RustFFT | Ratio | G9 ≤2× |
|---|---:|---:|---:|---|
| Rust 1.95.0 / LLVM 22.1.2 | 43.564670 s | 3.344123 s | 13.027233× | FAIL |
| Rust 1.99.0 / LLVM 23.1.1 | 33.960155 s | 3.198190 s | 10.618555× | FAIL |

[Exact build evidence](build-comparison.json) includes commands, compiler
identities, exact durations, verdicts, raw evidence locations and monitor
hashes. These are one matched pair per compiler, not repeated confidence
estimates. Rust 1.99 reduces observed fastfft build duration 22.05%, but it
does not close G9. Runtime comparison remains required before changing the
pinned toolchain or minimum supported version.

The correctness runner was suspended between cells during this window.
Its active child finished before the idle check; Pi and vault sync were also
suspended. All three resumed automatically after the comparison.

A separate instrumented Rust 1.95 diagnostic attributes nearly all library
compilation time to LLVM optimization: 29.34 s in LLVM passes and 21.01 s
in local ThinLTO, versus 0.31 s metadata and 0.28 s LLVM IR generation.
It used `RUSTC_BOOTSTRAP=fastfft` only to enable `-Ztime-passes` on the installed
stable compiler. This diagnostic overlapped correctness work, was unpinned,
and is not gate timing. Production builds do not use this setting.

An isolated dispatch experiment is being evaluated to avoid eagerly compiling
all Stockham and FourStep specializations into the library before a consumer
needs them. It must also be checked for consumer build cost, correctness,
runtime effects before adoption. Native NEON validation is explicitly deferred
by the maintainer; the [native handoff](native-neon.md) records the pending work.
G9 remains failed
for the working branch; no experimental result replaces the table above.

## Isolated direction-dispatch candidate

The retained [candidate patch](direction-dispatch-candidate.patch) moves the
direction choice before generic Stockham/FourStep ISA entries. It preserves
the public API and default ISA features. A matched, monitored normal-release
build on Rust 1.95 measures **2.843352 s fastfft / 3.369397 s RustFFT =
0.843876×**, passing the unchanged G9 threshold in this one observation.
The [diagnostic manifest](direction-dispatch-diagnostic.json) retains exact
durations, source/patch hashes, compiler identity and monitor hashes.

The candidate passes 126 active engine/tuning tests (three ignored), library
Clippy with all features, Rust 1.89 library compilation, a no-default-feature
library check, and an AArch64 Apple library check with tuning. The broader
AArch64 test compile requires an Apple C compiler for a test dependency and
could not complete here. Native NEON remains deferred. The aligned candidate
arena builds successfully. These checks do not replace the public integration
accuracy sweep or matched runtime comparisons, both still pending.

To check that the library improvement does not merely shift cost to callers,
the comparison included clean f32-only and dual-precision applications in
balanced baseline/candidate/candidate/baseline order, followed by an independent
G9 repeat. The **first application build was stopped and invalidated** by a
continuous-monitor CPU violation after 9.12 seconds; it has no valid completed
build duration. The rest of the sequence did not run. No application build
improvement is claimed. All evidence and the interrupted build are retained.

A subsequent 100-second process/CPU trace kept Pi and vault sync suspended.
Its only interval over the 5% per-core idle limit coincided with 15 CPU ticks
(150 ms) in PID 4792, `Paseo Daemon`; three cores exceeded the limit. Two marked
repository reads during the trace did not exceed it. This identifies remaining
app-daemon activity even while the unrelated workloads are paused; it does not
prove the origin of the earlier untraced burst. Paseo carries this session and
was left running. Pi and sync resumed after both the interrupted comparison
and the diagnostic trace.

The candidate remains **unadopted**, retained in its isolated worktree and as
the patch above. Long controlled build/runtime comparisons are blocked on a
quiet host window. Restart the complete affected comparison after resolving
that interference, retain this failed attempt, then complete consumer build,
runtime and public correctness checks before adoption. The pinned compiler,
minimum Rust version, production FFT dispatch and gate thresholds are unchanged.

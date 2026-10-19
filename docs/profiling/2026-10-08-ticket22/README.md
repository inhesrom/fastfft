# Ticket 22: profiling and hot spots

The repeatable workflow captures counters and cycle samples for separate
fastfft and RustFFT cells: f32, forward, in-place, N=4096, batch 1, aligned,
zero input, full arena profile, seed 1, CPU 2. Both libraries return `ok` and
`cpu: 2`. All four accepted captures pass. The assembly checklist is in
[architecture.md](../../architecture.md); recipes are in
[benchmarking.md](../../benchmarking.md#profiling-tools).

The final recordings contain 967 fastfft samples and 962 RustFFT samples,
with zero lost samples reported by perf. FFT symbols and source-level inline
frames resolve; instruction annotation and portable replay work. **Dynamic
caller verification does not pass on this perf/libdw build.** The saved caller
reports must not be treated as complete call graphs. This limitation is
documented below rather than hidden by a different FFT build.

Raw evidence is retained locally under the ignored
`target/profiling/ticket22-evidence/evidence.tar.gz`, outside source control.
Git retains this findings report, compact manifests and checks, and the replay
helper. Paths below refer to files inside the local archive unless they link
to a file directly. The archive preserves all 277 original evidence files
byte for byte. A fresh checkout does not contain the raw evidence: copy the
bundle from the capture host or produce a new capture with `perf-cell`.

## Build and environment

The machine is `mini-ryzen`, AMD Ryzen 7 7840HS (Zen 4), Linux
7.0.0-28-generic. Rust is 1.95.0; perf is 7.0.14 with libdw DWARF unwinding;
cargo-show-asm is 0.2.63, installed with `--locked` into
`target/profiling-tools`. llvm-mca is absent. Add
`$PWD/target/profiling-tools/bin` to PATH to use `cargo asm`.

The existing arena profile uses fat LTO, one codegen unit and line tables.
FFTW is linked because its reference installation is already present. No
native-CPU flags, forced frame pointers, profile overrides or ISA cap were
set. No FFT API or engine source changed. All accepted captures use the same
96,040,248-byte executable:

```text
SHA-256: 22f1dec9154a84f959affe0912d7cdd3b8fe1c703874696d6a4c9fa1f4129de8
Build ID: bcc7d0333eca50d9d4bd014cd66fe0acd6c43bd9
```

Each capture retains revision, source archive, dirty diff, exact command
arguments, versions, flags and permissions. The revision is `fbab8a6`; the
preserved unrelated benchmark-document edits appear in the dirty diffs.
Untracked tooling inputs are included in the source archives. The final
`failed-event/source.tar.gz` also includes the experiments workspace member;
the earlier sampled source archives omitted that unchanged member. It
retains the final tool source after correcting the archive input list.
The arena binary is shared because every executable hash matches.

Compilation and assembly exploration finished before the accepted captures.
Before each cell, the existing `scripts/bench-env.sh check --core 2` passed
and the host process list showed no compiler. Logs retain the host process
list, performance governor/EPP, boost enabled, CPU 2/SMT sibling 10, and load
averages below 2. AC status was `unknown`, which the existing check permits.
`perf_event_paranoid` was 1; the former value of 4 is stale. No sysctl settings
were changed, and no background processes were stopped.

## Whole-process counters

| Counter | fastfft | RustFFT |
| --- | ---: | ---: |
| cycles | 4,760,771,736 | 4,736,760,793 |
| instructions | 16,374,135,439 | 14,911,064,964 |
| L1-dcache-loads | 4,285,238,777 | 4,531,527,087 |
| L1-dcache-load-misses | 1,839,022,272 | 887,718,633 |
| l2_cache_req_stat.ic_dc_miss_in_l2 | 118,011 | 125,943 |

Raw counter output is in `fastfft-stat/perf.stderr`
and `rustfft-stat/perf.stderr`. These are counters
for approximately 0.95-second processes, including planning, warm-up, clock
probes and the harness. They are not per-transform counters. Each library
executes a different number of transforms during its time-based cell, so
these totals do not rank per-transform efficiency. The AMD L2 event includes
instruction and data requests; generic L1 event names are not sufficient to
establish a particular memory instruction's cache behavior.

## Dominant sampled functions and instructions

Percentages below are perf's exclusive, period-weighted cycle attribution.
They include warm-up and harness activity as well as the timed rounds.

- fastfft selects `stockham avx512-ymm split L=8 radices=8x8x8`. Two distinct
  F32x8v pass instantiations account for 39.88% and 19.11%; the finish function
  accounts for 33.15%. Together these three functions account for 92.14%.
- RustFFT's Butterfly512 column butterflies plus transpose account for
  40.40%; MixedRadix8xn column butterflies for 20.88%; Butterfly512 row
  butterflies for 20.15%; and the MixedRadix8xn transpose for 12.66%.
- The explicit `clock_probe::dependent_adds` harness function accounts for
  5.00% in fastfft and 5.17% in RustFFT. Direct clock/harness self cost is also
  visible in smaller entries. Inlining and incomplete caller stacks prevent
  a complete separation of all harness work from FFT work.

The fastfft self report (`fastfft-record/report-self.stdout`) and
RustFFT self report (`rustfft-record/report-self.stdout`) retain every entry.
The fastfft pass annotation (`fastfft-record/annotate-pass.stdout`) distinguishes
two instantiations with the same demangled name by executable address:
`0xd2de00` and `0xd30880`. Use addresses and source inline frames when names
collide. Local annotation percentages use each function's samples as their
denominator; they are not percentages of the whole transform.

The twiddled pass at `0xd2de00` has 14 scalar-to-vector twiddle broadcasts
within its inner loop, followed by dependent vector arithmetic and stores.
The captured objdump excerpt (`fastfft-record/objdump-pass.txt`) confirms GPR
stack traffic and indexed address generation. The store/reload of the
black-box index at `0xd2dee0`/`0xd2dee5` is intentional; it must not be counted
as proof that all 16 stream pointers spill. Several invariant offsets are
also loaded from the stack inside the loop. The no-twiddle pass at
`0xd30880` places substantial local sample weight on FMA/subtract and store
instructions. No unexpected helper call or vector stack spill appears in
these inspected pass loops. This is a focused inspection, not a finding for
every generated radix or ISA tier.

The finish annotation (`fastfft-record/annotate-finish.stdout`) includes layout
conversion, transposes and final arithmetic. The
RustFFT column annotation (`rustfft-record/annotate-column.stdout`) likewise
combines butterfly and transpose work. The data does not independently
establish split-cache-line frequency, a store-port bottleneck, or the latency
of any individual instruction. Sampling skid can move a sample beyond the
instruction responsible for a stall.

Concrete follow-up hypothesis: change the twiddled radix-8 pass traversal or
schedule so adjacent groups reuse twiddle vectors rather than issuing all
14 broadcasts again. Predict fewer broadcasts per transform and lower
unprofiled N=4096 time with the same selected plan. Inspect register pressure
and memory locality: hoisting all twiddles may cause spills, and changing
loop order may harm contiguous accesses. Validate correctness and compare
matched unprofiled arena runs with the established process/allocation
protocol before accepting it. Sampling alone does not establish root cause
or an improvement; no optimization was made in this ticket.

## Caller-stack and sample limitations

`--call-graph dwarf,16384` captures registers and stack bytes without changing
the arena build. Source-level inline frames are readable. Dynamic FFT chains
end at the sampled function or continue to implausible unknown addresses.
Of 895 fastfft and 898 RustFFT stack blocks containing FFT symbols, none
contains a resolved arena runner or cell caller. The saved
stack quality counts (`fastfft-record/stack-quality.json`) and
RustFFT counts (`rustfft-record/stack-quality.json`) distinguish total frame
depth from actual caller verification. Multiple frames alone do not prove a
valid chain. Do not sum inclusive attribution or use these caller reports
to compare caller cost.

The unwind diagnostic (`unwind-diagnostic.txt`) shows reads at addresses
outside the dumped stack. ELF segments (`elf-segments.txt`) show the executable
segment's virtual address exceeds its file offset by `0x1000`. Perf's
[libdw module reporting](https://raw.githubusercontent.com/torvalds/linux/v7.0/tools/perf/util/unwind-libdw.c)
derives module base from map start minus file offset. A relocation/bias
mismatch is a plausible explanation for the observed CFI lookup failures;
it is an inference, not a verified perf fix. An
[elfutils report](https://sourceware.org/pipermail/elfutils-devel/2023q1/005892.html)
describes a related segment-bias problem on another architecture. A compatible
unwinder is still needed to establish dynamic caller attribution from these
raw captures. A forced-frame-pointer rebuild would violate this ticket's
matched-build constraint.

Perf additionally prints `Invalid HEADER_EVENT_DESC: nre=1 sz=144 (min 64)`
when showing the header. `report-warnings.json` retains that warning. The
header displays zero sample duration despite nonzero timestamps in
`stacks.stdout`; use the actual script timestamps and cell wall time. The
exclusive histogram and instruction annotation remain readable. Some loader,
kernel-context and vDSO addresses are unresolved. Sampling begins before the
child pins itself, so startup samples can precede successful affinity.
The captures are short, single-process diagnostics, not release-gate evidence
or a matched unprofiled before/after comparison.

## Retained evidence and replay

[manifest.json](manifest.json) records the bundle SHA-256 and the executable
and raw-sample hashes needed for replay. Inside the bundle, the original
`manifest.json` maps every capture file to its uncompressed SHA-256 hash.
`fastfft-arena.gz` and both `perf.data.gz` files retain the exact executable
and raw samples. Dirty diffs, reports, stacks, commands, stderr, cell JSON,
and metadata are preserved inside the bundle. Source archives also include
the pre-existing FFTW wisdom directory; they are provenance, not a replacement
build recipe.

Extract the evidence under the ignored target directory to inspect reports:

```sh
mkdir -p target/profiling/ticket22-evidence
tar -xzf target/profiling/ticket22-evidence/evidence.tar.gz \
  -C target/profiling/ticket22-evidence
less target/profiling/ticket22-evidence/fastfft-record/report-self.stdout
```

`capture-results.json` lists the two counter captures and final recordings.
The preliminary recordings remain under `target/profiling/ticket22/` locally;
the archived recordings come from the final warning-reporting workflow under
`target/profiling/ticket22-v2/`.

Portable replay requires Python 3.11 or later, perf, and the untracked bundle.
It uses `target/profiling/ticket22-evidence/evidence.tar.gz` by default; pass
`--evidence /path/to/evidence.tar.gz` before the library argument to use another
copy. It verifies the bundle, raw profile and executable hashes, decompresses
them into a temporary directory, reconstructs the recorded executable path
under a symbol root, and runs perf against it. It never rebuilds the FFT.
System shared libraries are not archived; their replay symbols can remain
unknown. Use the original saved reports for the original host attribution.

```sh
python3 docs/profiling/2026-10-08-ticket22/replay.py fastfft report \
  --stdio --no-children -g none
python3 docs/profiling/2026-10-08-ticket22/replay.py rustfft report --stdio
python3 docs/profiling/2026-10-08-ticket22/replay.py fastfft annotate --stdio \
  --symbol 'fastfft::engine::x86_avx512::<impl fastfft::engine::stockham::StockhamVector for fastfft::isa::x86::F32x8v>::pass'
```

Both libraries' portable report and annotation commands pass and retain their
output in the bundle. `cargo-asm-pass.txt` is separate library exploration (F32x16,
symbol index 114); it is not the selected F32x8v arena pass. The symbol list
and actual arena annotation preserve that distinction.

## Validation

The bundled `checks.json` records passing formatting, six xtask tests,
Clippy with warnings denied, codegen freshness, all retained-file hashes,
and both libraries' portable reports and annotations. The directly readable
[checks.json](checks.json) records verification after consolidation: all 277
original files match byte for byte, every capture hash matches, and replay
reports and annotations pass for both libraries using the local bundle. Tests
cover CLI validation, subprocess argument boundaries, JSON escaping, output-directory
reuse, partial output on failed/missing subprocesses, cell and affinity
failure, denied/unsupported counters, failed reports and empty samples.
Actual CLI checks reject recording without an output directory, refuse an
existing capture, and propagate an invalid event with metadata and stderr
preserved in `failed-event/`. The invalid event creates no perf data file;
the later empty-sample check also fails. The library test matrix was not
rerun because the FFT source did not change.

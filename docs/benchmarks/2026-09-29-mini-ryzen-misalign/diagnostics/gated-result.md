# Ticket 12: cache-gated misalignment mitigation

Decision completed on 2026-09-30, on the Ryzen 7 7840HS (Zen 4, 16 MiB L3).
This is a focused follow-up to the full baseline/prototype measurements, not a
new all-size release-gate report.

## Decision

The maintainer selected gated scratch. The final implementation enables the
scratch-only intermediate-pass path when:

1. The generic Stockham plan uses SIMD and has **at least three Phase A passes**.
2. Caller buffers, two scratch buffers, placement/alignment slack and all
   twiddle tables total no more than **75% of the detected last-level data cache**.
3. At execution time, either caller buffer is misaligned for the vector width.

Only the first pass reads caller memory; only Phase B writes it. Intermediate
passes ping-pong between two aligned scratch regions; the last Phase A pass
runs in place. Aligned calls and plans outside the gate retain the legacy
choreography. The gate is computed once, per placement, and is shared by scratch
sizing and execution.

On this host's default power-of-two plans, the upper eligible size is 2^18 for
f32 and 2^17 for f64. These are consequences of the byte budget, not hard-coded
FFT lengths. Detection reads AMD CPUID 0x8000001D or Intel leaf 4; unavailable
topology uses a 1 MiB fallback. Other engine/cache tuning remains ticket 16.

### Why exclude short plans?

The first gated candidate still lost **13.9% f32 / 15.2% f64** against a fresh
baseline on misaligned out-of-place N=512 batches. Separating scratch bases
modulo 4 KiB did **not** fix it. Base separation is not whole-buffer separation:
these buffers span full pages. The underlying microarchitectural cause is not
established by this experiment.

The final candidate therefore leaves all p < 3 plans unchanged rather than
ship that regression or introduce a speculative batch-dependent API policy.
This also avoids unnecessary scratch growth on short plans. The remaining
multi-buffer path reserves one page of placement space for each scratch buffer,
placing aligned bases in the largest circular gaps between live buffer bases.
It is not claimed to eliminate all 4K aliasing.

### Public scratch contract

- Gated plans report approximately 2N complex values plus 8 KiB of placement
  space and a small alignment allowance, regardless of a particular call's
  buffer alignment.
- Outside the gate, generic Stockham retains N plus alignment slack for
  in-place/immutable calls and zero for mutable out-of-place calls (zero-pass
  plans need none). Fixed/small kernels retain their own contracts.
- Caller scratch need only satisfy normal Rust alignment. A shared alignment
  helper now handles a base one scalar past a complex-stride boundary too;
  whole-complex `align_offset` could not align that legal case.
- Bluestein retains its separately aligned inner work buffer. The ineffective
  `leaf256` misaligned-output staging is removed.
- `crates/fastfft/README.md` and crate docs recommend 64-byte caller alignment
  and querying the correct method's scratch requirement.

## Measurement

Function-aligned arena (`-C llvm-args=-align-all-functions=6`, profile `arena`,
FFTW-enabled), `--procs 3`, CPU 2, idle-gated. Library rows: fastfft and rustfft.
The same final binary is used for aligned/misaligned comparisons. All fastfft
verification checks passed in the 197 final-run cells (including the one retime).

Final binary SHA-256:

```
367d23d841667f5fa6e56f3da4a331d6eade8f51f24a2c2ebd04d2899ff360ec
```

`gated-v2-build/` contains the base commit, source patch (including new files),
source/binary hashes and compressed validation/pipeline logs. Earlier rejected
batch evidence is preserved in `gated-build/` and `gated-batch-*`.

### Eligible power-of-two cells

Focused sizes: f32 N={1024,4096,32768,131072,262144}; f64 the same without 262144.
Both directions and in-place/out-of-place: 20 f32 pairs, 16 f64 pairs. Values
below are geometric means of time ratios; **lower is better**.

| Comparison | f32 p1 | f64 p1 | f32 median | f64 median |
|---|---:|---:|---:|---:|
| Final misaligned / baseline misaligned | 0.7290 | 0.7814 | 0.7287 | 0.7807 |
| Final misaligned / final aligned | 0.9834 | 1.0081 | 0.9861 | 1.0110 |
| Final aligned / baseline aligned | 1.0087 | 0.9813 | 1.0072 | 0.9788 |

Thus the eligible measured cells use **27.1% / 21.9% less time** than the
misaligned baseline (about 1.37× / 1.28× throughput). Every eligible cell improves
against the baseline at m8; the weakest gains are about 5%.

These are aggregates, not a claim that misalignment is free for every call.
Residual same-binary penalties reach **12.8% f32 / 14.7% f64** in individual
eligible cells, while some scratch-only calls beat aligned legacy calls.
The latter motivates ticket 36; aligned execution was not broadened here.

### Aligned neutrality and excluded cache boundaries

Across all 64 focused pairs (including N=512 and cache-boundary sizes), final
aligned / baseline aligned is **1.0026 f32 / 0.9879 f64**. Cross-binary allocation
placement still moves individual cells (ticket 31); the largest aligned slowdown
is about 4%, not an aggregate regression.

The excluded cells are N=512 and f32 N={524288,1048576}, f64
N={262144,524288,1048576}. Final misaligned / baseline misaligned is
**0.9880 / 0.9813**, with no excluded cell more than **1.2% slower**. The extra
working-set cache-boundary regressions of the unrestricted prototype are avoided.
These plans still pay the legacy misalignment cost; the mitigation does not
promise improved performance beyond the gate.

### Batches

N={256,512,1024}, 2^20 values per call, both precisions and placements, forward.

- N=512 out of place: final m8 is **1.013 / 1.018** of the fresh baseline m8,
  rather than the first candidate's 1.139 / 1.152. Rustfft moved 1.021 / 1.014
  across those runs, so there is no material remaining mitigation regression.
- N=1024 in place: final m8 is **0.944 / 0.971** of baseline m8.
- The initial aligned run flagged one f32 N=512 out-of-place cell (3.5% clock
  dip). Its original run is retained; `gated-v2-retime-batch-m0` replaces that
  cell in the analysis. All 12 resulting pairs have clean measurements.
- N=256 uses the unchanged small kernels after reverting the prototype staging.
  Cross-binary f64 out-of-place timing still varies by about 7%; its final
  same-binary m8/m0 ratio is 0.932, not the prototype's 1.287 penalty.

### Bluestein and immutable calls

The focused Bluestein recheck covers N={257,4099,131071}. At f32 N=131071 the
aligned call takes **0.810 ms vs 1.242 ms** in the baseline (0.652× time, 1.53×
throughput), retaining the independent work-buffer alignment gain. f32 N=4099
is 0.822× baseline time. f64 is largely unchanged, with allocation-sensitive
N=4099 varying 36.9–39.5 µs in the final m8/m0 runs; no uniform f64 speedup is
claimed. The original full rough-suite measurements remain in finding 6 of
ticket 12.

Immutable calls were checked at N={64,4096,65536,1048576}, with zero and random
input. All passed numerical verification and input-preservation checks.
Same-binary m8/m0 at N=65536 is about 0.91 in both precisions; f64 N=4096 still
pays 13–14%. No immutable baseline speedup is claimed: this follow-up measured
its alignment sensitivity, not an old/new immutable pair.

## Correctness and review

`validate-gated.sh` passed on the final source:

- fmt and warning-denied workspace/all-target Clippy;
- generated codelets unchanged (`cargo xtask codegen --check`);
- workspace release tests;
- scalar, SSE2, AVX2, AVX-512-YMM and AVX-512 caps;
- no-default-features scalar-only tests;
- rustdoc with warnings denied, including crate doctest;
- final arena build.

The library has 29 active unit tests, plus accuracy, conformance and property
suites. New coverage includes cache decoding/fallback/overflow, gate cutoffs and
scratch sizing, aligned and scalar-offset scratch, both gate outcomes, guards
around exact scratch lengths, undersized scratch rejection, immutable input,
both directions, and batches with changing page offsets and padded regions.

Independent review found the scalar-offset alignment gap and the initial
whole-page-only batch test coverage; both were addressed before the accepted
candidate. See `gated-review.md`. Miri/ASan and other physical CPUs were not run
here; existing follow-up tickets cover broader validation.

## Reproduce the analysis

From this diagnostics directory:

```sh
# Same-binary alignment sensitivity; all 64 focused pairs are clean.
python3 analyze.py --m0 gated-v2-focus-m0 --m8 gated-v2-focus-m8
# Old/new misaligned comparison; select the eligible size sets listed above
# for the headline table (do not mix excluded sizes into that aggregate).
python3 analyze.py --m0 full-m8,retime-m8-f32,retime-m8-f64 --m8 gated-v2-focus-m8
# Final batches, with the clock-dipped cell replaced.
python3 analyze.py --m0 gated-v2-batch-m0,gated-v2-retime-batch-m0 --m8 gated-v2-batch-m8
```

`gated-v2-*-p1.txt` and `gated-v2-*-median.txt` archive the complete comparisons.
All matched cells in those final analyses have clean readings and successful
fastfft verification. Benchmark only on an idle machine; never compile during
a run.

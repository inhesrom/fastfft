# Finalize the official M2 measurement

Type: task
Status: resolved
Roadmap: FFT-020, FFT-021

## Question

What are the final, trustworthy M2 numbers that the go/no-go and ADR-0001 rest on? These are the DIT prototype and the library's `fastfft` rows vs rustfft, f32 and f64, forward in place, N = 64…65536.

## Answer

The final run is `20260923T194206Z-mini-ryzen-m2-final`, published in [`docs/benchmarks/2026-09-23-mini-ryzen-m2-final/`](../../../docs/benchmarks/2026-09-23-mini-ryzen-m2-final/report.md). ADR-0001 has the full per-N tables (§3.2), the go/no-go data (§5) and the layout rule (§4.1).

- **Setup.**
  - Commit 82f82bc makes the `DitRunner` and `LabRunner` scratch 64-byte `AlignedVec`. The run's tree was clean.
  - The run used the ticket's exact command: full profile, `--procs 3`, core 2, 9 libraries. `bench-env.sh check` passed first.
  - Result: official, not aborted, 0 child failures, core-clock drift 1.49%.
  - Every library verified. The worst error is 1.26 ε; rustfft's is 1.83 ε.
  - This was the first attempt; no runs were discarded.
- **The alignment artifact is confirmed.** `lab/dit-ymm-r8` measures 2.43 µs at N = 4096 f32, matching the isolated 2.40–2.47 µs. Full v2's 1.16× was the artifact.
- **Final geomeans** vs rustfft over N = 256 … 65536. Each value is the best-time ratio, with the median-time ratio in parentheses:

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

- **Go/no-go input.** The best f32 variant, `lab/dit-ymm-r8`, measures 1.29× against the 1.25× threshold, a 3% margin. Accepting it is the maintainer's call in [Accept the M2 go/no-go and ADR-0001](09-accept-m2-go-no-go.md).
- **Layout rule: not met on AVX2.**
  - On AVX-512, split wins by far: 1.52× (f32) and 1.46× (f64) over `inter-avx512-r8`.
  - On AVX2, interleaved is 5% ahead for f32 and split is 16% ahead for f64 (4.8% pooled over both).
  - As written, the rule therefore gives both layouts, with the planner choosing on AVX2.
  - Caveat: the interleaved rows are the naive DIF variants.
- **Vector width.** For f32, 256-bit with 32 registers beats 512-bit by 21%. For f64, 512-bit leads by 2%.
- **For [Measure the library in the arena and check the M3 checkpoint](10-measure-library-m3-checkpoint.md):**
  - The library runs at 55–86% of the prototype's speed for f32, and at 76% even with the same plan (N = 4096 f32, 256-bit, L = 8, radices 8·8·8).
  - `fastfft/avx2` plans radix 8, where ADR §4.3 proposes radix 4 for AVX2.
- **For [Get CI green on GitHub](21-ci-green-on-github.md):** `clippy -D warnings` was failing on 36 pre-existing lint errors. Commit 8c03b55 fixes them with no behavior change.

## Context

- History is in ADR-0001 §7:
  - Prototype `lab/dit-ymm-r8`: 1.28× geomean (quick protocol) and 1.22× (full v1).
  - The full v2 run read 1.16×, but that was an artifact. The lab adapter's scratch `Vec`s are 16-byte aligned, so ymm accesses split cache lines when the heap layout changes.
  - Isolated runs of the same binary: 2.40–2.47 µs at N = 4096 (≈ 1.42×), ±1.5% across processes.
- Raw runs live under `target/arena/runs/` (gitignored, local only).

## Work

1. In `bench/arena/src/adapters.rs`, allocate `DitRunner` and `LabRunner` scratch with `AlignedVec` (64-byte) instead of `vec![]`.
2. Build: `cargo build --profile arena -p fastfft-arena --features fftw`.
3. On an **idle** machine:
   `./target/arena/fastfft-arena run --suite pow2 --profile full --procs 3 --filter "dir=fwd,place=ip,n=64|256|1024|4096|16384|65536" --libs rustfft,fftw,fastfft,fastfft/avx2,lab/dit-ymm-r8,lab/dit-zmm-r8,lab/dit-avx2-r4,lab/inter-avx512-r8,lab/inter-avx2-r8 --label m2-final`
4. Update ADR-0001 §3.2, §5 and §7 with the table: best and median ratios, geomean over N = 256..65536.
5. Apply the layout rule. Does split beat interleaved by ≥ 5% on both AVX-512 and AVX2? Note that the interleaved rows are the naive DIF variants.
6. Run `arena publish <run> --label m2-final` and commit the published directory.

## Done when

ADR-0001 holds the final table and the layout-rule outcome, and the run is published under `docs/benchmarks/`.

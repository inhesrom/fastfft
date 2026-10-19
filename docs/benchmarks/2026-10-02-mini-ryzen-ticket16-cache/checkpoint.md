# Ticket 16: cache-driven thresholds preserve the Zen 4 checkpoint

The planner now uses detected L1D/L2 capacity alongside the existing
last-level cache capacity. On the Ryzen 7 7840HS, the measured 8 MiB
Stockham-to-FourStep crossover and 2 MiB group budget are preserved.
The [policy record](policy.md) explains each threshold, its fallback,
and the ticket 14 measurements that justify these values.

The [before/after comparison](comparison.md) covers 12 power-of-two cells:
N = 16384, 32768, 262144, 524288, 1048576 and 2097152, both precisions,
forward/in-place, quick profile, three processes per cell on core 2.
All selected plan descriptions, including scratch sizes, are identical.
Fastfft's before/after geomean is **1.0013× best / 1.0004× median**.
Every cell remains within ±3%; the lowest ratio is 0.9870× on median time.
Maximum drift is 0.96% before and 0.95% after, with every cell verified.

| After build | Cells | Best geomean vs RustFFT | Median geomean vs RustFFT | Lowest best/median ratio |
|---|---:|---:|---:|---:|
| pow2 f32 | 6 | 1.4750× | 1.4806× | 1.3077× |
| pow2 f64 | 6 | 1.6301× | 1.6399× | 1.3906× |
| pow2 combined | 12 | 1.5506× | 1.5582× | 1.3077× |
| smooth combined | 6 | 1.1865× | 1.1930× | 1.0229× |

The [smooth check](smooth/report.md) covers N = 4725, 165375 and 1000000
in both precisions, exercising the shared panel engine. All six cells
verify, with 1.30% maximum drift. These focused suites are regression
checks, not a reevaluation of the complete G1/G2 release gates.

The [full release suite and five-tier matrix](validation.md) pass, including
synthetic CPUID tests, cache-dependent planner boundaries and public FFT
execution with simulated cache sizes. Restricted-feature builds, Clippy,
formatting and generated-code checks pass. CPU-family tuning and broader
performance validation remain tickets 18/27/28.

Raw results, environment checks, generated reports and plots are retained
under [before](before/report.md), [after](after/report.md) and
[smooth](smooth/report.md). [Summary calculations](summary.txt), source and
executable hashes, the source patch and compressed validation logs are
included. [Reproduction commands](validation.md#benchmark-reproduction)
use the existing arena protocol; all compilation and tests finish before
the idle-machine timing runs.

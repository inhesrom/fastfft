# Decide how the arena measures drift and placement noise

Type: task
Status: resolved
Roadmap: FFT-011 (protocol)

## Question

The plan's drift rule (re-measure f32 N = 4096 with rustfft every 25 cells; > 3% flags, > 10% aborts) aborted two baseline attempts. Is the machine drifting, and how should the protocol detect drift and handle noise?

## Answer

- **No thermal drift.** 150 s of sustained AVX-512 load holds 5.0 GHz at 56 °C.
- **Placement noise, not drift.**
  - rustfft's timing depends on address placement per process: N = 4096 f32 ranges 3.4–4.9 µs across fresh processes, while being tight within one process. FFTW varies ±2%.
  - Buffer alignment matters in the same way: 16-byte-aligned `Vec`s split 256-bit accesses across cache lines (~20%).
- **Protocol change** (commit 6d59f1e, recorded in ADR-0001 §7):
  - Every cell measures the core clock (dependent add chain) at its start and end. Drift is judged on the clock: > 3% flags the run, > 10% aborts it.
  - `--procs K` runs each cell in K processes and keeps each library's best. **Official runs use `--procs 3`.**
- **Standing rule:** benchmark only on an idle machine. Compiling, even niced on other cores, drops the benchmark core's boost by 20–30%.

# Correct the arena's core-clock probe calibration

Type: task
Status: claimed
Roadmap: FFT-011, FFT-016

## Question

Does the arena's clock probe measure core frequency, and how reliably does
its relative drift detect an unstable benchmark environment?

## Evidence from ticket 10

`bench/arena/src/cell.rs::measure_clock_ghz` counts four dependent additions
per iteration in its frequency calculation. Rust 1.95.0's arena build
folds the four `wrapping_add(1)` expressions into one memory addition:

```asm
addq $0x4, 0x8(%rsp)
dec  %rcx
jne  <loop>
```

The surrounding `black_box` prevents removing the loop but does not prevent
combining the additions. Reported values around 20 GHz are not calibrated
CPU-frequency measurements. A fixed scale cancels in relative drift, but
the probe also measures the compiled memory dependency and loop overhead;
its relationship to actual frequency needs validation.

FFT timings and speedup ratios use `Instant` independently of this probe.
Do not rescale or silently rewrite historical timing data or drift flags.

## Done when

- The generated probe instructions have the intended dependency chain and
  a justified cycle count, or the value is explicitly treated as an
  uncalibrated throughput control instead of GHz.
- Its response to idle operation, boost changes, and competing CPU load is
  measured on Zen 4. Isolated startup outliers are distinguished from
  sustained drift without relaxing the 3% limit after seeing results.
- The measurement protocol and report labels explain the chosen control;
  historical reports retain their original readings and qualifications.

## 2026-10-13 progress

[Controlled host diagnostic](../../../docs/benchmarks/2026-10-13-qualification-controls/README.md):
the intended four dependent adds survive code generation. Idle, startup,
controlled competing load, and recovery are measured with continuous CPU
monitoring and retained attempts. After the user authorized temporarily
pausing another Pi session and continuous vault sync, the host passed the
60-second idle check. Both services resumed after the diagnostic.

Idle range/median is 0.4128%; recovery is 0.2866%. Competing load lowers the
median 2.947%, illustrating why the independent CPU monitor remains necessary
even when the 3% probe limit is not crossed. All 24 loaded CPU intervals were
detected. Report labels now explicitly describe throughput rather than
independently calibrated GHz. Explicit boost-change validation remains open;
the threshold is unchanged and no full qualification is claimed. Boost sysfs
is not writable by this session and `sudo -n -l` requires interactive
authentication, so the remaining boost-toggle experiment needs host access
that is currently unavailable.

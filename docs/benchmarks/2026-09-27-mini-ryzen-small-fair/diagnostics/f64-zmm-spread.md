# f64 zmm leaves: median well above best

> **Follow-up:** [fma-rotations.md](../../2026-09-28-mini-ryzen-small-fma/diagnostics/fma-rotations.md)
> traces the slow schedules to a full FP scheduler. Moving the ∓i rotations
> onto the FMA pipes made these leaves 9–16% faster and removed the spread
> at N=256, but not at N=64 and N=128.

On the fixed arena, rustfft's median sits 0.7–2% above its best at f64
N=32–256. fastfft's sits 3–7% above (p90 1–4.5% above the median). The f32
leaves are within about 1%, except at N=32. This spread is most of the f64
median shortfall. The root cause is **not found**; this page records what was
ruled out.

## The pattern

Per-batch samples were dumped with a temporary arena hook. They show fastfft's
f64 zmm batches alternating strictly:

- f64 N=128 in place runs 72.3, 73.5, 72.3, 73.5, … After a spike (likely an
  interrupt) the pair shifts, to 69.4, 73.0, 69.4, 73.0, …
- rustfft in the same process stays flat at 85.7–86.1.
- Out of place, f64 N=64 has period 4: 32.4, 31.3, 32.9, 31.1, …

The ratio of mean |Δ| between neighbouring batches to mean |Δ| two batches
apart measures the alternation:

| Leaf | Mean \|Δ\| ratio (lag 1 / lag 2) |
|---|---:|
| f64 N=64 and N=128, zmm rows (R64z) | 2.4–3.4 |
| f32 N=128, zmm rows (R32z) | 1.0 |
| f64 N=32 and f32 N=64, ymm rows | 1.0 |
| rustfft, every size | 1.0 |

## Ruled out

- **The other library.** The pattern persists in fastfft-only processes, and
  with random data.
- **Clock frequency.** `cycles / task-clock` over 20 ms intervals reads 5.027
  GHz during fastfft's f64 N=64 run and 5.028 GHz during rustfft's.
- **FP state faults.** The `fp_disp_faults.*` events (ymm/xmm fill and spill)
  read zero.
- **Front end.** Almost every op comes from the op cache (decoder ops: 0.07
  per call). The leaf is backend-bound, with about 800 stalled dispatch slots
  per call for zmm and 470 for ymm rows.
- **Split twiddle loads.** The table is a `Vec` (16-byte aligned), so zmm
  table loads straddle cache lines. The zmm leaf has 115 `ls_misal_loads.ma64`
  per call (ymm: 7–31) and 1.5 L1 miss-buffer allocations per call (ymm:
  0.007). Putting the table on 64-byte lines removed the allocations (0.006
  per call). It left f64 N=64 unchanged and the alternation intact, and made
  out-of-place N=128 and N=256 slower: medians 73 → 81 ns and 157 → 173 ns,
  most likely 4K aliasing between the moved table and the intermediate.
  Reverted.

## ymm rows instead

The same leaves with R64 rows (two ymm per row) on the AVX-512VL entry do not
alternate. Medians, zmm → ymm:

| Cell | In place, ns | Out of place, ns |
|---|---:|---:|
| f64 N=64 | 33.5 → 34.2 | 32.1 → 30.6 |
| f64 N=128 | 72.4 → 73.2 | 72.8 → 72.3 |
| f64 N=256 | 157 → 169 | 157 → 169 |

Only N=64 out of place gains, and a plan serves both placements. zmm rows stay.

# f32 zmm rows (R32z): eight complex values per register

Rows of eight adjacent complex f32 (one `__m512`), with an 8x8 transpose of
64-bit elements in three shuffle stages: unpack, `vpermt2pd`, `vshuff64x2`.

- N=64 is 8x8: radix-8, twiddles, one transpose, radix-8.
- N=128 is 8x16: two radix-8 column halves, two transposes, then radix-16
  across all 16 rows, register-resident with no intermediate.
- N=256 is 16x16 in two passes through an intermediate, like the ymm leaf.

The A/B below compares two fixed-harness arenas that differ only in
fastfft's f32 N=64–256 leaf: the AVX-512VL ymm leaf ("before") against the
R32z leaf ("after"). It uses `--prec f32 --filter n=64|128|256`, three
processes per cell, and two alternating before/after rounds. The table gives
fastfft's best / median in ns, averaged over the rounds; rustfft moved by
under 1%.

| Cell | ymm leaf | R32z leaf | Median change |
|---|---:|---:|---:|
| fwd:ip:n64 | 17.67 / 18.33 | 23.64 / 24.10 | +31.5% |
| fwd:oop:n64 | 16.50 / 16.73 | 18.67 / 19.95 | +19.3% |
| inv:ip:n64 | 17.70 / 18.32 | 23.66 / 24.10 | +31.5% |
| inv:oop:n64 | 16.30 / 16.73 | 18.64 / 20.01 | +19.7% |
| fwd:ip:n128 | 40.57 / 40.86 | 38.56 / 39.59 | −3.1% |
| fwd:oop:n128 | 40.60 / 40.90 | 38.18 / 38.98 | −4.7% |
| inv:ip:n128 | 40.58 / 40.87 | 38.52 / 39.61 | −3.1% |
| inv:oop:n128 | 40.59 / 40.89 | 38.17 / 38.99 | −4.6% |
| fwd:ip:n256 | 83.42 / 84.52 | 83.20 / 85.37 | +1.0% |
| fwd:oop:n256 | 83.42 / 84.58 | 83.47 / 85.18 | +0.7% |
| inv:ip:n256 | 83.96 / 84.51 | 83.28 / 85.43 | +1.1% |
| inv:oop:n256 | 83.83 / 84.58 | 83.29 / 85.11 | +0.6% |

Only N=128 wins, by 5–6% best and 3–5% median. There, both 8x8 transposes
stay in registers and replace the ymm leaf's stack round trip. At N=64 the
transpose chain is on the critical path; with 512-bit ops double-pumped, the
halved instruction count buys nothing back. At N=256 both leaves take two
passes.

The engine keeps R32z for f32 N=128 on the AVX-512 tier. N=64 and N=256 keep
the ymm leaf on the AVX-512VL entry. The `Row` trait now carries the row width
(`W`) and a per-row-type `leaf`. The four-complex leaves moved to a `Quad`
subtrait, and the twiddle table layout takes the lane count.

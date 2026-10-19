# Final-source validation and assembly

All commands in [validate.sh](diagnostics/validate.sh) passed on the final source.
The final arena was built once after these checks, with the same default target
CPU and `--features fftw` configuration as the preserved current-Small baseline.
Full logs are retained in `diagnostics/final-validation.log.gz`.

- Formatting, workspace/all-target Clippy with `-D warnings`, and
  `cargo xtask codegen --check` passed.
- All 13 analysis-script fixtures passed: incomplete/duplicate/nonfinite data,
  separate best/median aggregation, ties, per-case regressions hidden by a
  geomean, 0.95× floor crossings, separate per-precision acceptance, and matched
  library row order.
- Scalar-only compilation and release library tests passed. Individual SSE2,
  AVX2 and AVX-512 feature builds and their release library tests passed.
- Complete release fastfft tests (including the normal accuracy sweep) and
  release code-generator tests passed.
- All five ISA-cap quick public suites passed. Exhaustive public M3 checks
  then passed for each cap: all 1,202 smooth lengths through 32768, both
  precisions/directions, including the independent bound and RustFFT-relative
  error requirement.
- The exhaustive internal M3 check passed on the final source: all 1,201
  non-identity smooth lengths, every supported Stockham shape, both precisions
  and directions, and all three placements.
- Every retained specialized candidate is tested directly, independent of
  Estimate selection: reference accuracy/natural order, finite errors,
  unnormalized round trips, all placements, convenience calls, distinct one-
  and three-transform inputs, input preservation, unused scratch, exact slices,
  guards and SIMD alignment residues. Separate scalar-shifted buffers cover
  legal complex slices aligned only to their real scalar.
- Empty, short, nonmultiple and mismatched buffers are rejected. Tests cover
  cache `Arc` identity, descriptions, caps, Estimate/Measure ordering and
  specialized/incumbent inclusion in the unchanged eight-candidate window.

A source audit compared **all 230 incumbent dispatch choices** with the preserved
baseline. A regression fingerprint now guards that exact table. Twenty-nine
codegen/codelet/Stockham/Measure/dependency files are byte-identical to the
baseline. No general Stockham arithmetic, generated codelets, measurement
budget, dependencies or public interface was changed by this pass.

Earlier validation attempts are retained rather than hidden: the first static
check found a test-only collapsible-if Clippy warning. An independent scope
check subsequently caught a mistaken table compaction at f64 N=10 under AVX2;
it was restored before the final validation, and the earlier validation was
stopped and restarted in full. Focused N32/N8 measurements did not use N=10.
No broad/final acceptance run used that intermediate table.

## Assembly inspection

`diagnostics/final-assembly/` retains the final arena's actual single-transform
and batch leaves, test-executable wrapper disassembly, and an index with raw
stack references and call instructions. Test-only symbol reports identify exact
monomorphizations; their addresses are not assumed to match the LTO arena.

| Retained leaf | Final arena single entries | Batch entries | SIMD spill stores/reloads |
|---|---|---|---|
| f32 AVX2 N=8 | `0x285600`, `0x285fb0` | `0x286550`, `0x286660` | none |
| f32 AVX2 N=32 | `0x2856f0`, `0x285b50` | `0x2860a0`, `0x286770` | 8/8 single; 11/11 per batch-loop iteration |

These are actual SIMD temporary stores subsequently reloaded, not a count of
all stack references. The batch prologue's stack-alignment push is not counted
as a SIMD spill. Reused stack slots are not distinct live spilled values.
The N32 initial experiment had 14/14 pairs; the one permitted packing refinement
reduced shuffle work and the retained single-entry spill traffic.

The retained entries have **no helper calls**, allocation calls, runtime table
loads through the plan, or runtime direction/leaf switches. N8 uses XMM split
arithmetic, including FMA, four 16-byte input loads and four 16-byte output
stores. N32 reads eight 32-byte YMM blocks, transposes before narrowing, retains
XMM FMA, and writes sixteen 16-byte output blocks. All user-input loads precede
user-output stores; the last accesses end exactly at byte 64 / 256. Loads and
stores are unaligned operations, matching scalar-aligned slices. Batch loops
advance by exactly one transform. Constants are compile-time read-only data.

AVX2/FMA instructions are contained in feature-specific entries reached only
through available, capped planning choices. The rejected AVX-512 and f64 leaves
are not left in the production candidate set. The existing f64 N32 Stockham
fallback retains its original scratch/feature contract. Assembly inspection
supplements, and does not replace, the correctness tests above.

Hosted CI, SDE, Miri and non-x86 execution were not run here.

# Scoped vector-stack code gate

PASS for bounded timing validation of `42f7c2a3c18bf844420749fc5fdc325e7025f802d1ae64ad93c95df1fd846a5a`. This is not timing acceptance. Source arithmetic and SIMD dispatch remain unchanged; the optimized78 correctness tests pass. Full machine dataflow equivalence is not claimed.

The effective-address proof covers188 selected fused specializations and six wider FourStep execute bodies:19,809 local vector-memory sites, including9,651 fused sites. It decodes bounded LLVM jump tables and propagates stack aliases and low address bits from every legal SysV caller phase. Every identified local vector access is aligned to its access width and remains within a64-byte cache line. There are no unresolved indirect jumps, escaping pointer stores, or scalar reloads through derived stack pointers. Nine positive/negative checker controls pass. Typed array copy/first-pass call effects were reviewed separately; the scope is these execute bodies, not every unchanged callee.

All128 previously spilling fused variants have real caller-phase exposure:85 F32x16 and43 AVX2 F32x8. None had an RSP alignment mask. AVX2 examples use32-byte red-zone spills whose effective residues can include48 mod64. This is a static mechanism proof, not proof that stack phase caused every measured ranking reversal.

All180 excluded fused variants and all36 one-panel leaves preserve complete normalized instruction streams. The six prior N80/N96 controls and indexed empty-range guard pass. Direct RIP-relative vector constant payloads match in301 instruction/vector-identical comparisons.

## Explicit costs and equivalence scope

All188 selected fused variants retain their floating arithmetic opcode-family counts (FMA operand-order encodings normalized).100 retain exact vector streams after spill-offset/aligned-move normalization;88 differ in register allocation, scheduling or batch address registers. Across selected functions, static vector-stack sites change by-62 to+36 and frames by-328 to+760 bytes. The largest increase is F32x16 N12010x12 forward batch:36 extra local vector sites and760 frame bytes. These are static whole-symbol costs, not dynamic timing predictions. Every specialization is retained in `fused-inventory-comparison.json`.

The60 selected previously spill-free variants each gain a192-byte frame.51 add10 scalar instructions,8 add11, and one adds10 scalar instructions while dropping one vector move. The family rule therefore has real overhead outside spilling shapes. No such variant is a default Estimate recipe in the retained710 cells. All32 nested Small descriptions use interleaved kernels, so none adds a hidden rectangular match.

The16 affected top-level Estimate cells use eight kernel identities: f32 N18(6x3 AVX2), N24(6x4 AVX2), N160(16x10 AVX512), N210(14x15 AVX512), both directions and placements. All eight preserve exact normalized vector sequences and vector traffic; their scalar/frame deltas are+10/+320,+10/+256,+8/+312,+8/+312 respectively. The two inverse N210 candidate shapes14x15 and15x14 both preserve the full vector sequence and280/272 aligned local sites.

| FourStep variant | Frame delta | Scalar instruction delta | Vector instruction delta | Local vector-site delta |
|---|---:|---:|---:|---:|
| FourStep-F32x4 | +0 | +0 | +0 | +0 |
| FourStep-F32x8 | +64 | +7 | +0 | +0 |
| FourStep-F64x2 | +0 | +0 | +0 | +0 |
| FourStep-F64x4 | +64 | +7 | +0 | +0 |
| FourStep-F64x8 | +312 | -105 | +2 | -49 |
| FourStep-S32 | +0 | +0 | +0 | +0 |
| FourStep-S64 | +0 | +0 | +0 | +0 |
| FourStep-F32x16 | +0 | +8 | +0 | +0 |
| FourStep-F32x8v | +264 | +117 | +20 | +8 |
| FourStep-F64x4v | +152 | -90 | +7 | +15 |

Scalar/SSE FourStep functions are unchanged. F32x16 and both AVX2 vector streams match when indexed stack offsets are also normalized. F64x8 and AVX512-VL streams change register allocation; arithmetic opcode-family counts remain identical. F64x8 removes49 local vector sites. Complete per-opcode/traffic deltas are retained.

AVX2 FourStep already used AND RSP32 and naturally aligned32-byte spills. Its extra64 frame bytes and7 scalar instructions have no demonstrated line-split benefit. This is an explicit generic-policy cost accepted only for the bounded experiment, not evidence of an AVX2 improvement. The existing F64x4v N210 tiled14x15 kernel is unchanged, including four fixed cross-line stores; these do not depend on caller phase.

## Decision

Proceed with one unchanged quiet51 focus and both positive controls. If those satisfy the existing primary/raw <=2% rules and quiet/control gates, continue to full710. Preserve all eight process records and review absolute Estimate behavior, particularly the16 affected default cells; do not treat slowing Estimate as validation. No new hard absolute threshold or universal-address guarantee is introduced. Keep the3% selector margin,1sec global/MAX8 budget,7 rounds, manifests, statistics and quiet policy unchanged.

The static costs are acceptable to evaluate once because the actual exposed families are covered, tiny excluded leaves are unchanged, no previously spill-free variant is a default full710 Estimate recipe, and all affected Estimate vector work is identical. Timing must settle whether alignment benefits outweigh scalar/frame costs and whether the false promotions are cured.

All analysis subprocesses finished. No production edits, builds, FFT execution, timing runs or affinity changes were performed by this reviewer.

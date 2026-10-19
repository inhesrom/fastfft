# Register-family guard review

The proposed fused condition `2*W >= ISA_SIMD_REGISTER_COUNT && M*B > W` is a defensible bounded guard for the next candidate. It expresses a hardware/algorithm relationship, without per-shape exceptions or a fitted register-pressure threshold. The source has two W-element transpose arrays; a full split row can occupy all architectural vector registers in AVX2 F32x8 and AVX512 F32x16. This is nominal capacity, not a proof that those values are simultaneously live: LLVM can eliminate zero lanes and shorten lifetimes.

| Family | Existing variants | Selected | Prior vector spills | Selected without spills | Excluded with spills |
|---|---:|---:|---:|---:|---:|
| F32x16 | 156 | 132 | 85 | 47 | 0 |
| F32x8 | 60 | 56 | 43 | 13 | 0 |
| F32x8v | 60 | 0 | 0 | 0 | 0 |
| F64x4 | 16 | 0 | 0 | 0 | 0 |
| F64x4v | 16 | 0 | 0 | 0 | 0 |
| F64x8 | 60 | 0 | 0 | 0 | 0 |

Across all 368 compiled fused variants, the rule selects 188, including every one of the 128 with vector stack operands, and excludes 180 with none. All 36 one-panel variants remain unanchored. Narrower N6 variants are preserved by the family condition even when N exceeds W. This addresses the demonstrated tiny-leaf cost of the unconditional candidate.

The remaining 60 selected spill-free variants can still gain overhead. Their costs must be disclosed and evaluated in the refined executable; the rule does not guarantee universal performance improvement or absence of future compiler spills in excluded families. The ISA register-count constant must reflect enabled features (32 for AVX512VL as well as AVX512, 16 for AVX2/SSE2), rather than register width alone.

Proceed with this one refined candidate, conditional on a generated-code gate covering exposure, derived addresses, arithmetic/traffic deltas, frame costs, unchanged unselected functions, the six old tiled controls, and indexed empty-range handling. Quiet unchanged 51-cell focus and both positive controls remain required; no margin, budget, statistics or acceptance relaxation follows from this static rationale. The unconditional candidate retains its failed gate and should not be timed.

All analysis processes finished. No production edits, builds, timings, or affinity changes were performed.

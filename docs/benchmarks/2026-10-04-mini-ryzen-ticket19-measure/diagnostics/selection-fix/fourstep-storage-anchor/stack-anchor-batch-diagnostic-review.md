# Batch stack-anchor assembly review — diagnostic scope

This review compares the three batch kernels in `matrix-prior` (canonical storage originals) with `matrix-diagnostic-anchor` (frozen crossover diagnostic SHA256 `99c32d116272e48941a837af95054b7294a06b4c4ff1c2f2bf1ac220fa5cfd69`, supplied by the parent). Existing assembly and located symbol manifests were read on CPU0. No compilation, disassembly, benchmark, or source edit was performed. **This is not validation of the final default production executable.** See the adjacent JSON for input assembly hashes and every distinct current local vector operand.

| Batch kernel | Explicit frame bytes, prior → anchor | Static vector stack accesses | Vector instructions including exit vzeroupper | Normalized vector sequence |
|---|---:|---:|---:|---|
| N96 inverse 8×12 | 72 → 448 | 24 → 30 | 545 → 558 | Different |
| N80 forward 8×10 | 136 → 256 | 34 → 14 | 514 → 496 | Different |
| N80 forward 16×5 packed | 1920 → 2112 | 42 → 42 | 400 → 400 | Identical after relocation/alignment/stack-offset normalization |

The N96 increase from 24 to 30 vector stack accesses is a performance concern requiring the actual production assembly and measurements. It is **not an automatic failure based solely on a static count**. Conversely, the smaller N80 spill count does not establish a speedup. Generic batch vector streams differ from canonical even though FP add/subtract/multiply/FMA opcode histograms are unchanged; their FP opcode order and moves/shuffles change. Histogram equality is not a proof of arithmetic dataflow equivalence. This differs from the earlier generic single-transform review, where normalized vector streams matched.

## Alignment proof across bases

All three diagnostic batch prologues mask RSP to a 64-byte boundary and subtract a multiple of 64. RSP stays fixed through their transform loops. Generic YMM operands use only direct RSP displacements divisible by 32: N96 uses 64, 96, 128, 160, 192, 224, 256, and 288; N80 uses 32, 64, and 96. Each 32-byte local vector access lies wholly within one 64-byte interval. N96 anchor byte/pointer slot are RSP+320/+56; N80 uses +128/+24. The stack-derived R8/R9 anchor/slot addresses are never dereferenced as vector or memory bases, and no RBP-based vector access exists.

Packed stack operands use RSP, sometimes with R10×8. R10 resets to zero and takes 0/64 during indexed accesses, adding 0/512 bytes; both preserve alignment modulo64. YMM displacements are multiples of32 and XMM displacements multiples of16. Every local vector access stays inside a 64-byte interval. R11 derives from caller input R8 (initial RDI, incremented640 per transform), not stack storage. The only RBP-based address operand is the exit LEA restoring RSP from RBP−8; it is not a memory load.

The guarantee applies to these local vector accesses, not caller input/output or coefficient accesses. It establishes effective-address geometry, not any specific hardware cause or a speedup. Previous negative-RSP red-zone slots mean the increase in explicit SUB-frame bytes overstates the increase in touched local storage.

## Per-batch versus per-transform overhead

Generic frame alignment, RBP save/restore, and two anchor-address LEAs execute once per batch. They add six fixed instructions and two implicit push/pop memory accesses per batch. The anchor byte store and pointer-slot store repeat **twice per transform**. The frame itself is reused.

For positive transform count C, counting listed architectural instructions along the simple generic loop (including the one pre-loop alignment NOP and final vzeroupper) gives:

| Kernel | Prior | Diagnostic anchor | Difference |
|---|---:|---:|---:|
| N96 | 547C+8 | 562C+14 | 15C+6 |
| N80 generic | 516C+8 | 500C+14 | −16C+6 |

These are instruction counts, not cycle estimates. N96 adds thirteen vector instructions and six vector stack accesses per transform; N80 removes eighteen vector instructions and twenty vector stack accesses per transform. Each also adds the two scalar anchor stores.

Packed adds four fixed instructions and two implicit push/pop accesses once per batch. It has no generic anchor stores. Its entire vector stream is identical after replacing RIP relocations, equating aligned/unaligned stack moves, and subtracting128 from new stack offsets. Its panel loop executes different paths, so static totals should not be read as per-transform dynamic counts. The existing RBX push/pop is unchanged; restoring RSP changes ADD to LEA without an extra instruction.

A possible later experiment would move the observable generic anchor outside the batch loop. That is not implemented or recommended for this frozen candidate: it could change register allocation and singles too, and would require another source freeze, code review, numeric validation, and quiet performance run. Current production code must be reviewed independently when its assembly becomes available.

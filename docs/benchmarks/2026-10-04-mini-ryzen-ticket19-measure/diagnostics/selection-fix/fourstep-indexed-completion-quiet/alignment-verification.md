# Default Small-kernel alignment review

PASS scoped to local vector stack alignment. Frozen default executable `a2bbb31ba6912363132f0cabfcc1798f369ccc217d2a9f5d548214314541596f` was SHA-verified before read-only DWARF/objdump extraction. No source edit, FFT execution, or benchmark was performed.

All six exact Small single/batch functions have full normalized instruction identity with the prior default anchor executable `80c7736fff9d6c7ac7e06c7867fae860e6c78b9bfa70d0ff406eade8e7815071`. Exclude int3 padding; normalize RIP-relative displacements, internal direct branches to function-relative offsets, external direct branches/calls to demangled symbol names. All other instructions/operands must match. This does not compare relocated constant contents or absolute function placement.

| Kernel | Current address range | Explicit frame bytes | Static vector stack accesses | Instructions |
|---|---|---:|---:|---:|
| n96-inverse-8x12 | 0xb05900–0xb066c0 | 704 | 52 | 578 |
| n80-forward-8x10 | 0xb193c0–0xb1a000 | 576 | 30 | 514 |
| n80-forward-16x5 | 0xad9e40–0xada880 | 2112 | 42 | 423 |
| n96-inverse-8x12-batch | 0xaf8000–0xaf8e40 | 448 | 30 | 576 |
| n80-forward-8x10-batch | 0xb07c80–0xb08900 | 256 | 14 | 514 |
| n80-forward-16x5-batch | 0xad0cc0–0xad17c0 | 2112 | 42 | 437 |

Each entry aligns RSP to 64 bytes and subtracts a multiple of 64. The identical instruction streams preserve the previously reviewed effective-address proof, including derived bases: generic observable-anchor addresses are not dereferenced, and RBP is used only to restore the stack. Packed single/batch indices are 0 or 64, scaled by 8, preserving aligned matrix accesses. YMM local slots are 32-byte aligned; XMM accesses are 16-byte aligned. Every reviewed local vector memory interval fits within one 64-byte line. Caller-derived pointers are not silently treated as stack pointers. The JSON retains every distinct local vector operand and its width/modulo.

Static costs are unchanged from the anchor candidate, not waived. In particular N96 batch retains 30 vector stack accesses versus canonical 24, and 558 vector instructions versus 545. Two scalar anchor stores execute per generic transform; frame setup and two anchor-address LEAs are once per batch. N80 generic batch has fewer stack accesses than canonical, which by itself proves no speedup. Absolute code placement changes. This gate makes no performance or physical-cache claim; the unchanged focus and absolute review remain required.

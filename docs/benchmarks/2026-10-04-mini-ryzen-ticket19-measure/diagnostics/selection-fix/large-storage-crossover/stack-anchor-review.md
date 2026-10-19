# Stack anchor review: frozen diagnostic only

The separate anchor restores the canonical generic vector instruction streams while making every reviewed local stack vector access avoid 64-byte boundary crossings. This is generated-code evidence for the frozen diagnostic, **not production or performance acceptance**.

Frozen diagnostic SHA-256 supplied by root: `99c32d116272e48941a837af95054b7294a06b4c4ff1c2f2bf1ac220fa5cfd69`. The binary hash was not recomputed during the quiet benchmark; retained assembly hashes are recorded in the JSON.

| Exact single-transform kernel | Explicit frame: canonical / rejected / anchor | Stack vector instructions: canonical / rejected / anchor | Instructions through RET: canonical / rejected / anchor |
| --- | --- | --- | --- |
| N96 inverse 8x12 | 424 / 2432 / 704 bytes | 52 / 63 / 52 | 570 / 653 / 578 |
| N80 forward 8x10 | 264 / 2240 / 576 bytes | 30 / 35 / 30 | 506 / 569 / 514 |
| N80 forward 16x5 packed | 1920 / 2112 / 2112 bytes | 42 / 42 / 42 | 419 / 423 / 423 |

The generic N96 and N80 streams respectively contain 567 and 503 vector instructions, including VZEROUPPER. Each matches its canonical stream exactly after normalizing RIP relocations, aligned versus unaligned stack moves, and fixed stack-slot shifts of +160 and +192 bytes. The rejected materialization's extra vector operations and spill traffic are absent. Current symbol spans are 3520, 3136 and 2624 bytes, including padding.

Both generic prologues push RBP, save RSP, AND RSP with -64, and subtract a multiple of 64. No instruction changes RSP until the epilogue restores it. All local YMM memory accesses use direct RSP plus a multiple of 32; N96's eight XMM accesses use such slots too. There are no RBP memory references. RAX receives anchor and black_box pointer-slot addresses but is never dereferenced. Input RDI, output RSI and twiddle RDX remain external bases. Therefore each reviewed YMM begins at residue 0 or 32 modulo64, and each XMM at residue 0 or 32; none straddles a 64-byte boundary. The JSON records every instruction and residue.

Packed code has the same complete normalized instruction sequence as the rejected candidate. Its additional indexed stack base is RSP+RAX*8. EAX starts at zero and RAX advances only by 0x40, with stack stores at RAX 0 or 0x40. Thus its scaled index is a multiple of 512; all YMM displacements are multiples of32 and XMM displacements multiples of 16. RCX derives from caller input, not stack. All reviewed packed stack vector accesses likewise stay within one 64-byte line.

The generic anchor still costs eight additional instructions against canonical code: two explicit stores (anchor byte and pointer slot), two LEAs, RBP push/pop, MOV RBP,RSP and stack AND-alignment. Push/pop adds two implicit stack accesses. Allocation sizes change, and the old ADD epilogue becomes MOV RSP,RBP. The canonical functions use red-zone slots down to RSP-128; comparing explicit SUB sizes alone overstates added touched storage. Timing is needed to quantify the remaining overhead.

Only BATCH=false instances in this diagnostic executable were reviewed. No builds, disassembly, FFT execution or timing occurred in this review; small retained files were processed on CPU0. The eventual production executable and batch instances need independent verification. No claim covers caller/twiddle access alignment, portable compiler guarantees, or speed improvement.

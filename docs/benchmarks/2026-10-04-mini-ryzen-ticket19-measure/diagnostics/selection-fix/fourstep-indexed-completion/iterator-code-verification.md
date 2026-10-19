# Default indexed-completion code gate

PASS scoped to the compiled empty-remaining-pass guards in frozen default executable `a2bbb31ba6912363132f0cabfcc1798f369ccc217d2a9f5d548214314541596f`. Compared against default anchor `80c7736fff9d6c7ac7e06c7867fae860e6c78b9bfa70d0ff406eade8e7815071`, not solely against a diagnostic executable. SHA was verified before read-only extraction; no source edit, build, FFT, or benchmark.

F64x8 inverse ungrouped entry loads column count from plan+0x20 at `0xe58288` into RSP+0x10 and row count from plan+0x28 at `0xe58295` into RSP+0x58. For the known N210 geometry both counts are 1. Column full/partial guards at `0xe63453` / `0xe63cc3` compare the stored count with 2 and branch to `0xe644f0` without reconstructing a length from pointer distance.

The unblocked inverse row path at `0xe6c28c` / `0xe6c2a0` forms the row descriptor base from the column count times 24. Row guards at `0xe6cea9`, `0xe6de73`, `0xe6e1ea`, and `0xe6eab5` compare the retained row count with 2 and route an empty range to `0xe6f320`. The second guard branches to nonempty work when count ≥2 and otherwise jumps to that exit. This legitimate descriptor address calculation does not reconstruct an iterator count.

The nonempty column range starts index 1 at `0xe6347d`, increments at `0xe634e6`, compares directly with stored count at `0xe634fd`, and forms the live descriptor index at `0xe63516`. Radix multiplications remain, as required.

| Variant | Current address range | Old pointer-distance skip sites | Explicit frame bytes | Symbol span bytes |
|---|---|---:|---:|---:|
| F64x8 | 0xe58040–0xe7ad80 | 14 → 0 | 3032 → 3144 | 142912 → 142656 |
| F32x8v | 0xf613c0–0xf81f80 | 14 → 0 | 2168 → 2232 | 135040 → 134080 |
| F32x16 | 0xf2f540–0xf538c0 | 14 → 0 | 5568 → 5696 | 148480 → 148352 |

All three default symbols have full normalized instruction identity with the reviewed indexed diagnostic, and an independent scan against the old default finds 14 old SHR3/MOVABS0xaaaaaaaaaaaaaaab/IMUL/CMP iterator patterns per variant versus zero now. Exact default guard instructions and branch targets are asserted by the retained reproduction script and recorded in JSON.

Frames grow by 112/64/128 bytes even while code spans shrink. Register allocation, stack offsets, code and branch placement change; this is not a one-instruction performance counterfactual. No speed, cache-mechanism, or full arithmetic-equivalence claim is made. Correctness tests and fresh quiet performance/absolute review remain separate requirements.

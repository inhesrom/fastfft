# Compiled iterator-control gate

**PASS, scoped to removal of stride24 iterator bookkeeping on empty remaining-pass paths.** Reviewed frozen diagnostic9e9dfb4c4f8837e3471d0e935da0fa563112452f4777def65fb99ef3d2c8b350 against bcf2baf643c137df00ab68574405f1e6292e8e0581248fa87a058741b1bcdeab using retained located assembly only. No source edit, build, disassembly or benchmark.

In F64x8 inverse ungrouped entry, the compiler loads column and row counts to RSP+0x10/+0x58. For N210 both are1. Column completion now compares the stored count with2 at0xf85713 (full) and0xf85f83 (partial), jumping directly to0xf867b0 for the empty remaining range. The old path reconstructed count from end−pointer with SHR3, MOVABS0xaaaaaaaaaaaaaaab and IMUL before deciding that skip(1) exhausted the iterator.

The unblocked inverse row path starts at0xf8e54c→0xf8e560. It forms the row descriptor address from base+columns_count×24, retaining the row count at RSP+0x58. Row completion guard sites0xf8f169,0xf90133,0xf904aa and0xf90d75 compare that count directly with2 and route the empty range to0xf915e0. No old pointer-distance divide lies on these skip paths. Address formation for a live descriptor still uses index×24, correctly.

For a nonempty range, the index starts1 at0xf8573d, increments at0xf857a6, and compares directly to the stored count at0xf857bd. Radix and offset loads occur only after entering the remaining-pass loop. A full-symbol search also found zero instances of the old SHR3/MOVABS/IMUL/CMP skip pattern in all three new variants, versus fourteen each before. Ordinary radix-arithmetic multiplication sequences still exist; they are not the removed iterator operation.

| Variant | Old skip-pattern sites | Explicit frame bytes | Located symbol span bytes |
|---|---:|---:|---:|
| F64x8 | 14 → 0 | 3032 → 3144 | 142912 → 142656 |
| F32x8v | 14 → 0 | 2168 → 2232 | 135040 → 134080 |
| F32x16 | 14 → 0 | 5568 → 5696 | 148480 → 148352 |

This gate does not certify performance or full arithmetic equivalence. F64x8's frame grows112 bytes even while its symbol shrinks256 bytes. Register allocation, stack slots, branch placement and code addresses changed; the performance result is not attributable solely to removing the multiply. Existing12 relocation and21 FourStep tests plus Clippy are separate correctness checks. A fresh completely quiet diagnostic remains required; the prior dirty-monitor run is still invalid.

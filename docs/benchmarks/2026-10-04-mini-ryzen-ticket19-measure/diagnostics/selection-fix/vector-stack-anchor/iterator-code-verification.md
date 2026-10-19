# Indexed empty-range gate

PASS for the compiled guards. F64x8 inverse entry loads column/row counts at `0xe5ce90`/`0xe5cea0` into RSP+0x80/+0x78. Column guards `0xe67dc3` and `0xe68643` branch below2 to `0xe68eb0`; all five recorded inverse row guards route count1 to `0xe73d00`. The known N210 counts1/1 skip remaining passes directly. The old stride24 iterator divide pattern remains absent in F64x8/F32x8v/F32x16. Exact asserted windows are retained in JSON. This is not a speed or complete arithmetic-equivalence proof.

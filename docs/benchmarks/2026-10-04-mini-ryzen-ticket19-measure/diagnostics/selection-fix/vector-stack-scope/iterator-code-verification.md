# Indexed empty-range gate

PASS for the compiled guards. F64x8 inverse entry loads column/row counts at `0xe5a11c`/`0xe5a129` into RSP+0x78/+0x70. Column guards `0xe65143` and `0xe65a03` branch below2 to `0xe66290`; all five recorded inverse row guards route count1 to `0xe71210`. The known N210 counts1/1 skip remaining passes directly. The old stride24 iterator divide pattern remains absent in F64x8/F32x8v/F32x16. Exact asserted windows are retained in JSON. This is not a speed or complete arithmetic-equivalence proof.

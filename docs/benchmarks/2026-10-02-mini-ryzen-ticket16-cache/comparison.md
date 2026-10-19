# Arena comparison

A = `target/ticket16/before`
B = `target/ticket16/after`

Ratio = time(A) ÷ time(B): > 1 means B is faster.

| suite | lib | cells | geomean (best) | geomean (median) | faster/same/slower (±3%) |
|---|---|---|---|---|---|
| pow2 | fastfft | 12 | 1.001× | 1.000× | 0/12/0 |
| pow2 | rustfft | 12 | 0.998× | 1.001× | 0/12/0 |

## Cells changed by more than 3% (best and median)

| cell | lib | A best | B best | ratio (best) | ratio (median) |
|---|---|---|---|---|---|

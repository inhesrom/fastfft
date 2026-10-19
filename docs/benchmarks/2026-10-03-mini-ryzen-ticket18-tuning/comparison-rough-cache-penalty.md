# Arena comparison

A = `target/ticket18/before-idle`
B = `target/ticket18/rough-cache-penalty`

Ratio = time(A) ÷ time(B): > 1 means B is faster.

| suite | lib | cells | geomean (best) | geomean (median) | faster/same/slower (±3%) |
|---|---|---|---|---|---|
| rough | fastfft | 34 | 1.010× | 1.007× | 8/23/3 |
| rough | rustfft | 34 | 0.996× | 0.993× | 1/28/5 |

## Cells changed by more than 3% (best and median)

| cell | lib | A best | B best | ratio (best) | ratio (median) |
|---|---|---|---|---|---|
| rough:f32:fwd:ip:n131071 | rustfft | 899.44us | 993.08us | 0.906× | 0.894× |
| rough:f32:fwd:ip:n61 | fastfft | 109.9ns | 119.4ns | 0.920× | 0.908× |
| rough:f32:fwd:ip:n2053 | fastfft | 6.72us | 7.25us | 0.926× | 0.923× |
| rough:f64:fwd:ip:n65537 | rustfft | 489.30us | 527.09us | 0.928× | 0.920× |
| rough:f32:fwd:ip:n127 | rustfft | 456.3ns | 484.0ns | 0.943× | 0.935× |
| rough:f32:fwd:ip:n4099 | fastfft | 13.94us | 14.51us | 0.961× | 0.962× |
| rough:f64:fwd:ip:n8191 | rustfft | 70.29us | 72.55us | 0.969× | 0.968× |
| rough:f32:fwd:ip:n16381 | fastfft | 65.47us | 63.40us | 1.033× | 1.037× |
| rough:f64:fwd:ip:n65524 | fastfft | 689.59us | 659.36us | 1.046× | 1.036× |
| rough:f32:fwd:ip:n9797 | fastfft | 37.88us | 35.79us | 1.058× | 1.064× |
| rough:f64:fwd:ip:n1021 | fastfft | 6.26us | 5.78us | 1.082× | 1.088× |
| rough:f64:fwd:ip:n3063 | fastfft | 19.72us | 18.17us | 1.085× | 1.086× |
| rough:f64:fwd:ip:n8191 | fastfft | 62.00us | 56.37us | 1.100× | 1.092× |
| rough:f64:fwd:ip:n509 | rustfft | 3.20us | 2.85us | 1.122× | 1.122× |
| rough:f64:fwd:ip:n4099 | fastfft | 32.30us | 28.54us | 1.131× | 1.130× |

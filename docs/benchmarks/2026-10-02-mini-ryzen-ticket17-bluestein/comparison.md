# Arena comparison

A = `target/ticket17/before`
B = `target/ticket17/after`

Ratio = time(A) ÷ time(B): > 1 means B is faster.

| suite | lib | cells | geomean (best) | geomean (median) | faster/same/slower (±3%) |
|---|---|---|---|---|---|
| rough | fastfft | 34 | 1.247× | 1.248× | 34/0/0 |
| rough | rustfft | 34 | 0.999× | 0.998× | 1/31/2 |

## Cells changed by more than 3% (best and median)

| cell | lib | A best | B best | ratio (best) | ratio (median) |
|---|---|---|---|---|---|
| rough:f64:fwd:ip:n131071 | rustfft | 2.59ms | 2.79ms | 0.930× | 0.917× |
| rough:f64:fwd:ip:n16381 | rustfft | 144.00us | 149.03us | 0.966× | 0.966× |
| rough:f64:fwd:ip:n65524 | fastfft | 748.96us | 691.17us | 1.084× | 1.084× |
| rough:f64:fwd:ip:n8191 | fastfft | 67.89us | 62.32us | 1.089× | 1.091× |
| rough:f32:fwd:ip:n65524 | fastfft | 375.63us | 342.42us | 1.097× | 1.096× |
| rough:f32:fwd:ip:n131071 | fastfft | 809.27us | 737.65us | 1.097× | 1.094× |
| rough:f32:fwd:ip:n131071 | rustfft | 990.18us | 901.71us | 1.098× | 1.081× |
| rough:f64:fwd:ip:n9797 | fastfft | 91.95us | 83.04us | 1.107× | 1.109× |
| rough:f64:fwd:ip:n16381 | fastfft | 142.65us | 128.06us | 1.114× | 1.111× |
| rough:f32:fwd:ip:n16381 | fastfft | 73.17us | 65.68us | 1.114× | 1.112× |
| rough:f64:fwd:ip:n4099 | fastfft | 36.77us | 32.98us | 1.115× | 1.109× |
| rough:f64:fwd:ip:n131071 | fastfft | 2.10ms | 1.84ms | 1.140× | 1.144× |
| rough:f64:fwd:ip:n3063 | fastfft | 23.07us | 20.19us | 1.143× | 1.141× |
| rough:f32:fwd:ip:n9797 | fastfft | 44.83us | 38.80us | 1.155× | 1.160× |
| rough:f64:fwd:ip:n2053 | fastfft | 15.62us | 13.25us | 1.179× | 1.178× |
| rough:f64:fwd:ip:n1021 | fastfft | 7.48us | 6.30us | 1.187× | 1.186× |
| rough:f64:fwd:ip:n2018 | fastfft | 15.04us | 12.66us | 1.188× | 1.186× |
| rough:f32:fwd:ip:n8191 | fastfft | 32.92us | 27.67us | 1.190× | 1.188× |
| rough:f32:fwd:ip:n2018 | fastfft | 8.03us | 6.73us | 1.193× | 1.194× |
| rough:f32:fwd:ip:n4099 | fastfft | 16.95us | 13.97us | 1.213× | 1.213× |
| rough:f32:fwd:ip:n2053 | fastfft | 8.13us | 6.69us | 1.216× | 1.216× |
| rough:f32:fwd:ip:n3063 | fastfft | 11.42us | 9.39us | 1.216× | 1.217× |
| rough:f64:fwd:ip:n509 | fastfft | 3.18us | 2.60us | 1.223× | 1.221× |
| rough:f64:fwd:ip:n65537 | fastfft | 869.79us | 694.88us | 1.252× | 1.273× |
| rough:f32:fwd:ip:n1021 | fastfft | 3.41us | 2.71us | 1.260× | 1.260× |
| rough:f32:fwd:ip:n509 | fastfft | 1.65us | 1.27us | 1.299× | 1.300× |
| rough:f32:fwd:ip:n31 | fastfft | 84.0ns | 62.8ns | 1.338× | 1.338× |
| rough:f32:fwd:ip:n65537 | fastfft | 454.94us | 339.94us | 1.338× | 1.338× |
| rough:f64:fwd:ip:n31 | fastfft | 137.5ns | 99.4ns | 1.383× | 1.373× |
| rough:f64:fwd:ip:n61 | fastfft | 266.8ns | 189.6ns | 1.407× | 1.417× |
| rough:f64:fwd:ip:n127 | fastfft | 544.2ns | 385.3ns | 1.413× | 1.444× |
| rough:f32:fwd:ip:n61 | fastfft | 155.6ns | 109.4ns | 1.422× | 1.432× |
| rough:f32:fwd:ip:n127 | fastfft | 313.6ns | 219.5ns | 1.429× | 1.426× |
| rough:f64:fwd:ip:n257 | fastfft | 1.66us | 1.13us | 1.469× | 1.465× |
| rough:f64:fwd:ip:n17 | fastfft | 83.1ns | 56.3ns | 1.476× | 1.458× |
| rough:f32:fwd:ip:n257 | fastfft | 865.7ns | 574.1ns | 1.508× | 1.498× |
| rough:f32:fwd:ip:n17 | fastfft | 76.1ns | 47.0ns | 1.617× | 1.631× |

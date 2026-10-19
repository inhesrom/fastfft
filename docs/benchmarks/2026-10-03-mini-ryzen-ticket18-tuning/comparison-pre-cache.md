# Arena comparison

A = `target/ticket18/before-idle`
B = `target/ticket18/after-idle`

Ratio = time(A) ÷ time(B): > 1 means B is faster.

| suite | lib | cells | geomean (best) | geomean (median) | faster/same/slower (±3%) |
|---|---|---|---|---|---|
| pow2 | fastfft | 40 | 1.013× | 1.013× | 11/26/3 |
| pow2 | rustfft | 40 | 0.999× | 1.000× | 4/33/3 |
| rough | fastfft | 34 | 0.979× | 0.979× | 6/19/9 |
| rough | rustfft | 34 | 1.002× | 1.002× | 2/29/3 |
| smooth | fastfft | 82 | 1.032× | 1.033× | 25/56/1 |
| smooth | rustfft | 82 | 0.997× | 0.998× | 9/65/8 |

## Cells changed by more than 3% (best and median)

| cell | lib | A best | B best | ratio (best) | ratio (median) |
|---|---|---|---|---|---|
| rough:f64:fwd:ip:n131071 | fastfft | 1.83ms | 2.65ms | 0.690× | 0.680× |
| smooth:f32:fwd:ip:n15 | rustfft | 25.8ns | 32.3ns | 0.797× | 0.804× |
| rough:f32:fwd:ip:n131071 | fastfft | 739.68us | 893.96us | 0.827× | 0.827× |
| rough:f64:fwd:ip:n65537 | fastfft | 691.60us | 791.41us | 0.874× | 0.863× |
| rough:f64:fwd:ip:n65524 | fastfft | 689.59us | 778.41us | 0.886× | 0.879× |
| pow2:f64:fwd:ip:n4096 | fastfft | 4.55us | 5.04us | 0.902× | 0.904× |
| pow2:f32:fwd:ip:n512 | rustfft | 254.3ns | 278.4ns | 0.913× | 0.915× |
| rough:f32:fwd:ip:n61 | fastfft | 109.9ns | 120.1ns | 0.915× | 0.909× |
| pow2:f32:fwd:ip:n1048576 | fastfft | 1.90ms | 2.08ms | 0.915× | 0.892× |
| rough:f32:fwd:ip:n65537 | fastfft | 341.01us | 369.37us | 0.923× | 0.928× |
| rough:f32:fwd:ip:n65524 | fastfft | 338.43us | 365.68us | 0.925× | 0.927× |
| rough:f64:fwd:ip:n65537 | rustfft | 489.30us | 527.76us | 0.927× | 0.925× |
| rough:f32:fwd:ip:n2053 | fastfft | 6.72us | 7.24us | 0.928× | 0.923× |
| smooth:f32:fwd:ip:n120 | rustfft | 60.7ns | 65.3ns | 0.930× | 0.944× |
| smooth:f64:fwd:ip:n320 | rustfft | 323.2ns | 346.0ns | 0.934× | 0.937× |
| rough:f32:fwd:ip:n127 | rustfft | 456.3ns | 483.5ns | 0.944× | 0.935× |
| smooth:f32:fwd:ip:n240 | rustfft | 117.3ns | 123.0ns | 0.954× | 0.944× |
| pow2:f64:fwd:ip:n8192 | rustfft | 14.69us | 15.37us | 0.956× | 0.957× |
| smooth:f64:fwd:ip:n4800 | rustfft | 8.73us | 9.11us | 0.958× | 0.958× |
| pow2:f32:fwd:ip:n32768 | rustfft | 37.35us | 38.96us | 0.959× | 0.956× |
| smooth:f64:fwd:ip:n36 | rustfft | 22.7ns | 23.6ns | 0.963× | 0.967× |
| rough:f32:fwd:ip:n4099 | fastfft | 13.94us | 14.47us | 0.964× | 0.963× |
| rough:f64:fwd:ip:n8191 | rustfft | 70.29us | 72.67us | 0.967× | 0.966× |
| smooth:f32:fwd:ip:n384 | rustfft | 198.6ns | 204.9ns | 0.969× | 0.959× |
| smooth:f32:fwd:ip:n4800 | rustfft | 4.55us | 4.40us | 1.032× | 1.031× |
| smooth:f64:fwd:ip:n1536 | rustfft | 2.24us | 2.17us | 1.032× | 1.031× |
| smooth:f32:fwd:ip:n3072 | fastfft | 1.76us | 1.71us | 1.034× | 1.038× |
| smooth:f64:fwd:ip:n1960 | fastfft | 2.28us | 2.21us | 1.034× | 1.035× |
| smooth:f32:fwd:ip:n12288 | rustfft | 12.23us | 11.82us | 1.035× | 1.034× |
| rough:f32:fwd:ip:n509 | rustfft | 1.56us | 1.51us | 1.035× | 1.037× |
| smooth:f64:fwd:ip:n1000 | fastfft | 1.10us | 1.06us | 1.036× | 1.036× |
| smooth:f64:fwd:ip:n1960 | rustfft | 3.70us | 3.57us | 1.036× | 1.032× |
| pow2:f32:fwd:ip:n128 | fastfft | 37.5ns | 36.2ns | 1.036× | 1.030× |
| pow2:f64:fwd:ip:n4096 | rustfft | 6.73us | 6.48us | 1.038× | 1.042× |
| smooth:f64:fwd:ip:n1920 | rustfft | 2.86us | 2.75us | 1.039× | 1.040× |
| smooth:f64:fwd:ip:n6144 | rustfft | 11.08us | 10.64us | 1.041× | 1.038× |
| pow2:f32:fwd:ip:n4096 | rustfft | 3.38us | 3.24us | 1.043× | 1.039× |
| smooth:f32:fwd:ip:n1536 | fastfft | 809.9ns | 775.3ns | 1.045× | 1.046× |
| smooth:f32:fwd:ip:n15 | fastfft | 14.2ns | 13.6ns | 1.045× | 1.045× |
| pow2:f32:fwd:ip:n8192 | rustfft | 7.30us | 6.98us | 1.046× | 1.046× |
| pow2:f32:fwd:ip:n8192 | fastfft | 5.49us | 5.24us | 1.048× | 1.045× |
| pow2:f64:fwd:ip:n8192 | fastfft | 10.92us | 10.41us | 1.049× | 1.051× |
| smooth:f64:fwd:ip:n4800 | fastfft | 5.57us | 5.31us | 1.050× | 1.049× |
| smooth:f64:fwd:ip:n720 | fastfft | 671.8ns | 638.7ns | 1.052× | 1.049× |
| smooth:f64:fwd:ip:n384 | fastfft | 313.2ns | 297.6ns | 1.052× | 1.068× |
| smooth:f64:fwd:ip:n1920 | fastfft | 2.11us | 2.00us | 1.054× | 1.053× |
| pow2:f64:fwd:ip:n2048 | rustfft | 2.96us | 2.81us | 1.054× | 1.050× |
| smooth:f64:fwd:ip:n320 | fastfft | 261.6ns | 247.9ns | 1.055× | 1.062× |
| pow2:f64:fwd:ip:n65536 | fastfft | 134.93us | 127.77us | 1.056× | 1.057× |
| smooth:f64:fwd:ip:n2400 | rustfft | 4.37us | 4.13us | 1.057× | 1.057× |
| smooth:f64:fwd:ip:n120 | rustfft | 111.9ns | 105.9ns | 1.057× | 1.059× |
| pow2:f32:fwd:ip:n65536 | fastfft | 67.73us | 64.08us | 1.057× | 1.062× |
| pow2:f64:fwd:ip:n131072 | fastfft | 291.28us | 275.27us | 1.058× | 1.057× |
| rough:f64:fwd:ip:n1021 | fastfft | 6.26us | 5.87us | 1.067× | 1.072× |
| smooth:f64:fwd:ip:n1000 | rustfft | 1.69us | 1.58us | 1.067× | 1.062× |
| smooth:f64:fwd:ip:n6144 | fastfft | 7.73us | 7.22us | 1.070× | 1.072× |
| smooth:f32:fwd:ip:n9 | fastfft | 11.6ns | 10.8ns | 1.074× | 1.072× |
| rough:f32:fwd:ip:n9797 | fastfft | 37.88us | 35.21us | 1.076× | 1.080× |
| smooth:f64:fwd:ip:n75600 | fastfft | 138.97us | 128.79us | 1.079× | 1.073× |
| smooth:f64:fwd:ip:n27000 | fastfft | 46.68us | 43.11us | 1.083× | 1.089× |
| rough:f64:fwd:ip:n3063 | fastfft | 19.72us | 18.19us | 1.084× | 1.083× |
| smooth:f64:fwd:ip:n12288 | fastfft | 17.11us | 15.76us | 1.086× | 1.084× |
| rough:f64:fwd:ip:n8191 | fastfft | 62.00us | 56.74us | 1.093× | 1.092× |
| pow2:f32:fwd:ip:n524288 | fastfft | 692.79us | 633.93us | 1.093× | 1.099× |
| smooth:f64:fwd:ip:n240 | fastfft | 204.1ns | 186.7ns | 1.093× | 1.099× |
| pow2:f64:fwd:ip:n16384 | fastfft | 24.18us | 22.11us | 1.093× | 1.099× |
| pow2:f32:fwd:ip:n4096 | fastfft | 2.63us | 2.40us | 1.095× | 1.110× |
| smooth:f64:fwd:ip:n2400 | fastfft | 2.91us | 2.60us | 1.118× | 1.117× |
| smooth:f64:fwd:ip:n1536 | fastfft | 1.76us | 1.57us | 1.119× | 1.116× |
| rough:f64:fwd:ip:n509 | rustfft | 3.20us | 2.84us | 1.124× | 1.125× |
| smooth:f32:fwd:ip:n12288 | fastfft | 9.03us | 7.88us | 1.145× | 1.145× |
| smooth:f64:fwd:ip:n80 | fastfft | 65.6ns | 56.9ns | 1.152× | 1.159× |
| smooth:f64:fwd:ip:n480 | fastfft | 451.9ns | 391.3ns | 1.155× | 1.166× |
| rough:f64:fwd:ip:n4099 | fastfft | 32.30us | 27.95us | 1.156× | 1.154× |
| pow2:f64:fwd:ip:n2048 | fastfft | 2.62us | 2.25us | 1.162× | 1.171× |
| smooth:f64:fwd:ip:n15 | fastfft | 17.1ns | 14.6ns | 1.173× | 1.174× |
| smooth:f64:fwd:ip:n96 | fastfft | 76.8ns | 64.8ns | 1.185× | 1.195× |
| smooth:f64:fwd:ip:n48 | fastfft | 37.9ns | 21.8ns | 1.741× | 1.727× |

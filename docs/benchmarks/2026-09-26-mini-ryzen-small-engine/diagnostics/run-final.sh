#!/usr/bin/env bash
set -euo pipefail
sha256sum target/arena/fastfft-arena > target/arena/small-executable.sha256
target/arena/fastfft-arena run --suite pow2 --profile full --max-n 256 --libs fastfft,rustfft --procs 3 --core 2 --label small-engine --out target/arena/small-final
for rep in 1 2; do
  target/arena/fastfft-arena-ticket10 run --suite pow2,smooth,rough,batch --profile quick --filter 'n=257|509|512|768|1021|1024|1200|2018|2048|4800|27000|131071|262144' --libs fastfft,rustfft --procs 3 --core 2 --label small-repeat-before-$rep --out target/arena/small-repeat-before-$rep
  target/arena/fastfft-arena run --suite pow2,smooth,rough,batch --profile quick --filter 'n=257|509|512|768|1021|1024|1200|2018|2048|4800|27000|131071|262144' --libs fastfft,rustfft --procs 3 --core 2 --label small-repeat-after-$rep --out target/arena/small-repeat-after-$rep
done

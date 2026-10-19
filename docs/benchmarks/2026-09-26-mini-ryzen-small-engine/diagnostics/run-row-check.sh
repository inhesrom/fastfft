#!/usr/bin/env bash
set -euo pipefail
for ordering in normal reversed duplicated ticket10; do
  case $ordering in
    normal) libs=fastfft,rustfft ;;
    reversed) libs=rustfft,fastfft ;;
    duplicated) libs=fastfft,fastfft/avx512,rustfft ;;
    ticket10) libs=fastfft,fastfft/avx2,fastfft/avx512,fastfft/avx512-ymm,fastfft/sse2,fastfft/scalar,rustfft,lab/dit-ymm-r8 ;;
  esac
  target/arena/fastfft-arena-ticket10 run --suite pow2,rough --profile quick --prec f64 --filter 'n=1021|2048' --libs "$libs" --procs 3 --core 2 --label small-row-before-$ordering --out target/arena/small-row-before-$ordering
  target/arena/fastfft-arena run --suite pow2,rough --profile quick --prec f64 --filter 'n=1021|2048' --libs "$libs" --procs 3 --core 2 --label small-row-after-$ordering --out target/arena/small-row-after-$ordering
done

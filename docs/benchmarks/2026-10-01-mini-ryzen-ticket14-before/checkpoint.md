# Ticket 14: large-power-of-two baseline

The saved pre-tuning run measures **0.924× best / 0.927× median** versus
RustFFT over powers of two from 2^15 through 2^24, both precisions,
forward/in-place only. All 20 cells verified, with 1.58% maximum control
drift and no child failures. This is the quick-profile baseline, not a full
direction/placement gate.

The library is the ticket 13 merge, `d775eac828891a0dd37189e6906ff39175777d1f`.
The recorded tree is dirty because the ticket's planning notes and accuracy
tests were already being extended. No large-power-of-two engine changes
were included in this executable. Its hash is saved alongside this report;
the executable remains locally in `target/ticket14/baseline/fastfft-arena`.

```sh
RUSTFLAGS='-C llvm-args=-align-all-functions=6' \
  cargo build --profile arena -p fastfft-arena --features fftw -j 2
scripts/bench-env.sh check --core 2
target/arena/fastfft-arena run --suite pow2 --profile quick \
  --libs fastfft,rustfft --filter minn=32768 --core 2 --procs 3 \
  --out target/arena/runs/ticket14-baseline
```

The [report](report.md), raw data, environment, metadata and plots preserve
the original run. The follow-up compares matching forward/in-place cells
separately from its broader full-profile checkpoint.

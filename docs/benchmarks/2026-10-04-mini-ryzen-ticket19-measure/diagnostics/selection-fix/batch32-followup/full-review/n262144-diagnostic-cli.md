Existing mechanism; commands below are prepared only, not executed.

A default binary rejects `--sample-trace`. Feature `measure-diagnostics` enables `fastfft/tuning` (Cargo.toml:15); it makes the run explicitly unofficial. Preserve default SIMD features. The arena build recipe is:

```sh
RUSTFLAGS='-C llvm-args=-align-all-functions=6' cargo build -j1 --profile arena -p fastfft-arena --features measure-diagnostics
```

Build only before the quiet window; freeze the resulting binary, SHA, source and toolchain under the diagnostic directory and verify production sources against the accepted source snapshot. A retained equivalent diagnostic binary can be reused only with that provenance check. This is a feature-build context, not the frozen default acceptance executable.

Exact existing run arguments (future frozen binary path):

```sh
target/ticket19/selection-fix/n262144-sample-trace/fastfft-arena run --suite pow2 --prec f32 --profile full --libs fastfft,fastfft/measure --core 4 --procs 8 --filter 'suite=pow2,precision=f32,dir=fwd,place=oop,n=262144,batch=1' --sample-trace --out target/ticket19/selection-fix/n262144-sample-trace/run
```

Run that command through the existing managed affinity reservation and fresh `quiet-run.py --quiet-seconds 300 --attribute --core 4 --log <new-log> -- <command>` wrapper, launched on CPU0, with the usual independent affinity restoration proof. No dirty-environment override. Verification, aligned I/O and zero timing data are defaults; retain them. Do not add `--measure-trace`, `--measure-context`, coefficient flags or factorial to this sample-only N262144 experiment.

`--procs 8` already rotates library construction order; there is no separate `--process-order` option. `driver.rs:274` parses comma-conjoined filter keys and semicolon alternatives. Filtering selects one ordinary cell; standard pre/post controls remain automatic, each with eight process records. Full profile is 200ms warmup/member, seven 100ms turns/member, 50us minimum calibrated batch (`spec.rs:119`). Caller, selector budgets/statistics and per-round member alternation are unchanged.

**CALLS=1 is a required observed match, not a forceable CLI argument.** No existing fixed-call override exists. `timing.rs` chooses `max(1, ceil(50us / calibrated_call_time))`; this ~300us transform should produce one. Inspect `calls_per_batch == 1` for both members in all eight ordinary rows. If it differs, preserve the capture as mismatched diagnostic evidence; do not invent `--calls`, change calibration, or rerun automatically.

`cell.rs:469–512` records each member's seven cumulative `sample_trace.round_ends` after its turns and transfers the existing chronological samples into `sample_trace.whole_buffer_ns` after timing. `batch` is 1 here. Samples are ns per public whole-buffer call, already divided by calibrated calls; normal batch-cell summary values divide again by transform batch count. Trace serialization does not add FFT calls. Samples have within-member/round order, not per-sample absolute timestamps. The feature build can change code layout, so a pass cannot negate the production miss.

Check exact eight ordinary rows plus 16 control rows, seven nonempty rounds/member, matching recipe/verification/calls, raw-to-summary consistency, endpoint/control clocks and all quiet monitoring. Examine low Estimate samples by round and starting member; retain every sample, not just selected minima. This is one diagnostic capture, never a replacement acceptance row.

Batch-N32 alternative: use `--suite batch --filter 'suite=batch,precision=f32,dir=fwd,place=oop,n=32,batch=32768' --sample-trace --execution-order-factorial` with a separate output directory. Existing `driver.rs:228` sets rotation `(process%2)^((process/2)%2)`: construction E/M alternates while initial calibration/execution follows E/E/M/M. Eight processes cover each combination twice; normal round alternation stays intact. This is an explicitly changed diagnostic order, not acceptance-protocol equivalence.

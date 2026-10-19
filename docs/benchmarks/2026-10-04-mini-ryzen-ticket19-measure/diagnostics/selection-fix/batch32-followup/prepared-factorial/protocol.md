Prepared only: one batch-N32 construction/execution factorial, no queued worker or launch.

Reuse the retained `n262144-sample-trace/fastfft-arena` diagnostic binary (SHA d53258c740f718fbbc9aa98c68bb7749414a56bcc37c9c05d9e1ce911bbe5b94). All96 source-manifest entries match both current files and the frozen default source manifest; see source-reuse-check.json in the sibling status report. The actual binary SHA was independently recomputed on CPU0 and matches this directory’s provenance; recheck frozen integrity before launch. No rebuild is needed on this evidence. Diagnostic feature context differs from default acceptance.

Exact existing command:

```sh
target/ticket19/selection-fix/n262144-sample-trace/fastfft-arena run --suite batch --prec f32 --profile full --libs fastfft,fastfft/measure --core 4 --procs 8 --filter 'suite=batch,precision=f32,dir=fwd,place=oop,n=32,batch=32768' --sample-trace --execution-order-factorial --out target/ticket19/selection-fix/batch32-order-factorial/run
```

Use existing managed reservation, `quiet-run.py --quiet-seconds 300 --attribute --core 4`, fresh logs and independent run-affinity-proof.json after restoration; launch wrapper on CPU0. No dirty-env override. Preserve full-profile warmup200ms, seven100ms rounds,50us calibration target, verified aligned zero data, both actual public callers and16 bracketing controls. CALLS=1 is an observed match requirement for all16 ordinary member records, not a forceable CLI option. A mismatch is retained and invalidates comparability; no automatic retry.

Processes0..7 construct E,M,E,M,E,M,E,M first and initially calibrate/execute E,E,M,M,E,E,M,M first. Four combinations each occur twice; rounds still alternate member order. This can separate construction-associated from initial-calibration/execution-associated differences, but allocation/cache and calibration/first-turn mechanisms remain bundled within those factors.

After the single capture, run `taskset -c 0 python3 target/ticket19/selection-fix/batch32-order-factorial/audit.py`. Defaults consume run/, run-quiet.jsonl, run-affinity.json and run-affinity-proof.json. It retains all ordinary ratios, checks exact coverage/factorial balance, frozen recipe, CALLS, verification, seven trace rounds, raw-to-merged consistency, quiet/env/drift/restoration, and emits inspection.json + tails.jsonl. Trace samples/round statistics are ns per entire32768-transform call; summary comparison divides timing values by32768, never sample counts. Tail thresholds use those same whole-buffer units. No tests or capture were run during preparation; syntax compile check only.

Strict failures in both default captures remain failed. Diagnostic evidence_valid is independent of acceptance (always false); no cell replacement, threshold changes, cause/noise declarations or retry-until-pass.

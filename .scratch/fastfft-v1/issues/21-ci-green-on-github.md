# Get CI green on GitHub

Type: task
Status: open
Roadmap: FFT-002, FFT-036

## Question

Does the committed workflow pass on GitHub-hosted runners?

`.github/workflows/ci.yml` has never run. It covers:
- fmt and `clippy -D warnings`;
- release tests;
- MSRV 1.89 build (the 1.89 toolchain is not installed locally);
- the `FASTFFT_ISA_CAP` tier matrix;
- Intel SDE AVX-512 tiers (pinned `petarpetrovt/setup-sde`);
- aarch64 and wasm32;
- the Miri subset (`miri_` tests);
- `codegen --check`, docs and cargo-deny.

The plan also asks for a nightly AddressSanitizer job on the SIMD tiers, which the workflow lacks. Add it.

**HITL:** pushing to the remote is the maintainer's call. The agent fixes failures.

## Done when

Green on main.

## Progress

- 2026-09-29: the workflow has run on every push since e83fd99. Every job passes except the two SDE jobs, which fail in setup: `setup-sde@v2.4` only knows SDE up to 9.33.0 and rejects the pinned 9.44.0, and Intel's mirror no longer serves 9.33.0. So the SDE tests had never run.
  - Fixed on the ticket-11-small-n branch: `setup-sde@v6.0` with SDE 10.13.1, which downloads hash-checked copies from the action's own release.
  - The build step now runs under `shell: bash`, whose pipefail makes a compile error fail the step, and it checks the test list is not empty.
  - The tier and SDE jobs now set `FASTFFT_REQUIRE_ISA`. The new conformance test `required_isa_is_active` fails when the planner is not using that tier, so a runner without it cannot pass by testing a lower one.
  - Still missing: the nightly AddressSanitizer job.
- 2026-10-01: ticket 13's [branch run](https://github.com/inhesrom/fastfft-history/actions/runs/36808051447)
  and the [master run after merge](https://github.com/inhesrom/fastfft-history/actions/runs/36808350033)
  lose x86 runners during release-test compilation (runner shutdown, exit 143),
  before test assertions run. A local parallel build of `d775eac` also loses a
  compiler to SIGKILL; two concurrent integration-test compilers alone reach
  9.1 GiB RSS, above the [private hosted runner's 8 GB RAM](https://docs.github.com/en/actions/reference/runners/github-hosted-runners#standard-github-hosted-runners-for-private-repositories).
  - Ticket 13's [validation record](../../../docs/benchmarks/2026-09-30-mini-ryzen-ticket13-smooth-checkpoint/validation.md)
    already required `-j 1` after memory-related compiler kills. CI omitted it.
  - Set `CARGO_BUILD_JOBS=1` at workflow scope so release tests, capped tiers
    and SDE test builds serialize compiler jobs. Test execution remains parallel;
    enabled ISA features, optimization settings and test coverage are unchanged.
  - Local validation: `CARGO_INCREMENTAL=0 CARGO_BUILD_JOBS=1 cargo test --offline --workspace --release`
    passes (66 tests, 4 ignored), with peak compiler RSS of 6.68 GiB. The four
    built fastfft test binaries also pass all 56 active tests per cap with
    `FASTFFT_TEST_QUICK=1`, matching `FASTFFT_ISA_CAP` / `FASTFFT_REQUIRE_ISA`,
    and `--test-threads=4` for scalar,
    SSE2, AVX2, AVX-512 YMM and AVX-512 on native hardware. Formatting, YAML
    parsing and `git diff --check` pass. SDE emulation was not run locally.
  - Hosted CI must pass before merging this bugfix.

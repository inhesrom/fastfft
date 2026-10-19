# Beat RustFFT on AArch64 and Apple Silicon — wayfinder map

Labels: wayfinder:map

## Destination

fastfft's default Estimate planner measurably beats RustFFT on named Apple
Silicon/macOS and AArch64/Linux targets under the accepted ARM gates, with
native correctness and reproducible benchmark reports. This session charts
and accepts the minimal route; the AFK task children carry implementation.

## Notes

- The maintainer explicitly delegated recommendations and their acceptance on
  2026-10-10. Work autonomously; no grilling or simulated human approvals.
- This is a separate ARM effort; the Zen 4 v0.1 map and gates are unchanged.
- Use the local Markdown tracker: one child file per ticket; `Type:`, `Status:`,
  `Assignee:` and `Blocked by:` record type, claim and dependency state.
- Claim a child before work. Resolve with an appended `## Answer`, mark it
  resolved, and index the answer below. The frontier is open, unclaimed children
  whose blockers are resolved, in numeric order.
- **Execution is carried in this map.** Its three task children implement and
  measure the route; they override Wayfinder's planning-only default for future
  sessions. This session resolves the research decision and charts those tasks.
- Source baseline: latest default branch (`master`),
  `c99763735dd344257fd86963aa87fca9f2f6022e`.
- Consult research for external ISA/library facts and the existing benchmark
  protocol before execution. Planning is this session's scope; subsequent AFK
  task tickets may implement and measure the selected route.
- Initial target is the local Apple Silicon Mac; Linux AArch64 needs its own
  named native host and measurements. No paid provisioning is authorized.
- The route and performance gates are accepted under the maintainer's delegated
  authority in the resolved research child. Task completion needs evidence;
  acceptance of a plan is not acceptance of future benchmark misses.

## Decisions so far

- [Select the minimal ARM performance route](issues/01-select-arm-performance-route.md) — accept native baseline → complete stable NEON → measured ARM tuning, with separate target gates and deferred optional ISA extensions.

## Not yet specified

None blocks implementation. Layout, radix and cache crossovers are explicitly
owned by the tuning task; create more tickets only if measured results expose
work that cannot fit the existing tasks.

## Out of scope

- x86 release-gate changes, real-input/multidimensional FFTs and multithreading.
- Paid cloud provisioning; Linux ARM measurements require existing access.
- ARM32, Intel-Mac performance work and universal wins on every ARM CPU.
- FCMA, SVE/SME, Accelerate/GPU and new prime algorithms unless a demonstrated
  limitation of the selected route justifies a separately scoped effort.

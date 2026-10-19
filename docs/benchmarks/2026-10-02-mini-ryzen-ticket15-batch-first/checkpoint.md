# First batch candidate: diagnostic only

This full-profile run verifies all 32 cells with 0.99% drift. Best times
measure 1.3101× versus RustFFT, but median times measure 1.2980× and miss
the unchanged 1.3× M4 checkpoint. The build also omitted the established
64-byte function-alignment flag. It is retained as diagnostic evidence;
it does not establish the checkpoint or a matching-build comparison.

See the [measurement history](../2026-10-02-mini-ryzen-ticket15-batch/diagnostics/README.md)
and [final checkpoint](../2026-10-02-mini-ryzen-ticket15-batch/checkpoint.md).

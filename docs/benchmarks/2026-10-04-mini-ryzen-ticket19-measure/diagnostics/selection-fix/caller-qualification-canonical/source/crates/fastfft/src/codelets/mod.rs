//! Straight-line DFT codelets produced by `fastfft-codegen` (see
//! `crates/fastfft-codegen`); regenerate with `cargo xtask codegen`.

pub(crate) mod generated;

/// FP operations of the size-`r` codelet (notw or twiddled), from the
/// generator's op-count table.
pub(crate) fn op_count(r: usize, twiddled: bool) -> usize {
    generated::OP_COUNTS
        .iter()
        .find(|(rr, ..)| *rr == r)
        .map(|(_, n, t)| if twiddled { t[0] + t[1] } else { n[0] + n[1] })
        .unwrap_or(10 * r)
}

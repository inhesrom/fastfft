//! Codelet generator for fastfft.
//!
//! Builds a real-valued computation graph for each DFT size, simplifies it
//! (constant folding, CSE, negation folding), fuses products into FMAs,
//! rebalances work between the add and FMA pipes, verifies it numerically
//! against a naive DFT and emits straight-line Rust generic over
//! `crate::isa::SimdReal`.

pub mod dag;
pub mod dft;
pub mod emit;

use dft::Kind;

/// Radices emitted into `crates/fastfft/src/codelets/generated/`.
pub const RADICES: &[usize] = &[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 32];

/// Maximum accepted relative error of a generated graph (f64 evaluation).
pub const MAX_ERR: f64 = 1e-14;

/// Generates every file as `(file name, contents)` (not yet rustfmt'd).
pub fn generate() -> Result<Vec<(String, String)>, String> {
    let mut files = Vec::new();
    let mut counts = Vec::new();
    for &r in RADICES {
        let n = dft::build(r, Kind::Notw, true);
        let t = dft::build(r, Kind::Tw, true);
        let sn = dft::build(r, Kind::Notw, false);
        let st = dft::build(r, Kind::Tw, false);
        for (g, k) in [
            (&n, Kind::Notw),
            (&t, Kind::Tw),
            (&sn, Kind::Notw),
            (&st, Kind::Tw),
        ] {
            let e = dft::verify(g, r, k);
            if e.is_nan() || e > MAX_ERR {
                return Err(format!("radix {r} {k:?}: verification error {e:e}"));
            }
        }
        let (cn, ct) = (n.counts(), t.counts());
        counts.push((
            r,
            [cn.add_pipe(), cn.fma_pipe()],
            [ct.add_pipe(), ct.fma_pipe()],
        ));
        files.push((
            format!("r{r}.rs"),
            emit::emit_radix_file_with_latency(r, &n, &t, &sn, &st),
        ));
    }
    files.push(("mod.rs".into(), emit::emit_mod(RADICES, &counts)));
    Ok(files)
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn all_codelets_verify() {
        for &r in RADICES {
            for balance in [false, true] {
                for k in [Kind::Notw, Kind::Tw] {
                    let g = dft::build(r, k, balance);
                    let e = dft::verify(&g, r, k);
                    assert!(e <= MAX_ERR, "r={r} {k:?} balance={balance}: {e:e}");
                }
            }
        }
    }

    #[test]
    fn op_counts_are_reasonable() {
        // Split-radix DFT-8: 52 real adds + 4 multiplies (FFTW n1_8), before balancing.
        let g = dft::build(8, Kind::Notw, false);
        let c = g.counts();
        assert!(c.total() <= 60, "{c:?}");
        let g = dft::build(16, Kind::Notw, false);
        assert!(g.counts().total() <= 176, "{:?}", g.counts());
    }
}

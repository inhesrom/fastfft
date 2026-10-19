//! Prints op counts of every codelet (unbalanced and balanced).
use fastfft_codegen::dft::{Kind, build};
fn main() {
    println!(
        "{:>3} | {:^28} | {:^28} | {:^20}",
        "r", "notw raw (add/mul/fma/neg)", "notw balanced (addp/fmap)", "tw balanced (addp/fmap)"
    );
    for &r in fastfft_codegen::RADICES {
        let a = build(r, Kind::Notw, false).counts();
        let b = build(r, Kind::Notw, true).counts();
        let t = build(r, Kind::Tw, true).counts();
        let tr = build(r, Kind::Tw, false).counts();
        println!(
            "{r:>3} | {:>4} {:>4} {:>4} {:>4} tot {:>4} | {:>5} {:>5}          | {:>5} {:>5} (raw {} {})",
            a.add,
            a.mul,
            a.fma,
            a.neg,
            a.total(),
            b.add_pipe(),
            b.fma_pipe(),
            t.add_pipe(),
            t.fma_pipe(),
            tr.add_pipe(),
            tr.fma_pipe()
        );
    }
}

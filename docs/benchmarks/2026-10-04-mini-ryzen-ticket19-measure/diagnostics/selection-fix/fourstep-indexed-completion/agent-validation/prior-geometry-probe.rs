use fastfft::{FftDirection, FftNum, Isa};
use fastfft::tuning::configurations;
fn probe<T: FftNum>(n: usize, isa: Isa, kernel: &str, radices: &[usize]) {
    let c = configurations(n, size_of::<T>() == 8).into_iter()
        .find(|c| c.isa() == isa && c.rust_kernel() == kernel && c.radices() == radices).unwrap();
    let p = c.build::<T>(n, FftDirection::Inverse);
    println!("{{\"n\":{n},\"scalar_bytes\":{},\"kernel\":\"{kernel}\",\"scratch\":[{},{},{}],\"regions\":[", size_of::<T>(), p.get_inplace_scratch_len(), p.get_outofplace_scratch_len(), p.get_immutable_scratch_len());
    let mut first = true;
    p.diagnostic_regions(&mut |r| {
        if !first { println!(","); } first = false;
        print!("{{\"kind\":\"{:?}\",\"index\":{},\"ptr\":{},\"element_bytes\":{},\"len\":{},\"capacity\":{}}}",r.kind,r.index,r.ptr,r.element_bytes,r.len,r.capacity);
    });
    println!("]}}");
}
fn main() { println!("["); probe::<f64>(210, Isa::Avx512, "FourStep", &[14,15]); println!(","); probe::<f32>(4096, Isa::Avx512Ymm, "Stockham", &[8,8,8]); println!("]"); }

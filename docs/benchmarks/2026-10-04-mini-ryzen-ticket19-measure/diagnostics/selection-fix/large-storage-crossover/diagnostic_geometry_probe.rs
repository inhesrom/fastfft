use fastfft::{FftDirection, FftNum, Isa};
use fastfft::tuning::{RegionKind, aligned_scratch_address, configurations};
use serde_json::{Value, json};

#[allow(dead_code)]
#[path = "../../../bench/arena/src/buffers.rs"]
mod buffers;

fn probe<T: FftNum>(n: usize, isa: Isa, kernel: &str, radices: &[usize]) -> Value {
    let c = configurations(n, size_of::<T>() == 8)
        .into_iter()
        .find(|c| c.isa() == isa && c.rust_kernel() == kernel && c.radices() == radices)
        .expect("requested production candidate");
    let p = c.build::<T>(n, FftDirection::Inverse);
    let scratch_lengths = [p.get_inplace_scratch_len(), p.get_outofplace_scratch_len(), p.get_immutable_scratch_len()];
    let mut regions = Vec::new();
    let mut metadata = std::collections::BTreeMap::new();
    p.diagnostic_regions(&mut |r| {
        let mut item = json!({"owner":r.owner,"kind":format!("{:?}",r.kind),"index":r.index,"ptr":r.ptr,"element_bytes":r.element_bytes,"len":r.len,"capacity":r.capacity});
        if matches!(r.kind, RegionKind::Radices | RegionKind::ColumnRadices | RegionKind::RowRadices) {
            // SAFETY: these live production diagnostic regions describe initialized
            // usize radix slices owned by p, which stays alive throughout the read.
            let values = unsafe { std::slice::from_raw_parts(r.ptr as *const usize, r.len) };
            item["values"] = json!(values);
        }
        if r.kind == RegionKind::Metadata { metadata.insert(r.index, r.len); }
        regions.push(item);
    });
    let mut b = buffers::Buffers::<T>::new(n, 0);
    b.reserve_scratch(scratch_lengths[1]);
    let (i, o, s) = b.io_scratch_mut();
    let (input, output, scratch) = (i.as_ptr() as usize, o.as_ptr() as usize, s.as_ptr() as usize);
    let aligned = aligned_scratch_address(s);
    assert_eq!((input % 64, output % 64, scratch % 64), (0, 0, 0));
    let execution = if kernel == "Stockham" {
        let used = metadata[&11] != 0 && !(input | output).is_multiple_of(c.lanes() * size_of::<T>());
        assert!(!used);
        json!({"scratch_only_branch":false,"effective_scratch_bases":[],"scratch_reserved_but_unused":true,"phase_a_bases":[[input,output],[output,input],[input,output],[output,input]],"phase_b_bases":[input,output]})
    } else {
        let matrix = aligned;
        let work1 = matrix + metadata[&3] * 2 * size_of::<T>();
        let work2 = work1 + metadata[&4] * 2 * size_of::<T>();
        json!({"matrix":matrix,"work1":work1,"work2":work2,"work1_offset_bytes":work1-matrix,"work2_offset_bytes":work2-matrix,"matrix_mod4096":matrix%4096,"work1_mod4096":work1%4096,"work2_mod4096":work2%4096,"blocked":metadata[&7],"streaming_flag":metadata[&8],"actual_streaming":metadata[&7]!=0&&metadata[&8]!=0})
    };
    json!({"n":n,"scalar_bytes":size_of::<T>(),"isa":format!("{isa:?}"),"kernel":kernel,"radices":radices,"lanes":c.lanes(),"scratch_lengths_ip_oop_immutable":scratch_lengths,"regions":regions,"metadata":metadata,"caller_buffers":{"input":input,"output":output,"scratch":scratch,"aligned_scratch":aligned,"scratch_len":s.len()},"execution_geometry":execution,"executed_fft":false})
}

fn main() {
    println!("{}", serde_json::to_string_pretty(&json!({"scope":"default SIMD features + tuning, debug, non-test layout; constructors and address geometry only", "plans":[probe::<f32>(75600, Isa::Avx512Ymm, "Stockham", &[14,15,15,3]),probe::<f64>(165375, Isa::Avx512, "FourStep", &[375,441])]})).unwrap());
}

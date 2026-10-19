//! Adjacent panels share a cache-sized staging buffer. The caller's large
//! power-of-two strides are visited once per group, with contiguous traffic
//! across several vector widths at each visit.
use super::*;

#[inline(always)]
pub(super) unsafe fn first<V: Vector, const R: usize, const SWAP: bool>(
    input: *const V::S,
    output: *mut V::S,
    rows: usize,
    stride: usize,
    groups: usize,
    group_stride: usize,
    one: V,
) {
    // SAFETY: R divides rows; input spans rows complete rows of stride
    // complex values, including groups*LANES columns. Each padded output
    // panel has rows split vectors and is disjoint from every other panel.
    unsafe {
        let seg = rows / R;
        for a in 0..seg {
            let a = core::hint::black_box(a);
            for g in 0..groups {
                let mut re = [one; R];
                let mut im = [one; R];
                for j in 0..R {
                    let p = input.add(2 * ((a + j * seg) * stride + g * V::LANES));
                    let (r, i) = load::<V, false>(p, V::LANES);
                    (re[j], im[j]) = if SWAP { (i, r) } else { (r, i) };
                }
                crate::codelets::generated::notw::<V, R>(&mut re, &mut im, one);
                for j in 0..R {
                    let p = output.add(2 * (g * group_stride + V::LANES * (a * R + j)));
                    V::store(p, re[j]);
                    V::store(p.add(V::LANES), im[j]);
                }
            }
        }
    }
}

#[inline(always)]
pub(super) unsafe fn execute<V: PanelVector, const L: usize, const INV: bool>(
    plan: &FourStepPlan<V::S>,
    input: *const V::S,
    output: *mut V::S,
    scratch: *mut V::S,
) where
    V::S: FftNum,
{
    // SAFETY: A, B and the group width are powers of two, and the latter
    // divides both dimensions. The N-value intermediate, two work panels
    // and padded group panels are disjoint parts of the reported scratch.
    // All caller input is consumed before any caller output is written.
    unsafe {
        let work1 = scratch.add(2 * plan.matrix_len);
        let work2 = work1.add(2 * plan.work_len);
        let group = work2.add(2 * plan.work_len);
        let one = V::splat_f64(core::ptr::read_volatile(&1.0f64));
        let width = plan.groups * L;
        let stream_matrix = plan.streaming;
        let streaming = plan.streaming && (output as usize).is_multiple_of(64);
        #[cfg(test)]
        let start = plan.profile.then(std::time::Instant::now);
        for col in (0..plan.b).step_by(width) {
            macro_rules! go {
                ($r:literal) => {
                    V::first_group::<$r, INV>(
                        input.add(2 * col),
                        group,
                        plan.a,
                        plan.b,
                        plan.groups,
                        plan.group_stride,
                        one,
                    )
                };
            }
            match plan.columns.radices[0] {
                2 => go!(2),
                4 => go!(4),
                8 => go!(8),
                _ => unreachable!("power-of-two column radix"),
            }
            for g in 0..plan.groups {
                let src = complete::<V, true>(
                    &plan.columns,
                    group.add(2 * g * plan.group_stride),
                    work1,
                    one,
                );
                let c = col + g * L;
                transpose_blocked::<V, L>(
                    src,
                    scratch.add(2 * c * L),
                    plan.a,
                    plan.b,
                    plan.twiddles
                        .as_ptr()
                        .add(2 * c * (plan.a / plan.twiddle_step)),
                    plan.fine_twiddles.as_ptr().add(2 * c * plan.twiddle_step),
                    plan.twiddle_step,
                    stream_matrix,
                );
            }
        }
        if stream_matrix {
            V::stream_fence();
        }
        #[cfg(test)]
        let columns_ns = start.map(|t| t.elapsed().as_nanos());
        for col in (0..plan.a).step_by(width) {
            for g in 0..plan.groups {
                let dst = group.add(2 * g * plan.group_stride);
                let src = scratch.add(2 * (col + g * L) * plan.b);
                macro_rules! go {
                    ($r:literal) => {
                        V::first::<$r, false, false, true>(src, dst, plan.b, L, L, one)
                    };
                }
                match plan.rows.radices[0] {
                    2 => go!(2),
                    4 => go!(4),
                    8 => go!(8),
                    _ => unreachable!("power-of-two row radix"),
                }
                complete::<V, true>(&plan.rows, dst, work1, one);
            }
            for row in 0..plan.b {
                for g in 0..plan.groups {
                    let p = group.add(2 * (g * plan.group_stride + row * L));
                    let r = V::load(p);
                    let i = V::load(p.add(L));
                    let (r, i) = if INV { (i, r) } else { (r, i) };
                    let (lo, hi) = V::interleave(r, i);
                    let out = output.add(2 * (row * plan.a + col + g * L));
                    if streaming {
                        V::stream_store(out, lo);
                        V::stream_store(out.add(L), hi);
                    } else {
                        V::store(out, lo);
                        V::store(out.add(L), hi);
                    }
                }
            }
        }
        if streaming {
            V::stream_fence();
        }
        #[cfg(test)]
        if let Some(start) = start {
            let columns_ns = columns_ns.unwrap();
            eprintln!(
                "phases,{},{},{},{},{},{},{},{},groups={}",
                plan.n,
                plan.a,
                plan.b,
                L,
                size_of::<V::S>(),
                streaming,
                columns_ns,
                start.elapsed().as_nanos() - columns_ns,
                plan.groups
            );
        }
    }
}

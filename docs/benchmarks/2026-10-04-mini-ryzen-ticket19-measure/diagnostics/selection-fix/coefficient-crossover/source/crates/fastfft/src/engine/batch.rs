//! Small-transform batches: register transposes at size 8 and streamed output
//! from existing kernels when separate buffers exceed the cache threshold.
//!
//! A bounded stack tile keeps public scratch contracts unchanged. Calls with
//! fewer than a vector of transforms and the final remainder use the original
//! single-transform plan. No caller buffer is used as intermediate storage.

use crate::api::{Direction, Fft, FftDirection, FftNum, Length};
use crate::engine::Shape;
use crate::fft::{fail_inplace, fail_outofplace};
use crate::isa::Isa;
use num_complex::Complex;
use std::sync::Arc;

#[cfg_attr(not(all(target_arch = "x86_64", feature = "avx2")), allow(dead_code))]
struct Plan<T> {
    leaf_twiddles: Vec<T>,
}

type Entry<T> = unsafe fn(&Plan<T>, *const T, *mut T, usize, bool);
type CopyEntry<T> = unsafe fn(*const T, *mut T, usize, bool);

#[repr(C, align(64))]
struct Tile<T> {
    data: [Complex<T>; 4096],
}

struct Batch<T: FftNum> {
    fallback: Arc<dyn Fft<T>>,
    n: usize,
    dir: FftDirection,
    plan: Plan<T>,
    lanes: usize,
    entry: Option<Entry<T>>,
    copy: CopyEntry<T>,
    stream_threshold: usize,
}

impl<T: FftNum> Length for Batch<T> {
    fn len(&self) -> usize {
        self.n
    }
}
impl<T: FftNum> Direction for Batch<T> {
    fn fft_direction(&self) -> FftDirection {
        self.dir
    }
}
impl<T: FftNum> Batch<T> {
    /// Complete buffers for count transforms; input equals output or is
    /// disjoint. The entry processes only full groups, preserving the input.
    unsafe fn groups(
        &self,
        input: *const Complex<T>,
        output: *mut Complex<T>,
        count: usize,
        scratch: &mut [Complex<T>],
    ) -> usize {
        let bytes = count * self.len() * size_of::<Complex<T>>();
        let streaming = input != output.cast_const()
            && (output as usize).is_multiple_of(64)
            && bytes >= self.stream_threshold;
        // The across-transform experiment only wins for f32 N=8. Streaming
        // batches keep the existing leaves at larger register-resident sizes.
        if !(streaming || self.len() == 8 && size_of::<T>() == 4) {
            return 0;
        }
        let groups = count / self.lanes;
        let done = groups * self.lanes * self.n;
        if streaming && self.n >= 512 {
            let need = self.fallback.get_immutable_scratch_len();
            if need > 4096 {
                return 0;
            }
            let zero = Complex::new(T::zero(), T::zero());
            let mut tile = Tile { data: [zero; 4096] };
            let mut local = Tile { data: [zero; 4096] };
            let workspace = if scratch.len() >= need {
                &mut scratch[..need]
            } else {
                &mut local.data[..need]
            };
            for base in (0..done).step_by(4 * self.n) {
                // SAFETY: each full tile is inside the validated input; the
                // temporary output and exact workspace are disjoint storage.
                let src = unsafe { core::slice::from_raw_parts(input.add(base), 4 * self.n) };
                self.fallback.process_immutable_with_scratch(
                    src,
                    &mut tile.data[..4 * self.n],
                    workspace,
                );
                // SAFETY: available ISA, full scalar tile, aligned disjoint
                // output. Streaming values are consumed before tile reuse.
                unsafe {
                    (self.copy)(
                        tile.data.as_ptr().cast(),
                        output.add(base).cast(),
                        8 * self.n,
                        false,
                    );
                }
            }
            // SAFETY: zero scalars means no memory access; fence all completed
            // streaming stores before publishing output or processing the tail.
            unsafe {
                (self.copy)(input.cast(), output.cast(), 0, true);
            }
        } else if let Some(entry) = self.entry {
            // SAFETY: constructor verifies precision and ISA; public wrappers
            // validate complete buffers before the first store.
            unsafe { entry(&self.plan, input.cast(), output.cast(), groups, streaming) };
        } else {
            return 0;
        }

        groups * self.lanes * self.len()
    }
}
impl<T: FftNum> Fft<T> for Batch<T> {
    #[cfg(feature = "tuning")]
    fn diagnostic_regions(&self, sink: &mut dyn FnMut(crate::tuning::DiagnosticRegion)) {
        use crate::tuning::{DiagnosticRegion, RegionKind};
        let object = DiagnosticRegion::object(self);
        sink(object);
        sink(DiagnosticRegion::vector(
            object.owner,
            RegionKind::BatchLeafTwiddles,
            0,
            &self.plan.leaf_twiddles,
        ));
        sink(DiagnosticRegion::metadata(object.owner, 0, self.lanes));
        sink(DiagnosticRegion::metadata(
            object.owner,
            1,
            self.stream_threshold,
        ));
        sink(DiagnosticRegion::metadata(object.owner, 2, 1));
        for (kind, ptr) in [
            (
                RegionKind::Entry,
                self.entry.map_or(0, |entry| entry as usize),
            ),
            (RegionKind::CopyEntry, self.copy as usize),
            (
                RegionKind::Fallback,
                Arc::as_ptr(&self.fallback) as *const () as usize,
            ),
        ] {
            sink(DiagnosticRegion {
                owner: object.owner,
                kind,
                index: 0,
                ptr,
                element_bytes: 0,
                len: usize::from(ptr != 0),
                capacity: 0,
            });
        }
        self.fallback.diagnostic_regions(sink);
    }

    #[cfg(feature = "tuning")]
    fn diagnostic_batch_path(
        &self,
        input_len: usize,
        input_ptr: usize,
        output_ptr: usize,
        placement: crate::tuning::SamplePlacement,
    ) -> Option<crate::tuning::BatchExecution> {
        use crate::tuning::{BatchExecution, BatchPath, SamplePlacement};
        let mut result = BatchExecution {
            path: BatchPath::Fallback,
            lanes: self.lanes,
            stream_threshold_bytes: self.stream_threshold,
            streaming: false,
            wrapper_values: 0,
            fallback_values: input_len,
            stack_temporary_unobserved: false,
        };
        if input_len < self.n || !input_len.is_multiple_of(self.n) {
            result.path = BatchPath::Invalid;
            return Some(result);
        }
        let Some(bytes) = input_len.checked_mul(size_of::<Complex<T>>()) else {
            result.path = BatchPath::Invalid;
            return Some(result);
        };
        let inplace = placement == SamplePlacement::InPlace;
        let across = self.n == 8 && size_of::<T>() == 4;
        if input_len < self.n * self.lanes || (inplace && !across) {
            return Some(result);
        }
        let streaming = !inplace
            && input_ptr != output_ptr
            && output_ptr.is_multiple_of(64)
            && bytes >= self.stream_threshold;
        if !(streaming || across) {
            return Some(result);
        }
        let path = if streaming && self.n >= 512 {
            if self.fallback.get_immutable_scratch_len() > 4096 {
                return Some(result);
            }
            BatchPath::StreamingTiles
        } else if self.entry.is_some() {
            if self.n == 8 {
                BatchPath::AcrossEight
            } else {
                BatchPath::StreamingEntry
            }
        } else {
            return Some(result);
        };
        result.path = path;
        result.streaming = streaming;
        result.wrapper_values = (input_len / self.n / self.lanes) * self.lanes * self.n;
        result.fallback_values = input_len - result.wrapper_values;
        result.stack_temporary_unobserved = true;
        Some(result)
    }

    fn process(&self, buffer: &mut [Complex<T>]) {
        if size_of::<T>() != 4 || self.n != 8 || buffer.len() < self.n * self.lanes {
            self.fallback.process(buffer);
        } else {
            crate::scratch::with_scratch(self.get_inplace_scratch_len(), |scratch| {
                self.process_with_scratch(buffer, scratch);
            });
        }
    }

    fn process_with_scratch(&self, buffer: &mut [Complex<T>], scratch: &mut [Complex<T>]) {
        let n = self.len();
        if size_of::<T>() != 4 || n != 8 || buffer.len() < n * self.lanes {
            return self.fallback.process_with_scratch(buffer, scratch);
        }
        let need = self.get_inplace_scratch_len();
        if buffer.len() < n || !buffer.len().is_multiple_of(n) || scratch.len() < need {
            fail_inplace(n, buffer.len(), need, scratch.len());
        }
        // SAFETY: complete aliased buffers validated above.
        let groups = buffer.len() / (n * self.lanes);
        let done = groups * n * self.lanes;
        // SAFETY: available size-8 f32 entry, full groups, identical buffers.
        // Calling it directly avoids the separate-output staging workspace.
        unsafe {
            (self.entry.expect("size-8 batch entry"))(
                &self.plan,
                buffer.as_ptr().cast(),
                buffer.as_mut_ptr().cast(),
                groups,
                false,
            );
        }
        if done < buffer.len() {
            self.fallback
                .process_with_scratch(&mut buffer[done..], scratch);
        }
    }
    fn process_outofplace_with_scratch(
        &self,
        input: &mut [Complex<T>],
        output: &mut [Complex<T>],
        scratch: &mut [Complex<T>],
    ) {
        let n = self.len();
        if input.len() < n * self.lanes {
            return self
                .fallback
                .process_outofplace_with_scratch(input, output, scratch);
        }
        let need = self.get_outofplace_scratch_len();
        if input.len() != output.len()
            || input.len() < n
            || !input.len().is_multiple_of(n)
            || scratch.len() < need
        {
            fail_outofplace(n, input.len(), output.len(), need, scratch.len());
        }
        // SAFETY: complete disjoint buffers validated above.
        let done = unsafe {
            self.groups(
                input.as_ptr(),
                output.as_mut_ptr(),
                input.len() / n,
                &mut scratch[..need],
            )
        };
        if done < input.len() {
            self.fallback.process_outofplace_with_scratch(
                &mut input[done..],
                &mut output[done..],
                &mut scratch[..need],
            );
        }
    }
    fn process_immutable_with_scratch(
        &self,
        input: &[Complex<T>],
        output: &mut [Complex<T>],
        scratch: &mut [Complex<T>],
    ) {
        let n = self.len();
        if input.len() < n * self.lanes {
            return self
                .fallback
                .process_immutable_with_scratch(input, output, scratch);
        }
        let need = self.get_immutable_scratch_len();
        if input.len() != output.len()
            || input.len() < n
            || !input.len().is_multiple_of(n)
            || scratch.len() < need
        {
            fail_outofplace(n, input.len(), output.len(), need, scratch.len());
        }
        // SAFETY: complete disjoint buffers validated above; entry never writes input.
        let done = unsafe {
            self.groups(
                input.as_ptr(),
                output.as_mut_ptr(),
                input.len() / n,
                &mut scratch[..need],
            )
        };
        if done < input.len() {
            self.fallback.process_immutable_with_scratch(
                &input[done..],
                &mut output[done..],
                &mut scratch[..need],
            );
        }
    }
    fn get_inplace_scratch_len(&self) -> usize {
        self.fallback.get_inplace_scratch_len()
    }
    fn get_outofplace_scratch_len(&self) -> usize {
        self.fallback.get_outofplace_scratch_len()
    }
    fn get_immutable_scratch_len(&self) -> usize {
        self.fallback.get_immutable_scratch_len()
    }
}

#[cfg(all(target_arch = "x86_64", feature = "avx2"))]
mod interleaved;

pub(crate) fn wrap<T: FftNum>(
    fallback: Arc<dyn Fft<T>>,
    isa: Isa,
) -> (Arc<dyn Fft<T>>, Option<Shape>) {
    #[cfg(all(target_arch = "x86_64", feature = "avx2"))]
    let selected = interleaved::select::<T>(fallback.len(), fallback.fft_direction(), isa);
    #[cfg(not(all(target_arch = "x86_64", feature = "avx2")))]
    let selected: Option<(Option<Entry<T>>, CopyEntry<T>, Shape)> = {
        let _ = isa;
        None
    };
    let Some((entry, copy, shape)) = selected else {
        return (fallback, None);
    };
    (
        Arc::new(Batch {
            n: fallback.len(),
            dir: fallback.fft_direction(),
            plan: make_plan(fallback.len(), fallback.fft_direction()),
            fallback,
            lanes: shape.lanes,
            entry,
            copy,
            stream_threshold: crate::isa::cache::last_level_bytes().saturating_mul(3) / 8,
        }),
        Some(shape),
    )
}

fn interleaved_table<T: FftNum>(n: usize, dir: FftDirection) -> Vec<T> {
    #[cfg(all(target_arch = "x86_64", feature = "avx2"))]
    if n <= 256 {
        return crate::isa::x86::interleaved::table(n, 4, |k, n| {
            let (c, s) = crate::twiddle::omega(k, n);
            (
                T::from_f64(c).unwrap(),
                T::from_f64(if dir == FftDirection::Inverse { -s } else { s }).unwrap(),
            )
        });
    }
    let _ = (n, dir);
    Vec::new()
}

fn make_plan<T: FftNum>(n: usize, dir: FftDirection) -> Plan<T> {
    Plan {
        leaf_twiddles: interleaved_table(n, dir),
    }
}

#[cfg(all(test, target_arch = "x86_64", feature = "avx2"))]
mod tests {
    use super::*;
    use crate::{FftPlanner, PlannerOptions};
    use fastfft_testkit::{
        error_vs_f64,
        metrics::{ToDd, fast_path_bound_eps},
        random_c64,
    };

    #[repr(C, align(64))]
    struct Storage<T> {
        data: [Complex<T>; 8224],
    }

    fn forced_streaming<T: FftNum + ToDd>() {
        let guard = Complex::new(T::from_f64(123.0).unwrap(), T::from_f64(-456.0).unwrap());
        for cap in [Isa::Avx2, Isa::Avx512Ymm, Isa::Avx512] {
            let mut planner =
                FftPlanner::<T>::with_options(PlannerOptions::default().with_isa_cap(cap));
            let isa = planner.isa();
            for n in [8, 16, 32, 64, 128, 256, 512, 1024] {
                for dir in [FftDirection::Forward, FftDirection::Inverse] {
                    let Some((entry, copy, shape)) = interleaved::select::<T>(n, dir, isa) else {
                        continue;
                    };
                    let fft = Batch {
                        n,
                        dir,
                        fallback: planner.plan_fft(n, dir),
                        plan: make_plan(n, dir),
                        lanes: shape.lanes,
                        entry,
                        copy,
                        stream_threshold: 0,
                    };
                    for count in [1, 3, 5, 8] {
                        let len = n * count;
                        let original: Vec<_> = random_c64(len, 78)
                            .iter()
                            .map(|c| {
                                Complex::new(T::from_f64(c.re).unwrap(), T::from_f64(c.im).unwrap())
                            })
                            .collect();
                        let mut want: Vec<_> = original
                            .iter()
                            .map(|c| Complex::new(c.re.to_f64().unwrap(), c.im.to_f64().unwrap()))
                            .collect();
                        let ref_fft = rustfft::FftPlanner::<f64>::new().plan_fft(
                            n,
                            if dir == FftDirection::Forward {
                                rustfft::FftDirection::Forward
                            } else {
                                rustfft::FftDirection::Inverse
                            },
                        );
                        ref_fft.process(&mut want);
                        for offset in [0, 1] {
                            for immutable in [false, true] {
                                let mut source = Box::new(Storage {
                                    data: [guard; 8224],
                                });
                                let mut target = Box::new(Storage {
                                    data: [guard; 8224],
                                });
                                let start = 64 / size_of::<Complex<T>>() + offset;
                                source.data[start..start + len].copy_from_slice(&original);
                                let need = if immutable {
                                    fft.get_immutable_scratch_len()
                                } else {
                                    fft.get_outofplace_scratch_len()
                                };
                                let mut scratch = vec![guard; need + 1026];
                                if immutable {
                                    fft.process_immutable_with_scratch(
                                        &source.data[start..start + len],
                                        &mut target.data[start..start + len],
                                        &mut scratch[1..need + 1025],
                                    );
                                } else {
                                    fft.process_outofplace_with_scratch(
                                        &mut source.data[start..start + len],
                                        &mut target.data[start..start + len],
                                        &mut scratch[1..need + 1025],
                                    );
                                }
                                let e = error_vs_f64(&target.data[start..start + len], &want)
                                    .in_eps(T::epsilon().to_f64().unwrap());
                                assert!(
                                    e.rel_l2 <= fast_path_bound_eps(n)
                                        && e.max_rel <= fast_path_bound_eps(n),
                                    "{isa} n={n} count={count} dir={dir} offset={offset} immutable={immutable}: {e:?}"
                                );
                                assert_eq!(target.data[start - 1], guard);
                                assert_eq!(target.data[start + len], guard);
                                assert_eq!(source.data[start - 1], guard);
                                assert_eq!(source.data[start + len], guard);
                                assert_eq!(scratch[0], guard);
                                assert!(scratch[need + 1..].iter().all(|x| *x == guard));
                                if immutable {
                                    assert_eq!(&source.data[start..start + len], &original);
                                }
                            }
                        }
                    }
                }
            }
        }
    }
    #[test]
    fn streaming_batches_f32_preserve_public_contracts() {
        forced_streaming::<f32>();
    }
    #[test]
    fn streaming_batches_f64_preserve_public_contracts() {
        forced_streaming::<f64>();
    }
}

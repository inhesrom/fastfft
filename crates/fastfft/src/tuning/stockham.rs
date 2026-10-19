//! Borrowed exact-plan diagnostics; buffers and the original FFT stay retained.

use super::SamplePlacement;
use crate::api::{Fft, FftDirection, FftNum};
use crate::engine::stockham::Mode;
use crate::engine::stockham::diagnostic::{Pointers, Schedule};
use crate::fft::FftImpl;
use crate::isa::{Isa, Precision};
use num_complex::Complex;

/// A diagnostic route, chosen once before its batched calls.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum StockhamRoute {
    Public,
    Engine,
    /// One exact Phase-A pass. Its predecessor state must be prepared outside timing.
    Pass(usize),
    /// First `k` Phase-A passes; `pass_count + 1` includes complete Phase B.
    Prefix(usize),
    PhaseB,
    PhaseBFullBlocks,
    PhaseBTail,
}

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub enum StockhamDiagnosticError {
    UnsupportedPlan,
    InvalidLength,
    InsufficientScratch,
    UnavailableShape,
    GatedMisalignment,
    InvalidRoute,
    NoTail,
}

/// Numerical addresses describe the retained views, not physical cache coloring.
#[derive(Clone, Debug)]
pub struct StockhamPassGeometry {
    pub radix: usize,
    pub m: usize,
    pub ns: usize,
    pub user_input: bool,
    pub swap_input: bool,
    pub input: usize,
    pub output: usize,
    pub aliases: bool,
    pub coefficients: usize,
    /// Zero for scalar leaves, which inline into production callers.
    pub entry: usize,
}

#[derive(Clone, Debug)]
pub struct StockhamGeometry {
    pub object: usize,
    pub plan: usize,
    pub n: usize,
    pub m: usize,
    pub lanes: usize,
    pub isa: Isa,
    pub inverse: bool,
    pub placement: SamplePlacement,
    pub input: usize,
    pub output: usize,
    pub scratch: usize,
    pub reserved_scratch: usize,
    pub passes: Vec<StockhamPassGeometry>,
    pub phase_b_input: usize,
    pub phase_b_coefficients: usize,
    pub phase_b_user_input: bool,
    pub phase_b_full_blocks: usize,
    pub phase_b_tail_vectors: usize,
    pub phase_b_full_entry: usize,
    /// Zero when absent, or when scalar Phase B is inlined.
    pub phase_b_tail_entry: usize,
    pub public_batch_entry: usize,
    pub engine_batch_entry: usize,
}

/// Exact production leaves using one retained FFT and exclusively borrowed views.
///
/// Create from `retained_arc.as_ref()`; no plan or coefficient owner is cloned.
/// Construction and `geometry` allocate outside measurement. `run_calls` does
/// not allocate, log, reset data, or read a timer. Restrict this diagnostic to
/// one transform. Misalignment that activates scratch-only execution is rejected.
///
/// Isolated passes change cache and producer/consumer state. Their times are not
/// additive. Compare complete Prefix with Engine to measure schedule disturbance;
/// pair Public and Engine on the same instance to investigate wrapper cost.
/// Scalar and compiled, host-supported x86 shapes are supported. NEON plans
/// return [`StockhamDiagnosticError::UnavailableShape`]; production NEON
/// execution is unaffected.
/// If a wrapper exposes an inner FFT through the diagnostic downcast hook,
/// all routes (including Public) execute that inner FFT and use its requirements.
pub struct StockhamDiagnostic<'a, T: FftNum> {
    fft: &'a dyn Fft<T>,
    schedule: Schedule<'a, T>,
    input: &'a mut [Complex<T>],
    output: &'a mut [Complex<T>],
    scratch: &'a mut [Complex<T>],
    placement: SamplePlacement,
}

impl<T: FftNum> core::fmt::Debug for StockhamDiagnostic<'_, T> {
    fn fmt(&self, f: &mut core::fmt::Formatter<'_>) -> core::fmt::Result {
        f.debug_struct("StockhamDiagnostic")
            .field("n", &self.schedule.plan.n)
            .field("shape", &self.schedule.shape)
            .field("placement", &self.placement)
            .field("inverse", &self.schedule.inverse)
            .finish_non_exhaustive()
    }
}

impl<'a, T: FftNum> StockhamDiagnostic<'a, T> {
    pub fn new(
        fft: &'a dyn Fft<T>,
        input: &'a mut [Complex<T>],
        output: &'a mut [Complex<T>],
        scratch: &'a mut [Complex<T>],
        placement: SamplePlacement,
    ) -> Result<Self, StockhamDiagnosticError> {
        use StockhamDiagnosticError as E;
        let concrete = fft
            .diagnostic_as_any()
            .and_then(|p| p.downcast_ref::<FftImpl<T>>())
            .ok_or(E::UnsupportedPlan)?;
        // The safe downcast hook may expose a wrapper's inner FFT. Never trust
        // the wrapper's scratch lengths or direction for unsafe retained leaves,
        // and keep Public on the same concrete instance as Engine and passes.
        let fft: &'a dyn Fft<T> = concrete;
        let (shape, plan) = concrete
            .diagnostic_stockham_parts()
            .ok_or(E::UnsupportedPlan)?;
        if input.len() != plan.n
            || (placement != SamplePlacement::InPlace && output.len() != plan.n)
        {
            return Err(E::InvalidLength);
        }
        let (mode, need) = match placement {
            SamplePlacement::InPlace => (Mode::InPlace, fft.get_inplace_scratch_len()),
            SamplePlacement::OutOfPlace => (Mode::OutOfPlace, fft.get_outofplace_scratch_len()),
            SamplePlacement::Immutable => (Mode::Immutable, fft.get_immutable_scratch_len()),
        };
        if scratch.len() < need {
            return Err(E::InsufficientScratch);
        }
        // Match the public route's truncation before alignment exactly.
        let scratch = &mut scratch[..need];
        let pointers = pointers(input, output, scratch, placement);
        let schedule = Schedule::new(
            plan,
            shape,
            mode,
            fft.fft_direction() == FftDirection::Inverse,
            pointers,
        )?;
        Ok(Self {
            fft,
            schedule,
            input,
            output,
            scratch,
            placement,
        })
    }

    /// Capture before or after timing, never from a measured leaf.
    pub fn geometry(&mut self) -> StockhamGeometry {
        let s = &self.schedule;
        let p = s.placed(pointers(
            self.input,
            self.output,
            self.scratch,
            self.placement,
        ));
        let entries = s.entries();
        StockhamGeometry {
            object: self.fft as *const dyn Fft<T> as *const () as usize,
            plan: s.plan as *const _ as usize,
            n: s.plan.n,
            m: s.plan.m,
            lanes: s.plan.l,
            isa: s.shape.isa,
            inverse: s.inverse,
            placement: self.placement,
            input: p.input as usize,
            output: p.output as usize,
            scratch: if self.scratch.is_empty() {
                0
            } else {
                p.scratch as usize
            },
            reserved_scratch: self.scratch.len(),
            passes: s
                .passes
                .iter()
                .enumerate()
                .map(|(index, pass)| StockhamPassGeometry {
                    radix: pass.radix,
                    m: s.plan.m,
                    ns: pass.ns,
                    user_input: pass.user,
                    swap_input: pass.swap,
                    input: p.get(pass.input) as usize,
                    output: p.get(pass.output) as usize,
                    aliases: p.get(pass.input) == p.get(pass.output),
                    coefficients: pass.twiddles as usize,
                    entry: entries.passes[index],
                })
                .collect(),
            phase_b_input: p.get(s.phase_b_input) as usize,
            phase_b_coefficients: s.phase_b_coefficients(),
            phase_b_user_input: s.passes.is_empty(),
            phase_b_full_blocks: s.plan.m / s.plan.l,
            phase_b_tail_vectors: s.plan.m % s.plan.l,
            phase_b_full_entry: entries.phase_b_full,
            phase_b_tail_entry: entries.phase_b_tail,
            public_batch_entry: public_calls::<T> as *const () as usize,
            engine_batch_entry: engine_calls::<T> as *const () as usize,
        }
    }

    /// Restore deterministic caller data and zero workspace outside timing.
    pub fn reset(&mut self, data: &[Complex<T>]) -> Result<(), StockhamDiagnosticError> {
        if data.len() != self.input.len() {
            return Err(StockhamDiagnosticError::InvalidLength);
        }
        self.input.copy_from_slice(data);
        self.output.fill(Complex::default());
        self.scratch.fill(Complex::default());
        Ok(())
    }

    pub fn output(&self) -> &[Complex<T>] {
        if self.placement == SamplePlacement::InPlace {
            self.input
        } else {
            self.output
        }
    }

    pub fn input(&self) -> &[Complex<T>] {
        self.input
    }

    /// Batched calls with timing supplied by the arena. For pass/prefix timing
    /// use zero data to avoid unbounded growth when repeatedly applying a leaf.
    /// Validate nonzero complete transforms independently before measuring.
    pub fn run_calls(
        &mut self,
        route: StockhamRoute,
        calls: usize,
    ) -> Result<(), StockhamDiagnosticError> {
        self.schedule.validate_route(route)?;
        match route {
            StockhamRoute::Public => public_calls(
                self.fft,
                self.input,
                self.output,
                self.scratch,
                self.placement,
                calls,
            ),
            StockhamRoute::Engine => {
                let p = pointers(self.input, self.output, self.scratch, self.placement);
                // SAFETY: construction retains and validates all original spans.
                unsafe {
                    engine_calls(&self.schedule, p, calls);
                }
            }
            _ => {
                let p = pointers(self.input, self.output, self.scratch, self.placement);
                // SAFETY: freshly derived pointers cover validated buffers; the
                // immutable plan borrow prevents coefficient interventions.
                unsafe {
                    self.schedule.run_calls(p, route, calls);
                }
            }
        }
        Ok(())
    }
}

fn pointers<T: FftNum>(
    input: &mut [Complex<T>],
    output: &mut [Complex<T>],
    scratch: &mut [Complex<T>],
    placement: SamplePlacement,
) -> Pointers {
    let input = input.as_mut_ptr().cast();
    let output = if placement == SamplePlacement::InPlace {
        input
    } else {
        output.as_mut_ptr().cast()
    };
    let scratch = crate::scratch::aligned(scratch).as_mut_ptr().cast();
    Pointers {
        input,
        output,
        scratch,
    }
}

// Separate non-inlined, allocation-free batch wrappers make emitted call paths
// inspectable. Differences still include wrapper/caller context, not solely checks.
#[inline(never)]
fn public_calls<T: FftNum>(
    fft: &dyn Fft<T>,
    input: &mut [Complex<T>],
    output: &mut [Complex<T>],
    scratch: &mut [Complex<T>],
    placement: SamplePlacement,
    calls: usize,
) {
    match placement {
        SamplePlacement::InPlace => {
            for _ in 0..calls {
                fft.process_with_scratch(input, scratch);
            }
        }
        SamplePlacement::OutOfPlace => {
            for _ in 0..calls {
                fft.process_outofplace_with_scratch(input, output, scratch);
            }
        }
        SamplePlacement::Immutable => {
            for _ in 0..calls {
                fft.process_immutable_with_scratch(input, output, scratch);
            }
        }
    }
}

#[inline(never)]
unsafe fn engine_calls<T: FftNum>(schedule: &Schedule<'_, T>, p: Pointers, calls: usize) {
    // SAFETY: sealed FftNum identifies the scalar type, and the constructor
    // validated the retained production shape and complete scratch contract.
    unsafe {
        match T::precision() {
            Precision::F32 => {
                let plan = &*(schedule.plan as *const _
                    as *const crate::engine::stockham::StockhamPlan<f32>);
                for _ in 0..calls {
                    crate::engine::stockham_f32(
                        schedule.shape,
                        plan,
                        p.input.cast(),
                        p.output.cast(),
                        p.scratch.cast(),
                        schedule.mode,
                        schedule.inverse,
                    );
                }
            }
            Precision::F64 => {
                let plan = &*(schedule.plan as *const _
                    as *const crate::engine::stockham::StockhamPlan<f64>);
                for _ in 0..calls {
                    crate::engine::stockham_f64(
                        schedule.shape,
                        plan,
                        p.input.cast(),
                        p.output.cast(),
                        p.scratch.cast(),
                        schedule.mode,
                        schedule.inverse,
                    );
                }
            }
        }
    }
}

#[cfg(test)]
mod tests;

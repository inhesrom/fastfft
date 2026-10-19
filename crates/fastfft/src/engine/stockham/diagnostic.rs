//! Exact retained-plan schedules. No production execution path calls this module.

use super::{Mode, StockhamPlan, StockhamVector, run_pass, run_phase_b};
use crate::api::FftNum;
use crate::engine::Shape;
use crate::isa::{Isa, Precision, scalar};
use crate::tuning::{StockhamDiagnosticError as Error, StockhamRoute};

#[derive(Clone, Copy, Debug)]
pub(crate) enum Buffer {
    Input,
    Output,
    Scratch,
}

#[derive(Clone, Copy)]
pub(crate) struct Pointers {
    pub input: *mut u8,
    pub output: *mut u8,
    pub scratch: *mut u8,
}

impl Pointers {
    pub(crate) fn get(self, buffer: Buffer) -> *mut u8 {
        match buffer {
            Buffer::Input => self.input,
            Buffer::Output => self.output,
            Buffer::Scratch => self.scratch,
        }
    }
}

pub(crate) struct Pass {
    pub radix: usize,
    pub ns: usize,
    pub user: bool,
    pub swap: bool,
    pub input: Buffer,
    pub output: Buffer,
    pub twiddles: *const u8,
}

pub(crate) struct Schedule<'a, T: FftNum> {
    pub plan: &'a StockhamPlan<T>,
    pub shape: Shape,
    pub mode: Mode,
    pub inverse: bool,
    pub passes: Vec<Pass>,
    pub phase_b_input: Buffer,
}

impl<'a, T: FftNum> Schedule<'a, T> {
    /// Caller validated lengths and derived pointers from live disjoint slices.
    pub(crate) fn new(
        plan: &'a StockhamPlan<T>,
        shape: Shape,
        mode: Mode,
        inverse: bool,
        pointers: Pointers,
    ) -> Result<Self, Error> {
        let valid_shape = match (T::precision(), shape.isa, shape.lanes) {
            (_, Isa::Scalar, 1) => true,
            #[cfg(all(target_arch = "x86_64", feature = "sse2"))]
            (Precision::F32, Isa::Sse2, 4) | (Precision::F64, Isa::Sse2, 2) => true,
            #[cfg(all(target_arch = "x86_64", feature = "avx2"))]
            (Precision::F32, Isa::Avx2, 8) | (Precision::F64, Isa::Avx2, 4) => true,
            #[cfg(all(target_arch = "x86_64", feature = "avx512"))]
            (Precision::F32, Isa::Avx512Ymm, 8)
            | (Precision::F64, Isa::Avx512Ymm, 4)
            | (Precision::F32, Isa::Avx512, 16)
            | (Precision::F64, Isa::Avx512, 8) => true,
            _ => false,
        };
        if !crate::isa::available(shape.isa) || !valid_shape || shape.lanes != plan.l {
            return Err(Error::UnavailableShape);
        }
        let vector_bytes = plan.l * size_of::<T>();
        if plan.scratch_only_route(
            mode,
            pointers.input as usize,
            pointers.output as usize,
            vector_bytes,
        ) {
            return Err(Error::GatedMisalignment);
        }
        let count = plan.tables.passes().len();
        let (mut current, mut next) = match mode {
            Mode::InPlace => (Buffer::Input, Buffer::Scratch),
            Mode::OutOfPlace => (Buffer::Input, Buffer::Output),
            Mode::Immutable => (
                Buffer::Input,
                if count % 2 == 1 {
                    Buffer::Scratch
                } else {
                    Buffer::Output
                },
            ),
        };
        let last_in_place = match mode {
            Mode::InPlace => count.is_multiple_of(2),
            Mode::OutOfPlace => count % 2 == 1,
            Mode::Immutable => false,
        };
        let mut passes = Vec::with_capacity(count);
        let mut ns = 1;
        for (index, descriptor) in plan.tables.passes().iter().enumerate() {
            let in_place = index + 1 == count && last_in_place;
            passes.push(Pass {
                radix: descriptor.radix,
                ns,
                user: index == 0,
                swap: index == 0 && inverse,
                input: current,
                output: if in_place { current } else { next },
                twiddles: plan.pass_tw(index).as_ptr().cast(),
            });
            if !in_place {
                let previous = current;
                current = next;
                next = if index == 0 && mode == Mode::Immutable {
                    match current {
                        Buffer::Scratch => Buffer::Output,
                        _ => Buffer::Scratch,
                    }
                } else {
                    previous
                };
            }
            ns *= descriptor.radix;
        }
        Ok(Self {
            plan,
            shape,
            mode,
            inverse,
            passes,
            phase_b_input: current,
        })
    }

    /// The production legacy schedule's buffers: in place, the scratch base
    /// moves inside its reserved page slack away from the caller's base.
    pub(crate) fn placed(&self, pointers: Pointers) -> Pointers {
        let offset = self.plan.legacy_scratch_offset(
            self.mode,
            pointers.scratch as usize,
            pointers.input as usize,
        );
        Pointers {
            scratch: pointers.scratch.wrapping_add(offset),
            ..pointers
        }
    }

    pub(crate) fn phase_b_coefficients(&self) -> usize {
        self.plan.vtw().as_ptr() as usize
    }

    pub(crate) fn validate_route(&self, route: StockhamRoute) -> Result<(), Error> {
        match route {
            StockhamRoute::Pass(index) if index >= self.passes.len() => Err(Error::InvalidRoute),
            StockhamRoute::Prefix(count) if count > self.passes.len() + 1 => {
                Err(Error::InvalidRoute)
            }
            StockhamRoute::PhaseBTail if self.plan.m.is_multiple_of(self.plan.l) => {
                Err(Error::NoTail)
            }
            _ => Ok(()),
        }
    }

    /// The safe tuning owner retains the plan and exclusive buffer borrows,
    /// validates the route, and supplies freshly derived pointers each batch.
    pub(crate) unsafe fn run_calls(&self, pointers: Pointers, route: StockhamRoute, calls: usize) {
        // SAFETY: the owner checks the complete public scratch contract and n
        // values in each data buffer; shape validation checked the CPU tier.
        unsafe {
            match T::precision() {
                Precision::F32 => dispatch_f32(self, pointers, route, calls),
                Precision::F64 => dispatch_f64(self, pointers, route, calls),
            }
        }
    }
}

#[inline(always)]
unsafe fn run<V: StockhamVector, T: FftNum>(
    schedule: &Schedule<'_, T>,
    pointers: Pointers,
    route: StockhamRoute,
    calls: usize,
) {
    // SAFETY: target-feature dispatch establishes V's features and scalar type;
    // the retained schedule describes exactly the production legacy buffers,
    // including the placed in-place scratch inside the reserved page slack.
    unsafe {
        let pointers = schedule.placed(pointers);
        let pass = |index: usize, one: V| {
            let p = &schedule.passes[index];
            run_pass::<V>(
                p.radix,
                p.user,
                p.swap,
                pointers.get(p.input).cast(),
                pointers.get(p.output).cast(),
                schedule.plan.m,
                p.ns,
                p.twiddles.cast(),
                one,
            );
        };
        let phase_b = |one: V| {
            run_phase_b::<V>(
                schedule.passes.is_empty(),
                schedule.inverse,
                pointers.get(schedule.phase_b_input).cast(),
                pointers.output.cast(),
                schedule.plan.m,
                schedule.plan.vtw().as_ptr().cast(),
                one,
            )
        };
        let one = || V::splat_f64(core::ptr::read_volatile(&1.0));
        match route {
            StockhamRoute::Pass(index) => {
                for _ in 0..calls {
                    pass(index, one());
                }
            }
            StockhamRoute::Prefix(count) => {
                for _ in 0..calls {
                    let one = one();
                    for index in 0..count.min(schedule.passes.len()) {
                        pass(index, one);
                    }
                    if count > schedule.passes.len() {
                        phase_b(one);
                    }
                }
            }
            StockhamRoute::PhaseB => {
                for _ in 0..calls {
                    phase_b(one());
                }
            }
            StockhamRoute::PhaseBFullBlocks | StockhamRoute::PhaseBTail => {
                for _ in 0..calls {
                    finish_part::<V, T>(
                        schedule,
                        pointers,
                        route == StockhamRoute::PhaseBTail,
                        one(),
                    );
                }
            }
            _ => unreachable!("public and whole-engine routes use their actual entry points"),
        }
    }
}

#[inline(always)]
unsafe fn finish_part<V: StockhamVector, T: FftNum>(
    schedule: &Schedule<'_, T>,
    pointers: Pointers,
    tail: bool,
    one: V,
) {
    macro_rules! go {
        ($l:literal, $partial:literal) => {{
            let src = pointers.get(schedule.phase_b_input).cast();
            let dst = pointers.output.cast();
            let m = schedule.plan.m;
            let tw = schedule.plan.vtw().as_ptr().cast();
            // SAFETY: the schedule owns valid spans; a tail route is accepted
            // only for a nonempty remainder. These are the production leaves.
            unsafe {
                match (schedule.passes.is_empty(), schedule.inverse) {
                    (true, true) => {
                        V::finish::<$l, true, true, true, $partial>(src, dst, m, tw, one)
                    }
                    (true, false) => {
                        V::finish::<$l, true, false, false, $partial>(src, dst, m, tw, one)
                    }
                    (false, true) => {
                        V::finish::<$l, false, false, true, $partial>(src, dst, m, tw, one)
                    }
                    (false, false) => {
                        V::finish::<$l, false, false, false, $partial>(src, dst, m, tw, one)
                    }
                }
            }
        }};
    }
    match (V::LANES, tail) {
        (1, false) => {
            // Scalar Phase B is the complete copy; it has no tail.
            // SAFETY: the same complete-buffer contract as run_phase_b.
            unsafe {
                run_phase_b::<V>(
                    schedule.passes.is_empty(),
                    schedule.inverse,
                    pointers.get(schedule.phase_b_input).cast(),
                    pointers.output.cast(),
                    schedule.plan.m,
                    schedule.plan.vtw().as_ptr().cast(),
                    one,
                )
            }
        }
        (2, false) => go!(2, false),
        (2, true) => go!(2, true),
        (4, false) => go!(4, false),
        (4, true) => go!(4, true),
        (8, false) => go!(8, false),
        (8, true) => go!(8, true),
        (16, false) => go!(16, false),
        (16, true) => go!(16, true),
        _ => unreachable!("validated vector shape and tail"),
    }
}

#[allow(unused_macros)]
macro_rules! entry {
    ($name:ident, $v:ty, $features:literal) => {
        #[target_feature(enable = $features)]
        pub(super) unsafe fn $name<T: FftNum>(
            s: &Schedule<'_, T>,
            p: Pointers,
            r: StockhamRoute,
            c: usize,
        ) {
            // SAFETY: dispatch validates the tier and matching scalar precision.
            unsafe { run::<$v, T>(s, p, r, c) }
        }
    };
}

#[cfg(all(target_arch = "x86_64", feature = "sse2"))]
mod sse2 {
    use super::*;
    entry!(f32_, crate::isa::x86::F32x4, "sse2");
    entry!(f64_, crate::isa::x86::F64x2, "sse2");
}
#[cfg(all(target_arch = "x86_64", feature = "avx2"))]
mod avx2 {
    use super::*;
    entry!(f32_, crate::isa::x86::F32x8, "avx2,fma");
    entry!(f64_, crate::isa::x86::F64x4, "avx2,fma");
}
#[cfg(all(target_arch = "x86_64", feature = "avx512"))]
mod avx512 {
    use super::*;
    entry!(
        ymm32,
        crate::isa::x86::F32x8v,
        "avx512f,avx512vl,avx512dq,avx512bw,avx512cd,avx2,fma"
    );
    entry!(
        ymm64,
        crate::isa::x86::F64x4v,
        "avx512f,avx512vl,avx512dq,avx512bw,avx512cd,avx2,fma"
    );
    entry!(
        zmm32,
        crate::isa::x86::F32x16,
        "avx512f,avx512vl,avx512dq,avx512bw,avx512cd,avx2,fma"
    );
    entry!(
        zmm64,
        crate::isa::x86::F64x8,
        "avx512f,avx512vl,avx512dq,avx512bw,avx512cd,avx2,fma"
    );
}

unsafe fn dispatch_f32<T: FftNum>(s: &Schedule<'_, T>, p: Pointers, r: StockhamRoute, c: usize) {
    // SAFETY: called only for sealed f32; the constructor validates this shape.
    unsafe {
        match (s.shape.isa, s.shape.lanes) {
            #[cfg(all(target_arch = "x86_64", feature = "avx512"))]
            (Isa::Avx512, 16) => avx512::zmm32(s, p, r, c),
            #[cfg(all(target_arch = "x86_64", feature = "avx512"))]
            (Isa::Avx512Ymm, 8) => avx512::ymm32(s, p, r, c),
            #[cfg(all(target_arch = "x86_64", feature = "avx2"))]
            (Isa::Avx2, 8) => avx2::f32_(s, p, r, c),
            #[cfg(all(target_arch = "x86_64", feature = "sse2"))]
            (Isa::Sse2, 4) => sse2::f32_(s, p, r, c),
            (Isa::Scalar, 1) => run::<scalar::S32, T>(s, p, r, c),
            _ => unreachable!("validated shape"),
        }
    }
}
unsafe fn dispatch_f64<T: FftNum>(s: &Schedule<'_, T>, p: Pointers, r: StockhamRoute, c: usize) {
    // SAFETY: called only for sealed f64; the constructor validates this shape.
    unsafe {
        match (s.shape.isa, s.shape.lanes) {
            #[cfg(all(target_arch = "x86_64", feature = "avx512"))]
            (Isa::Avx512, 8) => avx512::zmm64(s, p, r, c),
            #[cfg(all(target_arch = "x86_64", feature = "avx512"))]
            (Isa::Avx512Ymm, 4) => avx512::ymm64(s, p, r, c),
            #[cfg(all(target_arch = "x86_64", feature = "avx2"))]
            (Isa::Avx2, 4) => avx2::f64_(s, p, r, c),
            #[cfg(all(target_arch = "x86_64", feature = "sse2"))]
            (Isa::Sse2, 2) => sse2::f64_(s, p, r, c),
            (Isa::Scalar, 1) => run::<scalar::S64, T>(s, p, r, c),
            _ => unreachable!("validated shape"),
        }
    }
}

pub(crate) struct Entries {
    pub passes: Vec<usize>,
    pub phase_b_full: usize,
    pub phase_b_tail: usize,
}

impl<T: FftNum> Schedule<'_, T> {
    pub(crate) fn entries(&self) -> Entries {
        match (T::precision(), self.shape.isa, self.shape.lanes) {
            #[cfg(all(target_arch = "x86_64", feature = "avx512"))]
            (Precision::F32, Isa::Avx512, 16) => entries::<crate::isa::x86::F32x16, T>(self),
            #[cfg(all(target_arch = "x86_64", feature = "avx512"))]
            (Precision::F32, Isa::Avx512Ymm, 8) => entries::<crate::isa::x86::F32x8v, T>(self),
            #[cfg(all(target_arch = "x86_64", feature = "avx512"))]
            (Precision::F64, Isa::Avx512, 8) => entries::<crate::isa::x86::F64x8, T>(self),
            #[cfg(all(target_arch = "x86_64", feature = "avx512"))]
            (Precision::F64, Isa::Avx512Ymm, 4) => entries::<crate::isa::x86::F64x4v, T>(self),
            #[cfg(all(target_arch = "x86_64", feature = "avx2"))]
            (Precision::F32, Isa::Avx2, 8) => entries::<crate::isa::x86::F32x8, T>(self),
            #[cfg(all(target_arch = "x86_64", feature = "avx2"))]
            (Precision::F64, Isa::Avx2, 4) => entries::<crate::isa::x86::F64x4, T>(self),
            #[cfg(all(target_arch = "x86_64", feature = "sse2"))]
            (Precision::F32, Isa::Sse2, 4) => entries::<crate::isa::x86::F32x4, T>(self),
            #[cfg(all(target_arch = "x86_64", feature = "sse2"))]
            (Precision::F64, Isa::Sse2, 2) => entries::<crate::isa::x86::F64x2, T>(self),
            // Scalar leaves inline into their caller; do not manufacture an
            // outlined address and claim production called it.
            (_, Isa::Scalar, 1) => Entries {
                passes: vec![0; self.passes.len()],
                phase_b_full: 0,
                phase_b_tail: 0,
            },
            _ => unreachable!("validated shape"),
        }
    }
}

#[cfg(all(
    target_arch = "x86_64",
    any(feature = "sse2", feature = "avx2", feature = "avx512")
))]
fn entries<V: StockhamVector, T: FftNum>(schedule: &Schedule<'_, T>) -> Entries {
    macro_rules! pass {
        ($r:literal, $p:ident) => {
            match ($p.user, $p.swap) {
                (true, true) => V::pass::<$r, true, true> as *const () as usize,
                (true, false) => V::pass::<$r, true, false> as *const () as usize,
                _ => V::pass::<$r, false, false> as *const () as usize,
            }
        };
    }
    let passes = schedule
        .passes
        .iter()
        .map(|p| match p.radix {
            2 => pass!(2, p),
            3 => pass!(3, p),
            4 => pass!(4, p),
            5 => pass!(5, p),
            6 => pass!(6, p),
            7 => pass!(7, p),
            8 => pass!(8, p),
            9 => pass!(9, p),
            10 => pass!(10, p),
            11 => pass!(11, p),
            12 => pass!(12, p),
            13 => pass!(13, p),
            14 => pass!(14, p),
            15 => pass!(15, p),
            16 => pass!(16, p),
            _ => unreachable!("production radix"),
        })
        .collect();
    macro_rules! finish {
        ($l:literal,$partial:literal) => {
            match (schedule.passes.is_empty(), schedule.inverse) {
                (true, true) => V::finish::<$l, true, true, true, $partial> as *const () as usize,
                (true, false) => {
                    V::finish::<$l, true, false, false, $partial> as *const () as usize
                }
                (false, true) => {
                    V::finish::<$l, false, false, true, $partial> as *const () as usize
                }
                (false, false) => {
                    V::finish::<$l, false, false, false, $partial> as *const () as usize
                }
            }
        };
    }
    let phase_b_full = match V::LANES {
        2 => finish!(2, false),
        4 => finish!(4, false),
        8 => finish!(8, false),
        16 => finish!(16, false),
        _ => unreachable!("vector lane count"),
    };
    let phase_b_tail = if schedule.plan.m.is_multiple_of(V::LANES) {
        0
    } else {
        match V::LANES {
            2 => finish!(2, true),
            4 => finish!(4, true),
            8 => finish!(8, true),
            16 => finish!(16, true),
            _ => unreachable!("vector lane count"),
        }
    };
    Entries {
        passes,
        phase_b_full,
        phase_b_tail,
    }
}

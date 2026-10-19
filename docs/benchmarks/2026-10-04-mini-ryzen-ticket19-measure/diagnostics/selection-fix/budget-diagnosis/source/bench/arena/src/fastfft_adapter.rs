//! fastfft rows: `fastfft` (Estimate planner, detected ISA), `fastfft/<isa>`
//! (ISA capped via `PlannerOptions::isa_cap`) and `fastfft/measure`.

use crate::adapters::{ArenaFloat, Runner};
use crate::buffers::Buffers;
use crate::spec::{CellSpec, Direction, Placement};
use fastfft::{Fft, FftDirection, FftPlanner, Isa, PlanMode, PlannerOptions};
use std::sync::Arc;
use std::time::Duration;

struct FastRunner<T: ArenaFloat + fastfft::FftNum> {
    fft: Arc<dyn Fft<T>>,
    placement: Placement,
    describe: String,
}

impl<T: ArenaFloat + fastfft::FftNum> Runner<T> for FastRunner<T> {
    fn placement(&self) -> Placement {
        self.placement
    }
    fn run(&mut self, bufs: &mut Buffers<T>) {
        let (input, output, scratch) = bufs.io_scratch_mut();
        match self.placement {
            Placement::InPlace => self.fft.process_with_scratch(input, scratch),
            Placement::OutOfPlace => self
                .fft
                .process_outofplace_with_scratch(input, output, scratch),
            Placement::Immutable => self
                .fft
                .process_immutable_with_scratch(input, output, scratch),
        }
    }
    fn describe(&self) -> Option<String> {
        Some(self.describe.clone())
    }
    #[cfg(feature = "measure-diagnostics")]
    fn diagnostic_plan(&self) -> Option<Arc<dyn Fft<T>>> {
        Some(Arc::clone(&self.fft))
    }
}

#[cfg(feature = "measure-diagnostics")]
pub(crate) fn retained_runner<T: ArenaFloat + fastfft::FftNum>(
    fft: Arc<dyn Fft<T>>,
    placement: Placement,
) -> Box<dyn Runner<T>> {
    Box::new(FastRunner {
        fft,
        placement,
        describe: String::new(),
    })
}

pub fn options_for(lib: &str) -> Result<PlannerOptions, String> {
    let rest = lib.strip_prefix("fastfft").unwrap_or("");
    let o = PlannerOptions::default();
    Ok(match rest {
        "" => o,
        "/measure" => o.with_mode(PlanMode::Measure {
            time_limit: Duration::from_secs(1),
        }),
        r => {
            let name = r.trim_start_matches('/');
            let isa = Isa::from_name(name).ok_or_else(|| format!("unknown fastfft row `{lib}`"))?;
            if isa > fastfft::detected_isa() {
                return Err(format!("{isa} not available on this CPU"));
            }
            o.with_isa_cap(isa)
        }
    })
}

/// Called by the parent driver, so workspace sizing cannot perturb the
/// allocator or root caches used by a timing child's actual planning.
pub fn estimate_workspace<T: fastfft::FftNum>(lib: &str, cell: &CellSpec) -> Result<usize, String> {
    let mut planner =
        FftPlanner::<T>::with_options(options_for(lib)?.with_mode(PlanMode::Estimate));
    let dir = match cell.direction {
        Direction::Forward => FftDirection::Forward,
        Direction::Inverse => FftDirection::Inverse,
    };
    let fft = planner.plan_fft(cell.n, dir);
    Ok(match cell.placement {
        Placement::InPlace => fft.get_inplace_scratch_len(),
        Placement::OutOfPlace => fft.get_outofplace_scratch_len(),
        Placement::Immutable => fft.get_immutable_scratch_len(),
    })
}

pub fn runner<T: ArenaFloat + fastfft::FftNum>(
    lib: &str,
    cell: &CellSpec,
    bufs: &mut Buffers<T>,
) -> Result<Box<dyn Runner<T>>, String> {
    let mut planner = FftPlanner::<T>::with_options(options_for(lib)?);
    let dir = match cell.direction {
        Direction::Forward => FftDirection::Forward,
        Direction::Inverse => FftDirection::Inverse,
    };
    let fft = planner.plan_fft(cell.n, dir);
    let len = match cell.placement {
        Placement::InPlace => fft.get_inplace_scratch_len(),
        Placement::OutOfPlace => fft.get_outofplace_scratch_len(),
        Placement::Immutable => fft.get_immutable_scratch_len(),
    };
    let describe = planner.describe_plan(cell.n, dir);
    bufs.reserve_scratch(len);
    Ok(Box::new(FastRunner {
        fft,
        placement: cell.placement,
        describe,
    }))
}

//! Minimal FFTW 3.3 bindings (only with the `fftw` feature). FFTW is GPL,
//! so it stays inside this unpublished crate. Built by `cargo xtask fftw-build`.

use crate::adapters::Runner;
use crate::spec::CellSpec;

#[cfg(not(feature = "fftw"))]
pub fn runner_f32(
    _cell: &CellSpec,
    _bufs: &mut crate::buffers::Buffers<f32>,
) -> Result<Box<dyn Runner<f32>>, String> {
    Err("arena built without the `fftw` feature (run `cargo xtask fftw-build`)".into())
}

#[cfg(not(feature = "fftw"))]
pub fn runner_f64(
    _cell: &CellSpec,
    _bufs: &mut crate::buffers::Buffers<f64>,
) -> Result<Box<dyn Runner<f64>>, String> {
    Err("arena built without the `fftw` feature (run `cargo xtask fftw-build`)".into())
}

#[cfg(not(feature = "fftw"))]
pub fn version() -> Option<String> {
    None
}

#[cfg(not(feature = "fftw"))]
pub fn save_wisdom() {}

#[cfg(feature = "fftw")]
pub use imp::*;

#[cfg(feature = "fftw")]
mod imp {
    use super::*;
    use crate::buffers::Buffers;
    use crate::spec::{Direction, Placement};
    use std::ffi::{CStr, CString, c_char, c_int, c_uint};
    use std::sync::Once;

    #[repr(C)]
    pub struct PlanS {
        _private: [u8; 0],
    }
    type Plan = *mut PlanS;

    const FFTW_FORWARD: c_int = -1;
    const FFTW_BACKWARD: c_int = 1;
    const FFTW_MEASURE: c_uint = 0;
    const FFTW_PRESERVE_INPUT: c_uint = 1 << 4;

    macro_rules! decl {
        ($t:ty, $many:ident, $exec:ident, $destroy:ident, $imp:ident, $exp:ident, $ver:ident) => {
            unsafe extern "C" {
                fn $many(
                    rank: c_int,
                    n: *const c_int,
                    howmany: c_int,
                    input: *mut [$t; 2],
                    inembed: *const c_int,
                    istride: c_int,
                    idist: c_int,
                    output: *mut [$t; 2],
                    onembed: *const c_int,
                    ostride: c_int,
                    odist: c_int,
                    sign: c_int,
                    flags: c_uint,
                ) -> Plan;
                fn $exec(p: Plan);
                fn $destroy(p: Plan);
                fn $imp(filename: *const c_char) -> c_int;
                fn $exp(filename: *const c_char) -> c_int;
                #[allow(dead_code)]
                static $ver: [c_char; 64];
            }
        };
    }
    decl!(
        f64,
        fftw_plan_many_dft,
        fftw_execute,
        fftw_destroy_plan,
        fftw_import_wisdom_from_filename,
        fftw_export_wisdom_to_filename,
        fftw_version
    );
    decl!(
        f32,
        fftwf_plan_many_dft,
        fftwf_execute,
        fftwf_destroy_plan,
        fftwf_import_wisdom_from_filename,
        fftwf_export_wisdom_to_filename,
        fftwf_version
    );

    fn wisdom_path(prec: &str) -> CString {
        let dir = std::env::var("FASTFFT_ARENA_WISDOM_DIR")
            .unwrap_or_else(|_| concat!(env!("CARGO_MANIFEST_DIR"), "/wisdom").to_string());
        let _ = std::fs::create_dir_all(&dir);
        let host = crate::env::hostname();
        CString::new(format!("{dir}/fftw-{host}-{prec}.wisdom")).expect("path")
    }

    static LOAD: Once = Once::new();

    fn load_wisdom() {
        LOAD.call_once(|| {
            // SAFETY: valid NUL-terminated paths; FFTW ignores missing files (returns 0).
            unsafe {
                fftw_import_wisdom_from_filename(wisdom_path("f64").as_ptr());
                fftwf_import_wisdom_from_filename(wisdom_path("f32").as_ptr());
            }
        });
    }

    /// Exports accumulated wisdom (called at the end of each child process).
    pub fn save_wisdom() {
        if !LOAD.is_completed() {
            return;
        }
        // SAFETY: valid NUL-terminated paths.
        unsafe {
            fftw_export_wisdom_to_filename(wisdom_path("f64").as_ptr());
            fftwf_export_wisdom_to_filename(wisdom_path("f32").as_ptr());
        }
    }

    pub fn version() -> Option<String> {
        // SAFETY: fftw_version is a NUL-terminated static string inside libfftw3.
        let v = unsafe { CStr::from_ptr(std::ptr::addr_of!(fftw_version).cast::<c_char>()) };
        Some(v.to_string_lossy().into_owned())
    }

    macro_rules! runner {
        ($name:ident, $fn:ident, $t:ty, $many:ident, $exec:ident, $destroy:ident) => {
            pub struct $name {
                plan: Plan,
                placement: Placement,
            }
            impl Drop for $name {
                fn drop(&mut self) {
                    // SAFETY: plan was created by the matching planner and is destroyed once.
                    unsafe { $destroy(self.plan) }
                }
            }
            impl Runner<$t> for $name {
                fn placement(&self) -> Placement {
                    self.placement
                }
                fn run(&mut self, _bufs: &mut Buffers<$t>) {
                    // SAFETY: the plan was created for exactly these (live, unmoved) buffers.
                    unsafe { $exec(self.plan) }
                }
            }
            pub fn $fn(
                cell: &CellSpec,
                bufs: &mut Buffers<$t>,
            ) -> Result<Box<dyn Runner<$t>>, String> {
                Ok(Box::new($name::create(cell, bufs)?))
            }
            impl $name {
                pub fn create(cell: &CellSpec, bufs: &mut Buffers<$t>) -> Result<Self, String> {
                    load_wisdom();
                    let n = c_int::try_from(cell.n).map_err(|_| "n too large")?;
                    let howmany = c_int::try_from(cell.batch).map_err(|_| "batch too large")?;
                    let sign = match cell.direction {
                        Direction::Forward => FFTW_FORWARD,
                        Direction::Inverse => FFTW_BACKWARD,
                    };
                    let mut flags = FFTW_MEASURE;
                    if cell.placement == Placement::Immutable {
                        flags |= FFTW_PRESERVE_INPUT;
                    }
                    let inp = bufs.input.as_mut_ptr().cast::<[$t; 2]>();
                    let out = if cell.placement == Placement::InPlace {
                        inp
                    } else {
                        bufs.output.as_mut_ptr().cast::<[$t; 2]>()
                    };
                    // SAFETY: arrays hold batch*n elements; rank-1 contiguous batches.
                    let plan = unsafe {
                        $many(
                            1,
                            &n,
                            howmany,
                            inp,
                            std::ptr::null(),
                            1,
                            n,
                            out,
                            std::ptr::null(),
                            1,
                            n,
                            sign,
                            flags,
                        )
                    };
                    if plan.is_null() {
                        return Err("FFTW planner returned NULL".into());
                    }
                    Ok($name {
                        plan,
                        placement: cell.placement,
                    })
                }
            }
        };
    }
    runner!(
        Fftw64,
        runner_f64,
        f64,
        fftw_plan_many_dft,
        fftw_execute,
        fftw_destroy_plan
    );
    runner!(
        Fftw32,
        runner_f32,
        f32,
        fftwf_plan_many_dft,
        fftwf_execute,
        fftwf_destroy_plan
    );
}

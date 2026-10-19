//! Test and benchmark support for fastfft: seeded signals, reference
//! transforms in `f64` and double-double precision, and error metrics.
//!
//! The reference transforms are independent of every FFT under test.

pub mod dd;
pub mod metrics;
pub mod reference;
pub mod signal;

pub use dd::Dd;
pub use metrics::{ErrorStats, error_vs_dd, error_vs_f64};
pub use reference::{Cx, Dir, reference_dd, reference_f64};
pub use signal::{random_c32, random_c64, widen};

#![cfg(all(target_arch = "aarch64", feature = "neon"))]

use fastfft::{FftDirection, FftPlanner, Isa, PlannerOptions, detected_isa};

#[test]
fn native_neon_dispatch_and_scalar_cap() {
    assert_eq!(Isa::from_name(" NEON "), Some(Isa::Neon));
    assert_eq!(detected_isa(), Isa::Neon);
    let mut native = FftPlanner::<f32>::new();
    // The CI scalar-cap run intentionally overrides the default planner.
    if native.isa() == Isa::Neon {
        for n in [16, 64, 1024, 65536] {
            assert!(
                native
                    .describe_plan(n, FftDirection::Forward)
                    .contains("neon")
            );
        }
        let mut double = FftPlanner::<f64>::new();
        for n in [64, 1024, 65536] {
            assert!(
                double
                    .describe_plan(n, FftDirection::Inverse)
                    .contains("neon")
            );
        }
        assert!(
            native
                .describe_plan(257, FftDirection::Forward)
                .contains("neon")
        );
    }
    let mut scalar =
        FftPlanner::<f32>::with_options(PlannerOptions::default().with_isa_cap(Isa::Scalar));
    assert_eq!(scalar.isa(), Isa::Scalar);
    assert!(
        scalar
            .describe_plan(1024, FftDirection::Forward)
            .contains("scalar")
    );
}

#[test]
fn x86_caps_keep_the_local_instruction_family() {
    let local = FftPlanner::<f64>::new().isa();
    for cap in [Isa::Sse2, Isa::Avx2, Isa::Avx512Ymm, Isa::Avx512] {
        let mut planner =
            FftPlanner::<f64>::with_options(PlannerOptions::default().with_isa_cap(cap));
        assert_eq!(planner.isa(), local);
        assert!(
            planner
                .describe_plan(1024, FftDirection::Forward)
                .contains(local.name())
        );
    }
}

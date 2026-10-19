//! Descriptions describe the cached executable and every public workspace.

use fastfft::{FftDirection, FftNum, FftPlanner, Isa, PlanMode, PlannerOptions};
use std::sync::Arc;
use std::time::Duration;

fn check<T: FftNum>() {
    for cap in [
        Isa::Scalar,
        Isa::Sse2,
        Isa::Avx2,
        Isa::Avx512Ymm,
        Isa::Avx512,
    ] {
        for mode in [
            PlanMode::Estimate,
            PlanMode::Measure {
                time_limit: Duration::from_millis(2),
            },
        ] {
            let mut planner = FftPlanner::<T>::with_options(
                PlannerOptions::default().with_isa_cap(cap).with_mode(mode),
            );
            for n in [0, 1, 3, 8, 17, 48, 64, 128, 210, 256, 1024, 4725] {
                for direction in [FftDirection::Forward, FftDirection::Inverse] {
                    // Requesting a description can create the plan; later requests
                    // must describe that same cached choice, including in Measure.
                    let description = planner.describe_plan(n, direction);
                    let fft = planner.plan_fft(n, direction);
                    assert_eq!(description, planner.describe_plan(n, direction));
                    assert!(Arc::ptr_eq(&fft, &planner.plan_fft(n, direction)));
                    let outer = description.split(" inner=[").next().unwrap();
                    let words: Vec<_> = outer.split_whitespace().collect();
                    assert!(
                        matches!(
                            words[0],
                            "identity" | "small" | "stockham" | "fourstep" | "bluestein"
                        ),
                        "{description}"
                    );
                    let isa = Isa::from_name(words[1]).expect(&description);
                    assert!(isa <= planner.isa(), "{description}");
                    assert!(
                        words.iter().any(|w| w.starts_with("radices=")),
                        "{description}"
                    );
                    for (field, length) in [
                        ("scratch", fft.get_inplace_scratch_len()),
                        ("scratch_oop", fft.get_outofplace_scratch_len()),
                        ("scratch_immutable", fft.get_immutable_scratch_len()),
                    ] {
                        assert!(
                            words.contains(&format!("{field}={length}").as_str()),
                            "{description}"
                        );
                    }
                    if n == 17 {
                        assert!(description.contains(" inner=["), "{description}");
                        if size_of::<T>() == 4 && planner.isa() == Isa::Avx512 {
                            assert_eq!(isa, Isa::Avx512Ymm, "{description}");
                        }
                    }
                    if words.iter().any(|w| w.starts_with("batch=")) {
                        let expected = match n {
                            8 => "batch_radices=8",
                            64 => "batch_radices=8x8",
                            128 => "batch_radices=8x16",
                            256 => "batch_radices=16x16",
                            1024 => "batch_radices=fallback",
                            _ => panic!("unexpected batch length {n}"),
                        };
                        assert!(words.contains(&expected), "{description}");
                    }
                }
            }
        }
    }
}

#[test]
fn cached_descriptions_f32() {
    check::<f32>();
}

#[test]
fn cached_descriptions_f64() {
    check::<f64>();
}

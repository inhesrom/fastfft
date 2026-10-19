//! Explicit prototype recipes, available in ordinary acceptance builds.

use serde_json::{Value, json};

/// Conservative workspace sizing without allocating before retained planning.
/// Full recipe validation belongs to the actual adapter construction.
pub fn shared_offset_bytes(row: &str) -> Option<usize> {
    if !row.starts_with("lab/dit-") {
        None
    } else if row.ends_with("-shared-offset1024") {
        Some(1024)
    } else if row.ends_with("-shared") {
        Some(0)
    } else {
        None
    }
}

#[derive(Debug, PartialEq, Eq)]
pub struct Recipe {
    pub width: String,
    pub radices: Vec<usize>,
    pub shared: bool,
    pub shared_offset_bytes: usize,
}

impl Recipe {
    /// `lab/dit-ymm-radices-8x8x8[-shared[-offset1024]]`.
    /// Radices are Phase A only; the optional offset is a fixed intervention.
    pub fn parse(row: &str) -> Result<Self, String> {
        let rest = row.strip_prefix("lab/dit-").ok_or("bad dit name")?;
        let (rest, shared_offset_bytes) = rest
            .strip_suffix("-offset1024")
            .map_or((rest, 0), |r| (r, 1024));
        let (rest, shared) = rest
            .strip_suffix("-shared")
            .map_or((rest, false), |r| (r, true));
        if shared_offset_bytes != 0 && !shared {
            return Err("scratch offset requires a shared recipe".into());
        }
        let (width, radices) = rest.split_once("-radices-").ok_or("bad explicit recipe")?;
        if !matches!(width, "ymm" | "zmm" | "avx2") {
            return Err("dit width must be ymm, zmm or avx2".into());
        }
        let radices: Vec<usize> = radices
            .split('x')
            .map(|r| {
                r.parse::<usize>()
                    .map_err(|_| "bad explicit radix".to_owned())
            })
            .collect::<Result<_, _>>()?;
        if radices.is_empty() || radices.iter().any(|r| !matches!(r, 2 | 4 | 8 | 16)) {
            return Err("dit supports only Phase-A radices 2, 4, 8 and 16".into());
        }
        Ok(Self {
            width: width.into(),
            radices,
            shared,
            shared_offset_bytes,
        })
    }

    #[cfg_attr(not(target_arch = "x86_64"), allow(dead_code))]
    #[cfg_attr(not(any(test, feature = "stockham-diagnostics")), allow(dead_code))]
    pub fn row(&self) -> String {
        format!(
            "lab/dit-{}-radices-{}{}{}",
            self.width,
            self.radices
                .iter()
                .map(usize::to_string)
                .collect::<Vec<_>>()
                .join("x"),
            if self.shared { "-shared" } else { "" },
            if self.shared_offset_bytes == 0 {
                ""
            } else {
                "-offset1024"
            }
        )
    }
}

/// Borrowed initialized view, not the allocator base or physical placement.
pub fn view<T>(slice: &[T]) -> Value {
    let ptr = slice.as_ptr() as usize;
    json!({"ptr": ptr, "len": slice.len(), "element_bytes": size_of::<T>(),
        "mod64": ptr % 64, "mod4096": ptr % 4096})
}

#[cfg(test)]
mod tests {
    use super::*;

    #[cfg(target_arch = "x86_64")]
    fn direct_workspace<T: crate::adapters::ArenaFloat + fastfft::FftNum>(width: &str) {
        use crate::buffers::Buffers;
        use crate::spec::{Profile, control_cell};
        if !kernel_lab::Tier::Avx512.detected() {
            return;
        }
        for (suffix, offset) in [
            ("", None),
            ("-shared", Some(0)),
            ("-shared-offset1024", Some(1024)),
        ] {
            let row = format!("lab/dit-{width}-radices-8x8x8{suffix}");
            for provided in [None, Some(0), Some(8192)] {
                let mut spec = control_cell(&[], &Profile::QUICK);
                spec.libs = vec![row.clone()];
                spec.precision = T::PREC;
                spec.caller_scratch = provided;
                let mut buffers = Buffers::<T>::new(spec.n, 0);
                let mut planned = crate::cell::plan_all::<T>(&spec, &mut buffers);
                let runner = planned[0].1.as_mut().unwrap();
                let geometry = runner.execution_storage(&mut buffers).unwrap();
                let scratch = buffers.io_scratch_mut().2;
                if let Some(bytes) = offset {
                    assert!(scratch.len() >= spec.n + bytes / size_of::<num_complex::Complex<T>>());
                    assert_eq!(
                        geometry["active_scratch"]["ptr"],
                        scratch.as_ptr() as usize + bytes
                    );
                }
            }
        }
        for row in [
            "lab/dit-bogus-radices-8x8x8-shared",
            "lab/dit-ymm-radices-bad-shared",
            "lab/dit-ymm-radices-8x8x8-shared-offset2048",
        ] {
            let mut spec = control_cell(&[], &Profile::QUICK);
            spec.libs = vec![row.into()];
            spec.precision = T::PREC;
            let mut buffers = Buffers::<T>::new(spec.n, 0);
            let planned = crate::cell::plan_all::<T>(&spec, &mut buffers);
            assert!(planned[0].1.is_none(), "{row}");
            assert_eq!(planned[0].0.status, "unsupported");
            assert!(planned[0].0.reason.is_some());
        }
    }

    #[test]
    #[cfg(target_arch = "x86_64")]
    fn direct_workspace_preserves_shared_routes_and_errors() {
        direct_workspace::<f32>("ymm");
        direct_workspace::<f64>("zmm");
    }

    #[test]
    fn explicit_recipes_roundtrip_and_reject_invalid_syntax() {
        for width in ["ymm", "zmm", "avx2"] {
            for shared in [false, true] {
                let recipe = Recipe {
                    width: width.into(),
                    radices: vec![4, 8, 8],
                    shared,
                    shared_offset_bytes: 0,
                };
                assert_eq!(Recipe::parse(&recipe.row()).unwrap(), recipe);
            }
        }
        for row in [
            "lab/dit-bogus-radices-8",
            "lab/dit-ymm-radices-",
            "lab/dit-ymm-radices-0",
            "lab/dit-ymm-radices-1",
            "lab/dit-ymm-radices-32",
            "lab/dit-ymm-radices-8xx8",
            "lab/dit-ymm-radices-8x8-extra",
            "lab/dit-ymm-radices-8x8-offset1024",
            "lab/dit-ymm-radices-8x8-shared-offset2048",
        ] {
            assert!(Recipe::parse(row).is_err(), "{row}");
        }
        let shifted = "lab/dit-ymm-radices-8x8x8-shared-offset1024";
        let recipe = Recipe::parse(shifted).unwrap();
        assert_eq!(recipe.shared_offset_bytes, 1024);
        assert_eq!(recipe.row(), shifted);
    }

    #[cfg(target_arch = "x86_64")]
    fn verify_routes<T: crate::adapters::ArenaFloat + fastfft::FftNum>(width: &str) {
        use crate::buffers::Buffers;
        use crate::spec::{Profile, control_cell};
        if !kernel_lab::Tier::Avx512.detected() {
            return;
        }
        for radices in ["8x8x8", "4x4x4x8", "8x4x4x4", "16x16x2"] {
            let row = format!("lab/dit-{width}-radices-{radices}");
            let rows = vec![
                "fastfft".into(),
                row.clone(),
                format!("{row}-shared"),
                format!("{row}-shared-offset1024"),
            ];
            let mut spec = control_cell(&rows, &Profile::QUICK);
            spec.libs = rows;
            spec.precision = T::PREC;
            spec.batch = 2;
            let input: Vec<_> = fastfft_testkit::random_c64(spec.n * spec.batch, 31)
                .iter()
                .map(|c| num_complex::Complex::new(T::lit(c.re), T::lit(c.im)))
                .collect();
            let mut reference = input.clone();
            let mut planner = rustfft::FftPlanner::<T>::new();
            planner.plan_fft_forward(spec.n).process(&mut reference);
            let mut bufs = Buffers::<T>::new(input.len(), 0);
            // Direct run-cell compatibility: reserve before retained planning,
            // even when no parent-supplied caller_scratch field is present.
            let mut runners = crate::cell::plan_all::<T>(&spec, &mut bufs);
            let (_, _, scratch) = bufs.io_scratch_mut();
            let shared = scratch.as_ptr() as usize;
            for (res, runner) in &mut runners {
                let r = runner
                    .as_mut()
                    .unwrap_or_else(|| panic!("{}: {:?}", res.lib, res.reason));
                let before = r.execution_storage(&mut bufs).unwrap();
                if res.lib.ends_with("-shared") {
                    assert_eq!(before["active_scratch"]["ptr"], shared);
                    assert_ne!(before["retained_s1"]["ptr"], shared);
                    assert_ne!(before["retained_unused_s2"]["ptr"], shared);
                }
                let shifted = res.lib.ends_with("-shared-offset1024");
                let shift = 1024 / size_of::<num_complex::Complex<T>>();
                let guard = num_complex::Complex::new(T::lit(12345.), T::lit(-6789.));
                if shifted {
                    assert_eq!(before["active_scratch"]["ptr"], shared + 1024);
                    assert_eq!(before["scratch_offset_bytes"], 1024);
                    bufs.io_scratch_mut().2[..shift].fill(guard);
                }
                r.load(&mut bufs, &input);
                r.run(&mut bufs);
                if shifted {
                    assert!(bufs.io_scratch_mut().2[..shift].iter().all(|&v| v == guard));
                }
                let output = r.read(&bufs);
                let error: f64 = output
                    .iter()
                    .zip(&reference)
                    .map(|(a, b)| {
                        (a.re.val() - b.re.val()).powi(2) + (a.im.val() - b.im.val()).powi(2)
                    })
                    .sum();
                let norm: f64 = reference
                    .iter()
                    .map(|c| c.re.val().powi(2) + c.im.val().powi(2))
                    .sum();
                assert!((error / norm).sqrt() < T::PREC.eps() * 200.0, "{}", res.lib);
                assert_eq!(r.execution_storage(&mut bufs).unwrap(), before);
            }
        }
    }

    #[test]
    #[cfg(target_arch = "x86_64")]
    fn original_and_shared_routes_match_f32() {
        verify_routes::<f32>("ymm");
    }

    #[test]
    #[cfg(target_arch = "x86_64")]
    fn original_and_shared_routes_match_f64() {
        verify_routes::<f64>("zmm");
    }
}

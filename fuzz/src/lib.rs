//! Bounded FFT cases shared by libFuzzer and deterministic replay.

use fastfft::num_complex::Complex;
use fastfft::{Fft, FftDirection, FftNum, FftPlanner, Isa, PlanMode, PlannerOptions};
use fastfft_testkit::metrics::{ToDd, bluestein_bound_eps, fast_path_bound_eps};
use fastfft_testkit::{Dir, error_vs_dd, reference_dd};
use std::cell::Cell;
use std::panic::{AssertUnwindSafe, catch_unwind};
use std::sync::Once;
use std::time::Duration;

pub const MAX_N: usize = 70_000;
pub const INPUT_BYTES: usize = 24;
const MAX_ELEMENTS: usize = 3 * MAX_N;
const BATCH_COUNTS: [usize; 14] = [1, 2, 3, 4, 5, 7, 8, 9, 15, 16, 17, 31, 32, 33];

thread_local! {
    static EXPECTED_PANIC: Cell<Option<&'static str>> = const { Cell::new(None) };
}

fn panic_message(payload: &(dyn std::any::Any + Send)) -> Option<&str> {
    payload
        .downcast_ref::<String>()
        .map(String::as_str)
        .or_else(|| payload.downcast_ref::<&str>().copied())
}

// libFuzzer aborts in its panic hook, before catch_unwind can see the panic.
// Suppress only the anticipated entry-validation message on this thread.
// Every other panic still reaches the original hook (including its abort).
fn install_panic_policy() {
    static INSTALL: Once = Once::new();
    INSTALL.call_once(|| {
        let previous = std::panic::take_hook();
        std::panic::set_hook(Box::new(move |info| {
            let expected = EXPECTED_PANIC.with(Cell::get);
            if expected.is_some_and(|prefix| {
                panic_message(info.payload()).is_some_and(|message| message.starts_with(prefix))
            }) {
                return;
            }
            previous(info);
        }));
    });
}

fn expect_contract_panic(prefix: &'static str, call: impl FnOnce()) {
    struct Reset;
    impl Drop for Reset {
        fn drop(&mut self) {
            EXPECTED_PANIC.with(|slot| slot.set(None));
        }
    }
    assert!(EXPECTED_PANIC.with(Cell::get).is_none());
    let result = {
        EXPECTED_PANIC.with(|slot| slot.set(Some(prefix)));
        let _reset = Reset;
        catch_unwind(AssertUnwindSafe(call))
    };
    let payload = result.expect_err("invalid buffers did not panic");
    assert!(
        panic_message(payload.as_ref()).is_some_and(|message| message.starts_with(prefix)),
        "invalid buffers caused an unexpected panic: {:?}",
        panic_message(payload.as_ref())
    );
}

#[derive(Clone, Copy, Debug)]
pub struct Case {
    pub n: usize,
    pub f64: bool,
    pub direction: FftDirection,
    pub api: u8,
    pub mode: u8,
    pub cap: u8,
    pub batches: usize,
    pub length_kind: u8,
    pub output_mismatch: bool,
    pub offset: usize,
    pub signal: u8,
    pub arbitrary_len: usize,
    pub seed: u64,
}

impl Case {
    pub fn decode(data: &[u8]) -> Option<Self> {
        let data = data.get(..INPUT_BYTES)?;
        let word = |start| u32::from_le_bytes(data[start..start + 4].try_into().unwrap());
        Some(Self {
            n: word(0) as usize % MAX_N + 1,
            f64: data[4] & 1 != 0,
            direction: if data[4] & 2 == 0 {
                FftDirection::Forward
            } else {
                FftDirection::Inverse
            },
            api: (data[4] >> 2) % 4,
            mode: data[5] % 4,
            cap: data[6] % 6,
            batches: BATCH_COUNTS[data[7] as usize % BATCH_COUNTS.len()]
                .min(MAX_ELEMENTS / (word(0) as usize % MAX_N + 1)),
            length_kind: data[8] % 8,
            output_mismatch: data[9] & 1 != 0,
            offset: data[10] as usize % 8,
            signal: data[11] % 4,
            arbitrary_len: word(12) as usize,
            seed: u64::from_le_bytes(data[16..24].try_into().unwrap()),
        })
    }
}

/// Encode a known valid case; its fields can then be mutated by libFuzzer.
pub fn seed_case(n: usize, variant: u8) -> [u8; INPUT_BYTES] {
    assert!((1..=MAX_N).contains(&n));
    let mut bytes = [0; INPUT_BYTES];
    bytes[..4].copy_from_slice(&((n - 1) as u32).to_le_bytes());
    bytes[4] = variant % 16;
    bytes[5] = (variant / 4 + (n % 4) as u8) % 4;
    bytes[6] = variant % 6;
    bytes[7] = variant % BATCH_COUNTS.len() as u8;
    bytes[10] = variant % 8;
    bytes[11] = (variant / 4) % 4;
    bytes[16..24]
        .copy_from_slice(&(0x6a09_e667_f3bc_c909u64 ^ n as u64 ^ u64::from(variant)).to_le_bytes());
    bytes
}

/// Check one case. Short inputs are rejected without planning an FFT.
pub fn check(data: &[u8]) -> Option<bool> {
    let case = Case::decode(data)?;
    install_panic_policy();
    Some(if case.f64 {
        run::<f64>(case)
    } else {
        run::<f32>(case)
    })
}

struct Guarded<T: FftNum> {
    storage: Vec<Complex<T>>,
    start: usize,
    len: usize,
    canary: Complex<T>,
}

impl<T: FftNum> Guarded<T> {
    fn new(len: usize, offset: usize) -> Self {
        let canary = Complex::new(
            T::from_f64(12345.25).unwrap(),
            T::from_f64(-5432.5).unwrap(),
        );
        let start = 8 + offset;
        Self {
            storage: vec![canary; start + len + 8],
            start,
            len,
            canary,
        }
    }
    fn slice(&self) -> &[Complex<T>] {
        &self.storage[self.start..self.start + self.len]
    }
    fn slice_mut(&mut self) -> &mut [Complex<T>] {
        &mut self.storage[self.start..self.start + self.len]
    }
    fn check(&self) {
        assert!(
            self.storage[..self.start].iter().all(|&z| z == self.canary),
            "prefix guard changed"
        );
        assert!(
            self.storage[self.start + self.len..]
                .iter()
                .all(|&z| z == self.canary),
            "suffix guard changed"
        );
    }
}

fn execute<T: FftNum>(
    fft: &dyn Fft<T>,
    api: u8,
    input: &mut Guarded<T>,
    output: &mut Guarded<T>,
    scratch: &mut Guarded<T>,
) {
    match api {
        0 => fft.process(input.slice_mut()),
        1 => fft.process_with_scratch(input.slice_mut(), scratch.slice_mut()),
        2 => fft.process_outofplace_with_scratch(
            input.slice_mut(),
            output.slice_mut(),
            scratch.slice_mut(),
        ),
        3 => fft.process_immutable_with_scratch(
            input.slice(),
            output.slice_mut(),
            scratch.slice_mut(),
        ),
        _ => unreachable!(),
    }
}

fn run<T: FftNum + ToDd>(case: Case) -> bool {
    let mode = match case.mode {
        0 => PlanMode::Estimate,
        1 => PlanMode::Measure {
            time_limit: Duration::ZERO,
        },
        2 => PlanMode::Measure {
            time_limit: Duration::from_micros(50),
        },
        3 => PlanMode::Measure {
            time_limit: Duration::from_millis(5),
        },
        _ => unreachable!(),
    };
    let mut options = PlannerOptions::default().with_mode(mode);
    if let Some(cap) = [
        Isa::Scalar,
        Isa::Sse2,
        Isa::Avx2,
        Isa::Avx512Ymm,
        Isa::Avx512,
    ]
    .get(case.cap as usize)
    {
        options = options.with_isa_cap(*cap);
    }
    let mut planner = FftPlanner::<T>::with_options(options);
    let fft = planner.plan_fft(case.n, case.direction);
    assert_eq!(fft.len(), case.n);
    assert_eq!(fft.fft_direction(), case.direction);
    let need = match case.api {
        0 | 1 => fft.get_inplace_scratch_len(),
        2 => fft.get_outofplace_scratch_len(),
        3 => fft.get_immutable_scratch_len(),
        _ => unreachable!(),
    };
    let base = case.n * case.batches;
    let len = match case.length_kind {
        0..=2 | 7 => base,
        3 => 0,
        4 => case.n - 1,
        5 => base - 1,
        6 => case.arbitrary_len % (base.max(3 * case.n) + 1),
        _ => unreachable!(),
    };
    let output_len = len + usize::from(case.output_mismatch);
    let scratch_len = if case.length_kind == 7 && case.api != 0 && need > 0 {
        need - 1
    } else {
        need + usize::from(case.length_kind == 2) * 7
    };
    let error = if case.api >= 2 && output_len != len {
        Some(
            "assertion `left == right` failed: Provided FFT input and output buffers must have the same length",
        )
    } else if case.api != 0 && scratch_len < need {
        Some("Provided scratch buffer was too small:")
    } else if len < case.n || !len.is_multiple_of(case.n) {
        Some("Provided FFT buffer was not a multiple of FFT length:")
    } else {
        None
    };
    let mut input = Guarded::new(len, case.offset);
    let mut output = Guarded::new(output_len, (case.offset + 1) % 8);
    let mut scratch = Guarded::new(scratch_len, (case.offset + 3) % 8);
    let mut state = case.seed;
    for (i, z) in input.slice_mut().iter_mut().enumerate() {
        let mut draw = || {
            state = state.wrapping_add(0x9e37_79b9_7f4a_7c15);
            let mut x = state;
            x = (x ^ (x >> 30)).wrapping_mul(0xbf58_476d_1ce4_e5b9);
            x = (x ^ (x >> 27)).wrapping_mul(0x94d0_49bb_1331_11eb);
            ((x ^ (x >> 31)) as i16 as f64) / 32768.0
        };
        let (re, im) = match case.signal {
            0 => (draw(), draw()),
            1 => (0.0, 0.0),
            2 => (
                if i % case.n == (case.seed as usize % case.n) {
                    1.0
                } else {
                    0.0
                },
                0.0,
            ),
            3 => (if i % 2 == 0 { 1.0 } else { -1.0 }, 0.5),
            _ => unreachable!(),
        };
        *z = Complex::new(T::from_f64(re).unwrap(), T::from_f64(im).unwrap());
    }
    let original = input.slice().to_vec();
    if let Some(prefix) = error {
        expect_contract_panic(prefix, || {
            execute(
                fft.as_ref(),
                case.api,
                &mut input,
                &mut output,
                &mut scratch,
            )
        });
    } else {
        execute(
            fft.as_ref(),
            case.api,
            &mut input,
            &mut output,
            &mut scratch,
        );
    }
    input.check();
    output.check();
    scratch.check();
    if case.api == 3 {
        assert_eq!(input.slice(), original, "immutable input changed: {case:?}");
    }
    if error.is_some() {
        return false;
    }
    let actual = if case.api < 2 {
        input.slice()
    } else {
        output.slice()
    };
    let mut rest = case.n;
    for prime in [2, 3, 5, 7, 11, 13] {
        while rest.is_multiple_of(prime) {
            rest /= prime;
        }
    }
    let bound = if rest == 1 {
        fast_path_bound_eps(case.n)
    } else {
        bluestein_bound_eps((2 * case.n - 1).next_power_of_two())
    };
    for (source, result) in original
        .chunks_exact(case.n)
        .zip(actual.chunks_exact(case.n))
    {
        assert!(
            result.iter().all(|z| z.re.is_finite() && z.im.is_finite()),
            "nonfinite result: {case:?}"
        );
        let widened: Vec<_> = source
            .iter()
            .map(|z| Complex::new(z.re.to_f64().unwrap(), z.im.to_f64().unwrap()))
            .collect();
        let dir = if case.direction == FftDirection::Forward {
            Dir::Forward
        } else {
            Dir::Inverse
        };
        let reference = reference_dd(&widened, dir);
        let error = error_vs_dd(result, &reference).in_eps(T::epsilon().to_f64().unwrap());
        assert!(
            error.rel_l2.is_finite()
                && error.rel_l2 <= bound
                && error.max_rel.is_finite()
                && error.max_rel <= bound,
            "accuracy {error:?} exceeds {bound} eps: {case:?}"
        );
    }
    true
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn valid_and_invalid_contracts() {
        for n in [1, 2, 3, 16, 17, 32, 64, 97, 128, 243, 1024] {
            for variant in 0..16 {
                let valid = seed_case(n, variant);
                assert_eq!(check(&valid), Some(true));
                for kind in 3..=7 {
                    let mut invalid = valid;
                    invalid[8] = kind;
                    check(&invalid);
                }
                let mut mismatched = valid;
                mismatched[4] = (variant & 3) | (2 << 2);
                mismatched[9] = 1;
                assert_eq!(check(&mismatched), Some(false));
            }
        }
        assert_eq!(check(&[0; INPUT_BYTES - 1]), None);
    }

    #[test]
    fn original_panic_hook_receives_unexpected_panics() {
        for (probe, code) in [
            ("expected", 0),
            ("inside", 86),
            ("outside", 86),
            ("missing", 86),
        ] {
            let status = std::process::Command::new(std::env::current_exe().unwrap())
                .args(["--exact", "tests::panic_hook_probe", "--ignored"])
                .env("FASTFFT_FUZZ_HOOK_PROBE", probe)
                .status()
                .unwrap();
            assert_eq!(status.code(), Some(code), "probe {probe}");
        }
    }

    #[test]
    #[ignore = "subprocess probe for the panic hook"]
    fn panic_hook_probe() {
        std::panic::set_hook(Box::new(|_| std::process::exit(86)));
        install_panic_policy();
        match std::env::var("FASTFFT_FUZZ_HOOK_PROBE").unwrap().as_str() {
            "expected" => expect_contract_panic("expected:", || panic!("expected: invalid length")),
            "inside" => expect_contract_panic("expected:", || panic!("unexpected FFT panic")),
            "outside" => panic!("unexpected valid-input panic"),
            "missing" => expect_contract_panic("expected:", || ()),
            _ => unreachable!(),
        }
        assert!(EXPECTED_PANIC.with(Cell::get).is_none());
    }
}

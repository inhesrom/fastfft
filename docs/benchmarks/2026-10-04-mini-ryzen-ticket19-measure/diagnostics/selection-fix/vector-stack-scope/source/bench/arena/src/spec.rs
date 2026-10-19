//! Cell specifications, measurement profiles and benchmark suites.

use serde::{Deserialize, Serialize};

/// Floating-point precision of a cell.
#[derive(Serialize, Deserialize, Clone, Copy, Debug, PartialEq, Eq, Hash, PartialOrd, Ord)]
#[serde(rename_all = "lowercase")]
pub enum Precision {
    /// `Complex<f32>`.
    F32,
    /// `Complex<f64>`.
    F64,
}

impl Precision {
    pub fn as_str(self) -> &'static str {
        match self {
            Precision::F32 => "f32",
            Precision::F64 => "f64",
        }
    }
    pub fn eps(self) -> f64 {
        match self {
            Precision::F32 => f64::from(f32::EPSILON),
            Precision::F64 => f64::EPSILON,
        }
    }
}

/// Transform direction.
#[derive(Serialize, Deserialize, Clone, Copy, Debug, PartialEq, Eq, Hash, PartialOrd, Ord)]
#[serde(rename_all = "lowercase")]
pub enum Direction {
    Forward,
    Inverse,
}

impl Direction {
    pub fn as_str(self) -> &'static str {
        match self {
            Direction::Forward => "fwd",
            Direction::Inverse => "inv",
        }
    }
    pub fn opposite(self) -> Direction {
        match self {
            Direction::Forward => Direction::Inverse,
            Direction::Inverse => Direction::Forward,
        }
    }
    pub fn testkit(self) -> fastfft_testkit::Dir {
        match self {
            Direction::Forward => fastfft_testkit::Dir::Forward,
            Direction::Inverse => fastfft_testkit::Dir::Inverse,
        }
    }
}

/// Where the output goes.
#[derive(Serialize, Deserialize, Clone, Copy, Debug, PartialEq, Eq, Hash, PartialOrd, Ord)]
#[serde(rename_all = "lowercase")]
pub enum Placement {
    /// Output overwrites the input buffer.
    InPlace,
    /// Separate output; the input may be clobbered.
    OutOfPlace,
    /// Separate output; the input is left untouched.
    Immutable,
}

impl Placement {
    pub fn as_str(self) -> &'static str {
        match self {
            Placement::InPlace => "ip",
            Placement::OutOfPlace => "oop",
            Placement::Immutable => "imm",
        }
    }
}

/// Real-world pipeline scenarios.
#[derive(Serialize, Deserialize, Clone, Copy, Debug, PartialEq, Eq, Hash, PartialOrd, Ord)]
#[serde(rename_all = "kebab-case")]
pub enum Scenario {
    /// Hann window + in-place FFT + |X|^2 row, over a 256 MiB I/Q stream.
    Spectrogram,
    /// Overlap-save FIR filter (1025 taps) over 64 MiB, forward + inverse FFT per block.
    OverlapSave,
}

/// Input data used for timing.
#[derive(Serialize, Deserialize, Clone, Copy, Debug, PartialEq, Eq, Hash, Default)]
#[serde(rename_all = "lowercase")]
pub enum TimingData {
    /// Zero-filled buffers (benchFFT convention).
    #[default]
    Zero,
    /// Seeded random data, used only by the `datacheck` suite. Its cells use
    /// immutable placement, so every call reads the same input and values
    /// stay bounded.
    Random,
}

/// Measurement protocol parameters (travel between processes by name).
#[derive(Clone, Copy, Debug, PartialEq)]
pub struct Profile {
    pub name: &'static str,
    /// Warm-up per library before the rounds, ms.
    pub warmup_ms: u64,
    /// Number of rounds; library order is rotated each round.
    pub rounds: usize,
    /// Minimum length of one library's turn in a round, ms.
    pub turn_ms: u64,
    /// Minimum duration of one timed batch of calls, microseconds.
    pub min_batch_us: u64,
}

impl Profile {
    pub const FULL: Profile = Profile {
        name: "full",
        warmup_ms: 200,
        rounds: 7,
        turn_ms: 100,
        min_batch_us: 50,
    };
    pub const QUICK: Profile = Profile {
        name: "quick",
        warmup_ms: 50,
        rounds: 3,
        turn_ms: 25,
        min_batch_us: 50,
    };
    pub const SWEEP: Profile = Profile {
        name: "sweep",
        warmup_ms: 20,
        rounds: 3,
        turn_ms: 10,
        min_batch_us: 50,
    };

    pub fn by_name(name: &str) -> Option<Profile> {
        match name {
            "full" => Some(Profile::FULL),
            "quick" => Some(Profile::QUICK),
            "sweep" => Some(Profile::SWEEP),
            _ => None,
        }
    }
}

/// One measurement cell: everything needed by a `run-cell` child.
#[cfg(feature = "measure-diagnostics")]
#[derive(Serialize, Deserialize, Clone, Debug, Default, PartialEq)]
#[serde(default)]
pub struct Diagnostics {
    pub measure_trace: bool,
    pub measure_context: bool,
    pub sample_trace: bool,
    pub factorial: bool,
    pub coefficient_crossover: bool,
    pub coefficient_position: bool,
    pub coefficient_components: bool,
    /// Relative to the rotated construction order, including explicit zero.
    pub execution_rotation: usize,
    pub process_index: usize,
}

#[derive(Serialize, Deserialize, Clone, Debug, PartialEq)]
pub struct CellSpec {
    pub suite: String,
    pub precision: Precision,
    pub direction: Direction,
    pub placement: Placement,
    pub n: usize,
    /// Number of transforms in the buffer (1 = single transform).
    pub batch: usize,
    /// Byte offset from 64-byte alignment for all buffers (0 or 8).
    pub misalign: usize,
    /// Caller workspace reserved before planning in the timing child, in
    /// complex elements. The driver sizes it outside the child process.
    #[serde(default, skip_serializing_if = "Option::is_none")]
    pub caller_scratch: Option<usize>,
    /// `Some` for real-world scenario cells.
    pub scenario: Option<Scenario>,
    /// Library rows to run, e.g. `rustfft`, `phastft/split`, `fastfft/avx2`.
    pub libs: Vec<String>,
    /// Profile name (`full`, `quick`, `sweep`).
    pub profile: String,
    #[serde(default)]
    pub data: TimingData,
    /// Verify every library against the reference before timing.
    pub verify: bool,
    /// Seed for verification input.
    pub seed: u64,
    /// Marks the periodic drift-control measurement.
    #[serde(default)]
    pub control: bool,
    #[cfg(feature = "measure-diagnostics")]
    #[serde(default)]
    pub diagnostics: Diagnostics,
}

impl CellSpec {
    /// Stable identifier used to match cells across runs.
    pub fn key(&self) -> String {
        let mut k = format!(
            "{}:{}:{}:{}:n{}",
            self.suite,
            self.precision.as_str(),
            self.direction.as_str(),
            self.placement.as_str(),
            self.n
        );
        if self.batch > 1 {
            k.push_str(&format!(":b{}", self.batch));
        }
        if self.misalign != 0 {
            k.push_str(&format!(":m{}", self.misalign));
        }
        if let Some(s) = self.scenario {
            k.push_str(&format!(":{s:?}"));
        }
        if self.data == TimingData::Random {
            k.push_str(":random");
        }
        k
    }
}

/// Library rows known to the arena, in default order.
pub const ALL_LIBS: &[&str] = &[
    "fastfft",
    "fastfft/avx2",
    "rustfft",
    "phastft/split",
    "phastft/interleaved",
    "tfhe-fft",
    "oxifft",
    "fftw",
];

/// Extra fastfft rows available on request.
pub const EXTRA_LIBS: &[&str] = &[
    "fastfft/avx512",
    "fastfft/avx512-ymm",
    "fastfft/sse2",
    "fastfft/scalar",
    "fastfft/measure",
];

pub const SUITES: &[&str] = &[
    "pow2",
    "smooth",
    "rough",
    "sweep",
    "batch",
    "realworld",
    "datacheck",
];

pub const BENCHFFT_SMOOTH: &[usize] = &[
    6, 9, 12, 15, 18, 24, 36, 80, 108, 210, 504, 1000, 1960, 4725, 10368, 27000, 75600, 165375,
];
pub const SDR_SMOOTH: &[usize] = &[
    48, 96, 120, 160, 240, 320, 384, 480, 640, 720, 768, 960, 1200, 1536, 1920, 2400, 3072, 4800,
    6144, 12288, 48000, 96000, 1000000,
];
pub const ROUGH: &[usize] = &[
    17, 31, 61, 127, 257, 509, 1021, 2053, 4099, 8191, 16381, 65537, 131071, 2018, 3063, 9797,
    65524,
];

/// Options that shape the cell list.
#[derive(Clone, Debug)]
pub struct SuiteOptions {
    pub libs: Vec<String>,
    pub profile: Profile,
    pub misalign: usize,
    pub precisions: Vec<Precision>,
    pub max_n: usize,
    pub verify: bool,
}

fn fft_cells(
    suite: &str,
    sizes: &[usize],
    dirs: &[Direction],
    places: &[Placement],
    o: &SuiteOptions,
) -> Vec<CellSpec> {
    let mut v = Vec::new();
    for &p in &o.precisions {
        for &n in sizes {
            if n > o.max_n {
                continue;
            }
            for &d in dirs {
                for &pl in places {
                    v.push(CellSpec {
                        suite: suite.to_string(),
                        precision: p,
                        direction: d,
                        placement: pl,
                        n,
                        batch: 1,
                        misalign: o.misalign,
                        caller_scratch: None,
                        scenario: None,
                        libs: o.libs.clone(),
                        profile: o.profile.name.to_string(),
                        data: TimingData::Zero,
                        verify: o.verify,
                        seed: 0x5eed_0000 + n as u64,
                        control: false,
                        #[cfg(feature = "measure-diagnostics")]
                        diagnostics: Diagnostics::default(),
                    });
                }
            }
        }
    }
    v
}

/// Expands a suite name into cells.
pub fn suite_cells(suite: &str, o: &SuiteOptions) -> Result<Vec<CellSpec>, String> {
    let quick = o.profile.name == "quick";
    let (dirs, places): (&[Direction], &[Placement]) = if quick {
        (&[Direction::Forward], &[Placement::InPlace])
    } else {
        (
            &[Direction::Forward, Direction::Inverse],
            &[Placement::InPlace, Placement::OutOfPlace],
        )
    };
    Ok(match suite {
        "pow2" => {
            let sizes: Vec<usize> = (1..=24).map(|k| 1usize << k).collect();
            fft_cells("pow2", &sizes, dirs, places, o)
        }
        "smooth" => {
            let mut sizes: Vec<usize> = BENCHFFT_SMOOTH.iter().chain(SDR_SMOOTH).copied().collect();
            sizes.sort_unstable();
            sizes.dedup();
            fft_cells("smooth", &sizes, dirs, places, o)
        }
        "rough" => {
            let mut sizes = ROUGH.to_vec();
            sizes.sort_unstable();
            fft_cells("rough", &sizes, dirs, places, o)
        }
        "sweep" => {
            let sizes: Vec<usize> = (2..=4096).collect();
            fft_cells(
                "sweep",
                &sizes,
                &[Direction::Forward],
                &[Placement::InPlace],
                o,
            )
        }
        "batch" => {
            let mut v = Vec::new();
            let bplaces: &[Placement] = if quick {
                &[Placement::InPlace]
            } else {
                &[Placement::InPlace, Placement::OutOfPlace]
            };
            for n in [8usize, 16, 32, 64, 128, 256, 512, 1024] {
                for mut c in fft_cells("batch", &[n], &[Direction::Forward], bplaces, o) {
                    c.batch = (1 << 20) / n;
                    v.push(c);
                }
            }
            v
        }
        "realworld" => {
            let mut v = Vec::new();
            let mk = |p: Precision, n: usize, s: Scenario| CellSpec {
                suite: "realworld".into(),
                precision: p,
                direction: Direction::Forward,
                placement: Placement::InPlace,
                n,
                batch: 1,
                misalign: o.misalign,
                caller_scratch: None,
                scenario: Some(s),
                libs: o.libs.clone(),
                profile: o.profile.name.to_string(),
                data: TimingData::Zero,
                verify: o.verify,
                seed: 0x10_5eed + n as u64,
                control: false,
                #[cfg(feature = "measure-diagnostics")]
                diagnostics: Diagnostics::default(),
            };
            if o.precisions.contains(&Precision::F32) {
                for n in [1024usize, 4096, 16384, 65536] {
                    v.push(mk(Precision::F32, n, Scenario::Spectrogram));
                }
                v.push(mk(Precision::F32, 4096, Scenario::OverlapSave));
            }
            if o.precisions.contains(&Precision::F64) {
                v.push(mk(Precision::F64, 4096, Scenario::Spectrogram));
            }
            v
        }
        "datacheck" => {
            // Zero-filled vs random input timing agreement (M1 one-off check).
            // Immutable placement keeps the input unchanged: in place, each
            // unnormalized call would scale random data by sqrt(N) until it
            // overflowed to inf, and the check would time inf/NaN data.
            let mut v = Vec::new();
            for n in [64usize, 4096, 65536, 1 << 20] {
                for data in [TimingData::Zero, TimingData::Random] {
                    for mut c in fft_cells(
                        "datacheck",
                        &[n],
                        &[Direction::Forward],
                        &[Placement::Immutable],
                        o,
                    ) {
                        c.data = data;
                        v.push(c);
                    }
                }
            }
            v
        }
        other => return Err(format!("unknown suite `{other}`")),
    })
}

/// The drift-control cell: f32 forward in-place N=4096.
pub fn control_cell(libs: &[String], profile: &Profile) -> CellSpec {
    let control_libs: Vec<String> = libs
        .iter()
        .filter(|l| l.as_str() == "rustfft" || l.as_str() == "fastfft")
        .cloned()
        .collect();
    CellSpec {
        suite: "control".into(),
        precision: Precision::F32,
        direction: Direction::Forward,
        placement: Placement::InPlace,
        n: 4096,
        batch: 1,
        misalign: 0,
        caller_scratch: None,
        scenario: None,
        libs: if control_libs.is_empty() {
            vec!["rustfft".into()]
        } else {
            control_libs
        },
        profile: profile.name.to_string(),
        data: TimingData::Zero,
        verify: false,
        seed: 1,
        control: true,
        #[cfg(feature = "measure-diagnostics")]
        diagnostics: Diagnostics::default(),
    }
}

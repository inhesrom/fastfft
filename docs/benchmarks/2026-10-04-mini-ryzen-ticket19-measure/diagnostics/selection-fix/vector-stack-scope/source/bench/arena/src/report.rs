//! Reports: `report.md` + SVG plots for one run, `compare` between two runs,
//! and `publish` into `docs/benchmarks/`.

use crate::cell::{CellResult, LibResult};
use crate::driver::{fmt_ns, today_utc};
use crate::spec::{Direction, Placement, Precision};
use plotters::prelude::*;
use serde_json::Value;
use std::collections::{BTreeMap, BTreeSet};
use std::fmt::Write as _;
use std::path::{Path, PathBuf};

pub fn load(dir: &Path) -> Result<(Vec<CellResult>, Vec<CellResult>), String> {
    let text = std::fs::read_to_string(dir.join("results.jsonl"))
        .map_err(|e| format!("{}: {e}", dir.join("results.jsonl").display()))?;
    let mut cells = Vec::new();
    let mut controls = Vec::new();
    for line in text.lines() {
        if let Ok(r) = serde_json::from_str::<CellResult>(line) {
            if r.spec.control {
                controls.push(r);
            } else {
                cells.push(r);
            }
        }
    }
    Ok((cells, controls))
}

fn read_json(path: &Path) -> Value {
    std::fs::read_to_string(path)
        .ok()
        .and_then(|s| serde_json::from_str(&s).ok())
        .unwrap_or(Value::Null)
}

fn lib<'a>(c: &'a CellResult, name: &str) -> Option<&'a LibResult> {
    c.results.iter().find(|l| l.lib == name && l.time.is_some())
}

/// Throughput-normalized "time" so that ratio = baseline/lib is a speedup
/// for both transform cells (ns) and scenario cells (1/throughput).
fn best(l: &LibResult) -> Option<f64> {
    l.time.map(|t| t.best)
}
fn median(l: &LibResult) -> Option<f64> {
    l.time.map(|t| t.median)
}

pub fn geomean(v: &[f64]) -> f64 {
    if v.is_empty() {
        return f64::NAN;
    }
    (v.iter().map(|x| x.ln()).sum::<f64>() / v.len() as f64).exp()
}

/// Libraries that normalize their inverse (compared on forward cells only in G4).
fn normalizes_inverse(lib: &str) -> bool {
    lib.starts_with("phastft")
}

#[derive(Default, Clone, Debug)]
pub struct Ratios {
    pub best: Vec<f64>,
    pub median: Vec<f64>,
    pub keys: Vec<String>,
}

impl Ratios {
    pub fn geo_best(&self) -> f64 {
        geomean(&self.best)
    }
    pub fn geo_median(&self) -> f64 {
        geomean(&self.median)
    }
    pub fn min(&self) -> (f64, String) {
        let mut m = (f64::INFINITY, String::new());
        for (i, &b) in self.best.iter().enumerate() {
            let v = b.min(self.median[i]);
            if v < m.0 {
                m = (v, self.keys[i].clone());
            }
        }
        m
    }
    pub fn wtl(&self) -> (usize, usize, usize) {
        let mut w = (0, 0, 0);
        for &r in &self.best {
            if r > 1.03 {
                w.0 += 1;
            } else if r < 1.0 / 1.03 {
                w.2 += 1;
            } else {
                w.1 += 1;
            }
        }
        w
    }
}

/// Speedup of `lib` over `base` (base_time / lib_time) on matching cells.
pub fn ratios(cells: &[&CellResult], lib_name: &str, base: &str, fwd_only: bool) -> Ratios {
    let mut r = Ratios::default();
    for c in cells {
        if fwd_only && c.spec.direction != Direction::Forward {
            continue;
        }
        let (Some(a), Some(b)) = (lib(c, lib_name), lib(c, base)) else {
            continue;
        };
        if let (Some(ta), Some(tb), Some(ma), Some(mb)) = (best(a), best(b), median(a), median(b)) {
            r.best.push(tb / ta);
            r.median.push(mb / ma);
            r.keys.push(c.key.clone());
        }
    }
    r
}

fn libs_in(cells: &[&CellResult]) -> Vec<String> {
    let mut order: Vec<String> = Vec::new();
    for c in cells {
        for l in &c.results {
            if !order.contains(&l.lib) {
                order.push(l.lib.clone());
            }
        }
    }
    order
}

fn suites_in(cells: &[CellResult]) -> Vec<String> {
    let mut v: Vec<String> = Vec::new();
    for c in cells {
        if !v.contains(&c.spec.suite) {
            v.push(c.spec.suite.clone());
        }
    }
    v
}

fn cells_of<'a>(cells: &'a [CellResult], suite: &str, p: Option<Precision>) -> Vec<&'a CellResult> {
    cells
        .iter()
        .filter(|c| c.spec.suite == suite && p.is_none_or(|p| c.spec.precision == p))
        .collect()
}

fn fmt_ratio(x: f64) -> String {
    if x.is_nan() {
        "–".into()
    } else {
        format!("{x:.2}×")
    }
}

// ------------------------------------------------------------------ gates

struct Gate {
    id: &'static str,
    desc: String,
    pass: Option<bool>,
    detail: String,
}

fn gate_geo(id: &'static str, desc: &str, r: &Ratios, geo: f64, min_cell: f64) -> Gate {
    if r.best.is_empty() {
        return Gate {
            id,
            desc: desc.into(),
            pass: None,
            detail: "no data".into(),
        };
    }
    let (m, k) = r.min();
    let pass = r.geo_best() >= geo && r.geo_median() >= geo && m >= min_cell;
    Gate {
        id,
        desc: desc.into(),
        pass: Some(pass),
        detail: format!(
            "geomean best {:.3}×, median {:.3}×, worst cell {:.3}× ({k}), {} cells",
            r.geo_best(),
            r.geo_median(),
            m,
            r.best.len()
        ),
    }
}

fn parse_bluestein_m(desc: &str) -> Option<usize> {
    let i = desc.find("bluestein")?;
    let rest = &desc[i..];
    let j = rest.find("m=")?;
    rest[j + 2..]
        .split(|c: char| !c.is_ascii_digit())
        .next()?
        .parse()
        .ok()
}

fn gates(cells: &[CellResult]) -> Vec<Gate> {
    let mut g = Vec::new();
    let all: Vec<&CellResult> = cells.iter().collect();
    if !libs_in(&all).iter().any(|l| l == "fastfft") {
        return g;
    }
    let s = |name: &str| cells_of(cells, name, None);
    g.push(gate_geo(
        "G1",
        "pow2 vs rustfft: geomean ≥ 1.5×, no cell < 0.95×",
        &ratios(&s("pow2"), "fastfft", "rustfft", false),
        1.5,
        0.95,
    ));
    g.push(gate_geo(
        "G2",
        "smooth vs rustfft: geomean ≥ 1.3×, no cell < 0.95×",
        &ratios(&s("smooth"), "fastfft", "rustfft", false),
        1.3,
        0.95,
    ));
    g.push(gate_geo(
        "G3",
        "rough vs rustfft: geomean ≥ 0.75×, no cell < 0.5×",
        &ratios(&s("rough"), "fastfft", "rustfft", false),
        0.75,
        0.5,
    ));
    // G4: vs each other Rust library on the cells it supports.
    let fft_cells: Vec<&CellResult> = cells
        .iter()
        .filter(|c| ["pow2", "smooth", "rough"].contains(&c.spec.suite.as_str()))
        .collect();
    let mut g4_pass = Some(true);
    let mut g4_detail = Vec::new();
    for other in ["phastft/split", "phastft/interleaved", "tfhe-fft", "oxifft"] {
        let r = ratios(&fft_cells, "fastfft", other, normalizes_inverse(other));
        if r.best.is_empty() {
            continue;
        }
        let frac = r
            .best
            .iter()
            .zip(&r.median)
            .filter(|(b, m)| **b >= 0.97 && **m >= 0.97)
            .count() as f64
            / r.best.len() as f64;
        let ok = r.geo_best() >= 1.1 && r.geo_median() >= 1.1 && frac >= 0.9;
        if !ok {
            g4_pass = Some(false);
        }
        g4_detail.push(format!(
            "{other}: {:.2}×/{:.2}× ({:.0}% ≥ 0.97×, {} cells)",
            r.geo_best(),
            r.geo_median(),
            frac * 100.0,
            r.best.len()
        ));
    }
    g.push(Gate {
        id: "G4",
        desc: "vs each other Rust library: geomean ≥ 1.1×, ≥ 0.97× on ≥ 90% of cells".into(),
        pass: if g4_detail.is_empty() { None } else { g4_pass },
        detail: g4_detail.join("; "),
    });
    // G5: AVX2 path.
    let r5a = ratios(&s("pow2"), "fastfft/avx2", "rustfft", false);
    let r5b = ratios(&s("smooth"), "fastfft/avx2", "rustfft", false);
    let g5 = if r5a.best.is_empty() && r5b.best.is_empty() {
        None
    } else {
        Some(
            r5a.geo_best() >= 1.2
                && r5a.geo_median() >= 1.2
                && (r5b.best.is_empty() || (r5b.geo_best() >= 1.1 && r5b.geo_median() >= 1.1)),
        )
    };
    g.push(Gate {
        id: "G5",
        desc: "AVX2 forced: pow2 ≥ 1.2×, smooth ≥ 1.1× vs rustfft".into(),
        pass: g5,
        detail: format!(
            "pow2 {:.3}×/{:.3}×, smooth {:.3}×/{:.3}×",
            r5a.geo_best(),
            r5a.geo_median(),
            r5b.geo_best(),
            r5b.geo_median()
        ),
    });
    // G6: real-world + batch.
    let rw = ratios(&s("realworld"), "fastfft", "rustfft", false);
    let rb = ratios(&s("batch"), "fastfft", "rustfft", false);
    let g6 = if rw.best.is_empty() && rb.best.is_empty() {
        None
    } else {
        let rw_ok = rw
            .best
            .iter()
            .zip(&rw.median)
            .all(|(b, m)| *b >= 1.3 && *m >= 1.3);
        let rb_ok = rb.best.is_empty() || (rb.geo_best() >= 1.5 && rb.geo_median() >= 1.5);
        Some(rw_ok && rb_ok)
    };
    g.push(Gate {
        id: "G6",
        desc: "scenarios ≥ 1.3× each; batch geomean ≥ 1.5×".into(),
        pass: g6,
        detail: format!(
            "scenarios min {:.3}×, batch {:.3}×/{:.3}×",
            rw.min().0,
            rb.geo_best(),
            rb.geo_median()
        ),
    });
    // G7: accuracy.
    let mut g7_fail = Vec::new();
    let mut g7_n = 0;
    for c in cells.iter().filter(|c| c.spec.scenario.is_none()) {
        let (Some(f), Some(r)) = (
            c.results.iter().find(|l| l.lib == "fastfft"),
            c.results.iter().find(|l| l.lib == "rustfft"),
        ) else {
            continue;
        };
        let (Some(fv), Some(rv)) = (&f.verify, &r.verify) else {
            continue;
        };
        if fv.method != "dd" {
            continue;
        }
        g7_n += 1;
        let n = c.spec.n;
        let bound = match f.describe.as_deref().and_then(parse_bluestein_m) {
            Some(m) => fastfft_testkit::metrics::bluestein_bound_eps(m),
            None => fastfft_testkit::metrics::fast_path_bound_eps(n),
        };
        let rel = 1.5 * rv.rel_l2_eps + 1.0;
        if fv.rel_l2_eps > bound || fv.rel_l2_eps > rel {
            g7_fail.push(format!(
                "{}: {:.2}ε (bound {:.1}ε, rustfft {:.2}ε)",
                c.key, fv.rel_l2_eps, bound, rv.rel_l2_eps
            ));
        }
    }
    g.push(Gate {
        id: "G7",
        desc: "accuracy within §6 thresholds and ≤ 1.5× rustfft + 1ε".into(),
        pass: if g7_n == 0 {
            None
        } else {
            Some(g7_fail.is_empty())
        },
        detail: if g7_fail.is_empty() {
            format!("{g7_n} cells checked")
        } else {
            format!(
                "{} of {g7_n} cells fail: {}",
                g7_fail.len(),
                g7_fail
                    .iter()
                    .take(8)
                    .cloned()
                    .collect::<Vec<_>>()
                    .join("; ")
            )
        },
    });
    // G8: planning time.
    let mut worst = (0.0f64, String::new());
    let mut n8 = 0;
    for c in cells
        .iter()
        .filter(|c| c.spec.n <= 1 << 20 && c.spec.scenario.is_none())
    {
        let (Some(f), Some(r)) = (
            c.results.iter().find(|l| l.lib == "fastfft"),
            c.results.iter().find(|l| l.lib == "rustfft"),
        ) else {
            continue;
        };
        if let (Some(pf), Some(pr)) = (f.plan_ns, r.plan_ns) {
            n8 += 1;
            let ratio = pf / pr;
            if ratio > worst.0 {
                worst = (ratio, c.key.clone());
            }
        }
    }
    g.push(Gate {
        id: "G8",
        desc: "Estimate planning time ≤ 2× rustfft for every N ≤ 2^20".into(),
        pass: if n8 == 0 { None } else { Some(worst.0 <= 2.0) },
        detail: format!("worst ratio {:.2}× ({}), {n8} cells", worst.0, worst.1),
    });
    g
}

// ------------------------------------------------------------------ plots

type Series = (String, Vec<(f64, f64)>);

fn plot(
    path: &Path,
    title: &str,
    y_label: &str,
    series: &[Series],
    log_y: bool,
) -> Result<(), String> {
    let pts: Vec<(f64, f64)> = series.iter().flat_map(|s| s.1.iter().copied()).collect();
    if pts.is_empty() {
        return Ok(());
    }
    let (mut x0, mut x1, mut y0, mut y1) = (f64::MAX, f64::MIN, f64::MAX, f64::MIN);
    for &(x, y) in &pts {
        if y.is_finite() && (!log_y || y > 0.0) {
            x0 = x0.min(x);
            x1 = x1.max(x);
            y0 = y0.min(y);
            y1 = y1.max(y);
        }
    }
    if x0 >= x1 {
        x1 = x0 * 2.0;
    }
    if log_y {
        y0 *= 0.8;
        y1 *= 1.25;
    } else {
        let pad = (y1 - y0).max(1e-9) * 0.08;
        y0 = (y0 - pad).min(0.0f64.max(y0 - pad));
        y1 += pad;
    }
    let root = SVGBackend::new(path, (960, 560)).into_drawing_area();
    root.fill(&WHITE).map_err(|e| e.to_string())?;
    let colors = [
        RGBColor(214, 39, 40),
        RGBColor(31, 119, 180),
        RGBColor(44, 160, 44),
        RGBColor(255, 127, 14),
        RGBColor(148, 103, 189),
        RGBColor(140, 86, 75),
        RGBColor(227, 119, 194),
        RGBColor(127, 127, 127),
        RGBColor(188, 189, 34),
        RGBColor(23, 190, 207),
    ];
    macro_rules! draw {
        ($chart:expr) => {{
            let mut chart = $chart;
            chart
                .configure_mesh()
                .x_desc("N")
                .y_desc(y_label)
                .draw()
                .map_err(|e| e.to_string())?;
            for (i, (name, s)) in series.iter().enumerate() {
                let c = colors[i % colors.len()];
                let data: Vec<(f64, f64)> = s
                    .iter()
                    .copied()
                    .filter(|p| p.1.is_finite() && (!log_y || p.1 > 0.0))
                    .collect();
                chart
                    .draw_series(LineSeries::new(data.clone(), c.stroke_width(2)))
                    .map_err(|e| e.to_string())?
                    .label(name.clone())
                    .legend(move |(x, y)| {
                        PathElement::new(vec![(x, y), (x + 18, y)], c.stroke_width(3))
                    });
                if data.len() < 80 {
                    chart
                        .draw_series(data.iter().map(|&p| Circle::new(p, 3, c.filled())))
                        .map_err(|e| e.to_string())?;
                }
            }
            chart
                .configure_series_labels()
                .background_style(WHITE.mix(0.85))
                .border_style(BLACK)
                .position(SeriesLabelPosition::UpperLeft)
                .draw()
                .map_err(|e| e.to_string())?;
        }};
    }
    let mut base = ChartBuilder::on(&root);
    base.caption(title, ("sans-serif", 22))
        .margin(12)
        .x_label_area_size(40)
        .y_label_area_size(70);
    if log_y {
        draw!(
            base.build_cartesian_2d((x0..x1).log_scale(), (y0..y1).log_scale())
                .map_err(|e| e.to_string())?
        );
    } else {
        draw!(
            base.build_cartesian_2d((x0..x1).log_scale(), y0..y1)
                .map_err(|e| e.to_string())?
        );
    }
    root.present().map_err(|e| e.to_string())?;
    Ok(())
}

fn series_for(
    cells: &[&CellResult],
    libs: &[String],
    f: &dyn Fn(&CellResult, &LibResult) -> Option<f64>,
) -> Vec<Series> {
    let mut out = Vec::new();
    for l in libs {
        let mut pts: Vec<(f64, f64)> = cells
            .iter()
            .filter_map(|c| {
                let r = c.results.iter().find(|r| &r.lib == l)?;
                Some((c.spec.n as f64, f(c, r)?))
            })
            .collect();
        pts.sort_by(|a, b| a.0.total_cmp(&b.0));
        if !pts.is_empty() {
            out.push((l.clone(), pts));
        }
    }
    out
}

// ------------------------------------------------------------------ report

pub fn report(dir: &Path) -> Result<PathBuf, String> {
    let (cells, controls) = load(dir)?;
    let env = read_json(&dir.join("env.json"));
    let meta = read_json(&dir.join("meta.json"));
    let plots = dir.join("plots");
    std::fs::create_dir_all(&plots).map_err(|e| e.to_string())?;
    let mut md = String::new();
    let name = dir
        .file_name()
        .map(|s| s.to_string_lossy().into_owned())
        .unwrap_or_default();
    let _ = writeln!(md, "# fastfft arena report: `{name}`\n");
    let s = |v: &Value| v.as_str().unwrap_or("?").to_string();
    let _ = writeln!(md, "| | |\n|---|---|");
    let _ = writeln!(md, "| Host | {} |", s(&env["host"]));
    let _ = writeln!(
        md,
        "| CPU | {} (family {}, model {}, stepping {}, microcode {}) |",
        s(&env["cpu"]["model_name"]),
        s(&env["cpu"]["cpu_family"]),
        s(&env["cpu"]["model"]),
        s(&env["cpu"]["stepping"]),
        s(&env["cpu"]["microcode"])
    );
    let _ = writeln!(
        md,
        "| Pinned CPU | {} (SMT siblings {}) |",
        env["pinned_cpu"],
        s(&env["pinned_cpu_sibling"])
    );
    let _ = writeln!(
        md,
        "| Governor / EPP / boost | {} / {} / {} |",
        s(&env["governor"]),
        s(&env["energy_performance_preference"]),
        s(&env["boost"])
    );
    let _ = writeln!(
        md,
        "| Kernel | {} |",
        s(&env["kernel"]).split(" (").next().unwrap_or("")
    );
    let _ = writeln!(md, "| Virtualization | {} |", s(&env["virtualization"]));
    let _ = writeln!(
        md,
        "| rustc | {} |",
        s(&env["rustc"]).lines().next().unwrap_or("")
    );
    let _ = writeln!(
        md,
        "| Build profile / RUSTFLAGS | {} / `{}` |",
        s(&env["build_profile"]),
        s(&env["rustflags"])
    );
    let _ = writeln!(md, "| Libraries | {} |", env["libraries"]);
    let _ = writeln!(
        md,
        "| FFTW | {} `{}` |",
        s(&env["fftw"]["version"]),
        s(&env["fftw"]["configure"])
    );
    let _ = writeln!(
        md,
        "| Git | {} (dirty: {}) |",
        s(&env["git"]["commit"]),
        env["git"]["dirty"]
    );
    let _ = writeln!(md, "| Profile | {} |", s(&env["run"]["profile"]));
    let _ = writeln!(
        md,
        "| Official | {} {} |",
        env["run"]["official"],
        if env["env_check"]["problems"]
            .as_array()
            .is_some_and(|a| !a.is_empty())
        {
            format!("({})", env["env_check"]["problems"])
        } else {
            String::new()
        }
    );
    let _ = writeln!(
        md,
        "| Control drift | max {:.2}% over {} control runs{} |",
        meta["max_drift"].as_f64().unwrap_or(f64::NAN) * 100.0,
        controls.len(),
        if meta["drift_flag"].as_bool() == Some(true) {
            " — **FLAGGED**"
        } else {
            ""
        }
    );
    let _ = writeln!(md, "| Cells | {} |\n", cells.len());
    let _ = writeln!(
        md,
        "Times are per transform. *best* = minimum batch mean, *median* = median batch mean. Speedup = rustfft time ÷ library time (> 1 means faster than rustfft); *geomean* over the cells both libraries ran. mflops = 5·N·log2(N)/t(µs).\n"
    );

    let g = gates(&cells);
    if !g.is_empty() {
        let _ = writeln!(
            md,
            "## Release gates (fastfft)\n\n| Gate | Criterion | Status | Detail |\n|---|---|---|---|"
        );
        for x in &g {
            let st = match x.pass {
                Some(true) => "✅ pass",
                Some(false) => "❌ fail",
                None => "– n/a",
            };
            let _ = writeln!(md, "| {} | {} | {} | {} |", x.id, x.desc, st, x.detail);
        }
        let _ = writeln!(
            md,
            "\nG9 (build time) is measured by `cargo xtask build-time`, not by the arena.\n"
        );
    }

    // Summary table: geomean speedup vs rustfft per suite x precision.
    let all_refs: Vec<&CellResult> = cells.iter().collect();
    let libs = libs_in(&all_refs);
    let _ = writeln!(
        md,
        "## Speedup vs rustfft (geomean of best-time ratios; median-time ratio in parentheses)\n"
    );
    let _ = write!(md, "| suite | prec |");
    for l in &libs {
        let _ = write!(md, " {l} |");
    }
    let _ = write!(md, "\n|---|---|");
    for _ in &libs {
        let _ = write!(md, "---|");
    }
    let _ = writeln!(md);
    for suite in suites_in(&cells) {
        for p in [Precision::F32, Precision::F64] {
            let cs = cells_of(&cells, &suite, Some(p));
            if cs.is_empty() {
                continue;
            }
            let _ = write!(md, "| {suite} | {} |", p.as_str());
            for l in &libs {
                let r = ratios(&cs, l, "rustfft", false);
                if r.best.is_empty() {
                    let _ = write!(md, " – |");
                } else {
                    let (w, t, lo) = r.wtl();
                    let _ = write!(
                        md,
                        " {} ({}) {w}/{t}/{lo} |",
                        fmt_ratio(r.geo_best()),
                        fmt_ratio(r.geo_median())
                    );
                }
            }
            let _ = writeln!(md);
        }
    }
    let _ = writeln!(
        md,
        "\nw/t/l = cells faster / within ±3% / slower than rustfft (best times).\n"
    );

    // Per-suite detail tables and plots.
    for suite in suites_in(&cells) {
        let _ = writeln!(md, "## Suite `{suite}`\n");
        for p in [Precision::F32, Precision::F64] {
            let cs = cells_of(&cells, &suite, Some(p));
            if cs.is_empty() {
                continue;
            }
            let libs = libs_in(&cs);
            let scen = cs.iter().any(|c| c.spec.scenario.is_some());
            let _ = writeln!(md, "### {suite} {}\n", p.as_str());
            if suite != "sweep" {
                let _ = write!(md, "| cell |");
                for l in &libs {
                    let _ = write!(md, " {l} |");
                }
                let _ = write!(md, "\n|---|");
                for _ in &libs {
                    let _ = write!(md, "---|");
                }
                let _ = writeln!(md);
                for c in &cs {
                    let base = lib(c, "rustfft").and_then(best);
                    let label = if let Some(sc) = c.spec.scenario {
                        format!("{sc:?} N={}", c.spec.n)
                    } else {
                        format!(
                            "N={}{} {} {}",
                            c.spec.n,
                            if c.spec.batch > 1 {
                                format!(" ×{}", c.spec.batch)
                            } else {
                                String::new()
                            },
                            c.spec.direction.as_str(),
                            c.spec.placement.as_str()
                        )
                    };
                    let _ = write!(md, "| {label} |");
                    for l in &libs {
                        let r = c.results.iter().find(|r| &r.lib == l);
                        let cell = match r {
                            Some(r) if r.time.is_some() => {
                                let t = r.time.expect("time");
                                let main = if let Some(ms) = r.msamples_per_s {
                                    format!("{ms:.0} MS/s")
                                } else {
                                    fmt_ns(t.best)
                                };
                                match base {
                                    Some(b) if l != "rustfft" => {
                                        format!("{main} ({})", fmt_ratio(b / t.best))
                                    }
                                    _ => main,
                                }
                            }
                            Some(r) => match r.status.as_str() {
                                "unsupported" => "–".into(),
                                s => format!("**{s}**"),
                            },
                            None => String::new(),
                        };
                        let _ = write!(md, " {cell} |");
                    }
                    let _ = writeln!(md);
                }
                let _ = writeln!(md);
            }
            if scen {
                continue;
            }
            // plots: forward in-place (or the only placement) cells
            let fwd_ip: Vec<&CellResult> = cs
                .iter()
                .copied()
                .filter(|c| {
                    c.spec.direction == Direction::Forward && c.spec.placement == Placement::InPlace
                })
                .collect();
            let base_name = format!("{suite}-{}", p.as_str());
            let mf = series_for(&fwd_ip, &libs, &|_, r| r.mflops);
            let f1 = plots.join(format!("{base_name}-mflops.svg"));
            plot(
                &f1,
                &format!(
                    "{suite} {} forward in-place: mflops (higher is better)",
                    p.as_str()
                ),
                "mflops",
                &mf,
                true,
            )?;
            let sp = series_for(&fwd_ip, &libs, &|c, r| {
                let b = lib(c, "rustfft").and_then(best)?;
                Some(b / r.time?.best)
            });
            let f2 = plots.join(format!("{base_name}-speedup.svg"));
            plot(
                &f2,
                &format!(
                    "{suite} {} forward in-place: speedup vs rustfft",
                    p.as_str()
                ),
                "speedup ×",
                &sp,
                true,
            )?;
            let acc = series_for(&cs, &libs, &|_, r| {
                r.verify.as_ref().map(|v| v.rel_l2_eps.max(1e-3))
            });
            let f3 = plots.join(format!("{base_name}-accuracy.svg"));
            plot(
                &f3,
                &format!("{suite} {}: relative L2 error (units of ε)", p.as_str()),
                "error / ε",
                &acc,
                true,
            )?;
            let _ = writeln!(
                md,
                "![mflops](plots/{base_name}-mflops.svg)\n![speedup](plots/{base_name}-speedup.svg)\n![accuracy](plots/{base_name}-accuracy.svg)\n"
            );
        }
    }

    // Accuracy + planning summary.
    let _ = writeln!(
        md,
        "## Accuracy and planning time (medians over cells)\n\n| lib | cells verified | failed | median error (ε) | worst error (ε) | median plan time |\n|---|---|---|---|---|---|"
    );
    for l in &libs {
        let mut errs = Vec::new();
        let mut failed = 0;
        let mut plans = Vec::new();
        for c in &cells {
            if let Some(r) = c.results.iter().find(|r| &r.lib == l) {
                if let Some(v) = &r.verify {
                    errs.push(v.rel_l2_eps);
                }
                if r.status == "failed-verify" || r.status == "error" {
                    failed += 1;
                }
                if let Some(p) = r.plan_ns {
                    plans.push(p);
                }
            }
        }
        errs.sort_by(|a, b| a.total_cmp(b));
        plans.sort_by(|a, b| a.total_cmp(b));
        let med = |v: &[f64]| {
            if v.is_empty() {
                f64::NAN
            } else {
                v[v.len() / 2]
            }
        };
        let _ = writeln!(
            md,
            "| {l} | {} | {failed} | {:.2} | {:.2} | {} |",
            errs.len(),
            med(&errs),
            errs.last().copied().unwrap_or(f64::NAN),
            if plans.is_empty() {
                "–".to_string()
            } else {
                fmt_ns(med(&plans))
            }
        );
    }
    let failures: Vec<String> = cells
        .iter()
        .flat_map(|c| {
            c.results
                .iter()
                .filter(|r| r.status == "failed-verify" || r.status == "error")
                .map(move |r| {
                    format!(
                        "- `{}` {}: {} {}",
                        c.key,
                        r.lib,
                        r.status,
                        r.reason
                            .clone()
                            .or_else(|| r.verify.as_ref().map(|v| format!(
                                "error {:.1}ε {}",
                                v.rel_l2_eps,
                                v.detail.clone().unwrap_or_default()
                            )))
                            .unwrap_or_default()
                    )
                })
        })
        .collect();
    if !failures.is_empty() {
        let _ = writeln!(md, "\n### Verification failures\n\n{}", failures.join("\n"));
    }
    let notes: BTreeSet<String> = cells
        .iter()
        .flat_map(|c| {
            c.results
                .iter()
                .flat_map(|r| r.notes.iter().map(move |n| format!("- {}: {n}", r.lib)))
        })
        .collect();
    if !notes.is_empty() {
        let _ = writeln!(
            md,
            "\n### Library notes\n\n{}",
            notes.into_iter().collect::<Vec<_>>().join("\n")
        );
    }
    let path = dir.join("report.md");
    std::fs::write(&path, md).map_err(|e| e.to_string())?;
    Ok(path)
}

// ------------------------------------------------------------------ compare

pub fn compare(a: &Path, b: &Path) -> Result<String, String> {
    let (ca, _) = load(a)?;
    let (cb, _) = load(b)?;
    let mut map: BTreeMap<(String, String), (f64, f64)> = BTreeMap::new();
    for c in &ca {
        for l in &c.results {
            if let Some(t) = l.time {
                map.insert((c.key.clone(), l.lib.clone()), (t.best, t.median));
            }
        }
    }
    let mut per_lib: BTreeMap<(String, String), Ratios> = BTreeMap::new();
    let mut changes = Vec::new();
    for c in &cb {
        for l in &c.results {
            let Some(t) = l.time else { continue };
            if let Some(&(b0, m0)) = map.get(&(c.key.clone(), l.lib.clone())) {
                // ratio > 1: B is faster than A
                let rb = b0 / t.best;
                let rm = m0 / t.median;
                let e = per_lib
                    .entry((c.spec.suite.clone(), l.lib.clone()))
                    .or_default();
                e.best.push(rb);
                e.median.push(rm);
                e.keys.push(c.key.clone());
                if (rb - 1.0).abs() > 0.03 && (rm - 1.0).abs() > 0.03 {
                    changes.push((
                        rb,
                        format!(
                            "| {} | {} | {} | {} | {:.3}× | {:.3}× |",
                            c.key,
                            l.lib,
                            fmt_ns(b0),
                            fmt_ns(t.best),
                            rb,
                            rm
                        ),
                    ));
                }
            }
        }
    }
    let mut md = String::new();
    let _ = writeln!(
        md,
        "# Arena comparison\n\nA = `{}`\nB = `{}`\n\nRatio = time(A) ÷ time(B): > 1 means B is faster.\n",
        a.display(),
        b.display()
    );
    let _ = writeln!(
        md,
        "| suite | lib | cells | geomean (best) | geomean (median) | faster/same/slower (±3%) |\n|---|---|---|---|---|---|"
    );
    for ((suite, l), r) in &per_lib {
        let (w, t, lo) = r.wtl();
        let _ = writeln!(
            md,
            "| {suite} | {l} | {} | {:.3}× | {:.3}× | {w}/{t}/{lo} |",
            r.best.len(),
            r.geo_best(),
            r.geo_median()
        );
    }
    changes.sort_by(|x, y| x.0.total_cmp(&y.0));
    let _ = writeln!(
        md,
        "\n## Cells changed by more than 3% (best and median)\n\n| cell | lib | A best | B best | ratio (best) | ratio (median) |\n|---|---|---|---|---|---|"
    );
    for (_, line) in changes {
        let _ = writeln!(md, "{line}");
    }
    Ok(md)
}

// ------------------------------------------------------------------ publish

pub fn publish(run: &Path, label: &str) -> Result<PathBuf, String> {
    let env = read_json(&run.join("env.json"));
    let host = env["host"].as_str().unwrap_or("host");
    let dest = PathBuf::from(concat!(
        env!("CARGO_MANIFEST_DIR"),
        "/../../docs/benchmarks"
    ))
    .join(format!("{}-{host}-{label}", today_utc()));
    std::fs::create_dir_all(dest.join("plots")).map_err(|e| e.to_string())?;
    if !run.join("report.md").exists() {
        report(run)?;
    }
    for f in ["report.md", "env.json", "meta.json"] {
        if run.join(f).exists() {
            std::fs::copy(run.join(f), dest.join(f)).map_err(|e| format!("{f}: {e}"))?;
        }
    }
    if let Ok(rd) = std::fs::read_dir(run.join("plots")) {
        for e in rd.flatten() {
            std::fs::copy(e.path(), dest.join("plots").join(e.file_name()))
                .map_err(|e| e.to_string())?;
        }
    }
    for name in ["results.jsonl", "trials.jsonl"] {
        if name == "trials.jsonl" && !run.join(name).exists() {
            continue; // Runs before process-trial retention remain publishable.
        }
        let raw = std::fs::read(run.join(name)).map_err(|e| e.to_string())?;
        let f =
            std::fs::File::create(dest.join(format!("{name}.gz"))).map_err(|e| e.to_string())?;
        let mut gz = flate2::write::GzEncoder::new(f, flate2::Compression::best());
        std::io::Write::write_all(&mut gz, &raw).map_err(|e| e.to_string())?;
        gz.finish().map_err(|e| e.to_string())?;
    }
    Ok(dest)
}

#!/usr/bin/env python3
"""Render a verified four-library arena run using stdlib SVG + ImageMagick.

Usage: python3 scripts/plot-library-comparison.py RUN_DIR --out REPORT_DIR
The output contains summary.md, index.html, five SVG/PNG charts and chart-data.json.
Arena results and evidence are copied into REPORT_DIR. Use --evidence-dir when
idle checks and logs live outside RUN_DIR. Python 3.11+ and ImageMagick are needed.
Full publishing procedure (run, evidence, report, README): docs/runbooks/four-library-comparison.md

To render only the README figure from an archived run, without benchmarking or
copying/rewriting its reports, add --readme-hero and use a separate --out directory.
The README uses docs/benchmarks/2026-10-02-mini-ryzen-four-library-comparison:
python3 scripts/plot-library-comparison.py RUN_DIR --out docs/assets --readme-hero
This checks the archived evidence and chart arithmetic; it never executes FFTs.
On macOS without configured ImageMagick fonts, append
--font '/System/Library/Fonts/Supplemental/Arial.ttf'.
"""

import argparse
import gzip
import html
from html.parser import HTMLParser
import json
import math
from pathlib import Path
import re
import shutil
import subprocess
import xml.etree.ElementTree as ET


LIBS = ("fastfft", "rustfft", "fftw", "phastft/interleaved")
NAMES = ("fastfft", "RustFFT", "FFTW", "PhastFT / interleaved")
COLORS = ("#0072B2", "#777777", "#D55E00", "#009E73")
PANELS = tuple((p, d) for p in ("f32", "f64") for d in ("forward", "inverse"))
LENGTHS = tuple(2**i for i in range(1, 21))
SELECTED = (16, 64, 256, 1024, 4096, 16384, 65536, 1048576)


def read_json(path):
    return json.loads(path.read_text())


def load_run(run):
    env, meta = read_json(run / "env.json"), read_json(run / "meta.json")
    if (not meta.get("official") or meta.get("aborted")
            or meta.get("child_failures") or meta.get("drift_flag")
            or meta.get("max_drift", 1) > 0.03):
        raise ValueError("Run is unofficial, incomplete, failed or drift flagged; investigate first")
    if not env.get("fftw", {}).get("linked"):
        raise ValueError("FFTW must be linked")
    if env["run"]["profile"] != "full" or env["run"]["procs"] != 1:
        raise ValueError("Expected full profile with one process per measurement cell")
    path = run / "results.jsonl"
    if path.exists():
        raw = path.read_text()
    else:
        with gzip.open(run / "results.jsonl.gz", "rt") as stream:
            raw = stream.read()
    cells, controls = {}, []
    for line in raw.splitlines():
        row = json.loads(line)
        spec = row["spec"]
        if spec.get("control"):
            if row.get("child_error") or any(r["status"] != "ok" for r in row["results"]):
                raise ValueError("Failed control cell")
            controls.append(row)
            continue
        key = (spec["precision"], spec["direction"], spec["n"])
        if key in cells:
            raise ValueError(f"Duplicate cell: {key}")
        if (spec["suite"] != "pow2" or spec["placement"] != "inplace"
                or spec["batch"] != 1 or spec["misalign"] != 0
                or spec["profile"] != "full" or not spec["verify"]
                or spec.get("data", "zero") != "zero" or spec.get("scenario") is not None
                or row.get("cpu") != 2 or row.get("procs") != 1):
            raise ValueError(f"Unexpected measurement protocol: {key}")
        results = {r["lib"]: r for r in row.get("results", [])}
        if row.get("child_error") or set(results) != set(LIBS) or len(row["results"]) != 4:
            raise ValueError(f"Missing or duplicate library results: {key}")
        for lib, result in results.items():
            if result["status"] == "unsupported":
                if result.get("time") is not None:
                    raise ValueError(f"Unsupported result has timing: {key}, {lib}")
                continue
            check = result.get("verify", {})
            stats = result.get("time", {})
            if (result["status"] != "ok" or not check.get("passed")
                    or check.get("method") != "dd"
                    or not all(math.isfinite(check.get(k, math.nan))
                               for k in ("rel_l2_eps", "max_eps"))
                    or not math.isfinite(stats.get("median", math.nan))
                    or stats.get("median", 0) <= 0 or stats.get("samples", 0) <= 0):
                raise ValueError(f"Invalid correctness or timing: {key}, {lib}")
        row["by_lib"] = results
        cells[key] = row
    expected = {(p, d, n) for p, d in PANELS for n in LENGTHS}
    if set(cells) != expected or meta.get("cells") != 80 or len(controls) != 5:
        raise ValueError(f"Expected 80 cells and 5 controls; got {len(cells)} and {len(controls)}")
    return env, meta, cells, controls


def latency(row, lib):
    result = row["by_lib"][lib]
    return result["time"]["median"] if result["status"] == "ok" else None


def speedup(row, lib):
    reference, value = latency(row, "rustfft"), latency(row, lib)
    return reference / value if reference is not None and value is not None else None


def aggregate(cells):
    data = {"metric": "median_ns", "baseline": "rustfft", "libraries": list(LIBS),
            "selected_lengths": list(SELECTED), "panels": []}
    for p, d in PANELS:
        shared = [n for n in LENGTHS if all(latency(cells[p, d, n], lib) is not None for lib in LIBS)]
        means = {lib: math.exp(math.fsum(math.log(speedup(cells[p, d, n], lib))
                                       for n in shared) / len(shared)) if shared else None
                 for lib in LIBS}
        data["panels"].append({
            "precision": p, "direction": d, "shared_lengths": shared,
            "geomean_speedups": means,
            "cells": [{"n": n, "median_ns": {lib: latency(cells[p, d, n], lib) for lib in LIBS},
                       "speedups": {lib: speedup(cells[p, d, n], lib) for lib in LIBS}}
                      for n in LENGTHS],
        })
    return data


class Svg:
    def __init__(self, width, height, title):
        self.parts = [f'<svg xmlns="http://www.w3.org/2000/svg" width="{width}" height="{height}" '
                      f'viewBox="0 0 {width} {height}" role="img">',
                      f'<title>{html.escape(title)}</title>',
                      '<rect width="100%" height="100%" fill="white"/>',
                      '<g font-family="DejaVu Sans, sans-serif" fill="#182533">']

    def text(self, x, y, value, size=16, anchor="start", weight="normal", color="#182533"):
        self.parts.append(f'<text x="{x:.3f}" y="{y:.3f}" font-size="{size}" '
                          f'text-anchor="{anchor}" font-weight="{weight}" fill="{color}">'
                          f'{html.escape(str(value))}</text>')

    def rect(self, x, y, w, h, color):
        self.parts.append(f'<rect x="{x:.3f}" y="{y:.3f}" width="{w:.3f}" '
                          f'height="{h:.3f}" fill="{color}"/>')

    def line(self, x1, y1, x2, y2, baseline=False):
        dash = ' stroke-dasharray="6 4"' if baseline else ""
        color = "#182533" if baseline else "#dbe1e6"
        self.parts.append(f'<line x1="{x1:.3f}" y1="{y1:.3f}" x2="{x2:.3f}" '
                          f'y2="{y2:.3f}" stroke="{color}" stroke-opacity="1" '
                          f'stroke-width="{2 if baseline else 1}"{dash}/>')

    def save(self, path):
        xml = "\n".join(self.parts + ["</g></svg>"]) + "\n"
        ET.fromstring(xml)
        path.write_text(xml)


def scale(values):
    largest = max([1.0] + [v for v in values if v is not None]) * 1.18
    rough = largest / 5
    power = 10 ** math.floor(math.log10(rough))
    step = next(x * power for x in (1, 2, 2.5, 5, 10) if x * power >= rough)
    maximum = math.ceil(largest / step) * step
    return maximum, [i * step for i in range(round(maximum / step) + 1)]


def overview(data, out):
    svg = Svg(1280, 840, "Geometric-mean speedup relative to RustFFT")
    svg.text(36, 42, "Four FFT libraries: overview", 28, weight="bold")
    svg.text(36, 74, "Geometric mean of median speedups; equal weight per shared length; higher is faster.", 17)
    maximum, ticks = scale([v for p in data["panels"] for v in p["geomean_speedups"].values()])
    for index, panel in enumerate(data["panels"]):
        ox, oy = 36 + (index % 2) * 630, 116 + (index // 2) * 335
        svg.text(ox, oy, f'{panel["precision"]} · {panel["direction"]}', 23, weight="bold")
        svg.text(ox, oy + 28, f'{len(panel["shared_lengths"])} shared lengths / 20', 15)
        x, y, w, h = ox + 179, oy + 47, 344, 193
        for tick in ticks:
            xx = x + w * tick / maximum
            svg.line(xx, y, xx, y + h)
            svg.text(xx, y + h + 24, f"{tick:g}×", 14, "middle")
        for i, lib in enumerate(LIBS):
            yy = y + 10 + i * 47
            svg.text(x - 12, yy + 22, NAMES[i], 14, "end")
            value = panel["geomean_speedups"][lib]
            if value is None:
                svg.text(x + 6, yy + 22, "N/A", 15)
            else:
                bar = w * value / maximum
                svg.rect(x, yy, bar, 29, COLORS[i])
                svg.text(x + bar + 6, yy + 22, f"{value:.2f}×", 15, weight="bold")
        svg.line(x + w / maximum, y, x + w / maximum, y + h, True)
        svg.text(x + w / maximum + 5, y - 7, "1× baseline", 13)
    svg.text(36, 808, "Speedup = RustFFT median / library median. PhastFT uses its interleaved API, including allocations.", 16)
    svg.save(out / "overview.svg")


def detailed(data, out):
    maximum, ticks = scale([cell["speedups"][lib] for panel in data["panels"]
                            for cell in panel["cells"] if cell["n"] in SELECTED for lib in LIBS])
    for panel in data["panels"]:
        title = f'{panel["precision"]} · {panel["direction"]}'
        svg = Svg(1600, 690, title + " median speedups")
        svg.text(36, 43, title + " — speedup relative to RustFFT", 27, weight="bold")
        svg.text(36, 74, "Median latency; in-place; one transform per call; higher is faster.", 17)
        for i, name in enumerate(NAMES):
            xx = 110 + i * 320
            svg.rect(xx, 99, 18, 18, COLORS[i])
            svg.text(xx + 27, 114, name, 17)
        x, y, w, h = 90, 164, 1440, 394
        for tick in ticks:
            yy = y + h - tick / maximum * h
            svg.line(x, yy, x + w, yy)
            svg.text(x - 12, yy + 5, f"{tick:g}×", 16, "end")
        yy = y + h - h / maximum
        svg.line(x, yy, x + w, yy, True)
        svg.text(x + w, yy - 8, "1× baseline", 14, "end")
        selected = {cell["n"]: cell for cell in panel["cells"] if cell["n"] in SELECTED}
        group_width = w / len(SELECTED)
        for j, n in enumerate(SELECTED):
            gx = x + j * group_width + 14
            for i, lib in enumerate(LIBS):
                bx = gx + i * 38
                value = selected[n]["speedups"][lib]
                if value is None:
                    svg.text(bx + 16, y + h - 9, "N/A", 12, "middle")
                else:
                    bh = h * value / maximum
                    svg.rect(bx, y + h - bh, 32, bh, COLORS[i])
                    svg.text(bx + 16, y + h - bh - 9, f"{value:.2f}", 12, "middle", "bold")
            svg.text(x + (j + 0.5) * group_width, y + h + 31, f"{n:,}", 17, "middle")
        svg.text(x + w / 2, 624, "Transform length N", 18, "middle")
        svg.text(36, 668, "Zero-based linear axes shared across detail charts. Labels are speedup factors; N/A means unavailable.", 16)
        svg.save(out / f'{panel["precision"]}-{panel["direction"]}.svg')


def readme_hero(env, data, out):
    """Compare geometric-mean execution speed on all shared archived lengths."""
    svg = Svg(1400, 1040, "fastfft: geometric-mean CPU FFT speed relative to RustFFT")
    svg.text(48, 55, "CPU FFT performance", 34, weight="bold")
    cpu = env["cpu"]["model_name"].split(" w/ ")[0]
    svg.text(48, 91, f"{cpu} · one thread · in-place · median execution latency", 21)
    svg.text(48, 131, "Geometric-mean speedup relative to RustFFT · higher is faster", 22)
    maximum, ticks = scale([v for panel in data["panels"] for v in panel["geomean_speedups"].values()])
    for index, panel in enumerate(data["panels"]):
        ox, oy = 48 + (index % 2) * 695, 190 + (index // 2) * 385
        svg.text(ox, oy, f'{panel["precision"]} · {panel["direction"]}', 26, weight="bold")
        svg.text(ox, oy + 32, f'{len(panel["shared_lengths"])} shared lengths · N = 2–1,048,576', 19)
        x, y, w, h = ox + 200, oy + 58, 360, 216
        for tick in ticks:
            xx = x + w * tick / maximum
            svg.line(xx, y, xx, y + h)
            svg.text(xx, y + h + 30, f"{tick:g}×", 18, "middle")
        svg.line(x + w / maximum, y, x + w / maximum, y + h, True)
        svg.text(x + w / maximum + 8, y - 9, "1× baseline", 16)
        for i, lib in enumerate(LIBS):
            yy = y + 10 + i * 54
            name = "PhastFT interleaved" if i == 3 else NAMES[i]
            svg.text(x - 16, yy + 24, name, 20, "end", "bold" if i == 0 else "normal")
            value = panel["geomean_speedups"][lib]
            if value is None:
                svg.text(x + 8, yy + 24, "N/A", 21)
            else:
                bar = w * value / maximum
                svg.rect(x, yy, bar, 34, COLORS[i])
                # Keep the baseline/grid from crossing the numeric label.
                svg.rect(x + bar + 6, yy + 2, 77, 31, "white")
                svg.text(x + bar + 10, yy + 25, f"{value:.2f}×", 22,
                         weight="bold" if i == 0 else "normal", color=COLORS[i])
    svg.text(48, 968, "Speedup = RustFFT median latency ÷ library median latency · equal weight per shared length", 20)
    svg.text(48, 998, "All four libraries share 20 lengths per panel · PhastFT interleaved includes allocations/conversion", 18)
    svg.save(out / "readme-benchmark.svg")


def render_pngs(out, names=None, font=None):
    executable = shutil.which("magick") or shutil.which("convert")
    if not executable:
        raise RuntimeError("ImageMagick (magick or convert) is required for PNG export")
    if names is None:
        names = ["overview"] + [f"{p}-{d}" for p, d in PANELS]
    for name in names:
        font_args = ["-font", str(font)] if font else []
        subprocess.run([executable, *font_args, "-background", "white", str(out / f"{name}.svg"),
                        str(out / f"{name}.png")], check=True)


def report(env, meta, cells, data, out):
    idle = read_json(out / "idle-check.json")
    valid = sum(latency(row, lib) is not None for row in cells.values() for lib in LIBS)
    unavailable = [(p, d, n, lib, row["by_lib"][lib].get("reason", "unsupported"))
                   for (p, d, n), row in cells.items() for lib in LIBS if latency(row, lib) is None]
    lines = ["# Four-library FFT comparison", "",
             f'Host: **{env["host"]}**. One full-profile run; 80 cells; {valid}/320 available library measurements.', "",
             "Speedup is **RustFFT median latency ÷ library median latency**. Above 1× is faster. "
             "Overview bars use the geometric mean over lengths with valid results for all four libraries, "
             "with equal weight per length. Controls are excluded. These are execution timings; planning is separate.", "",
             "![Four-panel geometric-mean overview](overview.png)", "", "[Overview SVG](overview.svg)", "",
             "| Precision / direction | Shared cells | fastfft | RustFFT | FFTW | PhastFT interleaved |",
             "|---|---:|---:|---:|---:|---:|"]
    for panel in data["panels"]:
        values = [f"{v:.3f}×" if v is not None else "N/A" for v in panel["geomean_speedups"].values()]
        lines.append(f'| {panel["precision"]} {panel["direction"]} | {len(panel["shared_lengths"])} | ' + " | ".join(values) + " |")
    lines += ["", "## Measurement method", "",
              "Lengths are 2¹ through 2²⁰ (2–1,048,576), f32/f64, forward/inverse, in-place, "
              "one transform per call, 64-byte-aligned arena buffers. Full profile: 200 ms warm-up per library, "
              "seven rounds with rotating library order, at least 100 ms per library per round, "
              "and calibrated batches targeting at least 50 µs. Zero-filled input is used for timing. "
              "Each cell runs sequentially in its own child pinned to CPU 2; SMT sibling CPU 10 stays idle. "
              "Median is taken over recorded batch means per transform, rather than individual-call samples.", "",
              "Every available library result passed seeded-random-input verification against the double-double "
              "reference before timing (relative L2 tolerance 200·(log₂ N + 1)·ε). "
              "The arena repeats an N=4,096 control before timing, every 25 cells, and at the end; "
              "each control merges three child processes. Drift uses the arena's dependent-add timing proxy, "
              "not calibrated GHz; control latency is informational.", "",
              f'Run validity: official={meta["official"]}; drift flag={meta["drift_flag"]}; '
              f'maximum proxy drift={meta["max_drift"] * 100:.2f}%; child failures={meta["child_failures"]}; '
              f'aborted={meta["aborted"]}; elapsed={meta["elapsed_s"]:.1f} s.', "",
              "Host-visible processes were inspected after compilation. Immediately before timing, three "
              f'consecutive 10-second samples required overall CPU usage and usage of CPUs 2 and 10 each ≤{idle["threshold_percent"]}%, '
              "followed by a passing `scripts/bench-env.sh check --core 2`. Builds, tests and chart generation "
              "were paused during timing. [Idle samples and host process evidence](idle-check.json); "
              "[environment check](bench-env-check.txt); [execution log](run.log).", "",
              "## Library APIs and comparability", "",
              f'- fastfft {fastfft_version()}: default Estimate planner; {isa_description(cells)}; preallocated scratch; '
              '`process_with_scratch`. The detected plan descriptions are retained in the complete results.',
              f'- RustFFT {env["libraries"]["rustfft"]}: automatic SIMD planner; preallocated scratch; `process_with_scratch`.',
              f'- FFTW {env["fftw"]["version"]}: existing static single/double build; `FFTW_MEASURE`, saved host wisdom; planning excluded.',
              f'- PhastFT {env["libraries"]["phastft"]}: `complex-nums` interleaved API with reused `PlannerDit32/64`; '
              '`parallel` disabled. Each timed call deinterleaves into two temporary vectors, transforms, '
              'allocates a complex vector to recombine, and copies the result back. Allocation, conversion, '
              'copy and deallocation are included. These temporary vectors have the library’s own alignment.', "",
              "PhastFT inverse transforms normalize by 1/N; fastfft, RustFFT and FFTW return unnormalized "
              "inverse transforms. Verification rescales PhastFT outside timing. The timed inverse calls retain "
              "their native behavior, including PhastFT's normalization. These results compare the requested "
              "interleaved APIs and do not measure PhastFT's split-array API.", "",
              "## Build and machine", "",
              f'- CPU: {env["cpu"]["model_name"]}; host `{env["host"]}`; CPU 2, siblings `{env["pinned_cpu_sibling"]}`.',
              f'- Governor `{env["governor"]}`; EPP `{env["energy_performance_preference"]}`; boost `{env["boost"]}`; SMT `{env["smt_active"]}`.',
              f'- Compiler: `{env["rustc"]}`.',
              f'- Source revision: `{env["git"]["commit"]}`; captured dirty status `{env["git"]["dirty"]}`. '
              'The reporting script and evidence were added locally; benchmark source and Cargo.lock were unchanged.',
              f'- Profile: `{env["build_profile"]}` (optimized, fat LTO, one codegen unit); RUSTFLAGS: `{env["rustflags"]}`; '
              f'`target-cpu=native`: `{env["target_cpu_native"]}`.', "",
              "FFTW configure lines:", "", "```text", env["fftw"]["configure"], "```", "",
              "Benchmark command (after preparation and idle check):", "", "```bash",
              'RUSTFLAGS="-C llvm-args=-align-all-functions=6" \\',
              '  cargo xtask arena run --suite pow2 --profile full \\',
              '  --libs fastfft,rustfft,fftw,phastft/interleaved \\',
              '  --max-n 1048576 --filter place=ip --core 2 \\',
              '  --label four-library-comparison', "```", "",
              "## Detailed charts and absolute median latencies", "",
              "All detail charts share a zero-based linear scale. Selected lengths are 16, 64, 256, "
              "1,024, 4,096, 16,384, 65,536 and 1,048,576. Tables include every measured length; "
              "latencies are **nanoseconds per transform**, rounded to three decimals."]
    for panel in data["panels"]:
        p, d = panel["precision"], panel["direction"]
        name = f"{p}-{d}"
        lines += ["", f"### {p} {d}", "", f"![{p} {d} median speedups]({name}.png)", "",
                  f"[SVG chart]({name}.svg)", "",
                  "| N | fastfft (ns) | RustFFT (ns) | FFTW (ns) | PhastFT interleaved (ns) |",
                  "|---:|---:|---:|---:|---:|"]
        for cell in panel["cells"]:
            values = [f"{v:,.3f}" if v is not None else "N/A" for v in cell["median_ns"].values()]
            lines.append(f'| {cell["n"]:,} | ' + " | ".join(values) + " |")
    lines += ["", "## Availability and limits", ""]
    if unavailable:
        lines += [f"- {p} {d} N={n:,}, {lib}: unavailable ({reason})." for p, d, n, lib, reason in unavailable]
    else:
        lines.append("No unavailable measurements: all 320 library measurements passed verification and were timed; "
                     "each overview panel shares all 20 lengths.")
    lines += ["", "One run on one CPU with aligned buffers and zero-filled timing data does not establish "
              "cross-machine performance or run-to-run uncertainty. Single-process address placement and "
              "small-N call overhead can affect ratios. Inverse normalization and PhastFT's allocation costs "
              "are part of the API behavior being compared.", "",
              "## Complete results and regeneration", "",
              "[Interactive HTML report](index.html).", "",
              "[Complete results](results.jsonl.gz), [environment](env.json), [run metadata](meta.json), "
              "[chart arithmetic and shared cells](chart-data.json), [arena report](report.md), "
              "[validation](validation.json).", "",
              "Regenerate from the repository root:", "", "```bash",
              f'python3 scripts/plot-library-comparison.py {out.as_posix()} --out {out.as_posix()}', "```", ""]
    (out / "summary.md").write_text("\n".join(lines))


def html_report(env, meta, cells, data, out):
    """Self-contained page with local images and keyboard-accessible group selection."""
    esc = html.escape
    idle = read_json(out / "idle-check.json")
    valid = sum(latency(row, lib) is not None for row in cells.values() for lib in LIBS)
    means = [panel["geomean_speedups"]["fastfft"] for panel in data["panels"]
             if panel["geomean_speedups"]["fastfft"] is not None]
    finding = (f'fastfft’s geometric-mean median speedup is {min(means):.2f}×–{max(means):.2f}× '
               'relative to RustFFT across these four groups.' if means else
               'No shared measurements are available for geometric-mean speedup.')
    overview_rows = []
    for i, lib in enumerate(LIBS):
        values = [panel["geomean_speedups"][lib] for panel in data["panels"]]
        tds = ''.join(f'<td>{value:.3f}×</td>' if value is not None else '<td>N/A</td>' for value in values)
        overview_rows.append(f'<tr><th scope="row"><span class="swatch" style="background:{COLORS[i]}"></span>'
                             f'{esc(NAMES[i])}</th>{tds}</tr>')
    buttons, sections = [], []
    for panel in data["panels"]:
        p, d = panel["precision"], panel["direction"]
        name = f'{p}-{d}'
        buttons.append(f'<button type="button" data-panel="{name}" aria-controls="{name}" '
                       f'aria-pressed="false">{p} {d}</button>')
        rows = []
        for cell in panel["cells"]:
            tds = ''.join(f'<td>{value:,.3f}</td>' if value is not None else '<td>N/A</td>'
                          for value in cell["median_ns"].values())
            rows.append(f'<tr><th scope="row">{cell["n"]:,}</th>{tds}</tr>')
        shared = len(panel["shared_lengths"])
        sections.append(f'''<section class="measurement" id="{name}" aria-labelledby="heading-{name}">
<div class="section-heading"><h3 id="heading-{name}">{p} {d}</h3><span>{shared} shared lengths / 20</span></div>
<div class="chart-window detail" tabindex="0" role="region" aria-label="{p} {d} chart; scroll horizontally on small screens">
<img src="{name}.png" alt="{p} {d} median speedup at eight representative lengths; 1× is RustFFT" width="1600" height="690"></div>
<p class="chart-links"><a href="{name}.svg">SVG</a><a href="{name}.png">Full-size PNG</a></p>
<details class="latencies"><summary>Absolute median latencies · all 20 lengths</summary>
<p>Nanoseconds per transform. N/A marks an unavailable measurement.</p>
<div class="table-window" tabindex="0" role="region" aria-label="{p} {d} absolute latency table">
<table><caption>{p} {d} · median nanoseconds per transform</caption><thead><tr>
<th scope="col">N</th><th scope="col">fastfft</th><th scope="col">RustFFT</th><th scope="col">FFTW</th>
<th scope="col">PhastFT interleaved</th></tr></thead><tbody>{''.join(rows)}</tbody></table></div></details></section>''')
    prefix = f'''<!doctype html>
<html lang="en"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="color-scheme" content="light"><title>Four FFT libraries · {esc(env['host'])}</title>
<style>
:root{{--paper:#edf3f8;--panel:#ffffff;--ink:#142f47;--muted:#526b80;--line:#c7d6e2;--blue:#0072b2;
--display:"DejaVu Sans Mono","Liberation Mono",monospace;--body:"Verdana","DejaVu Sans",sans-serif}}
*{{box-sizing:border-box}}html{{scroll-behavior:smooth}}body{{margin:0;background:var(--paper);color:var(--ink);font:16px/1.65 var(--body)}}
a{{color:#005d94;text-underline-offset:3px}}a:hover{{color:var(--ink)}}:focus-visible{{outline:3px solid #d55e00;outline-offset:4px}}
.shell{{max-width:1240px;margin:auto;padding:0 32px}}.masthead{{display:flex;justify-content:space-between;gap:20px;align-items:center;padding:24px 0;border-bottom:2px solid var(--ink);font:13px var(--display)}}
.masthead a{{font-family:var(--body)}}.intro{{padding:42px 0 30px}}.eyebrow{{font:13px var(--display);letter-spacing:.06em;color:var(--muted);margin:0 0 16px}}
h1{{font:clamp(30px,4.4vw,54px)/1.17 var(--display);font-weight:700;letter-spacing:-.055em;margin:0 0 22px}}h2{{font:700 24px/1.3 var(--display);letter-spacing:-.04em;margin:0}}h3{{font:700 22px var(--display);margin:0}}
.lead{{font-size:19px;max-width:850px;margin:0 0 18px}}.scope{{font-size:14px;color:var(--muted);margin:0}}.legend{{display:flex;flex-wrap:wrap;gap:12px 26px;margin:22px 0 0;font-size:14px}}
.swatch{{display:inline-block;width:11px;height:11px;margin-right:8px}}.sheet{{background:var(--panel);padding:28px;border:1px solid var(--line);margin-bottom:26px;border-radius:8px}}
.section-heading{{display:flex;align-items:baseline;justify-content:space-between;gap:18px;margin-bottom:16px}}.section-heading span{{color:var(--muted);font-size:13px}}.sheet>p{{max-width:900px}}
.chart-window{{overflow:auto;background:white;border:1px solid var(--line);border-radius:4px}}.chart-window img{{display:block;width:100%;min-width:860px;height:auto}}.detail img{{min-width:1080px}}
.chart-links{{display:flex;gap:20px;font-size:13px;margin:10px 0 24px}}.table-window{{overflow:auto}}table{{border-collapse:collapse;width:100%;font-size:13px;font-variant-numeric:tabular-nums}}
caption{{text-align:left;color:var(--muted);padding:8px 0 14px}}th,td{{padding:11px 12px;border-bottom:1px solid var(--line);text-align:right;white-space:nowrap}}th:first-child{{text-align:left}}thead th{{background:var(--paper)}}tbody th{{font-weight:normal}}tbody tr:nth-child(even){{background:#f7fafc}}
.picker{{display:flex;gap:8px;flex-wrap:wrap;padding:4px 0 20px}}button{{font:14px var(--body);padding:10px 15px;border:1px solid #a5bbcd;border-radius:5px;background:var(--paper);color:var(--ink);cursor:pointer}}button[aria-pressed=true]{{background:var(--ink);border-color:var(--ink);color:white}}button:hover{{border-color:var(--blue)}}
.measurement[hidden]{{display:none}}details{{margin-top:18px;border-top:1px solid var(--line);padding-top:18px}}summary{{font-size:15px;font-weight:bold;cursor:pointer}}details p,details li{{font-size:14px}}
.notes{{display:grid;grid-template-columns:1fr 1fr;gap:30px;margin-top:24px}}.notes h3{{font-size:18px;margin:0 0 12px}}.notes ul{{padding-left:20px}}.notes li{{margin:0 0 8px}}.callout{{padding:16px 20px;background:var(--paper);border-left:4px solid #009e73;font-size:14px}}
.facts{{display:grid;grid-template-columns:140px 1fr;gap:10px 20px;font-size:13px}}.facts dt{{color:var(--muted)}}.facts dd{{margin:0;overflow-wrap:anywhere}}code,pre{{font-family:var(--display);font-size:12px}}pre{{white-space:pre-wrap;overflow-wrap:anywhere;background:var(--paper);padding:16px;border-radius:5px}}
.downloads{{display:flex;flex-wrap:wrap;gap:10px 22px;margin:20px 0 0;font-size:14px}}footer{{padding:4px 0 32px;color:var(--muted);font-size:12px}}.mobile-note{{display:none}}
@media(max-width:700px){{.shell{{padding:0 16px}}.masthead{{font-size:11px;padding:16px 0}}.intro{{padding:28px 0 22px}}.lead{{font-size:16px}}.sheet{{padding:18px 14px}}h2{{font-size:20px}}.section-heading{{flex-direction:column;gap:5px}}.notes{{grid-template-columns:1fr;gap:18px}}.facts{{grid-template-columns:1fr;gap:3px}}.facts dd{{margin-bottom:10px}}.legend{{gap:10px 18px}}.mobile-note{{display:block;font-size:12px;color:var(--muted)}}th,td{{padding:10px}}}}
@media(prefers-reduced-motion:reduce){{html{{scroll-behavior:auto}}}}@media print{{.picker{{display:none}}.measurement[hidden]{{display:block}}.sheet{{break-inside:avoid}}.chart-window img{{min-width:0}}body{{background:white}}}}
</style></head><body><div class="shell">
<header class="masthead"><span>fastfft / benchmark arena</span><a href="summary.md">Markdown report ↓</a></header>
<main><div class="intro"><p class="eyebrow">{esc(idle['timing_started'][:10])} · {esc(env['host'])} · {esc(env['cpu']['model_name'].split(' w/')[0])}</p>
<h1>Four FFT libraries.<br>One pinned core.</h1><p class="lead">{esc(finding)}</p>
<p class="scope">Forward + inverse · f32 + f64 · N = 2 through 1,048,576 · in-place · one transform per call</p>
<div class="legend">{''.join(f'<span><i class="swatch" style="background:{color}"></i>{esc(name)}</span>' for name, color in zip(NAMES,COLORS))}</div></div>
<section class="sheet" aria-labelledby="overview-title"><div class="section-heading"><h2 id="overview-title">The shared-cell overview</h2><span>{valid}/320 verified and timed</span></div>
<p>Speedup = RustFFT median ÷ library median. Above <strong>1×</strong> is faster. Each bar is a geometric mean with equal weight per length, using only cells shared by all four libraries.</p>
<p class="mobile-note">Scroll the charts horizontally, or open the full-size image.</p>
<div class="chart-window" tabindex="0" role="region" aria-label="Four-panel overview chart; scroll horizontally on small screens"><img src="overview.png" width="1280" height="840" alt="Geometric-mean median speedups for f32 and f64, forward and inverse"></div>
<p class="chart-links"><a href="overview.svg">SVG</a><a href="overview.png">Full-size PNG</a></p>
<div class="table-window" tabindex="0" role="region" aria-label="Geometric-mean speedup table"><table><caption>Geometric-mean median speedup relative to RustFFT</caption>
<thead><tr><th scope="col">Library</th><th scope="col">f32 forward</th><th scope="col">f32 inverse</th><th scope="col">f64 forward</th><th scope="col">f64 inverse</th></tr></thead><tbody>{''.join(overview_rows)}</tbody></table></div></section>
<section class="sheet" aria-labelledby="detail-title"><div class="section-heading"><h2 id="detail-title">Explore a transform group</h2><span>Eight charted lengths · every length in the tables</span></div>
<p>Choose a precision and direction. All detail charts use the same zero-based linear scale.</p>
<div class="picker" role="group" aria-label="Precision and direction">{''.join(buttons)}</div>{''.join(sections)}</section>
<section class="sheet" aria-labelledby="method-title"><div class="section-heading"><h2 id="method-title">How this run was measured</h2><span>{meta['elapsed_s']:.1f} seconds</span></div>
<p class="callout">All {valid} available measurements passed double-double reference verification. Maximum CPU drift was <strong>{meta['max_drift']*100:.2f}%</strong>; there were no child failures, drift flags or aborted cells.</p>
<div class="notes"><div><h3>Measurement protocol</h3><ul><li>80 cells: 20 power-of-two lengths × two precisions × two directions.</li>
<li>Sequential children pinned to CPU 2. 64-byte-aligned buffers; zero-filled timing input; one transform per call.</li>
<li>200 ms warm-up per library, seven rotating rounds, at least 100 ms per library per round. Batches target at least 50 µs.</li>
<li>Median of timed batch means per transform. Planning stays outside timing.</li>
<li>Before timing: three consecutive 10-second samples with total CPU, CPU 2 and CPU 10 each ≤{idle['threshold_percent']}%, then a passing environment check.</li>
<li>Five control measurements track drift; each control merges three child processes. The dependent-add proxy measures relative drift, not calibrated GHz.</li></ul></div>
<div><h3>What the API timings include</h3><ul><li>fastfft and RustFFT reuse planners and preallocated scratch. FFTW reuses its measured plans and host wisdom.</li>
<li>PhastFT uses its <strong>interleaved API</strong> with a reused planner and parallelism disabled. Temporary real/imaginary vectors, recombination, copy-back and deallocation are timed.</li>
<li>PhastFT inverse includes 1/N normalization. The other libraries return unnormalized inverse results; verification rescales PhastFT outside timing.</li></ul>
<p>One run on one CPU does not establish cross-machine results or run-to-run uncertainty. Small-N call overhead and address placement can affect ratios.</p></div></div>
<details><summary>Machine, library versions and build</summary><dl class="facts">
<dt>CPU</dt><dd>{esc(env['cpu']['model_name'])}</dd><dt>Core and SMT</dt><dd>CPU {env['pinned_cpu']}; siblings {esc(env['pinned_cpu_sibling'])}; SMT {esc(env['smt_active'])}</dd>
<dt>CPU policy</dt><dd>Governor {esc(env['governor'])}; EPP {esc(env['energy_performance_preference'])}; boost {esc(env['boost'])}</dd>
<dt>fastfft</dt><dd>{esc(fastfft_version())}; default Estimate planner; {esc(isa_description(cells))}</dd>
<dt>RustFFT</dt><dd>{esc(env['libraries']['rustfft'])}; automatic SIMD planner</dd><dt>FFTW</dt><dd>{esc(env['fftw']['version'])}; existing static build; FFTW_MEASURE</dd>
<dt>PhastFT</dt><dd>{esc(env['libraries']['phastft'])}; complex-nums interleaved; parallel disabled</dd>
<dt>Rust compiler</dt><dd>{esc(env['rustc'])}</dd><dt>Build</dt><dd>Arena profile; fat LTO; one codegen unit; {esc(env['rustflags'])}; target-cpu=native: {env['target_cpu_native']}</dd>
<dt>Source revision</dt><dd><code>{esc(env['git']['commit'])}</code>; dirty status {env['git']['dirty']}. Benchmark source and Cargo.lock were unchanged; report files were added locally.</dd></dl>
<p>FFTW configure lines</p><pre>{esc(env['fftw']['configure'])}</pre></details>
<details><summary>Command and complete method</summary><pre>RUSTFLAGS="-C llvm-args=-align-all-functions=6" \\
cargo xtask arena run --suite pow2 --profile full \\
  --libs fastfft,rustfft,fftw,phastft/interleaved \\
  --max-n 1048576 --filter place=ip --core 2 \\
  --label four-library-comparison</pre><p><a href="summary.md">Read the complete Markdown report</a> for all absolute-latency tables and methodology.</p></details>
<nav class="downloads" aria-label="Download results"><a href="summary.md" download>Markdown report</a><a href="results.jsonl.gz" download>Complete results</a>
<a href="chart-data.json">Chart data</a><a href="env.json">Environment</a><a href="meta.json">Run metadata</a><a href="validation.json">Validation</a>
<a href="idle-check.json">Idle evidence</a><a href="bench-env-check.txt">Environment check</a><a href="run.log">Run log</a></nav></section></main>
<footer>One full-profile run · all charts use median latency · no planning in the timing region</footer></div>
<script>
(()=>{{const buttons=[...document.querySelectorAll('[data-panel]')];const sections=[...document.querySelectorAll('.measurement')];
function select(id){{if(!sections.some(s=>s.id===id))id='f32-forward';sections.forEach(s=>s.hidden=s.id!==id);buttons.forEach(b=>b.setAttribute('aria-pressed',String(b.dataset.panel===id)))}}
buttons.forEach(b=>b.addEventListener('click',()=>{{select(b.dataset.panel);history.replaceState(null,'','#'+b.dataset.panel)}}));
const initial=location.hash.slice(1);select(initial);addEventListener('hashchange',()=>select(location.hash.slice(1)));}})();
</script></body></html>'''
    (out / "index.html").write_text(prefix)


def isa_description(cells):
    tiers = set()
    for row in cells.values():
        describe = row["by_lib"]["fastfft"].get("describe", "")
        for name in ("avx512-ymm", "avx512", "avx2", "sse2", "scalar"):
            if re.search(rf"\b{re.escape(name)}(?: |$)", describe):
                tiers.add(name)
    labels = {"avx512": "AVX-512", "avx512-ymm": "AVX-512 YMM", "avx2": "AVX2", "sse2": "SSE2", "scalar": "scalar"}
    detected = next((labels[t] for t in ("avx512", "avx512-ymm", "avx2", "sse2", "scalar") if t in tiers), "unavailable")
    selected = ", ".join(labels[t] for t in sorted(tiers))
    return f"detected {detected} tier; observed kernels: {selected} (selected by length and precision)"


def fastfft_version():
    import tomllib
    root = Path(__file__).resolve().parent.parent
    return tomllib.loads((root / "crates/fastfft/Cargo.toml").read_text())["package"]["version"]


def copy_artifacts(run, evidence, out):
    for name in ("env.json", "meta.json", "report.md"):
        source = run / name
        if source.resolve() != (out / name).resolve():
            shutil.copyfile(source, out / name)
    if (run / "plots").exists() and (run / "plots").resolve() != (out / "plots").resolve():
        shutil.copytree(run / "plots", out / "plots", dirs_exist_ok=True)
    compressed = run / "results.jsonl.gz"
    if compressed.exists():
        if compressed.resolve() != (out / compressed.name).resolve():
            shutil.copyfile(compressed, out / compressed.name)
    else:
        (out / "results.jsonl.gz").write_bytes(gzip.compress((run / "results.jsonl").read_bytes(), mtime=0))
    for name in ("idle-check.json", "bench-env-check.txt", "host-processes.txt", "run.log"):
        source = evidence / name
        if source.resolve() != (out / name).resolve():
            shutil.copyfile(source, out / name)


def validate_evidence(evidence):
    idle = read_json(evidence / "idle-check.json")
    samples = idle.get("samples", [])[-3:]
    if not idle.get("passed") or idle.get("host_pid1") != "systemd" or len(samples) != 3:
        raise ValueError("Passing host-visible idle evidence is required")
    for sample in samples:
        if (not sample.get("quiet") or sample.get("duration_seconds", 0) < 10
                or sample.get("competing_processes")
                or not all(0 <= sample["cpu_percent"][cpu] <= 5 for cpu in ("cpu", "cpu2", "cpu10"))):
            raise ValueError("Required quiet 30-second window was not established")
    if "bench-env: OK" not in (evidence / "bench-env-check.txt").read_text():
        raise ValueError("The pre-timing bench-env check must pass")


def validate_arithmetic(cells, data):
    """Independently check shared cells, ratios and means against raw medians."""
    for panel in data["panels"]:
        p, d = panel["precision"], panel["direction"]
        shared = [n for n in LENGTHS if all(cells[p, d, n]["by_lib"][lib]["status"] == "ok" for lib in LIBS)]
        assert shared == panel["shared_lengths"]
        for cell in panel["cells"]:
            row = cells[p, d, cell["n"]]["by_lib"]
            for lib in LIBS:
                if row[lib]["status"] == "ok" and row["rustfft"]["status"] == "ok":
                    expected = row["rustfft"]["time"]["median"] / row[lib]["time"]["median"]
                    assert math.isclose(cell["speedups"][lib], expected, rel_tol=1e-12)
                else:
                    assert cell["speedups"][lib] is None
        for lib in LIBS:
            value = panel["geomean_speedups"][lib]
            if shared:
                # Log subtraction independently checks the ratio-based aggregation.
                expected = math.exp(math.fsum(
                    math.log(cells[p, d, n]["by_lib"]["rustfft"]["time"]["median"])
                    - math.log(cells[p, d, n]["by_lib"][lib]["time"]["median"])
                    for n in shared) / len(shared))
                assert math.isclose(value, expected, rel_tol=1e-12)
            else:
                assert value is None


def validate_readme_hero(out, cells, data):
    """Check bar geometry and summary labels against independently verified medians."""
    validate_arithmetic(cells, data)
    ns = {"s": "http://www.w3.org/2000/svg"}
    root = ET.parse(out / "readme-benchmark.svg").getroot()
    maximum, _ = scale([v for panel in data["panels"] for v in panel["geomean_speedups"].values()])
    bars = [rect for rect in root.findall(".//s:rect", ns) if rect.get("fill") in COLORS]
    expected = [(index, lib, panel["geomean_speedups"][lib])
                for index, panel in enumerate(data["panels"]) for lib in LIBS
                if panel["geomean_speedups"][lib] is not None]
    assert len(bars) == len(expected)
    for bar, (index, lib, value) in zip(bars, expected):
        assert bar.get("fill") == COLORS[LIBS.index(lib)]
        assert abs(float(bar.get("width")) - 360 * value / maximum) <= 0.00051
        assert float(bar.get("x")) == 248 + (index % 2) * 695
        assert float(bar.get("y")) == 258 + (index // 2) * 385 + LIBS.index(lib) * 54
    texts = [element.text for element in root.findall(".//s:text", ns)]
    assert texts.count("0×") == 4 and texts.count("1× baseline") == 4
    for _, _, value in expected:
        assert f"{value:.2f}×" in texts
    # PNG's IHDR stores dimensions without requiring a second renderer invocation.
    png = (out / "readme-benchmark.png").read_bytes()
    assert png[:8] == b"\x89PNG\r\n\x1a\n"
    assert int.from_bytes(png[16:20], "big") == 1400
    assert int.from_bytes(png[20:24], "big") == 1040
    verified = sum(row["by_lib"][lib]["status"] == "ok" for row in cells.values() for lib in LIBS)
    print(f"Verified {len(cells)} archived cells, {verified} measurements and {len(bars)} bars; controls excluded")


def validate_outputs(out, cells, data):
    """Check chart geometry and arithmetic against the raw medians independently."""
    validate_arithmetic(cells, data)
    ns = {"s": "http://www.w3.org/2000/svg"}
    overview_max, _ = scale([v for panel in data["panels"] for v in panel["geomean_speedups"].values()])
    detail_max, _ = scale([cell["speedups"][lib] for panel in data["panels"]
                           for cell in panel["cells"] if cell["n"] in SELECTED for lib in LIBS])
    sizes = {}
    for name in ["overview"] + [f"{p}-{d}" for p, d in PANELS]:
        root = ET.parse(out / f"{name}.svg").getroot()
        rects = [r for r in root.findall(".//s:rect", ns) if r.get("fill") in COLORS]
        if name == "overview":
            expected = [(lib, panel["geomean_speedups"][lib]) for panel in data["panels"] for lib in LIBS
                        if panel["geomean_speedups"][lib] is not None]
            assert len(rects) == len(expected)
            for rect, (lib, value) in zip(rects, expected):
                assert rect.get("fill") == COLORS[LIBS.index(lib)]
                assert abs(float(rect.get("width")) - 344 * value / overview_max) <= 0.00051
        else:
            panel = next(panel for panel in data["panels"] if f'{panel["precision"]}-{panel["direction"]}' == name)
            expected = [(lib, cell["speedups"][lib]) for cell in panel["cells"] if cell["n"] in SELECTED
                        for lib in LIBS if cell["speedups"][lib] is not None]
            assert len(rects) == 4 + len(expected)  # Four legend swatches.
            for rect, (lib, value) in zip(rects[4:], expected):
                assert rect.get("fill") == COLORS[LIBS.index(lib)]
                assert abs(float(rect.get("height")) - 394 * value / detail_max) <= 0.00051
        texts = [element.text for element in root.findall(".//s:text", ns)]
        assert "1× baseline" in texts and "0×" in texts
        identify = shutil.which("identify")
        command = [identify] if identify else [shutil.which("magick"), "identify"]
        dimensions = subprocess.check_output(command + ["-format", "%w %h", str(out / f"{name}.png")], text=True)
        width, height = map(int, dimensions.split())
        assert width == int(root.get("width")) and height == int(root.get("height"))
        sizes[name] = [width, height]
    links = [link for name in ("summary.md", "report.md")
             for link in re.findall(r'\]\(([^)]+)\)', (out / name).read_text())]
    for link in links:
        if link.startswith(("#", "https://", "http://")):
            continue
        if not (out / link).exists():
            raise ValueError(f"Broken Markdown link: {link}")
    class PageLinks(HTMLParser):
        def __init__(self):
            super().__init__()
            self.links = []
            self.images = 0

        def handle_starttag(self, tag, attributes):
            attrs = dict(attributes)
            for attribute in ("href", "src"):
                if attribute in attrs:
                    self.links.append(attrs[attribute])
            if tag == "img":
                assert attrs.get("alt")
                self.images += 1

    page = PageLinks()
    page.feed((out / "index.html").read_text())
    assert page.images == 5
    for link in page.links:
        if not link.startswith("#") and not (out / link).is_file():
            raise ValueError(f"Broken HTML link: {link}")
    validation = {"cells": len(cells), "library_results": len(cells) * 4, "controls": 5,
                  "correctness": "all available measurements passed double-double verification",
                  "shared_cell_aggregation": "passed", "speedup_arithmetic": "passed",
                  "svg_bar_geometry": "passed", "zero_axes_and_baselines": "passed",
                  "png_dimensions": sizes, "markdown_links": len(links), "html_links": len(page.links),
                  "unavailable_measurements": sum(latency(row, lib) is None for row in cells.values() for lib in LIBS)}
    (out / "validation.json").write_text(json.dumps(validation, indent=2) + "\n")


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("run", type=Path)
    parser.add_argument("--out", required=True, type=Path)
    parser.add_argument("--evidence-dir", type=Path, help="Host idle-check and execution logs (defaults to RUN_DIR)")
    parser.add_argument("--readme-hero", action="store_true",
                        help="Only render the README figure from archived results; never run benchmarks")
    parser.add_argument("--font", type=Path,
                        help="Font file for PNG export when ImageMagick has no configured system fonts")
    args = parser.parse_args()
    if args.readme_hero and args.run.resolve() == args.out.resolve():
        parser.error("--readme-hero requires an output directory separate from the archived run")
    env, meta, cells, _ = load_run(args.run)
    evidence = args.evidence_dir or args.run
    validate_evidence(evidence)
    args.out.mkdir(parents=True, exist_ok=True)
    if args.readme_hero:
        data = aggregate(cells)
        readme_hero(env, data, args.out)
        render_pngs(args.out, ["readme-benchmark"], args.font)
        validate_readme_hero(args.out, cells, data)
        print(f"Generated README SVG/PNG from archived results in {args.out}; no benchmarks executed")
        return
    copy_artifacts(args.run, evidence, args.out)
    data = aggregate(cells)
    (args.out / "chart-data.json").write_text(json.dumps(data, indent=2) + "\n")
    overview(data, args.out)
    detailed(data, args.out)
    render_pngs(args.out, font=args.font)
    report(env, meta, cells, data, args.out)
    html_report(env, meta, cells, data, args.out)
    # The report links this validation file, which is filled after checks finish.
    (args.out / "validation.json").write_text("{}\n")
    validate_outputs(args.out, cells, data)
    print(f"Generated five SVG/PNG charts, summary.md and index.html in {args.out}")


if __name__ == "__main__":
    main()

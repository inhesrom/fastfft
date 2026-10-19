#!/usr/bin/env python3
"""Render an explicitly unofficial macOS report without relaxing Linux publishing gates.

Run from the repository root:
python3 REPORT_DIR/render-report.py --run REPORT_DIR --out REPORT_DIR
"""
import argparse
import gzip
import html
import importlib.util
import json
import math
from pathlib import Path
import shutil
import sys

sys.dont_write_bytecode = True


def load_local(plot, run):
    env, meta = (plot.read_json(run / name) for name in ("env.json", "meta.json"))
    if env.get("os") != "macos" or env.get("pinned_cpu") is not None or meta.get("official") is not False:
        raise ValueError("Expected explicitly unofficial, unpinned macOS run")
    if meta.get("aborted") or meta.get("child_failures") or meta.get("cells") != 80:
        raise ValueError("Incomplete or failed run; no comparison report generated")
    if not env.get("fftw", {}).get("linked") or env["run"]["profile"] != "full" or env["run"]["procs"] != 1:
        raise ValueError("Expected FFTW-linked full profile with one process per cell")
    path = run / "results.jsonl"
    raw = path.read_text() if path.exists() else gzip.decompress((run / "results.jsonl.gz").read_bytes()).decode()
    cells, controls = {}, []
    for line in raw.splitlines():
        row = json.loads(line)
        spec = row["spec"]
        if row.get("child_error") or row.get("cpu") is not None:
            raise ValueError("Failed child or unexpected CPU affinity")
        if spec.get("control"):
            if not row.get("results") or any(result["status"] != "ok" for result in row["results"]):
                raise ValueError("Failed control result")
            controls.append(row)
            continue
        results = {result["lib"]: result for result in row["results"]}
        if set(results) != set(plot.LIBS) or len(row["results"]) != 4:
            raise ValueError("Missing or duplicate library results")
        for lib, result in results.items():
            if result["status"] == "unsupported" and not spec.get("control"):
                if result.get("time") is not None:
                    raise ValueError("Unsupported result has timing")
                continue
            check, timing = result.get("verify") or {}, result.get("time") or {}
            if (result["status"] != "ok" or not check.get("passed") or check.get("method") != "dd"
                    or not all(math.isfinite(check.get(k, math.nan)) for k in ("rel_l2_eps", "max_eps"))
                    or not math.isfinite(timing.get("median", math.nan))
                    or timing.get("median", 0) <= 0 or timing.get("samples", 0) <= 0):
                raise ValueError(f"Invalid verification/timing: {lib}, {spec}")
        key = (spec["precision"], spec["direction"], spec["n"])
        if (key in cells or spec["suite"] != "pow2" or spec["placement"] != "inplace"
                or spec["batch"] != 1 or spec["misalign"] != 0 or spec["profile"] != "full"
                or not spec["verify"] or spec.get("data", "zero") != "zero"
                or spec.get("scenario") is not None or row.get("procs") != 1):
            raise ValueError(f"Unexpected or duplicate measurement: {key}")
        row["by_lib"] = results
        cells[key] = row
    expected = {(p, d, n) for p, d in plot.PANELS for n in plot.LENGTHS}
    if set(cells) != expected or len(controls) != 5:
        raise ValueError(f"Expected 80 cells and 5 controls, got {len(cells)}, {len(controls)}")
    return env, meta, cells


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("--run", type=Path, required=True)
    parser.add_argument("--out", type=Path, required=True)
    parser.add_argument("--evidence", type=Path)
    parser.add_argument("--repo", type=Path, default=Path.cwd())
    args = parser.parse_args()
    module_path = args.repo / "scripts/plot-library-comparison.py"
    spec = importlib.util.spec_from_file_location("comparison_plots", module_path)
    plot = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(plot)
    env, meta, cells = load_local(plot, args.run)
    evidence = args.evidence or args.run
    idle = plot.read_json(evidence / "idle-check.json")
    if idle.get("platform") != "macos":
        raise ValueError("Expected real macOS idle evidence")
    if idle.get("passed"):
        samples = idle.get("samples", [])[-3:]
        if len(samples) != 3 or any(not s.get("quiet") or s["duration_seconds"] < 10
                                   or not 0 <= s["cpu_percent"]["cpu"] <= 5
                                   or s.get("competing_processes") for s in samples):
            raise ValueError("Invalid claimed quiet window")
    out = args.out
    out.mkdir(parents=True, exist_ok=True)
    plot.copy_artifacts(args.run, evidence, out)
    for name in ("source-provenance.json", "source-status.txt", "command.json", "idle-iostat.txt", "commands.jsonl"):
        source = evidence / name
        if source.exists() and source.resolve() != (out / name).resolve():
            shutil.copyfile(source, out / name)
    trials = args.run / "trials.jsonl"
    if trials.exists():
        (out / "trials.jsonl.gz").write_bytes(gzip.compress(trials.read_bytes(), mtime=0))
    data = plot.aggregate(cells)
    (out / "chart-data.json").write_text(json.dumps(data, indent=2) + "\n")
    plot.overview(data, out)
    plot.detailed(data, out)
    plot.render_pngs(out, font=Path("/System/Library/Fonts/Supplemental/Arial.ttf"))
    esc = html.escape
    verified = sum(plot.latency(row, lib) is not None for row in cells.values() for lib in plot.LIBS)
    descriptions = sorted({row["by_lib"]["fastfft"].get("describe", "") for row in cells.values()})
    kernels = sorted({tier for desc in descriptions for tier in ("neon", "scalar") if tier in desc.lower()})
    command = plot.read_json(evidence / "command.json")
    import shlex
    command_text = shlex.join(command["argv"])
    diagnostic = meta.get("diagnostic", False)
    diagnostic_note = ("DIAGNOSTIC ONLY — not gate-passing. User-authorized run-cell collection does not enforce the arena drift-abort gate; "
                       "standard arena aborted twice. No binary/source changes or official gate changes. "
                       if diagnostic else "")
    warning = (diagnostic_note + f"Unofficial local macOS run. CPU affinity and Linux performance-policy checks unavailable. "
               f"Quiet-host check passed: {idle.get('passed', False)}. "
               f"Clock-proxy drift: {meta['max_drift'] * 100:.2f}%; drift flag: {meta['drift_flag']}. "
               "Clock proxy is not calibrated CPU frequency. Scheduler migration and background work may affect timings.")
    method = ("80 cells: N=2¹–2²⁰ (2–1,048,576), f32/f64, forward/inverse, in-place, batch 1; "
              "64-byte-aligned buffers and zero-filled timing input. Each cell runs sequentially in its own child "
              "with user-initiated QoS, without CPU affinity. Full profile: 200 ms warm-up per library, "
              "seven rounds with rotating library order, at least 100 ms per library per round, "
              "batches targeting at least 50 µs. Median is over timed batch means per transform. "
              "Planning excluded. Available measurements first passed seeded-random-input double-double verification. "
              "Five N=4,096 controls each merge three processes. Compilation and plotting occur outside timing.")
    if diagnostic:
        method += (" Diagnostic collection uses run-cell directly, with scratch sized during child planning rather than "
                   "parent pre-sizing; execution still reuses scratch. Per-child library construction order is fixed; "
                   "timed rounds rotate library execution order. No cell is retried or excluded based on its timing or drift.")
    comparability = ("fastfft: default Estimate planner, reused scratch; observed kernels: " + ", ".join(kernels)
                     + ". RustFFT: automatic SIMD planner, reused scratch. FFTW: static single/double build, "
                     "FFTW_MEASURE and host wisdom; planning excluded. PhastFT: reused interleaved planner, "
                     "parallel disabled; allocation, split/recombine and copy-back included. "
                     "PhastFT inverse includes 1/N normalization; other libraries return unnormalized inverse. "
                     "Verification rescales PhastFT outside timing. One run does not establish run-to-run uncertainty, "
                     "cross-machine performance, or performance for other sizes, placements or data distributions.")
    build = (f"Host: {env['host']}; CPU: {env['cpu']['model_name']}; OS: {env['kernel']}. "
             f"Source: {env['git']['commit']}; captured dirty: {env['git']['dirty']}. "
             "Tracked benchmark/library sources and Cargo.lock match HEAD; pre-existing untracked files retained. "
             f"Build: {env['build_profile']}, fat LTO, one codegen unit; RUSTFLAGS: {env['rustflags']}; "
             f"target-cpu=native: {env['target_cpu_native']}. Compiler: {env['rustc']}. "
             f"RustFFT {env['libraries']['rustfft']}; PhastFT {env['libraries']['phastft']}; FFTW {env['fftw']['version']}.")
    links = ["summary.md", "env.json", "meta.json", "results.jsonl.gz", "trials.jsonl.gz", "report.md",
             "chart-data.json", "validation.json", "idle-check.json", "idle-iostat.txt", "host-processes.txt", "run.log",
             "bench-env-check.txt", "source-provenance.json", "source-status.txt", "command.json", "render-report.py"]
    if diagnostic:
        links.append("commands.jsonl")
        collector = args.repo / "target/macos-benchmark/diagnostic-cells.py"
        if collector.exists():
            shutil.copyfile(collector, out / "diagnostic-cells.py")
            links.append("diagnostic-cells.py")
        prior_links = []
        for prior in meta.get("prior_aborted_runs", []):
            directory = out / "prior-aborted-attempts" / prior
            directory.mkdir(parents=True, exist_ok=True)
            for parent in (args.repo / "target/arena/runs" / prior, args.repo / "target/arena/evidence" / prior):
                if parent.is_dir():
                    for source in parent.iterdir():
                        if source.is_dir():
                            shutil.copytree(source, directory / source.name, dirs_exist_ok=True)
                        if source.is_file():
                            if source.suffix == ".jsonl":
                                dest = directory / (source.name + ".gz")
                                dest.write_bytes(gzip.compress(source.read_bytes(), mtime=0))
                            else:
                                dest = directory / source.name
                                shutil.copyfile(source, dest)
                            prior_links.append(str(dest.relative_to(out)))
        links.extend(prior_links)
    title = "macOS FFT diagnostic benchmark" if diagnostic else "macOS four-library FFT benchmark"
    sections, md = [], ["# " + title, "", warning, "", method, "", comparability, "", build, "",
                        "Speedup = RustFFT median latency ÷ library median latency; above 1× is faster. "
                        "Overview geometric means use equal weight per shared length; controls excluded.", "",
                        "![Overview](overview.png)", "", "| Group | Shared lengths | fastfft | RustFFT | FFTW | PhastFT |",
                        "|---|---:|---:|---:|---:|---:|"]
    overview_rows = []
    for panel in data["panels"]:
        p, d = panel["precision"], panel["direction"]
        label, name = f"{p} {d}", f"{p}-{d}"
        means = ["—" if panel["geomean_speedups"][lib] is None else f"{panel['geomean_speedups'][lib]:.3f}×" for lib in plot.LIBS]
        md.append(f"| {label} | {len(panel['shared_lengths'])} | " + " | ".join(means) + " |")
        overview_rows.append("<tr><th>" + label + "</th><td>" + str(len(panel["shared_lengths"])) + "</td>"
                             + "".join(f"<td>{value}</td>" for value in means) + "</tr>")
        rows, table_md = [], ["| N | fastfft (ns) | RustFFT (ns) | FFTW (ns) | PhastFT (ns) |", "|---:|---:|---:|---:|---:|"]
        for cell in panel["cells"]:
            values = ["—" if cell["median_ns"][lib] is None else f"{cell['median_ns'][lib]:,.3f}" for lib in plot.LIBS]
            rows.append(f"<tr><th>{cell['n']:,}</th>" + "".join(f"<td>{value}</td>" for value in values) + "</tr>")
            table_md.append(f"| {cell['n']:,} | " + " | ".join(values) + " |")
        sections.append(f'<section class="measurement" data-panel="{name}" id="{name}"><h2>{label}</h2>'
                        f'<div class="chart"><img src="{name}.png" alt="{label} speedups relative to RustFFT"></div>'
                        f'<p><a href="{name}.svg">Vector chart</a> · Median latency, ns per transform:</p>'
                        '<div class="table"><table><thead><tr><th>N</th><th>fastfft</th><th>RustFFT</th><th>FFTW</th><th>PhastFT</th></tr></thead>'
                        f'<tbody>{"".join(rows)}</tbody></table></div></section>')
        table_md = ["", f"## {label}", "", f"![{label}]({name}.png)", "", f"[Vector chart]({name}.svg)", ""] + table_md
        panel["markdown"] = table_md
    for panel in data["panels"]:
        md.extend(panel.pop("markdown"))
    md.extend(["", "## Evidence", "", *[f"- [{name}]({name})" for name in links if name != "summary.md"], "",
               "## Exact command", "", "```sh", command_text, "```", "", "## FFTW configuration", "", "```text", env["fftw"]["configure"] or "unavailable", "```", ""])
    (out / "summary.md").write_text("\n".join(md))
    overview = ('<table><thead><tr><th>Group</th><th>Shared lengths</th><th>fastfft</th><th>RustFFT</th><th>FFTW</th><th>PhastFT</th></tr></thead>'
                + '<tbody>' + ''.join(overview_rows) + '</tbody></table>')
    page = '''<!doctype html><html lang="en"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1">
<title>fastfft · macOS benchmark</title><style>
:root{--ink:#182b42;--paper:#edf3f8;--blue:#0072b2;--line:#b9ccda;--warn:#fff1cd}
*{box-sizing:border-box}body{margin:0;background:var(--paper);color:var(--ink);font:16px/1.65 'Avenir Next',Avenir,sans-serif}
main{max-width:1260px;margin:auto;padding:40px 24px}h1{font:600 clamp(30px,5vw,56px)/1.1 'Menlo',monospace;letter-spacing:-.045em}
h2{font-size:24px}header{border-left:8px solid var(--blue);padding-left:24px;margin-bottom:32px}.warning{background:var(--warn);padding:18px;border-left:4px solid #996400}
section{margin:32px 0;padding:24px;background:white;border:1px solid var(--line)}a{color:#005c91}a:focus-visible,select:focus-visible{outline:3px solid #d55e00;outline-offset:3px}
.chart,.table{overflow-x:auto}.chart img{display:block;width:100%;height:auto;min-width:680px}table{border-collapse:collapse;width:100%;font:13px/1.6 Menlo,monospace;white-space:nowrap}
th,td{border-bottom:1px solid var(--line);padding:9px;text-align:right}th:first-child{text-align:left}tbody tr:hover{background:#edf3f8}
nav{display:flex;gap:16px;align-items:center;flex-wrap:wrap}select{font:inherit;padding:8px;background:white;color:var(--ink);border:1px solid var(--line)}pre{overflow:auto;background:var(--paper);padding:16px;font-size:12px}
.evidence{display:flex;flex-wrap:wrap;gap:8px 18px}small{font-family:Menlo,monospace}@media(max-width:600px){main{padding:20px 12px}section{padding:16px}}@media print{nav{display:none}.measurement[hidden]{display:block}}
</style></head><body><main>'''
    page += (f'<header><small>fastfft / {esc(env["architecture"])} / {esc(env["cpu"]["model_name"])}</small>'
             '<h1>FFT execution<br>on macOS.</h1><p>Four libraries. 80 cells. '
             + ('Diagnostic collection — not gate-passing.' if diagnostic else 'One local run.') + '</p></header>'
             f'<p class="warning">{esc(warning)}</p><section><h2>Execution speed relative to RustFFT</h2>'
             '<p>RustFFT median ÷ library median. Above 1× is faster. Geometric means give equal weight to each shared length; controls excluded.</p>'
             '<div class="chart"><img src="overview.png" alt="Geometric mean speedups in four precision and direction groups"></div>'
             f'<p><a href="overview.svg">Vector overview</a></p><div class="table">{overview}</div></section>'
             '<nav><label for="panel">Precision / direction</label><select id="panel"><option value="all">All groups</option>'
             + ''.join(f'<option value="{p}-{d}">{p} {d}</option>' for p, d in plot.PANELS) + '</select></nav>'
             + ''.join(sections)
             + f'<section><h2>Method and limits</h2><p>{esc(method)}</p><p>{esc(comparability)}</p>'
             f'<p>{verified}/320 available measurements passed verification. Child failures: {meta["child_failures"]}; '
             f'aborted: {esc(str(meta["aborted"]))}; elapsed: {meta["elapsed_s"]:.1f} s.</p>'
             f'<details><summary>Machine, build and provenance</summary><p>{esc(build)}</p><pre>{esc(env["fftw"]["configure"] or "unavailable")}</pre></details>'
             f'<details><summary>Exact benchmark command</summary><pre>{esc(command_text)}</pre></details></section>'
             '<section><h2>Evidence and regeneration</h2><p>Generated without modifying the Linux publisher or official-run gates.</p><div class="evidence">'
             + ''.join(f'<a href="{name}">{name}</a>' for name in links) + '</div></section>')
    page += '''<script>document.getElementById('panel').addEventListener('change',function(){document.querySelectorAll('.measurement').forEach(s=>{s.hidden=this.value!=='all'&&s.dataset.panel!==this.value;});});</script></main></body></html>'''
    (out / "index.html").write_text(page)
    own = Path(__file__).resolve()
    if own != (out / "render-report.py").resolve():
        shutil.copyfile(own, out / "render-report.py")
    (out / "validation.json").write_text("{}\n")
    plot.validate_outputs(out, cells, data)
    validation = plot.read_json(out / "validation.json")
    validation.update({"report_kind": "diagnostic-local-macos" if diagnostic else "unofficial-local-macos", "official": False,
                       "drift_abort_disabled": diagnostic,
                       "idle_check_passed": idle.get("passed", False), "drift_flag": meta["drift_flag"],
                       "max_clock_proxy_drift": meta["max_drift"], "observed_fastfft_kernels": kernels})
    (out / "validation.json").write_text(json.dumps(validation, indent=2) + "\n")
    print(f"Generated and validated {out / 'index.html'}; {verified}/320 available measurements")
    for panel in data["panels"]:
        print(panel["precision"], panel["direction"], panel["geomean_speedups"])


if __name__ == "__main__":
    main()

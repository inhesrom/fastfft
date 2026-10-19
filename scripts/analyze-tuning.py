#!/usr/bin/env python3
"""Merge independent tune processes, emit measured tables, and audit Estimate.

Uses the process with the lowest p1 for each candidate/placement; its median
travels with that sample. A shared plan minimizes the worst p1/median slowdown
on the selected objective (in-place by default, matching Measure). Raw losing
samples and all-placement regressions remain in the input files.
"""
import argparse
import gzip
import json
import math
from pathlib import Path

TIERS = ['scalar', 'sse2', 'avx2', 'avx512-ymm', 'avx512']
ISAS = ['Scalar', 'Sse2', 'Avx2', 'Avx512Ymm', 'Avx512']
KERNELS = dict(stockham='Stockham', fourstep='FourStep', generic='GenericSmall',
               interleaved='InterleavedSmall', rectangular='RectangularSmall')


def key(row):
    return row['kernel'], row['isa'], row['lanes'], tuple(row['radices'])


def analyze(paths, objective, shortlist=None, shortlist_ratio=1.15, refinements=()):
    passes, cells, estimates, observed_caps = {}, {}, {}, {}
    refined_samples = set()
    full_catalog = set()
    calibrated = True
    for path, refined in [(p, False) for p in paths] + [(p, True) for p in refinements]:
        environment_seen = False
        restricted = False
        opener = gzip.open if str(path).endswith('.gz') else open
        with opener(path, 'rt') as stream:
            for line in stream:
                row = json.loads(line)
                if row['kind'] == 'environment':
                    environment_seen = True
                    restricted = '--shortlist' in row.get('args', [])
                    fields = {}
                    for cpu_line in row.get('cpuinfo', '').splitlines():
                        if ':' in cpu_line:
                            k, v = cpu_line.split(':', 1)
                            fields[k.strip()] = v.strip()
                    calibrated &= (fields.get('vendor_id') == 'AuthenticAMD'
                                   and fields.get('cpu family') == '25'
                                   and fields.get('model') == '116')
                    if 'features' in row:
                        calibrated &= all(row['features'].get(tier, False)
                                          for tier in ('sse2', 'avx2', 'avx512'))
                elif row['kind'] == 'pass':
                    k = row['f64'], row['isa'], row['pass'], row['radix']
                    value = row['ns_per_element']
                    assert math.isfinite(value) and value > 0
                    passes[k] = min(passes.get(k, math.inf), value)
                elif row['kind'] == 'candidate':
                    if not all(math.isfinite(row[m]) and row[m] > 0
                               for m in ('p1_ns', 'median_ns')):
                        raise ValueError(f'Invalid candidate timing in {path}')
                    cell = row['precision'], row['n']
                    k = key(row), row['placement']
                    values = cells.setdefault(cell, {})
                    old = values.get(k)
                    sample_key = cell, k
                    # Longer, predeclared refinement runs replace screening
                    # samples as a group. Otherwise a one-batch minimum from
                    # a short screen can dominate a proper p1 indefinitely.
                    replace_screen = refined and sample_key not in refined_samples
                    if old is None or replace_screen or row['p1_ns'] < old['p1_ns']:
                        values[k] = row
                    if refined:
                        refined_samples.add(sample_key)
                elif row['kind'] == 'estimate':
                    k = row['precision'], row['n'], row['cap']
                    if not restricted:
                        full_catalog.add(k[:2])
                    observed_caps.setdefault(k[:2], set()).add(k[2])
                    choice = key(row)
                    if k in estimates and estimates[k] != choice:
                        raise ValueError(f'Estimates from different source builds: {k}')
                    estimates[k] = choice
                elif row['kind'] == 'winner':
                    if not restricted:
                        full_catalog.add((row['precision'], row['n']))
                    observed_caps.setdefault((row['precision'], row['n']), set()).add(row['cap'])
        calibrated &= environment_seen
    recipes, audit, scales = [], [], []
    for (precision, n), samples in sorted(cells.items()):
        contenders = set()
        configs = sorted({k for k, _ in samples})
        # Incomplete candidates (e.g. interrupted process) cannot win.
        configs = [k for k in configs if all((k, m) in samples for m in range(3))]
        if passes and n & (n - 1) == 0:
            # Isolated passes fit in cache. Calibrate their sum against a
            # complete Stockham transform of the same width and footprint.
            for isa in TIERS:
                stockham = [k for k in configs if k[0] == 'stockham' and k[1] == isa]
                if not stockham:
                    continue
                chosen = min(stockham, key=lambda k: samples[k, 0]['p1_ns'])
                lanes = chosen[2]
                modeled = sum(passes[precision == 'f64', isa, int(i != 0), radix]
                              for i, radix in enumerate(chosen[3]))
                if lanes > 1:
                    m = n // lanes
                    waste = math.ceil(m / lanes) * lanes / max(m, 1)
                    modeled += passes[precision == 'f64', isa, 2, lanes] * waste
                modeled = modeled * n + 4.0
                scales.append(dict(precision=precision, n=n, isa=isa, lanes=lanes,
                                   scale=samples[chosen, 0]['p1_ns'] / modeled))
        for cap_index, cap in enumerate(TIERS):
            # A capped run is evidence only for the caps it actually emitted.
            # Do not promote scalar-only samples into higher-tier recipes.
            if cap not in observed_caps.get((precision, n), set()):
                continue
            eligible = [k for k in configs if TIERS.index(k[1]) <= cap_index]
            if not eligible:
                continue
            best = {(m, metric): min(samples[k, m][metric] for k in eligible)
                    for m in range(3) for metric in ('p1_ns', 'median_ns')}
            def ratios(k):
                return {f'{m}:{metric}': samples[k, m][metric] / best[m, metric]
                        for m in range(3) for metric in ('p1_ns', 'median_ns')}
            def score(k):
                values = ratios(k)
                return max(v for label, v in values.items()
                           if objective == 'all' or label.startswith('0:'))
            winner = min(eligible, key=score)
            contenders.update(k for k in eligible if score(k) <= shortlist_ratio)
            record = dict(precision=precision, n=n, cap=cap, kernel=winner[0],
                          isa=winner[1], lanes=winner[2], radices=winner[3],
                          ns=samples[winner, 0]['p1_ns'],
                          winner_worst_ratio=max(ratios(winner).values()),
                          winner_objective_ratio=score(winner))
            recipes.append(record)
            estimated = estimates.get((precision, n, cap))
            if estimated:
                if estimated not in eligible:
                    raise ValueError(f'Estimate was not timed: {(precision, n, cap)}')
                contenders.add(estimated)
                audit.append(dict(precision=precision, n=n, cap=cap,
                                  full_catalog=(precision, n) in full_catalog,
                                  ratios=ratios(estimated),
                                  worst_ratio=max(ratios(estimated).values()),
                                  objective_ratio=score(estimated),
                                  ip_ratio=ratios(estimated)['0:p1_ns']))
        if shortlist is not None:
            shortlist.extend(samples[k, 0] for k in sorted(contenders))
    calibrated &= all(cell in full_catalog for cell in cells)
    return passes, recipes, audit, calibrated, scales


def rust_table(passes, recipes, scales):
    text = ['//! Production-kernel calibration for Ryzen 7 7840HS (family 25, model 116).',
            '//! Generated by scripts/analyze-tuning.py from retained tune JSONL.',
            'use crate::isa::Isa;', 'use crate::plan::{PassCost, Recipe, StockhamScale};',
            'use crate::planner::CandidateKernel;',
            '#[rustfmt::skip]', 'pub(crate) const PASSES: &[PassCost] = &[']
    for (f64_, isa, kind, radix), ns in sorted(passes.items()):
        text.append(f'    PassCost {{ f64_: {str(f64_).lower()}, isa: Isa::{ISAS[TIERS.index(isa)]}, kind: {kind}, radix: {radix}, ns: {ns:.9f} }},')
    text.extend(['];', '#[rustfmt::skip]', 'pub(crate) const SCALES: &[StockhamScale] = &['])
    for r in sorted(scales, key=lambda r: (r['precision'], r['n'], TIERS.index(r['isa']))):
        text.append(f"    StockhamScale {{ n: {r['n']}, f64_: {str(r['precision']=='f64').lower()}, isa: Isa::{ISAS[TIERS.index(r['isa'])]}, lanes: {r['lanes']}, scale: {r['scale']:.9f} }},")
    text.extend(['];', '#[rustfmt::skip]', 'pub(crate) const RECIPES: &[Recipe] = &['])
    for r in sorted(recipes, key=lambda r: (r['precision'], r['n'], TIERS.index(r['cap']))):
        text.append(f"    Recipe {{ n: {r['n']}, f64_: {str(r['precision']=='f64').lower()}, cap: Isa::{ISAS[TIERS.index(r['cap'])]}, kernel: CandidateKernel::{KERNELS[r['kernel']]}, isa: Isa::{ISAS[TIERS.index(r['isa'])]}, lanes: {r['lanes']}, radices: &{list(r['radices'])}, ns: {r['ns']:.6f} }},")
    return '\n'.join(text + ['];', ''])


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('raw', type=Path, nargs='+')
    parser.add_argument('--out', type=Path)
    parser.add_argument('--report', type=Path)
    parser.add_argument('--objective', choices=['inplace', 'all'], default='inplace', help='match Measure (inplace), or minimize the worst placement')
    parser.add_argument('--check', action='store_true', help='require audited default Estimate within 3%% on the selected objective, both metrics')
    parser.add_argument('--shortlist-out', type=Path, help='write contenders for a longer repeat; retain the full-catalog audit separately')
    parser.add_argument('--shortlist-ratio', type=float, default=1.15, help='keep candidates within this slowdown on the selected objective for any observed cap')
    parser.add_argument('--refine', type=Path, nargs='+', default=[],
                        help='longer independent runs that replace screening timings for every remeasured candidate/placement; merge refinements by lowest p1')
    args = parser.parse_args()
    if not math.isfinite(args.shortlist_ratio) or args.shortlist_ratio < 1.0:
        parser.error('--shortlist-ratio must be finite and at least 1')
    shortlist = []
    passes, recipes, audit, calibrated, scales = analyze(args.raw, args.objective, shortlist, args.shortlist_ratio, args.refine)
    if args.shortlist_out:
        args.shortlist_out.write_text(''.join(json.dumps(row)+'\n' for row in shortlist))
    if args.out:
        if not calibrated:
            parser.error("Zen 4 table output requires family 25, model 116, all SIMD features, and complete catalog measurements")
        if not passes or not recipes:
            parser.error('a complete table requires both pass and candidate samples')
        args.out.write_text(rust_table(passes, recipes, scales))
    default = [a for a in audit if a['cap']=='avx512']
    failures = [a for a in default if a['objective_ratio'] > 1.03]
    incomplete = [a for a in default if not a['full_catalog']]
    report = dict(objective=args.objective, pass_samples=len(passes), scales=scales, recipes=recipes, audit=audit,
                  default_audited=len(default), default_failures=failures,
                  default_incomplete_catalog=incomplete,
                  refinement_files=[str(p) for p in args.refine])
    if args.report:
        args.report.write_text(json.dumps(report, indent=2)+'\n')
    print(f'{len(passes)} pass costs; {len(recipes)} recipes; {len(default)} default estimates audited; {len(failures)} above 3%; {len(incomplete)} missing full catalogs')
    if args.check and (not default or failures or incomplete):
        raise SystemExit(1)


if __name__ == '__main__':
    main()

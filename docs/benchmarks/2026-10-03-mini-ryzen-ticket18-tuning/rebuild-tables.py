#!/usr/bin/env python3
"""Reproduce this report's selected tables without mixing audit revisions."""
import argparse
import json
from pathlib import Path
import runpy


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--out', type=Path, required=True)
    parser.add_argument('--large', type=Path, nargs='*', default=[])
    parser.add_argument('--overrides', type=Path, nargs='*', default=[])
    args = parser.parse_args()
    here = Path(__file__).resolve().parent
    analyzer = runpy.run_path(str(here.parents[2] / 'scripts/analyze-tuning.py'))
    inputs = [here / 'passes.jsonl.gz'] + [
        here / f'calibrated-{trial}.jsonl.gz' for trial in (1, 2, 3)
    ]
    passes, recipes, _, calibrated, scales = analyzer['analyze'](inputs, 'inplace')
    assert calibrated and len(passes) == 308 and len(recipes) == 610
    by_key = {(r['precision'], r['n'], r['cap']): r for r in recipes}
    if args.large:
        _, large, _, calibrated, extra_scales = analyzer['analyze'](
            [here / 'passes.jsonl.gz', *args.large], 'inplace')
        expected = {(p, 1 << b, cap) for p in ('f32', 'f64')
                    for b in range(21, 25) for cap in analyzer['TIERS']}
        actual = {(r['precision'], r['n'], r['cap']) for r in large}
        assert calibrated and actual == expected, 'incomplete large calibration'
        for r in large:
            key = r['precision'], r['n'], r['cap']
            assert key not in by_key
            by_key[key] = r
        scales.extend(extra_scales)
    for path in [here / 'recipe-refinements.json', *args.overrides]:
        refinements = json.loads(path.read_text())
        for change in refinements['changes']:
            r = change['new_recipe']
            key = r['precision'], r['n'], r['cap']
            assert key in by_key, f'override outside the measured catalog: {key}'
            by_key[key] = r
    args.out.write_text(analyzer['rust_table'](passes, list(by_key.values()), scales))


if __name__ == '__main__':
    main()

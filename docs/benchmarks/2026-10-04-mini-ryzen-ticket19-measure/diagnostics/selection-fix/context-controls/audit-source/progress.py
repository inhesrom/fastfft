#!/usr/bin/env python3
"""Inspect new arena rows incrementally without rereading the full trial log.

This reports progress only. The completed run still requires check-measure.py.
"""

import argparse
import json
import math
from pathlib import Path


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('run', type=Path)
    parser.add_argument('--quiet-log', type=Path)
    args = parser.parse_args()
    state_path = args.run.parent / (args.run.name + '-progress.json')
    state = json.loads(state_path.read_text()) if state_path.exists() else {
        'positions': {}, 'cells': 0, 'trials': 0, 'worst_ratio': 0,
        'cell_failures': [], 'slower_promotions': [], 'bad_rows': [],
    }
    for filename in ('results.jsonl', 'trials.jsonl'):
        source = args.run / filename
        if not source.exists():
            continue
        with source.open('rb') as stream:
            stream.seek(state['positions'].get(filename, 0))
            while True:
                position = stream.tell()
                line = stream.readline()
                if not line.endswith(b'\n'):
                    state['positions'][filename] = position
                    break
                row = json.loads(line)
                if row['spec'].get('control'):
                    continue
                merged = filename == 'results.jsonl'
                state['cells' if merged else 'trials'] += 1
                libs = {lib['lib']: lib for lib in row.get('results', [])}
                pair = [libs.get(name) for name in ('fastfft', 'fastfft/measure')]
                if any(lib is None or lib['status'] != 'ok' or not lib.get('time')
                       or not lib.get('verify', {}).get('passed') for lib in pair):
                    state['bad_rows'].append({'key': row['key'], 'source': filename})
                    continue
                estimate, measure = pair
                metric = 'p1' if row['spec']['n'] <= 256 and row['spec']['batch'] == 1 else 'best'
                ratio = measure['time'][metric] / estimate['time'][metric]
                record = {'key': row['key'], 'ratio': ratio, 'metric': metric}
                if merged:
                    state['worst_ratio'] = max(state['worst_ratio'], ratio)
                    if ratio > 1.02 or not math.isfinite(ratio) or ratio <= 0:
                        state['cell_failures'].append(record)
                elif estimate.get('describe') != measure.get('describe') and (
                        ratio > 1.02 or not math.isfinite(ratio) or ratio <= 0):
                    state['slower_promotions'].append(record)
    state_path.write_text(json.dumps(state, indent=2) + '\n')
    summary = {'cells': state['cells'], 'trials': state['trials'],
               'worst_ratio': state['worst_ratio'],
               'cell_failures': state['cell_failures'],
               'slower_promotions': state['slower_promotions'],
               'bad_rows': state['bad_rows'],
               'completed': (args.run / 'meta.json').exists()}
    if args.quiet_log and args.quiet_log.exists():
        with args.quiet_log.open('rb') as stream:
            stream.seek(max(0, args.quiet_log.stat().st_size - 4096))
            latest = json.loads(stream.read().splitlines()[-1])
        summary['monitor'] = {key: latest[key] for key in (
            'utc', 'event', 'quiet', 'background_busy_cores', 'returncode'
        ) if key in latest}
    log = args.run.parent / (args.run.name + '.log')
    if log.exists():
        summary['drift_warnings'] = [line for line in log.read_text().splitlines()
                                     if 'drift warning' in line or 'ABORT:' in line]
    print(json.dumps(summary))


if __name__ == '__main__':
    main()

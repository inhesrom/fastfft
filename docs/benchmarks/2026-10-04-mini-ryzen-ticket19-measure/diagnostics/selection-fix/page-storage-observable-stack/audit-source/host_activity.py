#!/usr/bin/env python3
"""Read-only host CPU/thread attribution; never records command-line arguments."""

import argparse
import datetime
import json
import os
from pathlib import Path
import time


def cpu_snapshot():
    result = {}
    for line in Path('/proc/stat').read_text().splitlines():
        fields = line.split()
        if fields[0].startswith('cpu') and fields[0][3:].isdigit():
            result[int(fields[0][3:])] = list(map(int, fields[1:9]))
    return result


def thread_snapshot():
    result = {}
    for process in Path('/proc').iterdir():
        if not process.name.isdigit():
            continue
        try:
            tasks = list((process / 'task').iterdir())
        except (FileNotFoundError, PermissionError, ProcessLookupError):
            continue
        for task in tasks:
            try:
                stat = (task / 'stat').read_text()
                end = stat.rindex(')')
                fields = stat[end + 2:].split()
                tid = int(task.name)
                result[(int(process.name), tid, int(fields[19]))] = {
                    'pid': int(process.name), 'tid': tid,
                    'starttime': int(fields[19]),
                    'comm': stat[stat.index('(') + 1:end],
                    'ticks': int(fields[11]) + int(fields[12]),
                    'last_cpu': int(fields[36]), 'pgrp': int(fields[2]),
                    'affinity': sorted(os.sched_getaffinity(tid)),
                }
            except (FileNotFoundError, PermissionError, ProcessLookupError):
                continue
    return result


def activity(before_cpu, after_cpu, before_threads, after_threads, elapsed, benchmark_pgrp=None):
    hz = os.sysconf('SC_CLK_TCK')
    cpus = {}
    labels = ('user', 'nice', 'system', 'idle', 'iowait', 'irq', 'softirq', 'steal')
    for cpu, values in after_cpu.items():
        delta = [after - before for before, after in zip(before_cpu[cpu], values)]
        total = max(1, sum(delta))
        cpus[cpu] = {name: value / total for name, value in zip(labels, delta)}
    threads = []
    for identity, values in after_threads.items():
        previous = before_threads.get(identity)
        busy = (values['ticks'] - previous['ticks']) / hz / elapsed if previous else None
        if values['pgrp'] == benchmark_pgrp or (busy is not None and busy >= 0.005):
            threads.append({key: value for key, value in values.items() if key != 'ticks'}
                           | {'busy_cores': busy})
    threads.sort(key=lambda item: -(item['busy_cores'] or 0))
    return {'cpu_accounting': cpus, 'threads': threads, 'elapsed_seconds': elapsed}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--log', type=Path, required=True)
    parser.add_argument('--samples', type=int, default=12)
    args = parser.parse_args()
    args.log.parent.mkdir(parents=True, exist_ok=True)
    previous_cpu, previous_threads = cpu_snapshot(), thread_snapshot()
    previous_time = time.monotonic()
    with args.log.open('x', buffering=1) as log:
        for _ in range(args.samples):
            time.sleep(5)
            current_cpu, current_threads = cpu_snapshot(), thread_snapshot()
            current_time = time.monotonic()
            values = activity(previous_cpu, current_cpu, previous_threads, current_threads,
                              current_time - previous_time)
            log.write(json.dumps({'utc': datetime.datetime.now(datetime.timezone.utc).isoformat(),
                                  **values}) + '\n')
            print(json.dumps({'top_threads': values['threads'][:6]}), flush=True)
            previous_cpu, previous_threads = current_cpu, current_threads
            previous_time = current_time


if __name__ == '__main__':
    main()

#!/usr/bin/env python3
"""Wait for sustained host idleness, then monitor one benchmark process group.

All CPU accounting comes from the host-wide /proc/stat, even in a PID
namespace. The command must pin its driver and children to --core. Only
this command's process group is terminated if competing activity persists.
"""

import argparse
import datetime
import json
import os
from pathlib import Path
import signal
import subprocess
import time

from host_activity import activity, cpu_snapshot, thread_snapshot


def snapshot():
    result = {}
    for line in Path('/proc/stat').read_text().splitlines():
        fields = line.split()
        if fields[0].startswith('cpu') and fields[0][3:].isdigit():
            values = list(map(int, fields[1:9]))
            result[int(fields[0][3:])] = (sum(values), values[3] + values[4])
    return result


def usage(before, after):
    return {cpu: 1 - (idle - before[cpu][1]) / max(1, total - before[cpu][0])
            for cpu, (total, idle) in after.items()}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--log', type=Path, required=True)
    parser.add_argument('--core', type=int, default=2)
    parser.add_argument('--quiet-seconds', type=int, default=60)
    parser.add_argument('--attribute', action='store_true',
                        help='record host-visible thread CPU deltas and affinities; use outside PID namespace')
    parser.add_argument('command', nargs=argparse.REMAINDER)
    args = parser.parse_args()
    command = args.command
    if command and command[0] == '--':
        command = command[1:]
    if not command or args.quiet_seconds < 60:
        parser.error('provide a command and at least 60 quiet seconds')

    def terminate(signum, _frame):
        raise SystemExit(128 + signum)

    signal.signal(signal.SIGTERM, terminate)
    sibling_text = Path(f'/sys/devices/system/cpu/cpu{args.core}/topology/thread_siblings_list').read_text()
    siblings = set()
    for part in sibling_text.strip().split(','):
        ends = list(map(int, part.split('-')))
        siblings.update(range(ends[0], ends[-1] + 1))
    siblings.discard(args.core)
    args.log.parent.mkdir(parents=True, exist_ok=True)
    child = None
    with args.log.open('x', buffering=1) as log:
        def record(event, **values):
            log.write(json.dumps({'utc': datetime.datetime.now(datetime.timezone.utc).isoformat(),
                                  'event': event, **values}) + '\n')

        record('policy', command=command, core=args.core, siblings=sorted(siblings),
               quiet_seconds=args.quiet_seconds, interval_seconds=5,
               max_background_busy_cores=0.5, max_sibling_busy=0.05,
               consecutive_busy_samples_to_abort=3, thread_attribution=args.attribute)
        previous = snapshot()
        if args.attribute:
            previous_cpu, previous_threads = cpu_snapshot(), thread_snapshot()
            previous_time = time.monotonic()
        quiet_since = time.monotonic()
        busy_samples = 0
        try:
            while True:
                time.sleep(5)
                current = snapshot()
                busy = usage(previous, current)
                previous = current
                load = os.getloadavg()[0]
                background = sum(value for cpu, value in busy.items()
                                 if child is None or cpu != args.core)
                quiet = (background <= 0.5
                         and all(busy[cpu] <= 0.05 for cpu in siblings)
                         and (child is not None or busy[args.core] <= 0.05)
                         and load <= (2.0 if child is not None else 1.0))
                if args.attribute:
                    current_cpu, current_threads = cpu_snapshot(), thread_snapshot()
                    current_time = time.monotonic()
                    details = activity(previous_cpu, current_cpu, previous_threads, current_threads,
                                       current_time - previous_time,
                                       benchmark_pgrp=child.pid if child else None)
                    # The endpoint CPU is not an exact per-CPU runtime attribution.
                    # Conservatively gate sustained foreign work ending on the
                    # benchmark CPU, whose aggregate busy time is otherwise excluded.
                    foreign = [thread for thread in details['threads']
                               if child is not None and thread['pgrp'] != child.pid
                               and thread['last_cpu'] == args.core
                               and thread['busy_cores'] is not None
                               and thread['busy_cores'] > 0.05]
                    quiet = quiet and not foreign
                    record('attribution', foreign_benchmark_cpu=foreign, **details)
                    previous_cpu, previous_threads = current_cpu, current_threads
                    previous_time = current_time
                record('running' if child else 'waiting', quiet=quiet, load1=load,
                       background_busy_cores=background, cpu_busy=busy)
                if child is not None:
                    status = child.poll()
                    if status is not None:
                        record('finished', returncode=status)
                        return status
                    busy_samples = 0 if quiet else busy_samples + 1
                    if busy_samples >= 3:
                        record('interrupted', reason='competing host activity; diagnostic evidence only')
                        print('quiet-run: competing activity; stopping benchmark group', flush=True)
                        return 75
                else:
                    if not quiet:
                        quiet_since = time.monotonic()
                    if time.monotonic() - quiet_since >= args.quiet_seconds:
                        check = subprocess.run(['scripts/bench-env.sh', 'check', '--core', str(args.core)],
                                               text=True, capture_output=True)
                        record('environment', returncode=check.returncode, output=check.stdout + check.stderr)
                        if check.returncode:
                            quiet_since = time.monotonic()
                            continue
                        print('quiet-run: sustained quiet period and environment check passed; launching', flush=True)
                        blocked = signal.pthread_sigmask(signal.SIG_BLOCK, {signal.SIGINT, signal.SIGTERM})
                        try:
                            child = subprocess.Popen(['taskset', '-c', str(args.core), *command], start_new_session=True,
                                                     preexec_fn=lambda: signal.pthread_sigmask(signal.SIG_SETMASK, blocked))
                        finally:
                            signal.pthread_sigmask(signal.SIG_SETMASK, blocked)
                        record('started', pid=child.pid)
                        previous = snapshot()
                        if args.attribute:
                            previous_cpu, previous_threads = cpu_snapshot(), thread_snapshot()
                            previous_time = time.monotonic()
        except (KeyboardInterrupt, SystemExit):
            record('interrupted', reason='monitor termination signal')
            raise
        finally:
            if child is not None and child.poll() is None:
                os.killpg(child.pid, signal.SIGTERM)
                try:
                    child.wait(timeout=5)
                except subprocess.TimeoutExpired:
                    os.killpg(child.pid, signal.SIGKILL)
                    child.wait()


if __name__ == '__main__':
    raise SystemExit(main())

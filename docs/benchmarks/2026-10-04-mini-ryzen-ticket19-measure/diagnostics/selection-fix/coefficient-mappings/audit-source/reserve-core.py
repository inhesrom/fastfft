#!/usr/bin/env python3
"""Temporarily keep one identified service off a benchmark physical core.

All initial thread masks must match. Original identities/masks are journaled
before mutation. New threads inherit the restricted mask and are restored to
that uniform original mask. No task is stopped or suspended.
"""

import argparse
import datetime
import json
import os
from pathlib import Path
import signal
import subprocess
import time


def identity(path):
    stat = (path / 'stat').read_text()
    end = stat.rindex(')')
    return {'comm': stat[stat.index('(') + 1:end],
            'starttime': int(stat[end + 2:].split()[19])}


def threads(pid):
    result = {}
    for task in (Path('/proc') / str(pid) / 'task').iterdir():
        try:
            result[int(task.name)] = {**identity(task),
                                      'mask': sorted(os.sched_getaffinity(int(task.name)))}
        except (FileNotFoundError, ProcessLookupError):
            continue
    return result


def processes():
    result = {}
    for process in Path('/proc').iterdir():
        if not process.name.isdigit():
            continue
        try:
            stat = (process / 'stat').read_text()
            fields = stat[stat.rindex(')') + 2:].split()
            result[int(process.name)] = {'identity': identity(process), 'parent': int(fields[1]),
                                         'owner_uid': process.stat().st_uid}
        except (FileNotFoundError, ProcessLookupError):
            continue
    return result


def descendants(snapshot, roots):
    found = set(roots)
    while True:
        children = {pid for pid, task in snapshot.items() if task['parent'] in found}
        if children <= found:
            return found
        found.update(children)


class Reservation:
    def __init__(self, path, data):
        self.path, self.data = path, data

    def record(self, event, **values):
        self.data['events'].append({'utc': datetime.datetime.now(datetime.timezone.utc).isoformat(),
                                    'event': event, **values})
        temporary = self.path.with_name(self.path.name + '.new')
        with temporary.open('w') as stream:
            json.dump(self.data, stream, indent=2)
            stream.write('\n')
            stream.flush()
            os.fsync(stream.fileno())
        temporary.replace(self.path)

    def live(self):
        try:
            process = Path('/proc') / str(self.data['pid'])
            return (identity(process)['starttime'] == self.data['identity']['starttime']
                    and process.stat().st_uid == self.data['owner_uid'])
        except (FileNotFoundError, ProcessLookupError):
            return False

    def track_children(self, tolerate_errors=False):
        snapshot = processes()
        # Preexisting descendants form boundaries: their masks were not changed,
        # and their future children do not inherit this service reservation.
        roots = {self.data['pid']} if self.live() else set()
        roots.update(task['pid'] for task in self.data['children'].values()
                     if snapshot.get(task['pid'], {}).get('identity', {}).get('starttime') == task['identity']['starttime']
                     and snapshot.get(task['pid'], {}).get('owner_uid') == self.data['owner_uid'])
        found = set(roots)
        while True:
            additions = {pid for pid, task in snapshot.items()
                         if task['parent'] in found
                         and f"{pid}:{task['identity']['starttime']}" not in self.data['preexisting_descendants']}
            if additions <= found:
                break
            found.update(additions)
        errors = []
        for pid in found - {self.data['pid']}:
            task = snapshot.get(pid)
            if task is None or task['owner_uid'] != self.data['owner_uid']:
                continue
            key = f"{pid}:{task['identity']['starttime']}"
            if key not in self.data['children']:
                self.data['children'][key] = {'pid': pid, **task}
                try:
                    self.record('affected_child_registered', pid=pid, identity=task['identity'])
                except OSError as error:
                    if not tolerate_errors:
                        raise
                    errors.append(f'child journal update: {error}')
        return errors

    def apply(self):
        self.track_children()
        for _ in range(10):
            if not self.live():
                raise RuntimeError('identified service exited or changed identity')
            live_threads = threads(self.data['pid'])
            changed = False
            for tid, task in live_threads.items():
                if task['mask'] not in [self.data['original_mask'], self.data['restricted_mask']]:
                    raise RuntimeError(f'thread {tid} has an unexpected affinity')
                key = f"{tid}:{task['starttime']}"
                if key not in self.data['threads']:
                    self.data['threads'][key] = {'tid': tid, 'starttime': task['starttime'],
                                                 'original_mask': self.data['original_mask']}
                    self.record('thread_registered', tid=tid, starttime=task['starttime'])
                if task['mask'] == self.data['restricted_mask']:
                    continue
                try:
                    if identity(Path('/proc') / str(self.data['pid']) / 'task' / str(tid))['starttime'] != task['starttime']:
                        continue
                    os.sched_setaffinity(tid, self.data['restricted_mask'])
                    if identity(Path('/proc') / str(self.data['pid']) / 'task' / str(tid))['starttime'] != task['starttime']:
                        raise RuntimeError(f'thread {tid} identity changed during restriction')
                    if os.sched_getaffinity(tid) != set(self.data['restricted_mask']):
                        raise RuntimeError(f'thread {tid} affinity verification failed')
                    self.record('restricted', tid=tid, starttime=task['starttime'])
                    changed = True
                except (FileNotFoundError, ProcessLookupError):
                    continue
            if not changed:
                self.record('reservation_verified', live_threads=len(live_threads))
                return
        raise RuntimeError('service threads did not settle during reservation')

    def restore(self):
        if self.data['boot_id'] != Path('/proc/sys/kernel/random/boot_id').read_text().strip():
            raise RuntimeError('journal belongs to a different boot')
        if self.data['owner_uid'] != os.getuid():
            raise RuntimeError('journal owner does not match')
        if self.data['pid_namespace'] != Path('/proc/self/ns/pid').stat().st_ino:
            raise RuntimeError('recovery must run in the original PID namespace')
        if self.data['dry_run'] or self.data.get('restored'):
            print('reservation: dry-run or completed journal; no affinity action', flush=True)
            return
        errors = []

        def record(event, **values):
            try:
                self.record(event, **values)
            except OSError as error:
                errors.append(f'journal update: {error}')

        for attempt in range(10):
            try:
                errors.extend(self.track_children(tolerate_errors=True))
            except OSError as error:
                errors.append(f'child tracking: {error}')
            targets = [(self.data['pid'], self.data['identity'])] if self.live() else []
            targets.extend((task['pid'], task['identity']) for task in self.data['children'].values())
            changed = False
            for pid, expected in targets:
                process = Path('/proc') / str(pid)
                try:
                    if identity(process)['starttime'] != expected['starttime'] or process.stat().st_uid != self.data['owner_uid']:
                        continue
                    tasks = threads(pid)
                except (FileNotFoundError, ProcessLookupError):
                    continue
                except OSError as error:
                    errors.append(f'process {pid}: {error}')
                    continue
                for tid, task in tasks.items():
                    key = f"{tid}:{task['starttime']}"
                    saved = self.data['threads'].get(key) if pid == self.data['pid'] else None
                    original = saved['original_mask'] if saved else self.data['original_mask']
                    if task['mask'] == original:
                        continue
                    if task['mask'] != self.data['restricted_mask']:
                        # New children can intentionally pin themselves (e.g. arena).
                        # Never overwrite a mask that was not our inherited restriction.
                        record('different_affinity_left_untouched', pid=pid, tid=tid, mask=task['mask'])
                        if pid == self.data['pid']:
                            errors.append(f'service thread {tid}: concurrent affinity change')
                        continue
                    try:
                        task_path = process / 'task' / str(tid)
                        if identity(task_path)['starttime'] != task['starttime']:
                            continue
                        os.sched_setaffinity(tid, original)
                        if identity(task_path)['starttime'] != task['starttime']:
                            errors.append(f'thread {tid}: identity changed during restore')
                        elif os.sched_getaffinity(tid) != set(original):
                            errors.append(f'thread {tid}: restore verification failed')
                        record('restored', pid=pid, tid=tid, starttime=task['starttime'], new_thread=saved is None)
                        changed = True
                    except (FileNotFoundError, ProcessLookupError):
                        continue
                    except OSError as error:
                        errors.append(f'thread {tid}: {error}')
            if not changed:
                self.data['restored'] = not errors
                record('restore_verified', errors=errors)
                if errors:
                    raise RuntimeError('best-effort restoration reported errors: ' + '; '.join(errors))
                return
        raise RuntimeError('service threads did not settle during restoration')


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--journal', type=Path, required=True)
    parser.add_argument('--restore', action='store_true', help='recover an interrupted reservation from its journal')
    parser.add_argument('--pid', type=int)
    parser.add_argument('--starttime', type=int)
    parser.add_argument('--expect-comm')
    parser.add_argument('--core', type=int, default=4)
    parser.add_argument('--dry-run', action='store_true')
    parser.add_argument('command', nargs=argparse.REMAINDER)
    args = parser.parse_args()
    if args.restore:
        Reservation(args.journal, json.loads(args.journal.read_text())).restore()
        return 0
    command = args.command[1:] if args.command[:1] == ['--'] else args.command
    if args.pid is None or args.starttime is None or args.expect_comm is None or not command:
        parser.error('provide service pid, starttime, expected name, and command')
    process = Path('/proc') / str(args.pid)
    expected = {'comm': args.expect_comm, 'starttime': args.starttime}
    if identity(process) != expected or process.stat().st_uid != os.getuid():
        raise RuntimeError('service identity/owner does not match')
    initial = threads(args.pid)
    masks = {tuple(task['mask']) for task in initial.values()}
    if len(masks) != 1:
        raise RuntimeError('all initial service threads must have the same original mask')
    original = list(masks.pop())
    pair = set()
    text = Path(f'/sys/devices/system/cpu/cpu{args.core}/topology/thread_siblings_list').read_text()
    for part in text.strip().split(','):
        ends = list(map(int, part.split('-')))
        pair.update(range(ends[0], ends[-1] + 1))
    restricted = sorted(set(original) - pair)
    if not restricted or restricted == original:
        raise RuntimeError('reservation must remove the core pair and leave available CPUs')
    args.journal.parent.mkdir(parents=True, exist_ok=True)
    with args.journal.open('x'):
        pass
    snapshot = processes()
    preexisting = descendants(snapshot, {args.pid}) - {args.pid}
    data = {'pid': args.pid, 'identity': expected, 'owner_uid': os.getuid(),
            'boot_id': Path('/proc/sys/kernel/random/boot_id').read_text().strip(),
            'pid_namespace': Path('/proc/self/ns/pid').stat().st_ino,
            'dry_run': args.dry_run, 'restored': False, 'children': {},
            'preexisting_descendants': [f"{pid}:{snapshot[pid]['identity']['starttime']}" for pid in preexisting],
            'reserved_cpus': sorted(pair), 'original_mask': original,
            'restricted_mask': restricted, 'command': command, 'events': [],
            'threads': {f"{tid}:{task['starttime']}":
                        {'tid': tid, 'starttime': task['starttime'], 'original_mask': task['mask']}
                        for tid, task in initial.items()}}
    reservation = Reservation(args.journal, data)
    reservation.record('prepared', dry_run=args.dry_run)
    if args.dry_run:
        print(json.dumps({key: value for key, value in data.items() if key not in ['threads','events']}, indent=2))
        return 0

    def terminate(signum, _frame):
        raise SystemExit(128 + signum)

    signal.signal(signal.SIGTERM, terminate)
    child = None
    try:
        reservation.apply()
        blocked = signal.pthread_sigmask(signal.SIG_BLOCK, {signal.SIGINT, signal.SIGTERM})
        try:
            # Popen inherits the signal mask: unblock in the single-threaded
            # child before exec, while keeping the parent assignment protected.
            child = subprocess.Popen(command, start_new_session=True,
                                     preexec_fn=lambda: signal.pthread_sigmask(signal.SIG_SETMASK, blocked))
        finally:
            signal.pthread_sigmask(signal.SIG_SETMASK, blocked)
        reservation.record('command_started', pid=child.pid)
        while child.poll() is None:
            time.sleep(5)
            reservation.apply()
        reservation.record('command_finished', returncode=child.returncode)
        return child.returncode
    finally:
        try:
            if child is not None and child.poll() is None:
                os.killpg(child.pid, signal.SIGINT)
                try:
                    child.wait(timeout=10)
                except subprocess.TimeoutExpired:
                    os.killpg(child.pid, signal.SIGTERM)
                    child.wait(timeout=10)
        finally:
            # Repeated cancellation must not interrupt restoration halfway.
            blocked = signal.pthread_sigmask(signal.SIG_BLOCK, {signal.SIGINT, signal.SIGTERM})
            try:
                reservation.restore()
            finally:
                signal.pthread_sigmask(signal.SIG_SETMASK, blocked)


if __name__ == '__main__':
    raise SystemExit(main())

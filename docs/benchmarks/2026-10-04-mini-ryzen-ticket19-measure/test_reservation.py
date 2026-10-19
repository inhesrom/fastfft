#!/usr/bin/env python3
"""Exercise Linux affinity rollback only on disposable processes we create."""

import importlib.util
import json
import os
from pathlib import Path
import signal
import subprocess
import sys
import tempfile
import time


script = Path(__file__).with_name('reserve-core.py').resolve()
spec = importlib.util.spec_from_file_location('reservation', script)
module = importlib.util.module_from_spec(spec)
spec.loader.exec_module(module)
work = Path(tempfile.mkdtemp(prefix='ticket19-affinity-', dir='/tmp'))
original = sorted(os.sched_getaffinity(0))
restricted = sorted(set(original) - {4, 12})
assert restricted and restricted != original
ready, children = work / 'ready.json', work / 'children.json'
dummy_source = '''
import json,os,signal,subprocess,sys,threading,time
from pathlib import Path
ready,children=map(Path,sys.argv[1:3])
restricted=json.loads(sys.argv[3])
stop=threading.Event()
threading.Thread(target=stop.wait,daemon=True).start()
preexisting=subprocess.Popen([sys.executable,'-c',
    'import os,time;os.sched_setaffinity(0,'+repr(restricted)+');time.sleep(120)'])
owned=[]
def grow(sig,frame):
    threading.Thread(target=stop.wait,daemon=True).start()
    p=subprocess.Popen([sys.executable,'-c',
        "import os,time;time.sleep(5.3);os.execv('/bin/sleep',['sleep','120'])"])
    owned.append(p)
    children.write_text(json.dumps([p.pid for p in owned]))
signal.signal(signal.SIGUSR1,grow)
stat=Path('/proc/self/stat').read_text()
ready.write_text(json.dumps({'pid':os.getpid(),'preexisting':preexisting.pid,
    'starttime':int(stat[stat.rindex(')')+2:].split()[19])}))
while True: time.sleep(1)
'''
dummy = subprocess.Popen([sys.executable, '-c', dummy_source, str(ready), str(children), json.dumps(restricted)])


def wait_for(predicate):
    end = time.monotonic() + 15
    while time.monotonic() < end:
        if predicate():
            return
        time.sleep(.05)
    raise AssertionError('condition timed out')


def masks(pid):
    return [task['mask'] for task in module.threads(pid).values()]


def restore_dummy():
    for pid in [dummy.pid] + (json.loads(children.read_text()) if children.exists() else []):
        for tid in module.threads(pid):
            os.sched_setaffinity(tid, original)


try:
    wait_for(ready.exists)
    info = json.loads(ready.read_text())
    wait_for(lambda: all(mask == restricted for mask in masks(info['preexisting'])))
    prefix = [sys.executable, str(script), '--pid', str(dummy.pid), '--starttime', str(info['starttime']),
              '--expect-comm', 'python3', '--core', '4']
    normal = work / 'normal.json'
    process = subprocess.Popen(prefix + ['--journal', str(normal), '--', sys.executable, '-c', 'import time;time.sleep(6)'])
    wait_for(lambda: normal.exists() and any(event['event'] == 'command_started'
             for event in json.loads(normal.read_text()).get('events', [])))
    assert all(mask == restricted for mask in masks(dummy.pid))
    os.kill(dummy.pid, signal.SIGUSR1)
    assert process.wait(timeout=20) == 0
    assert all(mask == original for mask in masks(dummy.pid))
    assert all(mask == original for pid in json.loads(children.read_text()) for mask in masks(pid))
    assert all(mask == restricted for mask in masks(info['preexisting']))
    data = json.loads(normal.read_text())
    assert data['restored']
    affected_pid = json.loads(children.read_text())[0]
    assert any(event['event'] == 'affected_child_registered' and event['pid'] == affected_pid
               and event['identity']['comm'] == 'python3' for event in data['events'])
    assert module.identity(Path('/proc') / str(affected_pid))['comm'] == 'sleep'
    print('PASS normal exit restores existing/new threads and exec-renamed affected child; preserves preexisting child', flush=True)

    cancel, qlog = work / 'cancel.json', work / 'quiet.jsonl'
    process = subprocess.Popen(prefix + ['--journal', str(cancel), '--', sys.executable,
                               str(script.with_name('quiet-run.py')), '--core', '4', '--log', str(qlog), '--', 'true'],
                               stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
    wait_for(lambda: cancel.exists() and any(event['event'] == 'command_started'
             for event in json.loads(cancel.read_text()).get('events', [])))
    os.kill(dummy.pid, signal.SIGUSR1)
    time.sleep(.2)
    process.terminate()
    assert process.wait(timeout=15) == 143
    assert all(mask == original for mask in masks(dummy.pid))
    assert all(mask == original for pid in json.loads(children.read_text()) for mask in masks(pid))
    assert all(mask == restricted for mask in masks(info['preexisting']))
    data = json.loads(cancel.read_text())
    assert data['restored']
    command_pid = next(event['pid'] for event in data['events'] if event['event'] == 'command_started')
    assert not Path(f'/proc/{command_pid}').exists()
    print('PASS SIGTERM stops quiet monitor and restores service/new children', flush=True)

    for tid in module.threads(dummy.pid):
        os.sched_setaffinity(tid, restricted)
    assert subprocess.run([sys.executable, str(script), '--journal', str(normal), '--restore'], stdout=subprocess.DEVNULL).returncode == 0
    assert all(mask == restricted for mask in masks(dummy.pid))
    restore_dummy()
    print('PASS completed journal cannot widen subsequent intentional affinity', flush=True)

    dry = work / 'dry.json'
    assert subprocess.run(prefix + ['--dry-run', '--journal', str(dry), '--', 'true'], stdout=subprocess.DEVNULL).returncode == 0
    for tid in module.threads(dummy.pid):
        os.sched_setaffinity(tid, restricted)
    assert subprocess.run([sys.executable, str(script), '--journal', str(dry), '--restore'], stdout=subprocess.DEVNULL).returncode == 0
    assert all(mask == restricted for mask in masks(dummy.pid))
    restore_dummy()
    print('PASS dry-run journal cannot mutate affinity on recovery', flush=True)

    broken = module.Reservation(cancel, json.loads(cancel.read_text()))
    broken.data['restored'] = False
    for tid in module.threads(dummy.pid):
        os.sched_setaffinity(tid, restricted)

    def fail_record(*args, **kwargs):
        raise OSError('injected journal failure')

    broken.record = fail_record
    try:
        broken.restore()
    except RuntimeError as error:
        assert 'journal update' in str(error)
    else:
        raise AssertionError('journal failure must be reported')
    assert all(mask == original for mask in masks(dummy.pid))
    print('PASS journal failure does not prevent remaining affinity restoration', flush=True)
    print(json.dumps({'test_evidence': str(work)}), flush=True)
finally:
    restore_dummy()
    for pid in (json.loads(children.read_text()) if children.exists() else []) + ([info['preexisting']] if 'info' in globals() else []):
        try:
            os.kill(pid, signal.SIGTERM)
        except ProcessLookupError:
            pass
    dummy.terminate()
    dummy.wait(timeout=5)

# Exercise cancellation with an active, separate child process group. Synthetic
# quiet counters accelerate the unit test; the command only sleeps and no FFT
# benchmark is executed. Inject cancellation in the Popen/assignment window.
quiet_spec = importlib.util.spec_from_file_location('quiet_runner', script.with_name('quiet-run.py'))
quiet_module = importlib.util.module_from_spec(quiet_spec)
quiet_spec.loader.exec_module(quiet_module)
real_popen, real_run = subprocess.Popen, subprocess.run
real_sleep, real_monotonic = time.sleep, time.monotonic
real_load, old_argv = os.getloadavg, sys.argv
old_handler = signal.getsignal(signal.SIGTERM)
fake_clock = [0]
owned = []
grandchild_file = work / 'active-grandchild.txt'


def advance(seconds):
    fake_clock[0] += seconds


def cancel_after_spawn(*args, **kwargs):
    child = real_popen(*args, **kwargs)
    owned.append(child)
    for _ in range(100):
        if grandchild_file.exists():
            break
        real_sleep(.01)
    assert grandchild_file.exists(), 'sleeping grandchild did not start'
    os.kill(os.getpid(), signal.SIGTERM)
    return child


try:
    quiet_module.snapshot = lambda: {}
    quiet_module.usage = lambda before, after: {cpu: 0 for cpu in range(16)}
    time.sleep = advance
    time.monotonic = lambda: fake_clock[0]
    os.getloadavg = lambda: (0, 0, 0)
    subprocess.run = lambda *args, **kwargs: subprocess.CompletedProcess(args, 0, stdout='unit-test environment', stderr='')
    subprocess.Popen = cancel_after_spawn
    child_code = ("import pathlib,subprocess,time;p=subprocess.Popen(['/bin/sleep','120']);"
                  f"pathlib.Path({str(grandchild_file)!r}).write_text(str(p.pid));time.sleep(120)")
    sys.argv = [str(script.with_name('quiet-run.py')), '--core', '4', '--log',
                str(work / 'cleanup-test-synthetic-quiet.jsonl'), '--', sys.executable, '-c', child_code]
    try:
        quiet_module.main()
    except SystemExit as exit:
        assert exit.code == 143
    else:
        raise AssertionError('injected termination must unwind')
    assert len(owned) == 1 and owned[0].poll() is not None
    grandchild = Path('/proc') / grandchild_file.read_text()
    if grandchild.exists():
        stat = (grandchild / 'stat').read_text()
        assert stat[stat.rindex(')') + 2:].split()[0] == 'Z', 'grandchild remains live'
    print('PASS cancellation during Popen assignment kills active child and its separate process group', flush=True)
finally:
    subprocess.Popen, subprocess.run = real_popen, real_run
    time.sleep, time.monotonic = real_sleep, real_monotonic
    os.getloadavg, sys.argv = real_load, old_argv
    signal.signal(signal.SIGTERM, old_handler)
    for child in owned:
        if child.poll() is None:
            os.killpg(child.pid, signal.SIGKILL)
            child.wait()

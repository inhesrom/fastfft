"""Low-frequency host controls for pinned Linux benchmark supervision.

Read cumulative CPU counters once per second. Busy time includes iowait and
steal; guest counters are already included in user/nice and are not summed.
The measured core is excluded only while its owned benchmark is running.
"""

from pathlib import Path

from benchmark_process_monitor import scan


def cpu_snapshot(path=Path('/proc/stat')):
    result = {}
    for line in path.read_text().splitlines():
        fields = line.split()
        if fields and fields[0].startswith('cpu') and fields[0][3:].isdigit():
            counters = [int(value) for value in fields[1:9]]
            if len(counters) != 8:
                raise ValueError('incomplete CPU counters')
            result[int(fields[0][3:])] = (sum(counters), counters[3])
    if not result:
        raise ValueError('missing per-CPU counters')
    return result


def busy_percent(before, after):
    if before.keys() != after.keys():
        raise ValueError('CPU set changed during measurement')
    result = {}
    for cpu, (total, idle) in after.items():
        elapsed = total - before[cpu][0]
        idle_delta = idle - before[cpu][1]
        if elapsed <= 0 or not 0 <= idle_delta <= elapsed:
            raise ValueError('invalid CPU counter delta')
        result[cpu] = 100 * (elapsed - idle_delta) / elapsed
    return result


def observe(leader, before=None, core=2):
    external, processes = scan(leader)
    reasons = []
    if external:
        reasons.append('external or indeterminate compiler/benchmark process')
    snapshot = cpu_snapshot()
    busy = busy_percent(before, snapshot) if before is not None else {}
    # During execution the arena owns only core 2. Its sibling and every other
    # CPU must remain quiet; work on other cores also reduces Zen 4 boost.
    noisy = {cpu: value for cpu, value in busy.items()
             if (leader is None or cpu != core) and value > 5.0}
    if noisy:
        reasons.append('background CPU activity exceeds 5%')
    boost = Path('/sys/devices/system/cpu/cpufreq/boost').read_text().strip()
    if boost != '1':
        reasons.append('boost is not enabled')
    for process in processes:
        if process.get('ownership') != 'owned':
            continue
        path = Path('/proc') / str(process['pid'])
        try:
            argv = (path / 'cmdline').read_bytes().split(b'\0')
            if b'run-cell' in argv:
                status = (path / 'status').read_text().splitlines()
                affinity = next(line.split(':', 1)[1].strip() for line in status
                                if line.startswith('Cpus_allowed_list:'))
                if affinity != str(core):
                    reasons.append('run-cell affinity is not the benchmark core')
        except FileNotFoundError:
            pass  # Exited children are reaped by the arena.
    return {'ok': not reasons, 'reasons': reasons, 'processes': processes,
            'cpu_busy_percent': busy, 'cpu_snapshot': snapshot, 'boost': boost}

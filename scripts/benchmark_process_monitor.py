"""Linux process ownership monitor for benchmark supervision.

Callers add frozen executable basenames to TOOLS before scanning, for example
``TOOLS.add("arena-08e485a4")``. Prefer ASCII basenames of at most 15 bytes;
for longer names also register the 15-byte Linux comm name so a disappearing
cmdline can still be matched conservatively. Start the supervised command with
``subprocess.Popen(..., start_new_session=True)`` and pass its PID to scan only
while that session leader is alive: ownership requires pgrp == session == PID.
Pass None after leader exit so surviving children are reported as external.
Callers must reap their own children, handle timeouts and decide whether to
stop on external/indeterminate observations; this module never signals tasks.

This is Linux /proc supervision, not a general host-idleness detector: only
registered tools, recognized compiler names and Cargo test paths are observed.
No historical runner is imported.
"""
import re
from pathlib import Path

TOOLS = {"cargo", "rustc", "cc", "cc1", "cc1plus", "c++", "gcc", "g++", "clang",
         "clang++", "ld", "ld.lld", "rust-lld", "make", "cmake", "ninja", "ar", "llvm-ar",
         "fastfft-arena", "ordinary-arena", "inventory-arena", "diagnostic-arena",
         "current-ordinary-arena", "diagnostic-placement-v2-arena",
         "fastfft-tune", "fastfft-kernel-lab"}

def identity(path):
    text = (path/'stat').read_text()
    pid = int(text.split(' ', 1)[0])
    fields = text.rsplit(') ', 1)[1].split()
    return {'pid':pid, 'pgrp':int(fields[2]), 'session':int(fields[3]),
            'starttime_ticks':int(fields[19]), 'state':fields[0]}


def scan(leader, proc_root=Path('/proc')):
    """Return (external_or_indeterminate, all_observed) using stable identities.

    leader is the live PID of the caller-owned process-group/session leader,
    or None when no leader is live. proc_root is injectable for race tests.
    """
    external, observed = [], []
    for path in proc_root.iterdir():
        if not path.name.isdigit():
            continue
        try:
            before = identity(path)
            if before['state'] == 'Z':
                continue
            comm = (path/'comm').read_text().strip()
        except (OSError, ValueError, IndexError):
            continue
        try:
            program = (path/'cmdline').read_bytes().split(b"\0")[0].decode(errors='replace')
        except OSError:
            if comm in TOOLS:
                item = before | {'comm':comm, 'program':None, 'ownership':'indeterminate', 'reason':'matched comm; cmdline unavailable'}
                external.append(item)
                observed.append(item)
            continue
        name = Path(program).name
        compiler = comm in TOOLS or name in TOOLS or bool(re.fullmatch(
            r'(?:[\w.-]+-)?(?:gcc|g\+\+|clang|clang\+\+)(?:-\d+(?:\.\d+)*)?', name))
        test = bool(re.search(r'/target/(?:release|debug|test-release|arena)/deps/', program))
        if not (compiler or test):
            continue
        item = before | {'comm':comm, 'program':program}
        try:
            after = identity(path)
            keys = ('pid', 'pgrp', 'session', 'starttime_ticks')
            stable = before['pid'] == int(path.name) and all(before[k] == after[k] for k in keys)
            item['identity_after'] = after
        except (OSError, ValueError, IndexError):
            stable = False
        if not stable:
            item['ownership'] = 'indeterminate'
        elif leader is not None and before['pgrp'] == before['session'] == leader:
            item['ownership'] = 'owned'
        else:
            item['ownership'] = 'external'
        observed.append(item)
        if item['ownership'] != 'owned':
            external.append(item)
    return external, observed

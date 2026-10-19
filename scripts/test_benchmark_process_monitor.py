"""Ownership races must not hide external processes or reject newborn children."""
import tempfile
from pathlib import Path
import unittest
from unittest.mock import patch
import benchmark_process_monitor as monitor


def stat(pid=101, group=100, session=100, start=42, state='S'):
    # Fields 3..22; include spaces/parentheses in comm to exercise stat parsing.
    fields = [state, '100', str(group), str(session)] + ['0'] * 15 + [str(start)]
    return f'{pid} (ordinary arena (child)) ' + ' '.join(fields)


class ProcessTests(unittest.TestCase):
    def setUp(self):
        self.tmp = tempfile.TemporaryDirectory()
        self.addCleanup(self.tmp.cleanup)
        self.root = Path(self.tmp.name)

    def process(self, pid=101, **kwargs):
        path = self.root/str(pid)
        path.mkdir(exist_ok=True)
        (path/'stat').write_text(stat(pid=pid, **kwargs))
        (path/'comm').write_text('ordinary-arena\n')
        (path/'cmdline').write_bytes(b'/frozen/ordinary-arena\0run-cell\0')
        return path

    def test_newborn_owned_child_between_snapshots(self):
        path = self.process()
        class SnapshotRoot:
            count = 0
            def iterdir(self):
                self.count += 1
                return iter([] if self.count == 1 else [path])
        root = SnapshotRoot()
        external, _ = monitor.scan(100, root)
        self.assertEqual(external, [], 'new child must be classified at observation, not from an older PID snapshot')
        external, observed = monitor.scan(100, root)
        self.assertEqual(external, [])
        self.assertEqual(observed[0]['ownership'], 'owned')

    def test_external_same_executable(self):
        self.process(group=200, session=200)
        external, observed = monitor.scan(100, self.root)
        self.assertEqual(len(external), 1)
        self.assertEqual(observed[0]['ownership'], 'external')

    def test_owned_group_requires_owned_session(self):
        self.process(session=200)
        external, _ = monitor.scan(100, self.root)
        self.assertEqual(len(external), 1)

    def test_surviving_child_detected_after_leader_exit(self):
        self.process()
        external, _ = monitor.scan(None, self.root)
        self.assertEqual(len(external), 1)

    def test_matched_comm_then_cmdline_disappears(self):
        path = self.process()
        original = Path.read_bytes
        def vanished(p, *args, **kwargs):
            if p == path/'cmdline':
                raise FileNotFoundError()
            return original(p, *args, **kwargs)
        with patch.object(Path, 'read_bytes', vanished):
            external, observed = monitor.scan(100, self.root)
        self.assertEqual(len(external), 1)
        self.assertEqual(observed[0]['ownership'], 'indeterminate')

    def test_identity_change_is_indeterminate(self):
        path = self.process()
        original = Path.read_text
        calls = 0
        def changed(p, *args, **kwargs):
            nonlocal calls
            if p == path/'stat':
                calls += 1
                return stat(start=42 if calls == 1 else 99)
            return original(p, *args, **kwargs)
        with patch.object(Path, 'read_text', changed):
            external, observed = monitor.scan(100, self.root)
        self.assertEqual(len(external), 1)
        self.assertEqual(observed[0]['ownership'], 'indeterminate')

    def test_identity_disappears_is_indeterminate(self):
        path = self.process()
        original = Path.read_text
        calls = 0
        def vanished(p, *args, **kwargs):
            nonlocal calls
            if p == path/'stat':
                calls += 1
                if calls == 2:
                    raise FileNotFoundError()
            return original(p, *args, **kwargs)
        with patch.object(Path, 'read_text', vanished):
            external, observed = monitor.scan(100, self.root)
        self.assertEqual(len(external), 1)
        self.assertEqual(observed[0]['ownership'], 'indeterminate')


if __name__ == '__main__':
    unittest.main()

import tempfile
import unittest
from pathlib import Path
from unittest import mock

import benchmark_guard as guard


class GuardTests(unittest.TestCase):
    def test_cpu_accounting_does_not_double_count_guest_and_counts_iowait(self):
        with tempfile.TemporaryDirectory() as tmp:
            path = Path(tmp) / 'stat'
            path.write_text('cpu 0 0 0 0\ncpu2 10 20 30 100 5 1 2 3 7 8\n')
            self.assertEqual(guard.cpu_snapshot(path), {2: (171, 100)})
        self.assertEqual(guard.busy_percent({2: (100, 80)}, {2: (200, 150)}), {2: 30})

    def test_cpu_hotplug_reset_or_zero_interval_fails_closed(self):
        for after in ({}, {2: (99, 70)}, {2: (100, 80)}, {2: (200, 190)}):
            with self.subTest(after=after), self.assertRaises(ValueError):
                guard.busy_percent({2: (100, 80)}, after)

    def test_owned_core_is_exempt_only_during_execution(self):
        before = {2: (100, 100), 10: (100, 100)}
        after = {2: (200, 100), 10: (200, 200)}
        with mock.patch.object(guard, 'scan', return_value=([], [])), mock.patch.object(
            guard, 'cpu_snapshot', return_value=after
        ), mock.patch.object(Path, 'read_text', return_value='1'):
            self.assertTrue(guard.observe(42, before)['ok'])
            self.assertFalse(guard.observe(None, before)['ok'])
            after[10] = (200, 194)
            self.assertFalse(guard.observe(42, before)['ok'])

    def test_competing_process_or_disabled_boost_invalidates(self):
        for external, boost in (([{'pid': 123}], '1'), ([], '0')):
            with mock.patch.object(guard, 'scan', return_value=(external, [])), mock.patch.object(
                guard, 'cpu_snapshot', return_value={2: (100, 10)}
            ), mock.patch.object(Path, 'read_text', return_value=boost):
                self.assertFalse(guard.observe(42)['ok'])


if __name__ == '__main__':
    unittest.main()

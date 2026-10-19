from pathlib import Path
import datetime
import hashlib
import json
import re

b = Path(__file__).parent
diagnostic = b.parent / 'coefficient-components'
frozen = json.loads((b / 'source-sha256.json').read_text())
prior = json.loads((diagnostic / 'source-sha256.json').read_text())
for name, digest in prior.items():
    assert frozen[name] == digest, name
    assert hashlib.sha256(Path(name).read_bytes()).hexdigest() == digest, name
assert '12 passed; 0 failed;' in (b / 'agent-validation/shift-tests.log').read_text()
assert '21 passed; 0 failed;' in (b / 'agent-validation/fourstep-tests.log').read_text()
assert json.loads((b / 'diagnostic-storage-verification.json').read_text())['passed']
assert json.loads((diagnostic / 'inspection.json').read_text())['evidence_valid']
tests = (b / 'library-tests.log').read_text()
match = re.search(r'test result: ok\. (\d+) passed; 0 failed;', tests)
assert match and int(match[1]) >= 78
r = {'utc': datetime.datetime.now(datetime.timezone.utc).isoformat(), 'passed': True,
     'source_files_verified_against_clean_diagnostic': len(prior),
     'optimized_default_correctness_tests': int(match[1]),
     'native_sse2_tuning_shift_tests': 12, 'native_sse2_tuning_fourstep_tests': 21,
     'storage_geometry': 'Unchanged constructors/layouts; clean diagnostic validates actual N4096 and N210 live geometry and exact restoration in all 40 trials.',
     'limitation': 'Native tests, no Miri. Diagnostic timings are not production acceptance.'}
(b / 'storage-verification.json').write_text(json.dumps(r, indent=2) + '\n')
print(json.dumps(r))

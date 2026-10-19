"""Verify unchanged storage source and retained native-test provenance.
Updated default optimized correctness is required; native tuning test results
are explicitly prior evidence, not a rerun of this candidate.
"""
from pathlib import Path
import datetime,difflib,hashlib,json,re
b=Path(__file__).parent
old=b.parent/'fourstep-indexed-completion'
frozen=json.loads((b/'source-sha256.json').read_text())
prior=json.loads((old/'source-sha256.json').read_text())
assert set(frozen)==set(prior)
assert all(hashlib.sha256(Path(n).read_bytes()).hexdigest()==h for n,h in frozen.items())
changed={n for n,h in frozen.items() if prior[n]!=h}
expected={'crates/fastfft/src/engine/small/rectangular.rs','crates/fastfft/src/engine/fourstep.rs'}
assert changed==expected,changed
patch=[]
for n in sorted(changed):
    before=(old/'source'/n).read_text()
    after=(b/'source'/n).read_text()
    patch+=list(difflib.unified_diff(before.splitlines(True),after.splitlines(True),fromfile='prior/'+n,tofile='candidate/'+n))
    if n.endswith('fourstep.rs'):
        block="""    // Keep a tiny aligned stack object observable without exposing the vector
    // arrays. Generated-code checks must also verify the resulting spill slots.
    #[repr(align(64))]
    struct StackAnchor {
        _byte: u8,
    }
    let anchor = StackAnchor { _byte: 0 };
    let _ = std::hint::black_box(&anchor);
"""
        assert after.count(block)==1
        assert after.replace(block,'',1)==before
(b/'changes-from-indexed.patch').write_text(''.join(patch))
assert json.loads((old/'storage-verification.json').read_text())['passed']
log=(b/'library-tests.log').read_text()
m=re.search(r'test result: ok\. (\d+) passed; 0 failed;',log)
assert m and int(m[1])>=78
record={'utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'passed':True,'source_files_verified':len(frozen),'unchanged_source_files':len(frozen)-len(changed),'changed_source_files':sorted(changed),'optimized_default_correctness_tests':int(m[1]),'geometry':'All storage owners, constructors, coefficient formulas, layouts, descriptors, scratch sizing and selector source are unchanged. FourStep source equals prior after removing only the anchor insertion.','previous_native_evidence':str(old/'storage-verification.json'),'previous_native_tests':'Prior12 native SSE2 tuning shift and21 FourStep tests; not claimed rerun for this candidate.','limitation':'Native correctness, no Miri; generated alignment and quiet performance gates remain separate.'}
(b/'storage-verification.json').write_text(json.dumps(record,indent=2)+'\n')
print(json.dumps(record))

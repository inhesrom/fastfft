import hashlib,json
from pathlib import Path
BASE=Path('target/ticket19/selection-fix/vector-stack-scope-full-idle-window')
OUT=Path('target/ticket19/status-reports/batch32-critical-review')
KEY='batch:f32:fwd:oop:n32:b32768'
sha=lambda b:hashlib.sha256(b).hexdigest()
found={}
for name in ['trials.jsonl','results.jsonl']:
    records=[];raw=[];offset=0
    with (BASE/'full'/name).open('rb') as stream:
        for line_number,line in enumerate(stream,1):
            start=offset;offset+=len(line)
            try:row=json.loads(line)
            except json.JSONDecodeError:continue
            if row.get('key')==KEY:
                records.append({'source_line':line_number,'source_byte_offset':start,'source_line_sha256':sha(line),'row':row});raw.append(line)
                if len(records)==(8 if name=='trials.jsonl' else 1):break
    assert len(records)==(8 if name=='trials.jsonl' else 1),(name,len(records))
    found[name]=records
    (OUT/('extracted-'+name)).write_bytes(b''.join(raw))
summary=[]
for ordinal,item in enumerate(found['trials.jsonl']):
    row=item['row'];members={v['lib']:v for v in row['results']};e,m=members['fastfft'],members['fastfft/measure']
    summary.append({'ordinal':ordinal,'order':row['spec']['libs'],'clock_ghz':row['clock_ghz'],'estimate':e['time'],'measure':m['time'],'ratios':{k:m['time'][k]/e['time'][k] for k in ['best','p1','median']},'same_description':e['describe']==m['describe'],'calls':[e['calls_per_batch'],m['calls_per_batch']]})
merged={v['lib']:v for v in found['results.jsonl'][0]['row']['results']}
provenance=json.loads((BASE/'provenance.json').read_text())
static=Path('target/ticket19/selection-fix/vector-stack-scope/stack-context-code-verification.md')
result={'key':KEY,'acceptance':False,'source_capture':str(BASE),'source_files_are_live':False,'hash_scope':'Exact extracted lines only, with source offsets; no whole-live-file hash claimed','executable_provenance':provenance,'provenance_sha256':sha((BASE/'provenance.json').read_bytes()),'static_evidence_path':str(static),'static_evidence_sha256':sha(static.read_bytes()),'merged_ratios':{k:merged['fastfft/measure']['time'][k]/merged['fastfft']['time'][k] for k in ['best','p1','median']},'records':found,'all_eight_summary':summary}
(OUT/'extraction.json').write_text(json.dumps(result,indent=2)+'\n')
print(json.dumps({'eight_trials':len(summary),'merged_ratios':result['merged_ratios']}))

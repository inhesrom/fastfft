from pathlib import Path
import re,json,sys

def parse(text):
    regions=[]
    for line in text.splitlines():
        match=re.match(r"^([0-9a-f]+)-([0-9a-f]+) ([rwxps-]{4}) (\S+) (\S+) (\d+) *(.*)$",line)
        if match:
            lo,hi,perms,offset,device,inode,name=match.groups()
            regions.append(dict(start=int(lo,16),end=int(hi,16),permissions=perms,name=name,fields={}))
        elif regions and ':' in line:
            key,value=line.split(':',1);regions[-1]['fields'][key]=value.strip()
    if not regions:raise ValueError('no smaps headers')
    if any(r['start']>=r['end'] for r in regions):raise ValueError('empty/reversed VMA')
    if any(a['end']>b['start'] for a,b in zip(regions,regions[1:])):raise ValueError('overlapping or unsorted VMA')
    return regions

def cover(regions,ptr,size):
    end=ptr+size;cursor=ptr;selected=[]
    for r in regions:
        if r['end']<=cursor:continue
        if r['start']>=end:break
        if r['start']>cursor:raise ValueError('unmapped gap')
        if not r['permissions'].startswith('rw-'):raise ValueError('not writable data mapping')
        selected.append(r);cursor=min(end,r['end'])
        if cursor==end:break
    if cursor!=end:raise ValueError('incomplete backing mapping')
    return selected

if __name__=='__main__':
    base=Path(sys.argv[1]); rows=[];problems=[]
    for line in (base/'run/trials.jsonl').open():
        row=json.loads(line)
        if row['spec'].get('control'):continue
        try:
            d=row['measure_diagnostic'];m=d['memory_mappings']
            assert m['captured_after_timing'] is True
            regions=parse(m['smaps']['text']);spans=[]
            n=row['spec']['n'];complex_bytes=8 if n==75600 else 16
            for name,owner in zip(['estimate','measure'],d['initial_storage']):
                for r in owner['regions']:
                    if not r['capacity']:continue
                    ptr,size=r['ptr'],r['element_bytes']*r['len']
                    spans.append(dict(role=name,kind=r['kind'],index=r['index'],ptr=ptr,size=size,mod4096=ptr%4096,mappings=cover(regions,ptr,size)))
            for name,(ptr,length) in zip(['input','output','scratch'],d['buffers']):
                if length:spans.append(dict(role=name,ptr=ptr,size=length*complex_bytes,mod4096=ptr%4096,mappings=cover(regions,ptr,length*complex_bytes)))
            rows.append(dict(key=row['key'],process=d['process_index'],spans=spans,thp_enabled=m['thp_enabled'],thp_defrag=m['thp_defrag']))
        except (AssertionError,ValueError,KeyError,StopIteration) as e:problems.append(str(e))
    if len(rows)!=16:problems.append('incomplete two-cell eight-process mapping coverage')
    result=dict(valid=not problems,problems=problems,rows=rows,limitation='smaps page totals describe entire VMA, not individual allocation pages; no physical address/cache-color inference')
    (base/'mappings.json').write_text(json.dumps(result,indent=2)+'\n')
    print(json.dumps(dict(valid=not problems,problems=problems,rows=len(rows))))
    raise SystemExit(bool(problems))

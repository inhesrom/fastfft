import pathlib,json,os,datetime
b=pathlib.Path('target/ticket19/selection-fix/vector-stack-anchor')
x=json.loads((b/'positive-affinity.json').read_text())
rows=[]
for t in x['threads'].values():
    tid=t['tid']; path=pathlib.Path('/proc')/str(tid)/'stat'
    try:
        stat=path.read_text(); start=int(stat[stat.rindex(')')+2:].split()[19])
        if start!=t['starttime']:
            rows.append({'tid':tid,'exited':True});continue
        mask=sorted(os.sched_getaffinity(tid))
        rows.append({'tid':tid,'starttime':start,'mask':mask,'expected_mask':t['original_mask'],'passed':mask==t['original_mask']})
    except (FileNotFoundError,ProcessLookupError):
        rows.append({'tid':tid,'exited':True})
proof={'utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'journal_restored':x['restored'],'threads':rows,'live_threads':sum(not r.get('exited',False) for r in rows),'exited_threads':sum(r.get('exited',False) for r in rows),'passed':x['restored'] and all(r.get('passed',r.get('exited',False)) for r in rows)}
(b/'positive-affinity-proof.json').write_text(json.dumps(proof,indent=2)+'\n')
print(json.dumps({k:v for k,v in proof.items() if k!='threads'})); assert proof['passed']

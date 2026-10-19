"""Read-only five-minute host checks before the benchmark gate."""
from pathlib import Path
import datetime,importlib.util,json,os,time
b=Path(__file__).parent
spec=importlib.util.spec_from_file_location('host_activity',b/'audit-source/host_activity.py')
h=importlib.util.module_from_spec(spec);spec.loader.exec_module(h)
stop=b/'idle-watch.stop'
with (b/'idle-watch.jsonl').open('x',buffering=1) as log:
    while not stop.exists():
        pc,pt,t=h.cpu_snapshot(),h.thread_snapshot(),time.monotonic()
        for _ in range(5):
            if stop.exists():break
            time.sleep(1)
        if stop.exists():break
        now=time.monotonic()
        values=h.activity(pc,h.cpu_snapshot(),pt,h.thread_snapshot(),now-t)
        busy={cpu:1-v['idle']-v['iowait'] for cpu,v in values['cpu_accounting'].items()}
        load=os.getloadavg()[0]
        row={'utc':datetime.datetime.now(datetime.timezone.utc).isoformat(),'event':'five-minute-host-check','quiet_observation':sum(busy.values())<=.5 and busy[4]<=.05 and busy[12]<=.05 and load<=1,'total_busy_cores':sum(busy.values()),'load1':load,'core4_busy':busy[4],'sibling12_busy':busy[12],'top_threads':values['threads'][:6],'scope':'Single observation; fresh sustained quiet/envcheck still required before timing.'}
        log.write(json.dumps(row)+'\n')
        print(json.dumps({k:v for k,v in row.items() if k not in ['top_threads','scope']}),flush=True)
        for _ in range(295):
            if stop.exists():break
            time.sleep(1)
print('Idle watcher finished',flush=True)

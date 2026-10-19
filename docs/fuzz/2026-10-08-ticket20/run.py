import datetime, hashlib, json, os, pathlib, subprocess, time
root=pathlib.Path("/home/ianhersom/repo/fastfft")
out=root/"target/ticket20"
env=os.environ.copy()
env["PATH"]="/tmp/fastfft-ticket20-tools/bin:"+env["PATH"]
commands=[
 ("contracts",["cargo","test","--release","--manifest-path","fuzz/Cargo.toml","--lib"]),
 ("seeds",["cargo","run","--release","--manifest-path","fuzz/Cargo.toml","--bin","replay","--","--seeds","fuzz/corpus/fft"]),
 ("sweep",["fuzz/target/release/replay","--sweep"]),
 ("fuzz",["cargo","+nightly","fuzz","run","fft","--features","libfuzzer","--codegen-units","16","--","-max_total_time=600","-timeout=120","-rss_limit_mb=4096","-max_len=24","-seed=20261008","-print_final_stats=1"]),
]
def hashes():
 paths=[]
 for directory in ["fuzz","crates/fastfft/src","crates/fastfft-testkit/src"]:
  for p in (root/directory).rglob("*"):
   if p.is_file() and not any(part in ["target","corpus","artifacts","coverage"] for part in p.relative_to(root/directory).parts): paths.append(p)
 paths.extend(root/p for p in ["Cargo.toml","Cargo.lock","crates/fastfft/Cargo.toml","crates/fastfft-testkit/Cargo.toml","rust-toolchain.toml"])
 return {str(p.relative_to(root)):hashlib.sha256(p.read_bytes()).hexdigest() for p in sorted(set(paths))}
manifest={"started":datetime.datetime.now(datetime.timezone.utc).isoformat(),"commands":[],"sources_before":hashes(),"head":subprocess.check_output(["git","rev-parse","HEAD"],cwd=root,text=True).strip(),"performance_benchmark":False,"std_rebuilt":False,"sanitizer":"address","tool_versions":{name:subprocess.check_output(cmd,cwd=root,env=env,text=True).strip() for name,cmd in [("stable",["rustc","-Vv"]),("nightly",["rustc","+nightly","-Vv"]),("cargo_fuzz",["cargo","fuzz","--version"])]}}
def save(): (out/"manifest.json").write_text(json.dumps(manifest,indent=2)+"\n")
save()
for name,args in commands:
 start=time.monotonic()
 item={"name":name,"argv":["taskset","-c","0"]+args,"started":datetime.datetime.now(datetime.timezone.utc).isoformat()}
 manifest["commands"].append(item)
 save()
 print("started "+name,flush=True)
 with (out/(name+".log")).open("w") as log:
  result=subprocess.run(item["argv"],cwd=root,env=env,stdout=log,stderr=subprocess.STDOUT)
 item.update(exit_code=result.returncode,seconds=time.monotonic()-start,finished=datetime.datetime.now(datetime.timezone.utc).isoformat())
 save()
 print("finished "+name+" exit="+str(result.returncode)+" seconds="+str(round(item["seconds"],1)),flush=True)
 if result.returncode: break
manifest["sources_after"]=hashes()
manifest["sources_match"]=manifest["sources_before"]==manifest["sources_after"]
manifest["finished"]=datetime.datetime.now(datetime.timezone.utc).isoformat()
manifest["accepted"]=False
save()

"""Replay the real warm-up function with one call crossing both boundaries.

Run from the repository root. Pass the archived timing-before.rs to observe
the failure, or omit the argument to check the current arena source.
"""
from pathlib import Path
import subprocess
import sys
import tempfile

source = Path(sys.argv[1]) if len(sys.argv) > 1 else Path("bench/arena/src/timing.rs")
code = source.read_text()
code = "use std::time::{Duration, Instant};\n" + code[code.index("pub fn warmup_and_calibrate"):]
code += """
fn main() {
    let mut calls = 0;
    let k = warmup_and_calibrate(&mut || {
        calls += 1;
        std::thread::sleep(Duration::from_millis(if calls == 1 { 40 } else { 70 }));
    }, Duration::from_millis(100), Duration::from_micros(50));
    println!("calibrated batch: {k}, warmup calls: {calls}");
    assert_eq!(k, 1, "a 70 ms call must not be batched for a 50 us minimum");
}
"""
with tempfile.TemporaryDirectory(prefix="ticket14-calibration-") as temp:
    root = Path(temp)
    src = root / "replay.rs"
    binary = root / "replay"
    src.write_text(code)
    subprocess.run(["rustc", "--edition", "2024", "-O", str(src), "-o", str(binary)], check=True)
    sys.exit(subprocess.run([str(binary)], timeout=5).returncode)

# Batch measurement history

These runs show why the final engine combines register transposes at size 8
with the original kernels and streamed output at larger sizes. The split
prototypes and broad interleaved-across-transform version verified correctly
but lost to the existing small leaves. Streaming stores removed write-allocation
traffic; bounded tiles reused Stockham at N=512/1024. f64 read-ahead improved
N=128/256. The first full candidate passed best times but missed median times.
Removing in-place staging setup did not meet the median checkpoint either.

The first seven runs here used the default target CPU and **omitted the documented
64-byte function-alignment build flag**. They are diagnostic evidence, not
the final checkpoint or a matching-build comparison with the baseline. The
final report uses the established alignment flag for both libraries, as does
the saved baseline. No timings from different runs are combined.

| Diagnostic | Processes | Best geomean | Median geomean | Drift |
|---|---:|---:|---:|---:|
| [split-dynamic](split-dynamic/report.md) | 1 | 0.5284× | 0.5389× | 1.45% |
| [split-specialized](split-specialized/report.md) | 1 | 0.5953× | 0.6052× | 1.48% |
| [interleaved](interleaved/report.md) | 1 | 0.8173× | 0.8176× | 0.95% |
| [streamed-leaves](streamed-leaves/report.md) | 1 | 1.2129× | 1.2067× | 0.92% |
| [tiled-stream](tiled-stream/report.md) | 1 | 1.2980× | 1.2844× | 0.56% |
| [prefetch-unaligned-build](prefetch-unaligned-build/report.md) | 3 | 1.3101× | 1.2980× | 0.99% |
| [inplace-unaligned-build](inplace-unaligned-build/report.md) | 3 | 1.3095× | 1.2894× | 1.05% |
| [aligned-first](aligned-first/report.md) | 3 | 1.3199× | 1.2995× | 0.86% |

The first matched-build run used the final size-8 streaming kernel and
64-byte function alignment. It missed the median target by 0.04%; it
remains archived as a near miss. A fresh unchanged repeat determines the
final verdict.

Each folder retains raw results, environment, metadata, report, executable
hash and saved sources. The later candidates also retain the complete source
patch and hashes. Exact binaries remain in `target/ticket15/` to avoid storing
large executable artifacts in the repository. One-process experiments do not
satisfy the official three-process protocol.

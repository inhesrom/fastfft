# Frozen production FourStep storage code review

Production executable SHA256: `80c7736fff9d6c7ac7e06c7867fae860e6c78b9bfa70d0ff406eade8e7815071`. This is a scoped review of existing located assembly, supported by the corresponding source. No build, independent disassembly, benchmark, or source change was performed. It covers storage traversal in F64x8 ungrouped execution (including inverse N165375) and representative grouped F32x8v/F32x16 branches. These execute symbols handle runtime dimensions and both directions; they are not N-specialized kernels. Prior FourStep assembly is from the rejected `page-storage-observable-stack` executable, whose FourStep still used independent coefficient Vecs.

**The reviewed traversal keeps backing/view setup outside repeated panel work.** At entry to each direction/group branch, the compiler loads the backing pointer from plan+0x10 and reads descriptor counts and cross/fine offsets. Small/Paged `as_ptr` matching is reduced to the common pointer-field load in these blocks; there is no repeated backing-tag dispatch in the inspected panel or butterfly loops. Panel descriptor endpoints and cross/fine bases or invariant offsets are retained in registers/stack locals.

F64x8 ungrouped setup at `0xe5e1e4–0xe5e2a0` loads the common base into R10, forms the row-descriptor pointer with count×24, reads cross/fine offsets, and saves invariant state before column traversal. Its completion loop at `0xe6935f–0xe69424` advances the descriptor by24, reads radix plus the table offset, and computes the coefficient pointer as cached base+offset for pass dispatch. It does not decode the Backing enum or walk the complete graph per butterfly.

Grouped F32x8v setup at `0xf677f3–0xf6783c` and `0xf7d895–0xf7d8e2` retains the backing in R15 / RSP+0x2e0 and the descriptor endpoint in RSP+0x88. In the sampled group completion loop (`0xf7e5fa–0xf7e6c1`), the descriptor pointer increments24 and the pass coefficient pointer is `R15 + [R15 + pass_index×24 +8]`. Grouped F32x16 uses the same pattern with cached R11 / RSP+0x680, endpoint RSP+0x30, entry `0xf35919–0xf35943` and `0xf4d306–0xf4d358`, and completion loop `0xf4e072–0xf4e14e`.

Per-pass radix/offset reads and base addition remain repeated for each panel completion. That is expected descriptor traversal, not a claim that every table pointer is permanently materialized outside all execution loops. The new representation trades separate Vec/radix access for a 24-byte descriptor and base+offset address formation; altered register pressure, checks, and scheduling remain performance risks.

All callsites across the three full execute symbols target existing FFT first/pass functions or cold core panic paths. Each version has 148 Stockham pass callsites and 88 first-pass callsites; panic counts account for the small call-count differences. There are no allocator, whole-storage comparison, diagnostic, or clock call targets in these symbols, and no RDTSC/RDTSCP/SYSCALL instructions. Source execute paths likewise contain no allocation or diagnostic scan; profiling is cfg(test). This does not independently audit every callee body or prove whole-algorithm equivalence.

| Execute symbol | Located code span, prior → production | Explicit frame subtraction, prior → production |
|---|---:|---:|
| F64x8 | 142400 → 142912 bytes (+512) | 3032 → 3032 |
| F32x8v | 135680 → 135040 bytes (−640) | 2152 → 2168 |
| F32x16 | 149824 → 148480 bytes (−1344) | 5632 → 5568 |

Code spans include any locator boundary padding and both directions/all execution branches; they are not a hot-loop working-set estimate. Frame sizes exclude saved registers and dynamic realignment. F32x16 retains its existing split stack probe/allocation and alignment. No claim is made that FourStep spills satisfy the separate small-rectangular alignment proof. F64x8 code expansion and F32x8v +16-byte frame are bounded static risks; even decreases can change placement and scheduling. Numeric correctness and quiet performance gates remain necessary.

The separate `alignment-verification.json` passes **only local vector stack alignment for six exact production rectangular kernels**. All six full normalized instruction streams match the frozen diagnostic-anchor build, including batch scalar setup/loop/exit. Thus its batch caveats persist: N96 batch vector stack accesses24→30 are a concern requiring measurement, and generic anchors add two scalar stores per transform. Neither alignment success nor fewer instructions constitutes performance acceptance.

# Bluestein execution and convolution lengths

Ticket 17 starts at `b908bc6` (ticket 16). It keeps Bluestein as the
algorithm for lengths with prime factors above 13; Rader remains outside
this ticket.

## Pointwise products and workspace

For the forward chirp `c[k] = exp(-i*pi*k*k/N)`, execution is:

1. Multiply input by `c` into an aligned length-M workspace and zero its
   unused suffix.
2. Apply the forward inner FFT.
3. Multiply by the precomputed convolution kernel and conjugate the
   product in the same SIMD loop.
4. Apply the same forward inner FFT again.
5. Multiply the conjugated workspace by `c` into the user's output.

Inverse transforms use `IFFT(x) = conj(FFT(conj(x)))`, fusing the outer
conjugations into steps 1 and 5. Both directions use the same contiguous
kernel table. There is no reverse-indexed inverse product or separate
conjugation pass.

The products use the existing Vector abstraction and target-feature
boundaries for scalar, SSE2, AVX2, AVX-512/256-bit and AVX-512/512-bit.
Complete vectors use unaligned loads/stores; the final partial vector
uses bounded prefix operations. Dispatch respects both compiled features
and the planner/environment ISA caps.

Chirp and kernel tables are packed once into `[real lanes][imaginary
lanes]` blocks at planning time. Their last block is zero-padded, so
factor loads are full vectors even when the user's final block is short.
Only the user's values need deinterleaving during execution.

The input product stores its entire final vector into internal workspace;
inactive input and factor lanes are both zero. Only the suffix after that
vector needs clearing. This avoids a separate memset call in the smallest
convolutions. The planner checks that the padded vector fits inside M.
User output still uses a bounded final store. For f32 N<32, the pointwise
entry uses at most AVX-512/256-bit, following the focused N=17 width
comparison; the inner FFT retains its independent planner choice.

All input is consumed in step 1 before step 5 writes output. In-place
execution therefore shares the separate-output workspace requirement:
M complex values, alignment slack and the inner FFT's advertised scratch.
The old extra N-element input copy is unnecessary. Raw workspace pointers
are obtained afresh after each inner FFT's exclusive slice borrow.

## Why M can equal 2N-2

The required convolution at output k reads kernel indices `d = k-j`,
where `0 <= k,j < N`. Thus `-(N-1) <= d <= N-1`. With `M = 2N-2`,
the only distinct indices in that range that coincide modulo M are
`-(N-1)` and `N-1`. The kernel is even:
`b[d] = conj(c[d]) = exp(i*pi*d*d/N)`, so those two values are identical.

Store that shared value once. This is sufficient for every required
convolution output, without summing or doubling the coincident endpoints.
The existing mirrored-table assignments already have that behavior.
The exact integer reduction `k*k mod 2N` and precomputed 1/M scaling are
preserved.

This allows N=17, 257 and 65537 to use power-of-two inner lengths 32,
512 and 131072 when the cost estimate selects them. The previous
`M >= 2N-1` rule excluded those lengths.

## Candidate costs

For each multiplier in `{1, 3, 5, 9}`, consider its smallest power-of-two
multiple at least `2N-2`. Price the two inner FFTs and a linear
pointwise/workspace term, rather than choosing the smallest M outright.
The estimate uses the default candidate for the current precision and
ISA cap. Stockham uses its existing predicted cost. Rectangular leaves
use their actual two codelets, since their vector width need not divide
M. Other register-resident leaves receive a discount from the Stockham
pass/memory estimate. Larger engines use the Stockham arithmetic estimate
at their selected vector width.

These are bounded heuristics, not measured cost tables. Ticket 18 still
owns replacement of the general cost model, planning-time gate G8 and
validation that Estimate stays within 3% of the best candidate. Measure
continues to tune the selected inner length using its existing mechanism.

## Rejected SIMD implementation

The first SIMD version put its two input loads in a local closure. The
arena caught a severe regression, including N=17 at 0.0685x f32 and
0.0463x f64 in a focused reproduction. All rough cells still verified.
The compiler emitted the closure as baseline-ISA code outside the
target-feature function's inlining chain. Disassembly shows calls to
individual AVX-512 intrinsics, with vectors repeatedly spilled through
128-bit stack moves.

The fix keeps those loads directly in the always-inlined product body.
The archived failed run, source patch and assembly excerpt explain why
this seemingly harmless helper must stay inside the target-feature
boundary. The arena's actual production executable is the performance
regression check; ordinary numerical tests cannot detect this failure.

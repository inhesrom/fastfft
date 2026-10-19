//! The Stockham engine (split layout).
//!
//! `N = M * L` with `L` = complex lanes of the vector type. Lane `n1` of
//! vector `n2` holds `x[L*n2 + n1]`, so the L lanes are independent
//! decimated sub-sequences:
//!
//! * **Phase A** runs a DIT Stockham FFT of length `M` along the vector
//!   index: every pass is a loop of generated codelets over whole vectors
//!   with broadcast twiddles (fused into FMAs by the codelets), no shuffles.
//!   The first pass reads the interleaved user format and deinterleaves;
//!   later passes use the internal split block format `[re x L][im x L]`.
//! * **Phase B** takes `L` consecutive vectors, transposes them in
//!   registers, applies per-lane twiddles and a DFT-L across registers (the
//!   twiddled codelet) and stores contiguous interleaved vectors in natural
//!   order. A partial last block (when `M % L != 0`) goes through a stack
//!   buffer.
//!
//! The inverse transform swaps re and im on the first load and the final
//! store (`IFFT(x) = swap(FFT(swap(x)))`), which is free in split layout.

#[cfg(test)]
mod contracts;
mod scratch;
mod storage;

use crate::codelets::generated;
use crate::isa::Vector;
use crate::twiddle::Roots;
use scratch::{PAGE_BYTES, placement_offset};
use storage::Storage;

/// Per-tier pass entry points. Keeping each radix in its own target-feature
/// function lets LLVM allocate registers independently of the other radices
/// and of the final transpose.
pub(crate) trait StockhamVector: Vector {
    /// Same pointer and feature requirements as [`pass`].
    #[inline(always)]
    unsafe fn pass<const R: usize, const USER: bool, const SWAP: bool>(
        x: *const Self::S,
        y: *mut Self::S,
        m: usize,
        ns: usize,
        tw: *const Self::S,
        one: Self,
    ) {
        // SAFETY: the caller supplies the pass's valid buffers and features.
        unsafe { pass::<Self, R, USER, SWAP>(x, y, m, ns, tw, one) }
    }

    /// Same pointer and feature requirements as [`phase_b_blocks`].
    #[inline(always)]
    unsafe fn finish<
        const L: usize,
        const USER: bool,
        const SWAP_LOAD: bool,
        const SWAP: bool,
        const PARTIAL: bool,
    >(
        y: *const Self::S,
        x: *mut Self::S,
        m: usize,
        vtw: *const Self::S,
        one: Self,
    ) {
        // SAFETY: the caller supplies valid blocks and matching features.
        unsafe { phase_b_blocks::<Self, L, USER, SWAP_LOAD, SWAP, PARTIAL>(y, x, m, vtw, one) }
    }
}

/// Twiddle tables and pass structure of one Stockham transform.
#[derive(Clone, Debug)]
pub(crate) struct StockhamPlan<S> {
    pub n: usize,
    /// Complex lanes of the vector type the tables were built for.
    pub l: usize,
    /// `n / l`.
    pub m: usize,
    /// Pass descriptors, Phase-A coefficients and Phase-B coefficients share
    /// one canonical allocation; no separately allocated radix/table graph.
    tables: Storage<S>,
    /// Nonzero only for modes whose scratch-only working set fits the cache.
    /// Computed once at planning, shared by sizing and execution.
    misaligned_scratch: [usize; 3],
}

/// Where the transform reads and writes.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub(crate) enum Mode {
    /// `input == output`.
    InPlace,
    /// Separate output; the input may be overwritten. Aligned buffers need
    /// no scratch.
    OutOfPlace,
    /// Separate output; the input is read only.
    Immutable,
}

/// Rounds an `f64` to the plan's float type.
fn lit<S: num_traits::FromPrimitive>(x: f64) -> S {
    S::from_f64(x).expect("finite f64 converts")
}

impl<S> StockhamPlan<S> {
    #[cfg(feature = "tuning")]
    pub(crate) fn diagnostic_shift_coefficients(
        &mut self,
        absolute_shift_bytes: usize,
    ) -> Result<(), crate::tuning::CoefficientShiftError> {
        self.tables
            .diagnostic_shift_coefficients(absolute_shift_bytes)
    }

    #[cfg(feature = "tuning")]
    pub(crate) fn diagnostic_swap_coefficients(
        &mut self,
        other: &mut Self,
        exchange: bool,
    ) -> Result<(), crate::tuning::CoefficientSwapError> {
        if (self.n, self.l, self.m, self.misaligned_scratch)
            != (other.n, other.l, other.m, other.misaligned_scratch)
        {
            return Err(crate::tuning::CoefficientSwapError::ConfigurationMismatch);
        }
        self.tables
            .diagnostic_swap_backing(&mut other.tables, exchange)
    }

    #[inline(always)]
    pub(super) fn pass_tw(&self, index: usize) -> &[S] {
        self.tables.pass_tw(index)
    }

    #[inline(always)]
    pub(super) fn vtw(&self) -> &[S] {
        self.tables.phase_b()
    }

    #[cfg(feature = "tuning")]
    pub(crate) fn diagnostic_regions(
        &self,
        owner: usize,
        sink: &mut dyn FnMut(crate::tuning::DiagnosticRegion),
    ) {
        use crate::tuning::{DiagnosticRegion, RegionKind};
        let mut embedded = DiagnosticRegion::object(self);
        embedded.owner = owner;
        embedded.kind = RegionKind::EmbeddedPlan;
        sink(embedded);
        self.tables.diagnostic_regions(owner, sink);
        sink(DiagnosticRegion::metadata(owner, 0, self.l));
        sink(DiagnosticRegion::metadata(owner, 2, 1));
        for (mode, len) in self.misaligned_scratch.iter().copied().enumerate() {
            sink(DiagnosticRegion::metadata(owner, 10 + mode, len));
        }
    }

    /// Complex values of the first scratch buffer, rounded up to whole
    /// 64-byte lines so the second buffer starts aligned when the first does.
    fn padded_n(&self) -> usize {
        let per_line = (64 / (2 * core::mem::size_of::<S>())).max(1);
        self.n.div_ceil(per_line) * per_line
    }

    /// The gated path has at least three passes and uses two scratch buffers.
    /// The final Phase A pass can run in place.
    fn scratch_only_len(&self) -> usize {
        self.padded_n() + self.n + 2 * self.placement_slack()
    }

    /// One page per buffer allows choosing any 64-byte-aligned page offset.
    fn placement_slack(&self) -> usize {
        PAGE_BYTES / (2 * core::mem::size_of::<S>())
    }

    pub(crate) fn scratch_len(&self, mode: Mode) -> usize {
        let gated = self.misaligned_scratch[mode as usize];
        if gated != 0 {
            gated
        } else if self.tables.passes().is_empty() || mode == Mode::OutOfPlace {
            0
        } else {
            self.n
        }
    }

    fn set_cache_gate(&mut self, cache_bytes: usize) {
        let p = self.tables.passes().len();
        // Scalar accesses cannot split SIMD loads. Short plans retain the
        // legacy path: in-place p <= 2 already keeps intermediates in scratch,
        // and scratch-only out-of-place p = 2 regressed on streaming batches
        // even after page-offset placement (ticket 12's stage-3 measurements).
        if self.l == 1 || p < 3 {
            return;
        }
        let scratch = self.scratch_only_len();
        let real_bytes = core::mem::size_of::<S>();
        let tables = self.tables.logical_len();
        // Leave a quarter of the last-level cache for unrelated state. Count
        // twiddles too: Phase B's table alone is about one full N-buffer.
        let budget = cache_bytes - cache_bytes / 4;
        for mode in [Mode::InPlace, Mode::OutOfPlace, Mode::Immutable] {
            let caller_buffers = if mode == Mode::InPlace { 1usize } else { 2 };
            let working_set = self
                .n
                .checked_mul(caller_buffers)
                .and_then(|n| n.checked_add(scratch))
                .and_then(|n| n.checked_mul(2))
                .and_then(|n| n.checked_add(tables))
                .and_then(|n| n.checked_mul(real_bytes))
                .and_then(|n| n.checked_add(64));
            if working_set.is_some_and(|bytes| bytes <= budget) {
                self.misaligned_scratch[mode as usize] = scratch;
            }
        }
    }
}

impl<S: num_traits::FromPrimitive + Copy + Default + 'static> StockhamPlan<S> {
    /// `radices` must multiply to `n / l` and each be a generated radix.
    pub(crate) fn new(n: usize, l: usize, radices: Vec<usize>) -> Self {
        Self::with_cache(n, l, radices, crate::isa::cache::last_level_bytes())
    }

    /// Explicit cache capacity for deterministic policy tests.
    pub(crate) fn with_cache(n: usize, l: usize, radices: Vec<usize>, cache_bytes: usize) -> Self {
        debug_assert!(n.is_multiple_of(l));
        let m = n / l;
        debug_assert_eq!(radices.iter().product::<usize>(), m.max(1));
        let blocks = m.div_ceil(l);
        let phase_b_len = blocks
            .checked_mul(l)
            .and_then(|v| v.checked_mul(2))
            .and_then(|v| v.checked_mul(l))
            .expect("Stockham Phase-B coefficient count overflow");
        let mut tables = Storage::<S>::new(&radices, phase_b_len);
        let roots = Roots::new(n, n.saturating_add(m));
        let mut ns = 1;
        for (index, &r) in radices.iter().enumerate() {
            let t = tables.pass_tw_mut(index);
            for k in 0..ns {
                for j in 1..r {
                    let (c, s) = roots.get(j * k * (n / (ns * r)));
                    let base = (k * (r - 1) + j - 1) * 2;
                    t[base] = lit::<S>(c);
                    t[base + 1] = lit::<S>(s);
                }
            }
            ns *= r;
        }
        let vtw = tables.phase_b_mut();
        for b in 0..blocks {
            for n1 in 0..l {
                for t in 0..l {
                    let k1 = b * l + t;
                    if k1 >= m {
                        continue;
                    }
                    let (c, s) = roots.get(n1 * k1);
                    let base = (b * l + n1) * 2 * l;
                    vtw[base + t] = lit::<S>(c);
                    vtw[base + l + t] = lit::<S>(s);
                }
            }
        }
        let mut plan = StockhamPlan {
            n,
            l,
            m,
            tables,
            misaligned_scratch: [0; 3],
        };
        plan.set_cache_gate(cache_bytes);
        plan
    }
}

#[inline(always)]
unsafe fn load_split<V: Vector, const USER: bool, const SWAP: bool>(p: *const V::S) -> (V, V) {
    // SAFETY: caller guarantees `p` is valid for 2 * LANES reals.
    unsafe {
        let a = V::load(p);
        let b = V::load(p.add(V::LANES));
        let (re, im) = if USER { V::deinterleave(a, b) } else { (a, b) };
        if SWAP { (im, re) } else { (re, im) }
    }
}

#[inline(always)]
unsafe fn store_mem<V: Vector>(p: *mut V::S, re: V, im: V) {
    // SAFETY: caller guarantees `p` is valid for 2 * LANES reals.
    unsafe {
        V::store(p, re);
        V::store(p.add(V::LANES), im);
    }
}

/// One DIT Stockham pass of radix `R` over `m` vectors; `ns` is the product
/// of the previous radices. Loops run `a` outer and `k` inner so input and
/// output runs are contiguous; the broadcast twiddles for `k` come from a
/// small table that stays in L1.
///
/// # Safety
///
/// `x`/`y` valid for `m` vectors (`2 * LANES * m` reals); `tw` holds the
/// pass table; `x == y` only for a last pass (`ns * R == m`). `USER` is
/// true exactly for the first pass, where `ns == 1`.
#[inline(always)]
pub(super) unsafe fn pass<V: Vector, const R: usize, const USER: bool, const SWAP: bool>(
    x: *const V::S,
    y: *mut V::S,
    m: usize,
    ns: usize,
    tw: *const V::S,
    one: V,
) {
    debug_assert_eq!(USER, ns == 1);
    let vs = 2 * V::LANES;
    let seg = m / R;
    let groups = seg / ns;
    // Addresses are base + loop-invariant offset. The butterfly index goes
    // through `black_box` so LLVM does not strength-reduce each of the 2R
    // streams into its own induction variable: 16+ pointers exceed the
    // general-purpose registers and get spilled with a store per stream per
    // iteration, on the store port the data needs (measured in M2).
    let mut ioff = [0usize; R];
    let mut ooff = [0usize; R];
    for j in 0..R {
        ioff[j] = j * seg * vs;
        ooff[j] = j * ns * vs;
    }
    // SAFETY: indices stay below `m` vectors; see the function contract.
    unsafe {
        for a in 0..groups {
            for k in 0..ns {
                let j0 = core::hint::black_box(a * ns + k);
                let ib = x.add(j0 * vs);
                let ob = y.add((a * ns * R + k) * vs);
                let mut re = [one; R];
                let mut im = [one; R];
                for j in 0..R {
                    let (r, i) = load_split::<V, USER, SWAP>(ib.add(ioff[j]));
                    re[j] = r;
                    im[j] = i;
                }
                if USER {
                    generated::notw::<V, R>(&mut re, &mut im, one);
                } else {
                    let mut wr = [one; R];
                    let mut wi = [one; R];
                    let t = tw.add(k * (R - 1) * 2);
                    for j in 1..R {
                        wr[j] = V::splat(*t.add((j - 1) * 2));
                        wi[j] = V::splat(*t.add((j - 1) * 2 + 1));
                    }
                    generated::tw::<V, R>(&mut re, &mut im, &wr, &wi, one);
                }
                for j in 0..R {
                    store_mem::<V>(ob.add(ooff[j]), re[j], im[j]);
                }
            }
        }
    }
}

#[inline(always)]
#[allow(clippy::too_many_arguments)]
pub(super) unsafe fn run_pass<V: StockhamVector>(
    r: usize,
    user: bool,
    swap: bool,
    x: *const V::S,
    y: *mut V::S,
    m: usize,
    ns: usize,
    tw: *const V::S,
    one: V,
) {
    macro_rules! go {
        ($r:literal) => {
            // SAFETY: forwarded contract of `pass`.
            unsafe {
                match (user, swap) {
                    (true, true) => V::pass::<$r, true, true>(x, y, m, ns, tw, one),
                    (true, false) => V::pass::<$r, true, false>(x, y, m, ns, tw, one),
                    _ => V::pass::<$r, false, false>(x, y, m, ns, tw, one),
                }
            }
        };
    }
    match r {
        2 => go!(2),
        3 => go!(3),
        4 => go!(4),
        5 => go!(5),
        6 => go!(6),
        7 => go!(7),
        8 => go!(8),
        9 => go!(9),
        10 => go!(10),
        11 => go!(11),
        12 => go!(12),
        13 => go!(13),
        14 => go!(14),
        15 => go!(15),
        16 => go!(16),
        _ => unreachable!("radix {r} has no codelet"),
    }
}

#[inline(always)]
pub(super) unsafe fn transpose<V: Vector, const L: usize>(r: &mut [V; L]) {
    let mut k = L / 2;
    while k >= 1 {
        let mut g = 0;
        while g < L {
            for i in g..g + k {
                // SAFETY: register shuffles under the tier's features.
                let (e, o) = unsafe { V::zip(r[i], r[i + k], k) };
                r[i] = e;
                r[i + k] = o;
            }
            g += 2 * k;
        }
        k /= 2;
    }
}

/// Phase B. `y` holds the Phase A output (internal format, or the user
/// input when there were no passes: `USER`), `x` receives the result.
///
/// # Safety
///
/// `y` valid for `m` vectors, `x` for `n = m * L` complex values; for
/// `USER` in place (`x == y`) only when `m <= L` (one block).
/// `L == V::LANES`; a partial-block call requires `m % L != 0`.
#[inline(always)]
pub(super) unsafe fn phase_b_blocks<
    V: Vector,
    const L: usize,
    const USER: bool,
    const SWAP_LOAD: bool,
    const SWAP: bool,
    const PARTIAL: bool,
>(
    y: *const V::S,
    x: *mut V::S,
    m: usize,
    vtw: *const V::S,
    one: V,
) {
    let vs = 2 * L;
    let full = m / L;
    let rem = m % L;
    // SAFETY: see the function contract.
    unsafe {
        let zero = V::splat(V::S::default());
        let blocks = if PARTIAL { full..full + 1 } else { 0..full };
        for b in blocks {
            let valid = if PARTIAL { rem } else { L };
            let mut re = [zero; L];
            let mut im = [zero; L];
            for t in 0..valid {
                let (r, i) = load_split::<V, USER, SWAP_LOAD>(y.add((b * L + t) * vs));
                re[t] = r;
                im[t] = i;
            }
            transpose::<V, L>(&mut re);
            transpose::<V, L>(&mut im);
            let mut wr = [one; L];
            let mut wi = [one; L];
            for n1 in 1..L {
                let p = vtw.add((b * L + n1) * 2 * L);
                wr[n1] = V::load(p);
                wi[n1] = V::load(p.add(L));
            }
            generated::tw::<V, L>(&mut re, &mut im, &wr, &wi, one);
            for k2 in 0..L {
                let (lo, hi) = if SWAP {
                    V::interleave(im[k2], re[k2])
                } else {
                    V::interleave(re[k2], im[k2])
                };
                let dst = x.add(2 * (b * L + m * k2));
                if !PARTIAL {
                    V::store(dst, lo);
                    V::store(dst.add(L), hi);
                } else {
                    let mut tmp = [V::S::default(); 64];
                    V::store(tmp.as_mut_ptr(), lo);
                    V::store(tmp.as_mut_ptr().add(L), hi);
                    core::ptr::copy_nonoverlapping(tmp.as_ptr(), dst, 2 * valid);
                }
            }
        }
    }
}

/// Keep the full-block loop separate from the tail. A runtime `valid`
/// count in the hot loop prevents LLVM from unrolling the loads and
/// keeping the transpose and codelet entirely in registers.
#[inline(always)]
unsafe fn phase_b<
    V: StockhamVector,
    const L: usize,
    const USER: bool,
    const SWAP_LOAD: bool,
    const SWAP: bool,
>(
    y: *const V::S,
    x: *mut V::S,
    m: usize,
    vtw: *const V::S,
    one: V,
) {
    // SAFETY: the caller supplies m valid vectors and their twiddle table.
    // Full blocks access L vectors each; the tail accesses only m % L.
    unsafe {
        V::finish::<L, USER, SWAP_LOAD, SWAP, false>(y, x, m, vtw, one);
        if !m.is_multiple_of(L) {
            V::finish::<L, USER, SWAP_LOAD, SWAP, true>(y, x, m, vtw, one);
        }
    }
}

#[inline(always)]
pub(super) unsafe fn run_phase_b<V: StockhamVector>(
    user: bool,
    swap: bool,
    y: *const V::S,
    x: *mut V::S,
    m: usize,
    vtw: *const V::S,
    one: V,
) {
    // The inverse swaps re/im once on the way in (first pass, or Phase B
    // when it reads the user input directly) and once on the way out.
    macro_rules! go {
        ($l:literal) => {
            // SAFETY: forwarded contract of `phase_b`.
            unsafe {
                match (user, swap) {
                    (true, true) => phase_b::<V, $l, true, true, true>(y, x, m, vtw, one),
                    (true, false) => phase_b::<V, $l, true, false, false>(y, x, m, vtw, one),
                    (false, true) => phase_b::<V, $l, false, false, true>(y, x, m, vtw, one),
                    (false, false) => phase_b::<V, $l, false, false, false>(y, x, m, vtw, one),
                }
            }
        };
    }
    match V::LANES {
        1 => {
            // L = 1: Phase B is a copy (the internal one-lane block format
            // equals the interleaved format), swapping once for the inverse
            // unless the input was read directly (then it is the identity).
            let s = swap && !user;
            // SAFETY: y and x are valid for m complex values.
            unsafe {
                for v in 0..m {
                    let (re, im) = (*y.add(2 * v), *y.add(2 * v + 1));
                    let (re, im) = if s { (im, re) } else { (re, im) };
                    *x.add(2 * v) = re;
                    *x.add(2 * v + 1) = im;
                }
            }
        }
        2 => go!(2),
        4 => go!(4),
        8 => go!(8),
        16 => go!(16),
        _ => unreachable!(),
    }
}

/// Runs one transform.
///
/// # Safety
///
/// `input`/`output` valid for `n` complex values (2n reals) per the `mode`
/// contract; `scratch` valid for `scratch_len(mode)` complex values; `V`'s
/// tier is available and this is called from a matching `#[target_feature]`
/// context; `plan.l == V::LANES`.
#[inline(always)]
pub(crate) unsafe fn execute<V: StockhamVector>(
    plan: &StockhamPlan<V::S>,
    input: *mut V::S,
    output: *mut V::S,
    scratch: *mut V::S,
    mode: Mode,
    inverse: bool,
) {
    debug_assert_eq!(plan.l, V::LANES);
    // SAFETY: see the function contract. `one` is opaque so the codelets'
    // `x * one + y` add-balancing survives optimization.
    unsafe {
        let one = V::splat_f64(core::ptr::read_volatile(&1.0f64));
        let p = plan.tables.passes().len();
        if p == 0 {
            run_phase_b::<V>(
                true,
                inverse,
                input,
                output,
                plan.m,
                plan.vtw().as_ptr(),
                one,
            );
            return;
        }
        // A vector access splits a cache line unless it starts at a multiple
        // of its size. When a caller buffer is misaligned, only the first
        // pass's loads and Phase B's stores touch caller memory: the first
        // pass writes the scratch, the passes in between ping-pong within it
        // (two separately placed regions for p > 2), and the last runs in
        // place. The gate includes the extra buffers, placement slack and
        // tables; above the cache budget use the legacy choreography.
        let vbytes = V::LANES * core::mem::size_of::<V::S>();
        if plan.misaligned_scratch[mode as usize] != 0
            && !(input as usize | output as usize).is_multiple_of(vbytes)
        {
            let real_bytes = core::mem::size_of::<V::S>();
            let s1 = scratch.add(
                placement_offset(scratch as usize, input as usize, output as usize, None)
                    / real_bytes,
            );
            let mut cur = s1;
            // Disjoint regions, each reserving one page before its N
            // values. Pick a different page offset for the second buffer
            // too, to avoid repeating a base-address dependency per chunk.
            let s2 = scratch.add(2 * (plan.padded_n() + plan.placement_slack()));
            let mut other = s2.add(
                placement_offset(
                    s2 as usize,
                    input as usize,
                    output as usize,
                    Some(s1 as usize),
                ) / real_bytes,
            );
            let mut ns = 1;
            for (i, pass) in plan.tables.passes().iter().enumerate() {
                let r = pass.radix;
                let tw = plan.pass_tw(i).as_ptr();
                if i == 0 {
                    run_pass::<V>(r, true, inverse, input, s1, plan.m, ns, tw, one);
                } else if i + 1 == p {
                    run_pass::<V>(r, false, false, cur, cur, plan.m, ns, tw, one);
                } else {
                    run_pass::<V>(r, false, false, cur, other, plan.m, ns, tw, one);
                    core::mem::swap(&mut cur, &mut other);
                }
                ns *= r;
            }
            run_phase_b::<V>(
                false,
                inverse,
                cur,
                output,
                plan.m,
                plan.vtw().as_ptr(),
                one,
            );
            return;
        }
        // Buffer choreography: Phase A must end outside `output`. A last
        // pass reads and writes the same indices, so it may run in place to
        // fix the parity.
        let (mut cur, mut next) = match mode {
            Mode::InPlace => (input, scratch),
            Mode::OutOfPlace => (input, output),
            Mode::Immutable => (input, if p % 2 == 1 { scratch } else { output }),
        };
        let last_in_place = match mode {
            Mode::InPlace => p % 2 == 0,
            Mode::OutOfPlace => p % 2 == 1,
            Mode::Immutable => false,
        };
        let mut ns = 1;
        for (i, pass) in plan.tables.passes().iter().enumerate() {
            let r = pass.radix;
            let tw = plan.pass_tw(i).as_ptr();
            let first = i == 0;
            if i + 1 == p && last_in_place {
                run_pass::<V>(r, first, first && inverse, cur, cur, plan.m, ns, tw, one);
            } else {
                run_pass::<V>(r, first, first && inverse, cur, next, plan.m, ns, tw, one);
                let prev = cur;
                cur = next;
                next = if first && mode == Mode::Immutable {
                    // never write the read-only input: bounce between output and scratch
                    if cur == scratch { output } else { scratch }
                } else {
                    prev
                };
            }
            ns *= r;
        }
        let src = cur;
        run_phase_b::<V>(
            false,
            inverse,
            src,
            output,
            plan.m,
            plan.vtw().as_ptr(),
            one,
        );
    }
}

#[cfg(test)]
mod tests {
    use super::{Mode, StockhamPlan, lit};

    trait Bits: crate::FftNum {
        fn bits(self) -> u64;
    }
    impl Bits for f32 {
        fn bits(self) -> u64 {
            self.to_bits() as u64
        }
    }
    impl Bits for f64 {
        fn bits(self) -> u64 {
            self.to_bits()
        }
    }

    // Frozen pre-packing generation algorithm. Keep this separate from the
    // production storage/accessors so the oracle catches layout/fill mistakes.
    fn legacy_tables<S: Bits>(n: usize, l: usize, radices: &[usize]) -> (Vec<Vec<S>>, Vec<S>) {
        let m = n / l;
        let roots = crate::twiddle::Roots::new(n, n.saturating_add(m));
        let mut pass_tw = Vec::with_capacity(radices.len());
        let mut ns = 1;
        for &r in radices {
            let mut t = Vec::with_capacity(ns * (r - 1) * 2);
            for k in 0..ns {
                for j in 1..r {
                    let (c, s) = roots.get(j * k * (n / (ns * r)));
                    t.push(lit::<S>(c));
                    t.push(lit::<S>(s));
                }
            }
            pass_tw.push(t);
            ns *= r;
        }
        let blocks = m.div_ceil(l);
        let mut vtw = vec![S::default(); blocks * l * 2 * l];
        for b in 0..blocks {
            for n1 in 0..l {
                for t in 0..l {
                    let k1 = b * l + t;
                    if k1 >= m {
                        continue;
                    }
                    let (c, s) = roots.get(n1 * k1);
                    let base = (b * l + n1) * 2 * l;
                    vtw[base + t] = lit::<S>(c);
                    vtw[base + l + t] = lit::<S>(s);
                }
            }
        }
        (pass_tw, vtw)
    }

    fn generation_matches<S: Bits>() {
        for (n, l, radices) in [
            (4096, 8, vec![8, 8, 8]),
            (72, 8, vec![3, 3]), // partial Phase-B block
            (210, 1, vec![14, 15]),
            (8, 8, vec![]),
            (1, 1, vec![]),
        ] {
            let (old_pass, old_vtw) = legacy_tables::<S>(n, l, &radices);
            let p = StockhamPlan::<S>::with_cache(n, l, radices.clone(), 16 * 1024 * 1024);
            let cloned = p.clone();
            for plan in [&p, &cloned] {
                assert_eq!(
                    plan.tables
                        .passes()
                        .iter()
                        .map(|v| v.radix)
                        .collect::<Vec<_>>(),
                    radices
                );
                for (index, old) in old_pass.iter().enumerate() {
                    assert_eq!(
                        plan.pass_tw(index)
                            .iter()
                            .map(|v| v.bits())
                            .collect::<Vec<_>>(),
                        old.iter().map(|v| v.bits()).collect::<Vec<_>>()
                    );
                }
                assert_eq!(
                    plan.vtw().iter().map(|v| v.bits()).collect::<Vec<_>>(),
                    old_vtw.iter().map(|v| v.bits()).collect::<Vec<_>>()
                );
                assert_eq!(
                    plan.tables.logical_len(),
                    old_pass.iter().map(Vec::len).sum::<usize>() + old_vtw.len()
                );
            }
            assert_ne!(p.vtw().as_ptr(), cloned.vtw().as_ptr());
        }
    }

    #[test]
    fn canonical_tables_and_clones_match_legacy_generation_bitwise() {
        generation_matches::<f32>();
        generation_matches::<f64>();
    }

    #[test]
    fn two_pass_plans_keep_legacy_scratch() {
        // N=512 batches remained 14–15% slower with scratch-only passes,
        // even after page-offset placement. Do not enable that path.
        let p = StockhamPlan::<f32>::with_cache(512, 8, vec![8, 8], 16 * 1024 * 1024);
        assert_eq!(p.scratch_len(Mode::InPlace), 512);
        assert_eq!(p.scratch_len(Mode::OutOfPlace), 0);
        assert_eq!(p.scratch_len(Mode::Immutable), 512);
    }

    #[test]
    fn cache_gate_counts_modes_tables_and_placement_slack() {
        // 64 KiB with 25% headroom: this plan fits in place, but not with
        // separate input/output once tables and both placement regions count.
        let p = StockhamPlan::<f32>::with_cache(1024, 8, vec![8, 2, 8], 64 * 1024);
        assert_eq!(p.scratch_len(Mode::InPlace), 3072);
        assert_eq!(p.scratch_len(Mode::OutOfPlace), 0);
        assert_eq!(p.scratch_len(Mode::Immutable), 1024);

        let scalar = StockhamPlan::<f32>::with_cache(512, 1, vec![8, 8, 8], usize::MAX);
        assert_eq!(scalar.scratch_len(Mode::InPlace), 512);
        assert_eq!(scalar.scratch_len(Mode::OutOfPlace), 0);
        let p = StockhamPlan::<f32>::with_cache(64, 8, vec![8], 16 * 1024 * 1024);
        assert_eq!(p.scratch_len(Mode::InPlace), 64);
        assert_eq!(p.scratch_len(Mode::OutOfPlace), 0);
        assert_eq!(p.scratch_len(Mode::Immutable), 64);
        let p = StockhamPlan::<f32>::with_cache(8, 8, vec![], usize::MAX);
        for mode in [Mode::InPlace, Mode::OutOfPlace, Mode::Immutable] {
            assert_eq!(p.scratch_len(mode), 0);
        }
    }

    #[test]
    fn cache_gate_excludes_measured_zen4_l3_boundary() {
        let cache = 16 * 1024 * 1024;
        let small = StockhamPlan::<f32>::with_cache(262144, 8, vec![8; 5], cache);
        let large = StockhamPlan::<f32>::with_cache(524288, 8, vec![8, 8, 8, 8, 2, 8], cache);
        assert!(small.scratch_len(Mode::InPlace) > 2 * small.n);
        assert!(small.scratch_len(Mode::OutOfPlace) > 2 * small.n);
        assert_eq!(large.scratch_len(Mode::InPlace), large.n);
        assert_eq!(large.scratch_len(Mode::OutOfPlace), 0);
        let small = StockhamPlan::<f64>::with_cache(131072, 8, vec![8, 8, 8, 4, 8], cache);
        let large = StockhamPlan::<f64>::with_cache(262144, 8, vec![8; 5], cache);
        assert!(small.scratch_len(Mode::InPlace) > 2 * small.n);
        assert!(small.scratch_len(Mode::OutOfPlace) > 2 * small.n);
        assert_eq!(large.scratch_len(Mode::InPlace), large.n);
        assert_eq!(large.scratch_len(Mode::OutOfPlace), 0);
    }

    #[test]
    fn cache_gate_preserves_legacy_scratch_when_over_budget() {
        let p = StockhamPlan::<f32>::with_cache(1024, 8, vec![8, 2, 8], 0);
        assert_eq!(p.scratch_len(Mode::InPlace), 1024);
        assert_eq!(p.scratch_len(Mode::OutOfPlace), 0);
        assert_eq!(p.scratch_len(Mode::Immutable), 1024);
    }
}

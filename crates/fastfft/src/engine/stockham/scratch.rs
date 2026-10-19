//! Place aligned scratch bases away from live buffer bases modulo 4 KiB.

pub(super) const PAGE_BYTES: usize = 4096;

/// Byte offset inside a PAGE_BYTES-slack region. Callers keep provenance by
/// adding this offset to the original allocation, never casting it to a pointer.
#[inline(always)]
pub(super) fn placement_offset(base: usize, a: usize, b: usize, other: Option<usize>) -> usize {
    let mask = PAGE_BYTES - 1;
    let mut points = [a & mask, b & mask, other.unwrap_or(a) & mask];
    points.sort_unstable();
    let gaps = [
        points[1] - points[0],
        points[2] - points[1],
        points[0] + PAGE_BYTES - points[2],
    ];
    let mut best = 0;
    for i in 1..3 {
        if gaps[i] > gaps[best] {
            best = i;
        }
    }
    // Midpoint of the largest circular gap, rounded to the nearest cache
    // line. With two distinct bases this is at least 992 bytes from either;
    // with three, at least 650 bytes.
    let target = (points[best] + gaps[best] / 2 + 32) & !63;
    target.wrapping_sub(base) & mask
}

/// `placement_offset(base, a, a, None)` without the general search: a
/// single live base puts the scratch half a page away (cache-line rounded).
#[inline(always)]
pub(super) fn half_page_offset(base: usize, a: usize) -> usize {
    let mask = PAGE_BYTES - 1;
    let target = ((a & mask) + PAGE_BYTES / 2 + 32) & !63;
    target.wrapping_sub(base) & mask
}

/// Circular distance between two addresses modulo 4 KiB.
#[inline(always)]
pub(super) fn page_distance(a: usize, b: usize) -> usize {
    let delta = a.wrapping_sub(b) % PAGE_BYTES;
    delta.min(PAGE_BYTES - delta)
}

#[cfg(test)]
mod tests {
    use super::{PAGE_BYTES, half_page_offset, page_distance as distance, placement_offset};

    #[test]
    fn half_page_offset_matches_general_placement() {
        for base in (0..8192).step_by(4) {
            for a in (0..8192).step_by(8) {
                assert_eq!(
                    half_page_offset(base, a),
                    placement_offset(base, a, a, None)
                );
            }
        }
    }

    #[test]
    fn placed_scratch_is_aligned_bounded_and_separated() {
        // Include scratch that is only scalar-aligned, arbitrary caller
        // misalignments, and the wrap at the end of a 4 KiB page.
        for base in [0, 4, 8, 16, 32, 60, 64, 4092] {
            for a in (0..4096).step_by(64) {
                for b in [0, 8, 512, 2048, 4032, 4092] {
                    let off = placement_offset(base, a + 8, b, None);
                    let start = base + off;
                    assert!(off < PAGE_BYTES);
                    assert_eq!(start % 64, 0);
                    assert!(distance(start, a + 8) >= 960);
                    assert!(distance(start, b) >= 960);
                    let second = base + placement_offset(base, a + 8, b, Some(start));
                    assert_eq!(second % 64, 0);
                    for addr in [a + 8, b, start] {
                        assert!(distance(second, addr) >= 640);
                    }
                }
            }
        }
    }
}

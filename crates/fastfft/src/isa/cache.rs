//! Data/unified cache capacities shared by planning and engine workspace policy.

/// Per-cache capacities in bytes, not totals across all cores. Missing levels
/// fall back independently; an observed LLC never comes from an L1/L2 default.
#[derive(Clone, Copy, Debug, PartialEq, Eq)]
pub(crate) struct CacheSizes {
    pub l1_data: usize,
    pub l2: usize,
    pub last_level: usize,
}

impl Default for CacheSizes {
    fn default() -> Self {
        Self {
            l1_data: 32 * 1024,
            l2: 1024 * 1024,
            last_level: 1024 * 1024,
        }
    }
}

pub(crate) fn sizes() -> CacheSizes {
    static SIZES: std::sync::OnceLock<CacheSizes> = std::sync::OnceLock::new();
    *SIZES.get_or_init(|| {
        #[cfg(all(target_arch = "x86_64", not(miri)))]
        {
            detect_with(|leaf, sub| {
                #[allow(unused_unsafe)] // Older supported compilers require unsafe for CPUID.
                // SAFETY: CPUID is available on every x86_64 CPU. Only
                // supported topology leaves/subleaves are queried below.
                let r = unsafe { core::arch::x86_64::__cpuid_count(leaf, sub) };
                [r.eax, r.ebx, r.ecx, r.edx]
            })
        }
        #[cfg(all(target_arch = "aarch64", target_os = "macos", not(miri)))]
        {
            macos_sizes(query_macos)
        }
        #[cfg(any(
            not(any(
                target_arch = "x86_64",
                all(target_arch = "aarch64", target_os = "macos")
            )),
            miri
        ))]
        {
            CacheSizes::default()
        }
    })
}

#[cfg(all(target_arch = "aarch64", target_os = "macos", not(miri)))]
fn query_macos(name: &std::ffi::CStr) -> Option<usize> {
    unsafe extern "C" {
        fn sysctlbyname(
            name: *const std::ffi::c_char,
            old: *mut std::ffi::c_void,
            old_len: *mut usize,
            new: *mut std::ffi::c_void,
            new_len: usize,
        ) -> std::ffi::c_int;
    }
    let mut bytes = [0u8; 8];
    let mut len = bytes.len();
    // SAFETY: name is NUL-terminated, old points to len writable bytes,
    // and a null new pointer requests a read without changing system state.
    let status = unsafe {
        sysctlbyname(
            name.as_ptr(),
            bytes.as_mut_ptr().cast(),
            &mut len,
            std::ptr::null_mut(),
            0,
        )
    };
    if status != 0 {
        return None;
    }
    let value = match len {
        4 => u32::from_ne_bytes(bytes[..4].try_into().unwrap()) as u64,
        8 => u64::from_ne_bytes(bytes),
        _ => return None,
    };
    usize::try_from(value).ok().filter(|&n| n > 0)
}

#[cfg(any(all(target_arch = "aarch64", target_os = "macos", not(miri)), test))]
fn macos_sizes(query: impl Fn(&std::ffi::CStr) -> Option<usize>) -> CacheSizes {
    let fallback = CacheSizes::default();
    // macOS can migrate threads across performance/efficiency clusters. Use
    // the smallest reported capacity, including the generic system values.
    let mut l1_data = query(c"hw.l1dcachesize").filter(|&n| n > 0);
    let mut l2 = query(c"hw.l2cachesize").filter(|&n| n > 0);
    for level in 0..query(c"hw.nperflevels").unwrap_or(0).min(32) {
        for (suffix, capacity) in [("l1dcachesize", &mut l1_data), ("l2cachesize", &mut l2)] {
            let name = std::ffi::CString::new(format!("hw.perflevel{level}.{suffix}")).unwrap();
            if let Some(bytes) = query(&name).filter(|&n| n > 0) {
                *capacity = Some(capacity.unwrap_or(bytes).min(bytes));
            }
        }
    }
    let l1_data = l1_data.unwrap_or(fallback.l1_data);
    let l2 = l2.unwrap_or(fallback.l2);
    CacheSizes {
        l1_data,
        l2,
        last_level: query(c"hw.l3cachesize").filter(|&n| n > 0).unwrap_or(l2),
    }
}

#[cfg(test)]
#[test]
fn macos_cache_levels_fall_back_independently() {
    let asymmetric = macos_sizes(|name| match name.to_bytes() {
        b"hw.nperflevels" => Some(2),
        b"hw.l1dcachesize" => Some(96 * 1024),
        b"hw.perflevel0.l1dcachesize" => Some(128 * 1024),
        b"hw.perflevel1.l1dcachesize" => Some(64 * 1024),
        _ => None,
    });
    assert_eq!(asymmetric.l1_data, 64 * 1024);
    let detected = macos_sizes(|name| match name.to_bytes() {
        b"hw.l1dcachesize" => Some(96 * 1024),
        b"hw.l2cachesize" => Some(8 * 1024 * 1024),
        _ => None,
    });
    assert_eq!(
        detected,
        CacheSizes {
            l1_data: 96 * 1024,
            l2: 8 * 1024 * 1024,
            last_level: 8 * 1024 * 1024
        }
    );
    assert_eq!(macos_sizes(|_| None), CacheSizes::default());
    assert_eq!(macos_sizes(|_| Some(0)), CacheSizes::default());
    assert_eq!(
        macos_sizes(|name| (name.to_bytes() == b"hw.l3cachesize").then_some(32 * 1024 * 1024)),
        CacheSizes {
            last_level: 32 * 1024 * 1024,
            ..CacheSizes::default()
        }
    );
}

pub(crate) fn last_level_bytes() -> usize {
    sizes().last_level
}

/// Apply measured tables only to the CPU model on which they were collected.
/// Other Zen 4 models can be enabled after their validation runs.
pub(crate) fn is_calibrated_zen4() -> bool {
    static MATCH: std::sync::OnceLock<bool> = std::sync::OnceLock::new();
    *MATCH.get_or_init(|| {
        #[cfg(all(target_arch = "x86_64", not(miri)))]
        {
            #[allow(unused_unsafe)]
            // SAFETY: CPUID leaves 0 and 1 are available on x86_64.
            let (vendor, cpu) = unsafe {
                (
                    core::arch::x86_64::__cpuid(0),
                    core::arch::x86_64::__cpuid(1),
                )
            };
            vendor.ebx == u32::from_le_bytes(*b"Auth")
                && vendor.edx == u32::from_le_bytes(*b"enti")
                && vendor.ecx == u32::from_le_bytes(*b"cAMD")
                && ((cpu.eax >> 8) & 15) + ((cpu.eax >> 20) & 255) == 25
                && ((cpu.eax >> 4) & 15) + ((cpu.eax >> 12) & 240) == 116
        }
        #[cfg(any(not(target_arch = "x86_64"), miri))]
        {
            false
        }
    })
}

#[cfg(any(all(target_arch = "x86_64", not(miri)), test))]
fn detect_with(cpuid: impl Fn(u32, u32) -> [u32; 4]) -> CacheSizes {
    let basic = cpuid(0, 0)[0];
    let extended = cpuid(0x8000_0000, 0)[0];
    let amd_topology = extended >= 0x8000_001d && cpuid(0x8000_0001, 0)[2] & (1 << 22) != 0;
    let mut levels = [None; 8];
    // AMD's extended deterministic cache leaf, then Intel's basic leaf.
    // A masked/partial extended topology can leave usable basic data. Fill
    // absent levels from that data without replacing the extended values.
    for leaf in [
        amd_topology.then_some(0x8000_001d),
        (basic >= 4).then_some(4),
    ]
    .into_iter()
    .flatten()
    {
        let mut found = [None; 8];
        // Bound a broken hypervisor that never emits a terminating null entry.
        // Cache capacity only affects policy, never memory access validity.
        for sub in 0..32 {
            let [eax, ebx, ecx, _] = cpuid(leaf, sub);
            let kind = eax & 31;
            if kind == 0 {
                break;
            }
            let level = ((eax >> 5) & 7) as usize;
            if !matches!(kind, 1 | 3) || level == 0 {
                continue;
            }
            let line = (ebx & 0xfff) as usize + 1;
            let partitions = ((ebx >> 12) & 0x3ff) as usize + 1;
            let ways = (ebx >> 22) as usize + 1;
            let bytes = (ecx as usize)
                .checked_add(1)
                .and_then(|sets| sets.checked_mul(line))
                .and_then(|n| n.checked_mul(partitions))
                .and_then(|n| n.checked_mul(ways));
            if let Some(bytes) = bytes {
                found[level] = Some(found[level].unwrap_or(0).max(bytes));
            }
        }
        for (level, found) in levels.iter_mut().zip(found) {
            *level = level.or(found);
        }
    }
    let fallback = CacheSizes::default();
    CacheSizes {
        l1_data: levels[1].unwrap_or(fallback.l1_data),
        l2: levels[2].unwrap_or(fallback.l2),
        last_level: levels
            .into_iter()
            .rev()
            .flatten()
            .next()
            .unwrap_or(fallback.last_level),
    }
}

#[cfg(test)]
mod tests {
    use super::{CacheSizes, detect_with, sizes};

    #[test]
    fn basic_topology_ignores_instruction_cache_and_counts_partitions() {
        let cache = detect_with(|leaf, sub| match (leaf, sub) {
            (0, _) => [4, 0, 0, 0],
            (0x8000_0000, _) => [0x8000_0000, 0, 0, 0],
            // Data L1: 48 KiB. Unified L2: 512 KiB, including 2 partitions.
            (4, 0) => [0x21, 0x02c0_003f, 63, 0],
            (4, 1) => [0x43, 0x00c0_103f, 1023, 0],
            // An instruction-only L3 must not be used as data capacity.
            (4, 2) => [0x62, 0x03c0_003f, 16383, 0],
            _ => [0; 4],
        });
        assert_eq!(
            cache,
            CacheSizes {
                l1_data: 48 * 1024,
                l2: 512 * 1024,
                last_level: 512 * 1024,
            }
        );
    }

    #[test]
    fn missing_topology_never_queries_unsupported_leaves() {
        assert_eq!(
            detect_with(|leaf, _| match leaf {
                0 => [3, 0, 0, 0],
                0x8000_0000 => [0x8000_0000, 0, 0, 0],
                _ => panic!("unsupported leaf {leaf:x}"),
            }),
            CacheSizes::default()
        );
    }

    #[test]
    fn extended_leaf_requires_topology_extensions_flag() {
        assert_eq!(
            detect_with(|leaf, _| match leaf {
                0 => [1, 0, 0, 0],
                0x8000_0000 => [0x8000_001d, 0, 0, 0],
                0x8000_0001 => [0; 4],
                _ => panic!("reserved leaf {leaf:x}"),
            }),
            CacheSizes::default()
        );
    }

    #[test]
    fn masked_extended_topology_falls_back_to_basic() {
        let cache = detect_with(|leaf, sub| match (leaf, sub) {
            (0, _) => [4, 0, 0, 0],
            (0x8000_0000, _) => [0x8000_001d, 0, 0, 0],
            (0x8000_0001, _) => [0, 0, 1 << 22, 0],
            (4, 0) => [0x43, 0x01c0_003f, 4095, 0],
            _ => [0; 4],
        });
        assert_eq!(
            cache,
            CacheSizes {
                l2: 2 * 1024 * 1024,
                last_level: 2 * 1024 * 1024,
                ..CacheSizes::default()
            }
        );
    }

    #[test]
    fn partial_topology_falls_back_per_level_and_prefers_extended() {
        let cache = detect_with(|leaf, sub| match (leaf, sub) {
            (0, _) => [4, 0, 0, 0],
            (0x8000_0000, _) => [0x8000_001d, 0, 0, 0],
            (0x8000_0001, _) => [0, 0, 1 << 22, 0],
            (0x8000_001d, 0) => [0x43, 0x01c0_003f, 4095, 0],
            (4, 0) => [0x21, 0x02c0_003f, 63, 0],
            (4, 1) => [0x43, 0x01c0_003f, 2047, 0],
            (4, 2) => [0x63, 0x03c0_003f, 16383, 0],
            _ => [0; 4],
        });
        assert_eq!(
            cache,
            CacheSizes {
                l1_data: 48 * 1024,
                l2: 2 * 1024 * 1024,
                last_level: 16 * 1024 * 1024,
            }
        );
    }

    #[test]
    fn missing_l2_default_does_not_replace_observed_llc() {
        let cache = detect_with(|leaf, sub| match (leaf, sub) {
            (0, _) => [4, 0, 0, 0],
            (4, 0) => [0x21, 0x01c0_003f, 31, 0],
            _ => [0; 4],
        });
        assert_eq!(
            cache,
            CacheSizes {
                l1_data: 16 * 1024,
                l2: 1024 * 1024,
                last_level: 16 * 1024,
            }
        );
    }

    #[test]
    fn malformed_topology_is_bounded_and_size_overflow_is_rejected() {
        let calls = std::cell::Cell::new(0);
        let cache = detect_with(|leaf, _| {
            calls.set(calls.get() + 1);
            match leaf {
                0 => [4, 0, 0, 0],
                0x8000_0000 => [0; 4],
                4 => [0x63, u32::MAX, u32::MAX, 0],
                _ => panic!("unexpected leaf"),
            }
        });
        assert_eq!(cache, CacheSizes::default());
        assert!(calls.get() <= 34);
    }

    #[test]
    fn duplicate_levels_choose_largest_and_stop_at_null() {
        let cache = detect_with(|leaf, sub| match (leaf, sub) {
            (0, _) => [4, 0, 0, 0],
            (0x8000_0000, _) => [0; 4],
            (4, 0) => [0x43, 0x01c0_003f, 4095, 0],
            (4, 1) => [0x43, 0x01c0_003f, 2047, 0],
            // Reserved type and level zero are ignored.
            (4, 2) => [0x64, u32::MAX, u32::MAX, 0],
            (4, 3) => [0x01, 0, 0, 0],
            (4, 4) => [0; 4],
            _ => panic!("read past null entry"),
        });
        assert_eq!(cache.l2, 2 * 1024 * 1024);
        assert_eq!(cache.last_level, cache.l2);
    }

    #[test]
    fn amd_extended_topology_reports_all_data_levels() {
        let cache = detect_with(|leaf, sub| match (leaf, sub) {
            (0, _) => [1, 0, 0, 0],
            (0x8000_0000, _) => [0x8000_001d, 0, 0, 0],
            (0x8000_0001, _) => [0, 0, 1 << 22, 0],
            // 32 KiB L1D, 32 KiB L1I, 1 MiB L2, 16 MiB L3 (Zen 4).
            (0x8000_001d, 0) => [0x21, 0x01c0_003f, 63, 0],
            (0x8000_001d, 1) => [0x22, 0x01c0_003f, 63, 0],
            (0x8000_001d, 2) => [0x43, 0x01c0_003f, 2047, 0],
            (0x8000_001d, 3) => [0x63, 0x03c0_003f, 16383, 0],
            _ => [0; 4],
        });
        assert_eq!(
            cache,
            CacheSizes {
                last_level: 16 * 1024 * 1024,
                ..CacheSizes::default()
            }
        );
    }

    #[test]
    fn host_sizes_are_cached_and_nonzero() {
        let cache = sizes();
        assert_eq!(cache, sizes());
        assert!(cache.l1_data > 0 && cache.l2 > 0 && cache.last_level > 0);
        eprintln!("detected data caches: {cache:?}");
    }
}

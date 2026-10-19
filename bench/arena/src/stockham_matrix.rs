//! Pre-timing inventory from structured Estimate configurations. No parsing of
//! describe_plan, and no forced candidate substitutes for the headline row.

use crate::spec::{ALL_LIBS, Precision};
use crate::stockham_reference::Recipe;
use fastfft::{FftDirection, FftNum, FftPlanner, Isa};
use serde_json::{Value, json};

fn record<T: FftNum + kernel_lab::cplx::FromF64>(
    n: usize,
    precision: Precision,
    row: &str,
) -> Value {
    let options = crate::fastfft_adapter::options_for(row).expect("supported inventory row");
    let cap = if row == "fastfft" {
        fastfft::detected_isa()
    } else {
        Isa::from_name(row.strip_prefix("fastfft/").unwrap()).unwrap()
    };
    let config =
        fastfft::tuning::estimated(n, cap, precision == Precision::F64).expect("smooth length");
    let mut planner = FftPlanner::<T>::with_options(options);
    let fft = planner.plan_fft(n, FftDirection::Forward);
    let candidate = config.build::<T>(n, FftDirection::Forward);
    let lanes = config.lanes();
    let stockham = config.kernel() == "stockham";
    if stockham {
        assert_eq!(config.radices().iter().product::<usize>(), n / lanes);
    }
    let mut reason = None;
    let width = match config.isa() {
        Isa::Avx512 => Some("zmm"),
        Isa::Avx512Ymm => Some("ymm"),
        Isa::Avx2 => Some("avx2"),
        _ => None,
    };
    let mut reference = None;
    if config.kernel() != "stockham" {
        reason = Some("non-Stockham default/cap engine");
    } else if width.is_none() || !kernel_lab::Tier::Avx512.detected() {
        reason = Some("prototype adapter has no supported ISA counterpart on this host");
    } else {
        let recipe = Recipe {
            shared_offset_bytes: 0,
            width: width.unwrap().into(),
            radices: config.radices().to_vec(),
            shared: false,
        };
        if let Some(lab) = kernel_lab::dit::DitPlan::<T>::with_radices(
            n,
            recipe.width == "zmm",
            recipe.radices.clone(),
        ) {
            assert_eq!(lab.l, lanes);
            assert_eq!(lab.m % lanes, 0);
            reference = Some(recipe.row());
        } else {
            reason = Some("prototype requires supported radices and full Phase-B blocks");
        }
    }
    let shared_reference = reference.as_ref().map(|r| format!("{r}-shared"));
    json!({
        "row": row, "precision": precision, "n": n,
        "engine": config.kernel(), "isa": config.isa().name(), "lanes": lanes,
        "phase_a_radices": config.radices(),
        "final_lane_transform": if config.kernel() == "stockham" { Some(lanes) } else { None },
        "direction": "forward", "placement": "inplace", "batch": 1,
        "alignment_bytes": 64, "misalign": 0,
        "scratch_complex": { "inplace": fft.get_inplace_scratch_len(),
            "outofplace": fft.get_outofplace_scratch_len(), "immutable": fft.get_immutable_scratch_len() },
        "candidate_scratch_complex": { "inplace": candidate.get_inplace_scratch_len(),
            "outofplace": candidate.get_outofplace_scratch_len(), "immutable": candidate.get_immutable_scratch_len() },
        "aligned_inplace_active_scratch_complex": if stockham { Some(if config.radices().is_empty() { 0 } else { n }) } else { None },
        "active_scratch_basis": "aligned single-transform legacy Stockham choreography; reserved workspace can be larger",
        "eligible": reference.is_some(), "exclusion": reason,
        "prototype": reference, "shared_prototype": shared_reference,
        "public_description_for_humans": planner.describe_plan(n, FftDirection::Forward),
    })
}

pub fn capture() -> Value {
    let mut cells = Vec::new();
    for row in [
        "fastfft",
        "fastfft/avx2",
        "fastfft/avx512",
        "fastfft/avx512-ymm",
        "fastfft/sse2",
        "fastfft/scalar",
    ] {
        if crate::fastfft_adapter::options_for(row).is_err() {
            continue;
        }
        for power in 8..=16 {
            cells.push(record::<f32>(1 << power, Precision::F32, row));
            cells.push(record::<f64>(1 << power, Precision::F64, row));
        }
    }
    json!({
        "schema": 1, "purpose": "frozen pre-timing equal-plan population",
        "detected_isa": fastfft::detected_isa().name(),
        "environment_isa_cap": std::env::var("FASTFFT_ISA_CAP").ok(),
        "ordinary_rows": ALL_LIBS,
        "prototype_contract": "forward/inplace only; original allocations retained for shared route",
        "regression_contracts": { "directions": ["forward", "inverse"],
            "placements": ["inplace", "outofplace", "immutable"] },
        "timing_claim": false, "cells": cells,
    })
}

#[cfg(test)]
mod tests {
    use super::*;

    #[test]
    fn inventory_covers_all_default_lengths_and_marks_counterparts() {
        let matrix = capture();
        let cells = matrix["cells"].as_array().unwrap();
        let defaults: Vec<_> = cells.iter().filter(|c| c["row"] == "fastfft").collect();
        assert_eq!(defaults.len(), 18);
        for cell in defaults {
            if cell["eligible"] == true {
                assert_eq!(cell["engine"], "stockham");
                assert!(Recipe::parse(cell["prototype"].as_str().unwrap()).is_ok());
            } else {
                assert!(cell["exclusion"].is_string());
            }
        }
    }
}

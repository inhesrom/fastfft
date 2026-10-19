#![no_main]

use libfuzzer_sys::{Corpus, fuzz_target};

fuzz_target!(|data: &[u8]| -> Corpus {
    if fastfft_fuzz::check(data).is_some() {
        Corpus::Keep
    } else {
        Corpus::Reject
    }
});

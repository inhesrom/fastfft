use fastfft_fuzz::{check, seed_case};
use std::path::Path;

fn main() {
    let args: Vec<_> = std::env::args().skip(1).collect();
    match args.first().map(String::as_str) {
        Some("--seeds") => {
            let dir = Path::new(args.get(1).expect("--seeds requires a directory"));
            std::fs::create_dir_all(dir).unwrap();
            let sizes = [
                1, 2, 3, 7, 13, 16, 17, 31, 32, 63, 64, 97, 128, 243, 256, 1024, 4096, 16384,
                32768, 65536, 65537, 70000,
            ];
            let mut count = 0;
            for n in sizes {
                for variant in 0..16 {
                    let bytes = seed_case(n, variant);
                    std::fs::write(dir.join(format!("n{n}-v{variant}")), bytes).unwrap();
                    count += 1;
                }
                for api in 0..4 {
                    let mut bytes = seed_case(n, api << 2);
                    bytes[8] = 3 + api;
                    std::fs::write(dir.join(format!("n{n}-invalid{api}")), bytes).unwrap();
                    count += 1;
                }
            }
            println!("wrote {count} seeds");
        }
        Some("--sweep") => {
            let started = std::time::Instant::now();
            for n in 1usize..=4096 {
                let variant = ((n.wrapping_mul(7)) % 16) as u8;
                assert_eq!(check(&seed_case(n, variant)), Some(true));
                if n % 512 == 0 {
                    eprintln!("checked N1..{n} ({:.1}s)", started.elapsed().as_secs_f64());
                }
            }
            for n in [8192, 16384, 32768, 48000, 65536, 65537, 69997, 70000] {
                for variant in 0..16 {
                    assert_eq!(check(&seed_case(n, variant)), Some(true));
                }
            }
            println!(
                "checked all 4096 lengths with rotating precision/direction/API/mode/ISA, plus 128 large cases ({:.1}s)",
                started.elapsed().as_secs_f64()
            );
        }
        Some(path) => {
            let data = std::fs::read(path).unwrap();
            println!(
                "case {:?}; valid {:?}",
                fastfft_fuzz::Case::decode(&data),
                check(&data)
            );
        }
        None => panic!("usage: replay --seeds DIR | --sweep | INPUT"),
    }
}


pub fn load_full() -> Vec<u8> {
    include_bytes!("../combined-with-oceans.pb").to_vec()
}

pub fn load_reduced() -> Vec<u8> {
    include_bytes!("../combined-with-oceans.reduce.pb").to_vec()
}

pub fn load_compressed() -> Vec<u8> {
    include_bytes!("../combined-with-oceans.reduce.compress.pb").to_vec()
}

pub fn load_preindex() -> Vec<u8> {
    include_bytes!("../combined-with-oceans.reduce.preindex.pb").to_vec()
}

fn main() {
    println!("Hello, world!");
}

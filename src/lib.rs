// pub fn load_full() -> Vec<u8> {
//     include_bytes!("../combined-with-oceans.bin").to_vec()
// }

pub fn load_reduced() -> Vec<u8> {
    include_bytes!("../combined-with-oceans.reduce.bin").to_vec()
}

pub fn load_compressed() -> Vec<u8> {
    include_bytes!("../combined-with-oceans.reduce.compress.bin").to_vec()
}

pub fn load_preindex() -> Vec<u8> {
    include_bytes!("../combined-with-oceans.reduce.preindex.bin").to_vec()
}

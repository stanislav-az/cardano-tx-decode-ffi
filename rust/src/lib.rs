use cardano_serialization_lib::utils::Deserialize;
use cardano_serialization_lib::Transaction;
use cbor_event::de::*;
use std::ffi::{c_char, CStr};
use std::io::Cursor;

fn deserialize_tx(tx_hex: &str) -> Result<Transaction, String> {
    let tx_bytes = hex::decode(tx_hex).map_err(|e| e.to_string())?;
    let mut raw = Deserializer::from(Cursor::new(&tx_bytes));
    let tx: Result<Transaction, _> = Deserialize::deserialize(&mut raw);
    tx.map_err(|e| e.to_string())
}

#[no_mangle]
pub extern "C" fn tx_cbor_to_json(ptr: *const c_char) -> String {
    unsafe {
        let cstring = CStr::from_ptr(ptr);
        if let Ok(tx_hex) = cstring.to_str() {
            let tx = deserialize_tx(tx_hex);
            match tx.map(|t| t.to_json()) {
                Err(e) => e,
                Ok(Err(json_err)) => json_err.to_string(),
                Ok(Ok(res)) => res,
            }
        } else {
            panic!("Unable to convert input");
        }
    }
}

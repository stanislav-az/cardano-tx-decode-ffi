use cardano_serialization_lib::utils::Deserialize;
use cardano_serialization_lib::Transaction;
use cbor_event::de::*;
use std::ffi::{c_char, CStr, CString};
use std::io::Cursor;

pub type Str = *const c_char;
pub type StrOut = *mut c_char;

// This function converts hex encoded tx CBOR into cardano_serialization_lib::Transaction.
fn deserialize_tx(tx_hex: &str) -> Result<Transaction, String> {
    let tx_bytes = hex::decode(tx_hex).map_err(|e| e.to_string())?;
    let mut raw = Deserializer::from(Cursor::new(&tx_bytes));
    let tx: Result<Transaction, _> = Deserialize::deserialize(&mut raw);
    tx.map_err(|e| e.to_string())
}

// TODO return empty instead of panic?
// This function converts hex encoded tx CBOR into JSON.
// Fn inputs are: ptr - cbor hex, out - pointer to json string output.
// If any error occurred, it is converted to string and directed to out.
#[no_mangle]
pub extern "C" fn tx_cbor_to_json(ptr: Str, out: StrOut) {
    unsafe {
        let cstring = CStr::from_ptr(ptr);
        if let Ok(tx_hex) = cstring.to_str() {
            let tx = deserialize_tx(tx_hex);
            let json = match tx.map(|t| t.to_json()) {
                Err(e) => e,
                Ok(Err(json_err)) => json_err.to_string(),
                Ok(Ok(res)) => res,
            };
            let res = CString::new(json).expect("CString::new failed");
            let count = res.to_bytes_with_nul().len();
            let raw = res.into_raw();
            raw.copy_to(out, count);
        } else {
            panic!("Unable to convert input");
        }
    }
}

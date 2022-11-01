use cardano_serialization_lib::utils::Deserialize;
use cardano_serialization_lib::Transaction;
use cbor_event::de::*;
use std::io::Cursor;
use hs_bindgen::*;

// This function converts hex encoded tx CBOR into cardano_serialization_lib::Transaction.
fn deserialize_tx(tx_hex: &str) -> Result<Transaction, String> {
    let tx_bytes = hex::decode(tx_hex).map_err(|e| e.to_string())?;
    let mut raw = Deserializer::from(Cursor::new(&tx_bytes));
    let tx: Result<Transaction, _> = Deserialize::deserialize(&mut raw);
    tx.map_err(|e| e.to_string())
}

// This function converts hex encoded tx CBOR into JSON.
// If any error occurred, it is converted to string and directed to out.

#[hs_bindgen]
pub fn tx_cbor_to_json(tx_hex: String, mut out: String) {
    let tx = deserialize_tx(&tx_hex);
    let res = match tx.map(|t| t.to_json()) {
        Err(e) => e,
        Ok(Err(json_err)) => json_err.to_string(),
        Ok(Ok(res)) => res,
    };
    out = res;
}

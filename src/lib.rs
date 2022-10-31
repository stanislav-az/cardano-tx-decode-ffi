use cardano_serialization_lib::utils::Deserialize;
use cardano_serialization_lib::Transaction;
use cbor_event::de::*;
use std::io::Cursor;

// This function converts hex encoded tx CBOR into cardano_serialization_lib::Transaction.
fn deserialize_tx(tx_hex: &str) -> Result<Transaction, String> {
    let tx_bytes = hex::decode(tx_hex).map_err(|e| e.to_string())?;
    let mut raw = Deserializer::from(Cursor::new(&tx_bytes));
    let tx: Result<Transaction, _> = Deserialize::deserialize(&mut raw);
    tx.map_err(|e| e.to_string())
}

// This function converts hex encoded tx CBOR into JSON.
// If any error occurred, it is converted to string and directed to out.
pub fn tx_cbor_to_json(tx_hex: String) -> String {
    let tx = deserialize_tx(&tx_hex);
    match tx.map(|t| t.to_json()) {
        Err(e) => e,
        Ok(Err(json_err)) => json_err.to_string(),
        Ok(Ok(res)) => res,
    }
}

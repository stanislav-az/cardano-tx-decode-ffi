# Rust library for cardano transaction deserialization

Library structure is taken from FFI [blog](https://blog.mgattozzi.dev/haskell-rust/).
Conceptually this is an interface to `cardano-serialization-lib` with one function `tx_cbor_to_json` exported to Haskell code.

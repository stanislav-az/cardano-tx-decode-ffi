module Cbor where

import Foreign.C.Types
import Foreign.C.String

foreign import ccall "tx_cbor_to_json" txCborToJson :: CString -> CString

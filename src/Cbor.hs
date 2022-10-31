module Cbor (txCborToJson) where

import           Foreign.C.String
import           System.IO.Unsafe (unsafePerformIO)

foreign import ccall unsafe "tx_cbor_to_json" txCborToJsonC :: CString -> CString -> IO ()

-- Note on the call to unsafePerformIO here: txCborToJsonC does not do any side effects
-- apart from memory manipulations which are contained inside txCborToJson function
-- for discussion see Real World Haskell Chapter 17. Interfacing with C: the FFI. Putting it all together.
-- http://book.realworldhaskell.org/read/interfacing-with-c-the-ffi.html#id655783
-- TODO use `newForeignPtr finalizerFree` for output and `alloca` for input if memory leaks (test it)
-- TODO use Data.ByteString.useAsCString for input
txCborToJson :: String -> String
txCborToJson cborHex = unsafePerformIO $ do
  str <- newCString cborHex
  out <- newCString $ replicate 16000 's' -- TODO this should be a large string to allocate enough memory: is it safe?
  _ <- txCborToJsonC str out
  txJson <- peekCString out
  pure txJson

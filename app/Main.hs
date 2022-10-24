module Main where

import Cbor
import Foreign.C.String

main :: IO ()
main = do
  str <- newCString "Hello World\0"
  putStrLn "1"
  let txJson = txCborToJson str
  putStrLn "2"
  res <- peekCString txJson
  putStrLn "3"
  putStrLn res

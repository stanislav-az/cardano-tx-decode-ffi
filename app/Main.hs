module Main where

import Cbor
import Foreign.C.String

main :: IO ()
main = do
  str <- newCString "Hello World\0"
  out <- newCString ""
  putStrLn "1"
  txJson <- txCborToJson str out
  putStrLn "2"
  res <- peekCString out
  putStrLn "3"
  putStrLn res

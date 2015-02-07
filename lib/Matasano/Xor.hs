{-# LANGUAGE OverloadedStrings #-}

module Matasano.Xor where

import Data.Bits
import Data.ByteString (ByteString)
import qualified Data.ByteString as BS
import Data.Word

-- | Set 1, challenge 2.
fixedXor :: ByteString -> ByteString -> ByteString
fixedXor =  (BS.pack .) . BS.zipWith xor

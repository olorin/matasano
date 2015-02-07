{-# LANGUAGE OverloadedStrings #-}

module Matasano.Encoding where

import Data.ByteString (ByteString)
import qualified Data.ByteString.Char8 as BS
import qualified Data.ByteString.Base16 as B16
import qualified Data.ByteString.Base64 as B64

-- | Set 1, challenge 1.
hexToBase64 :: ByteString -> ByteString
hexToBase64 = B64.encode . fst . B16.decode

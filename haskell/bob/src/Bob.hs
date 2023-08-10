module Bob (responseFor) where

import qualified Data.Text as T


responseFor :: String -> String
responseFor xs = T.isSuffixOf xs

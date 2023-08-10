module DNA (toRNA) where

import Data.Map (Map)
import qualified Data.Map as Map

rna :: Map String String
rna = Map.fromList [("G", "C"), ("C", "G"), ("T", "A"), ("A", "U")]

toRNA :: String -> Either Char String
toRNA xs = error "You need to implement this function."

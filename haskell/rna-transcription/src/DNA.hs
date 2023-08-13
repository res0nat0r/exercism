module DNA (toRNA) where

import Data.Map (Map)
import qualified Data.Map as Map

rna :: Map String String
rna = Map.fromList [("G", "C"), ("C", "G"), ("T", "A"), ("A", "U")]

toRNA :: String -> Either Char String
toRNA xs = lookupRNA xs

lookupRNA :: String -> Either Char String
lookupRNA dna = case Map.lookup dna rna of
  Just result -> Right result
  Nothing -> Left ( head dna)



  -- Nothing -> Right "NADA"
  -- Just result -> Left result



-- https://stackoverflow.com/questions/20498501/create-hashtable-in-haskell1

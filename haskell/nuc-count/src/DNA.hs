-- test
module DNA (nucleotideCounts, Nucleotide (..)) where

import Data.Map (Map)

data Nucleotide = A | C | G | T deriving (Eq, Ord, Show)

nucleotideCounts :: String -> Either String (Map Nucleotide Int)
nucleotideCounts = error "todo"

count [] _ = 0
count (x : xs) c
    | elem c x = 1 + count xs c
    | otherwise = count xs c

{-
nucleotideCounts "GGGGGGGG" `matchesMap` [ (A, 0)
                                         , (C, 0)
                                         , (G, 8)
                                         , (T, 0) ]
-}

toRNA :: String -> Either Char String
toRNA = traverse dna
  where
    dna 'G' = Right 'C'
    dna 'C' = Right 'G'
    dna 'T' = Right 'A'
    dna 'A' = Right 'U'
    dna x = Left x

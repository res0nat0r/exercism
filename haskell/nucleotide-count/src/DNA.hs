module DNA (nucleotideCounts, Nucleotide (..)) where

import Data.Map (Map)

data Nucleotide = A | C | G | T deriving (Eq, Ord, Show)

count :: Char -> String -> Int
count x xs = length $ filter (== x) xs




nucleotideCounts :: String -> Either String (Map Nucleotide Int)
nucleotideCounts = error "todo"






toRNA :: String -> Either Char String
toRNA = traverse dna
  where
    dna 'G' = Right 'C'
    dna 'C' = Right 'G'
    dna 'T' = Right 'A'
    dna 'A' = Right 'U'
    dna x = Left x

module DNA (nucleotideCounts, Nucleotide (..)) where

import Data.Map (Map, fromList)

data Nucleotide = A | C | G | T deriving (Eq, Ord, Show)

-- count' :: Char -> String -> Int
-- count' x xs = length $ filter (== x) xs


--count :: Nucleotide -> String -> Int
count :: Nucleotide -> String -> Either String (Map Nucleotide Int)
count x xs = case x of
  A -> count' 'A' xs
  C -> count' 'C' xs
  G -> count' 'G' xs
  T -> count' 'T' xs 
  _ -> Left "error"


--nucleotideCounts :: String -> Either String (Map Nucleotide Int)
nucleotideCounts :: String -> (Map Nucleotide Int)
nucleotideCounts xs = 
  fromList [ (A, count A xs), (C, count C xs), (G, count G xs), (T, count T xs) ]


-- nucleotideCounts :: String -> Either String (Map Nucleotide Int)
-- nucleotideCounts = error "fixme"

--main = print $ nucleotideCounts A "GATTACA"

-- "GATTACA" -> 'A': 3, 'C': 1, 'G': 1, 'T': 2
-- "INVALID" -> error


-- nucleotideCounts :: String -> Either String (Map Nucleotide Int)
-- nucleotideCounts = traverse n 
--   where
--     ('G', count 'G' n) = Right 'G'
--     ('C', count 'C' n) = Right 'C'
--     ('T', count 'T' n) = Right 'T'
--     ('A', count 'A' n) = Right 'A'
    
    






-- toRNA :: String -> Either Char String
-- toRNA = traverse dna
--   where
--     dna 'G' = Right 'C'
--     dna 'C' = Right 'G'
--     dna 'T' = Right 'A'
--     dna 'A' = Right 'U'
--     dna x = Left x

module DNA (toRNA) where

toRNA :: String -> Either Char String
toRNA = traverse dna
  where
    dna 'G' = Right 'C'
    dna 'C' = Right 'G'
    dna 'T' = Right 'A'
    dna 'A' = Right 'U'
    dna x = Left x

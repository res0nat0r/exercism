module Pangram (isPangram) where
import Data.Char
import Data.List

isPangram :: String -> Bool
isPangram text
  | null text = False
  | otherwise = input == 26
  where
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    input = length $ map (`elem` alphabet) $ nub $ map toLower $ filter isAscii $ filter isAlpha text
    

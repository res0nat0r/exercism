module Pangram (isPangram) where
import           Data.Char
import           Data.List

isPangram :: String -> Bool
isPangram text
  | null text = False
  | otherwise = inputLength == 26
  where
    inputLength = length $ nub $ map toLower $ filter isAscii $ filter isAlpha text

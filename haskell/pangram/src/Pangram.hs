module Pangram (isPangram) where
import Data.Char

isPangram :: String -> Bool
isPangram text
  | text == [] = False
  | otherwise = all (== True) $ map (\x -> x `elem` alphabet) $ map toLower $ filter isAlpha text
  where
    alphabet = "abcdefghijklmnopqrstuvwxyz"

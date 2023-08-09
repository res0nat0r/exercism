module Pangram (isPangram) where
import Data.Char

isPangram :: String -> Bool
isPangram text
  | text == [] = False
  | otherwise = length == 26 <$> all (== True) $ map (\x -> x `elem` alphabet) $ map toLower $ filter isAlpha text
  where
    alphabet = "abcdefghijklmnopqrstuvwxyz"

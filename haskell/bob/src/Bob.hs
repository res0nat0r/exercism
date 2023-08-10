module Bob (responseFor) where

import Data.Char

responseFor :: String -> String
responseFor xs
  | isShouting xs && last xs == '?' = "Calm down, I know what I'm doing!"
  | isShouting xs = "Whoa, chill out!"
  | last xs == '?' = "Sure."
  | all (not . isAlpha) xs = "Fine. Be that way!"
  | otherwise = "Whatever."

-- isShouting :: String -> Bool
-- isShouting xs = all isUpper $ filter isAlpha xs

isShouting :: String -> Bool
isShouting xs = all isUpper $ filter isAlpha xs

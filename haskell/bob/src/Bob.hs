module Bob (responseFor) where

import Data.Char
import Data.List.Extra

responseFor :: String -> String
responseFor xs
  | all isSpace xs || null xs = "Fine. Be that way!"
  | isShouting xs && last xs == '?' = "Calm down, I know what I'm doing!"
  | isShouting xs = "Whoa, chill out!"
  | last (trim xs) == '?' = "Sure."
  | otherwise = "Whatever."

isShouting :: String -> Bool
isShouting xs
  | allUpper && xsLength /= 0 = True
  | otherwise = False
  where
    allUpper = all isUpper $ filter isAlpha xs
    xsLength = length $ filter isAlpha xs

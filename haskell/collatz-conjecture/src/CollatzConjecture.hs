module CollatzConjecture (collatz) where

collatz :: Integer -> Maybe Integer
collatz n = collatz' n 0

collatz' :: Integer -> Integer -> Maybe Integer
collatz' n count
  | n <= 0 = Nothing
  | n == 0 = Just count
  | even n = collatz' (div n 2) (count + 1)
  | otherwise = collatz' ((3 * n) + 1) (count + 1)

{-
f(n) = n / 2  for n `mod` 2 == 0
f(n) = 3n + 1 for n `mod 2 /= 0
-}

module CollatzConjecture (collatz) where

collatz :: Integer -> Maybe Integer
collatz n = error "You need to implement this function."

{-
f(n) = n / 2  for n `mod` 2 == 0
f(n) = 3n + 1 for n `mod 2 /= 0
-}

module CollatzConjecture (collatz) where

collatz :: Integer -> Maybe Integer
collatz n = collatz' n 0

collatz' :: Integer -> Integer -> Maybe Integer
collatz' n count
    | n == 1 = Just count
    | n <= 0 = Nothing
    | even n = collatz' (div n 2) (count + 1)
    | otherwise = collatz' ((3 * n) + 1) (count + 1)

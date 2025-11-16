module Darts (score) where

-- distance :: Float -> Float -> Float
-- distance x y = sqrt(x^2 + y^2)

score :: Int -> Int -> Float
score x y = sqrt (((x :: Float) ^ 2) + ((y :: Float) ^ 2))

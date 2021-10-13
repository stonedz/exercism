{-# OPTIONS_GHC -Wno-incomplete-patterns #-}
module CollatzConjecture (collatz) where
import Data.List

collatz :: Integer -> Maybe Integer
collatz a
  | a <= 0 = Nothing
  | otherwise = Just $ genericLength (generateCollatz a) - 1


generateCollatz :: Integer -> [Integer]
generateCollatz 1 =  [1]
generateCollatz x
  | even x = x:generateCollatz (div x 2)
  | odd x = x:generateCollatz (x * 3 +1)

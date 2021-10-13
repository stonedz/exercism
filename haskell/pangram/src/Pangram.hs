module Pangram (isPangram) where

import Data.List ( nub, sort )
import Data.Char (toLower)

isPangram :: String -> Bool
isPangram [] = False
isPangram text
  | length text < 26 = False
  | otherwise = alphabet == stringToElements text
  where stringToElements a =  filter (`elem` alphabet) $ nub $ sort [toLower x | x <- a]
        alphabet = ['a'..'z']

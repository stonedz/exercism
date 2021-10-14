module Bob (responseFor) where
import Data.Char ( isSpace, isLetter, isUpper )
import Data.List

responseFor :: String -> String
responseFor xs
  | all isSpace xs = "Fine. Be that way!"
  | isShout xs && last xs == '?' = "Calm down, I know what I'm doing!"
  | last (dropWhileEnd isSpace xs) == '?' = "Sure."
  | isShout xs = "Whoa, chill out!"
  | otherwise = "Whatever."
  where isShout s = any isLetter s && all isUpper ( filter isLetter s)
